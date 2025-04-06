.data
.dword 0x0089, 0x0A0A, 0x00EC, 0x0086, 0x006C
.dword 0x0069, 0x00EA, 0x080A, 0x010F, 0x0A0B

.text
lui x7, 0x10000
addi x4, x0, 0x0A
addi x9, x0, 0x08
add x5, x0, x0
add x8, x0, x0

LOOP: lw x6, 0x0(x7)
andi x8, x6, 0x01
beq x0, x8, EVEN
addi x5, x5, 0x01
EVEN: slli x5, x5, 0x01 // ODD - 1, EVEN - 0
add x7, x7, x9
addi x4, x4, -1
bne x0, x4, LOOP
srli x5, x5, 0x01