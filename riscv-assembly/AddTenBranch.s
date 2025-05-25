<<<<<<< HEAD
.data
.dword 0x0069, 0x0089, 0x0060, 0x0068, 0x0101
.dword 0x0209, 0x0039, 0x0049, 0x0020, 0x0420

.text
addi x4, x0, 0x08
addi x5, x0, 0x0A
lui x7, 0x10000

BRANCH: lw x6, 0x0(x7)
add x10, x10, x6
add x7, x7, x4
addi x5, x5, -1
bne x0, x5, BRANCH
=======
.option position-independent

.data
numbers: .dword 0x0069, 0x0089, 0x0060, 0x0068, 0x0101
.dword 0x0209, 0x0039, 0x0049, 0x0020, 0x0420

.text
.globl _start

_start:
	addi x4, x0, 0x08
	addi x5, x0, 0x0A
	la x7, numbers

BRANCH: ld x6, 0x0(x7)
	add x10, x10, x6
	add x7, x7, x4
	addi x5, x5, -1
	bne x0, x5, BRANCH
>>>>>>> 2b514cc (Updated Tasks)
