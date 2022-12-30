#include "Vcore.h"
#include "Vcore___024root.h"

#include <iostream>
#include <verilated_vcd_c.h>
#include <verilated.h>

#define MAX_TEST_TIME 200
uint64_t sim_time = 0;
uint64_t test_time = 0;

int req_time = 0;
int i_seq = 1;

void tick(Vcore *dut, VerilatedVcdC* vcd) {
    do {
        dut->i_clk ^= 1;
        dut->eval();
        vcd->dump(sim_time++);
    } while(dut->i_clk);

    std::cout<<".";
}

void cpu_reset(Vcore* dut, VerilatedVcdC* v_vcd) {
    dut->i_rst = 1;
    for(int i=0; i<4; i++)
        tick(dut, v_vcd);
    dut->i_rst = 0;
    req_time = 0;
}

void sim_mem(Vcore* d, std::vector<int>& instr, bool randt=false) {
    d->i_req_data_valid = 0;
    if(d->o_req_active && !d->i_req_data_valid) {
        static int req_addr = -1;
        if(!req_time)
            req_addr = d->o_req_addr;
        
        if(++req_time >= (randt ? (rand()%3)+1 : 2)) {
            req_time = 0;
            d->i_req_data_valid = 1;
            if (req_addr >= instr.size()) {
                d->i_req_data = 0; // NOP
            } else {
                d->i_req_data = instr[req_addr];
            }
            std::cout<<"REQF "<<std::hex<<req_addr<<" r:"<<d->i_req_data<<"\n";
        }
    }
}

int data_mem_req_time = 0;
int data_mem_req_addr = 0, data_mem_req_data = 0;
bool data_mem_req_we = false;
short data_mem[100];
void sim_data_mem(Vcore* d) {
    d->i_mem_ack = 0;
    if(d->o_mem_req && !d->i_mem_ack) {
        if (!req_time) {
            data_mem_req_addr = d->o_mem_addr;
            data_mem_req_data = d->o_mem_data;
            data_mem_req_we = d->o_mem_we;
        }
        
        if(++data_mem_req_time >= 2) {
            data_mem_req_time = 0;
            d->i_mem_ack = 1;
            assert(data_mem_req_addr < 100);
            if(data_mem_req_we)
                data_mem[data_mem_req_addr] = d->o_mem_data;
            else
                d->i_mem_data = data_mem[data_mem_req_addr];
            std::cout<<"memreq a"<<data_mem_req_addr<<'d'<<(data_mem_req_we ? data_mem_req_data : d->i_mem_data)<<
                'w'<<data_mem_req_we<<'\n';
        }
    }
}

bool test_simple (Vcore* dut, VerilatedVcdC* v_vcd) {
    cpu_reset(dut, v_vcd);
    /* listing
     * ldi r0, 1
     * ldi r1, 2
     * add r0, r0, r1
     * add r0, r0, r0
     * adi r0, r0, 1
     * sub r0, r0, r1
     */
    std::vector <int> instr = {0, 0x00010004, 0x00020084, 0x00002007, 0x00000007, 0x00010008, 0x0000200A, 0x0, 0x0};
    test_time = sim_time;
    while (sim_time-test_time < MAX_TEST_TIME) {
        // simulate external devices
        sim_mem(dut, instr, true);

        // clock tick
        tick(dut, v_vcd);
    
        std::cout<<"r0:"<<dut->dbg_r0<<" pc:"<<dut->dbg_pc<<'\n';
        
        if(dut->dbg_pc >= instr.size())
            break;
    }

    if(dut->dbg_r0 != 5) {
        std::cout<<"test_simple failed\n";
        return false;
    }
    std::cout<<"test_simple passed\n";
    return true;
}

bool test_mispredict (Vcore* dut, VerilatedVcdC* v_vcd) {
    cpu_reset(dut, v_vcd);
    /* listing
    ldi r0, 1
    jmp b
    mp:
    ldi r0, 4
    jmp mp
    b:
    cmi r0, 1
    jne mp ; MISPREDICTION (pred taken)
    c:
    ldi r0, 8
    jmp c
    ldi r0, 5
    nop
    */

    std::vector <int> instr = {
    0x0000010004,
    0x000004000E,
    0x0000040004,
    0x000002000E,
    0x000001000D,
    0x000002038E,
    0x0000080004,
    0x000006000E,
    0x0000050004,
    0x0000000000};

    test_time = sim_time;
    int end_it = 0;
    while (sim_time-test_time < MAX_TEST_TIME) {
        // simulate external devices
        sim_mem(dut, instr);

        // clock tick
        tick(dut, v_vcd);

        std::cout<<"r0:"<<dut->dbg_r0<<" pc:"<<dut->dbg_pc<<'\n';
        
        if(dut->dbg_pc == 0x7)
            end_it++;
        if(dut->dbg_pc >= instr.size() || end_it >= 3)
            break;
    }

    if(dut->dbg_r0 != 8) {
        std::cout<<"test_mispredict failed\n";
        return false;
    }
    std::cout<<"test_mispredict passed\n";
    return true;
}

bool test_mem_access(Vcore* dut, VerilatedVcdC* vcd) {
    cpu_reset(dut, vcd);
    /* listing
        ldi r0, 3
        std r0, 2
        ldd r1, 2
        ldi r3, 10
        sto r3, r1, 1
        ldi r2, 1
        ldo r0, r2, 1
        ldo r1, r2, 3
        add r0, r0, r1
    */
    std::vector <int> instr = {
        0x00030004,
        0x00020005,
        0x00020082,
        0x000A0184,
        0x00012C06,
        0x00010104,
        0x00010803,
        0x00030883,
        0x00002007,
        0x0, 0x0, 0x0};
    
    test_time = sim_time;
    while (sim_time-test_time < MAX_TEST_TIME) {
        sim_mem(dut, instr);
        sim_data_mem(dut);

        tick(dut, vcd);

        std::cout<<"r0:"<<dut->dbg_r0<<" pc:"<<dut->dbg_pc<<'\n';
        
        if(dut->dbg_pc >= instr.size())
            break;
    }

    if(dut->dbg_r0 != 13) {
        std::cout<<"test_mem_access failed\n";
        return false;
    }
    std::cout<<"test_mem_access passed\n";
    return true;
}

bool test_interupts(Vcore* dut, VerilatedVcdC* vcd) {
    cpu_reset(dut, vcd);
    srand(3);
    /* listing
        jmp start
        jmp irq

        start:
        ldi r1, 0
        ldi r0, 0b101
        srs r0, 1
        ldi r0, 0
        ldi r2, 0x10
        ; overcompicated counter to test functions under interrupts
        loop:
        adi r0, r0, 1

        std r0, 2
        ldi r0, 900
        ldd r0, 2

        cmi r0, 0
        jge fwd_jmp
        ldi r0, 800
        fwd_jmp:

        cmp r0, r2
        jlt loop

        jmp pass_ver

        irq:
        srl r3, 4
        adi r1, r1, 1
        srs r3, 4 ; recover arithemtic flags
        nop ; nop instruction will clear interrrupt in custom tb
        irt

        pass_ver: ; with r0 and r1 verification in tb
        jmp pass_ver
    */
    std::vector <int> instr = {
        0x0002000E,
        0x0011000E,
        0x00000084,
        0x00050004,
        0x00010011,
        0x00000004,
        0x00100104,
        0x00010008,
        0x00020005,
        0x03840004,
        0x00020002,
        0x0000000D,
        0x000E030E,
        0x03200004,
        0x0000400C,
        0x0007018E,
        0x0016000E,
        0x00040190,
        0x00010488,
        0x00040C11,
        0x00000000,
        0x0000001E,
        0x0016000E};
    
    test_time = sim_time;
    int irqc = 0;
    while (sim_time-test_time < MAX_TEST_TIME*100) {
        sim_mem(dut, instr);
        sim_data_mem(dut);

        if(rand() % 100 < 5 && !dut->i_irq && dut->dbg_pc != 0x14) {
            std::cout<<"irq\n";
            irqc++;
            dut->i_irq = 1;
        }

        tick(dut, vcd);
        
        if(dut->dbg_pc == 0x14) {
            std::cout<<"cli\n";
            dut->i_irq = 0; // cli
        }

        if(dut->dbg_pc >= instr.size()-1) {
            std::cout<<"end";
            break;
        }
    }

    int r0 = dut->dbg_r0;
    int r1 = dut->rootp->core__DOT__execute__DOT__rf__DOT____Vcellout__rf_regs__BRA__1__KET____DOT__rf_reg__o_d;
    std::cout<<"r0: "<<r0<<" r1: "<<r1<<"  ex:"<<irqc<<'\n';
    if(r0 != 0x10 || r1 != irqc) {
        std::cout<<"test_interrupt failed\n";
        return false;
    }
    std::cout<<"test_interrupt passed\n";
    return true;
}

int main() {
    Vcore *dut = new Vcore;

    Verilated::traceEverOn(true);
    VerilatedVcdC *v_vcd = new VerilatedVcdC;
    dut->trace(v_vcd, 99);
    v_vcd->open("waveform.vcd");

    bool fail = false;
    srand(2);

    fail |= !test_simple(dut, v_vcd);
    fail |= !test_mispredict(dut, v_vcd);
    fail |= !test_mem_access(dut, v_vcd);
    fail |= !test_interupts(dut, v_vcd);
    // Tests in assembly format are located in test/arch/, and are runned in basic core testbench

    dut->final();
    v_vcd->close();
    delete dut;

    std::cout<<'\n';
    if(fail)
        std::cout<<"SOME TESTS FAILED\n";
    else
        std::cout<<"ALL TESTS PASSED\n";
    std::cout<<'\n';
    return fail;
}
