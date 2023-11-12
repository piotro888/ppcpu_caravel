jmp test
jmp irq
loop:
jmp loop

.org 0x8
test:
; simple store to embed ram
ldi r0, 0x3888
std r0, 0x0400

; setup paging
ldi r0, 0b0011
srs r0, 1
ldi r0, 2 ; 0x002xxx => 0x0xxx
srs r0, 0x200

; gpio test
ldi r0, 0b11111000
std r0, 0x024 ; direction
ldi r0, 0b101
std r0, 0x022 ; set
ldd r0, 0x020 ; read
sri r0, r0, 4
std r0, 0x022

;enable irq
; ldi r1, 0x0
ldi r0, 0b0111
srs r0, 1

; ldi r0, 0b111
wait_loop:
std r0, 0x22 ; set idle value 111 
jmp wait_loop

irq:
mov r4, r0
adi r1, r1, 1 ; increment r1
ldi r0, 0b0011 ; reenable paging (also for irt)
srs r0, 1
std r1, 0x022 ; set
mov r0, r4 ; restore
irt
