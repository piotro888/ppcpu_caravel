jmp test
loop:
jmp loop

.org 0x10
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
