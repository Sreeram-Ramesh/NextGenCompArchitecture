.data
data_array:
.dword 0x0089, 0x0932, 0x1AF2, 0x0DFC, 0x0340
.dword 0x0890, 0x0049, 0x0069, 0x0420, 0x0699

.text
.globl _start

_start:
	la x7, data_array
	addi x4, x0, 0x0A
	addi x5, x0, 0x08
	add x10, x0, x0

LOOP:
	ld x6, 0x0(x7)
	add x7, x7, x5
	addi x4, x4, -1
	bge x10, x6, BRANCH
	add x10, x0, x6

BRANCH: 
	bne x0, x4, LOOP

exit:
	ebreak               #Halts to spike debugger
