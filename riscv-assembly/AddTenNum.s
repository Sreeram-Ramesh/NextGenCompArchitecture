.data
.dword 0x0069, 0x0089, 0x0060, 0x0068, 0x0101
.dword 0x0209, 0x0039, 0x0049, 0x0020, 0x0420

.text
lui x7, 0x10000
lw x6, 0x0(x7)
add x10, x10, x6
lw x6, 0x8(x7)
add x10, x10, x6
lw x6, 0x10(x7)
add x10, x10, x6
lw x6, 0x18(x7)
add x10, x10, x6
lw x6, 0x20(x7)
add x10, x10, x6
lw x6, 0x28(x7)
add x10, x10, x6
lw x6, 0x30(x7)
add x10, x10, x6
lw x6, 0x38(x7)
add x10, x10, x6
lw x6, 0x40(x7)
add x10, x10, x6
lw x6, 0x48(x7)
add x10, x10, x6