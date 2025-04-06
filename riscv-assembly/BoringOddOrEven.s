.data
.dword 0x006C

.text
lui x7, 0x10000
lw x6, 0(x7)
add x5, x0, x0
add x8, x0, x0
addi x5, x5, 1
andi x8, x6, 1
bne x0, x8, ODD
slli x5, x5, 1
ODD: beq x0, x0, ODD