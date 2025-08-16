.data
data_array:
.dword 6, 24, 18, 49, 21, 51, 17, 31, 22, 4, 2, 7, 0

.text
.globl _start

_start:
	la x7, data_array
	ld x5, 0(x7)
	addi x6, x0, 0x0A
	addi x8, x0, 0x08
	addi x17, x0, 0x02
	la x9, data_array
	addi x9, x9, 0x200

	LOOP: add x7, x7, x8
	ld x10, 0(x7)
	add x7, x7, x8
	ld x11, 0(x7)
	addi x5, x5, -1
	blt x10, x11, SEC
	add x12, x0, x11 # smaller of the two here.
	add x13, x0, x10 # bigger number goes here.
	add x14, x0, x12
	add x16, x0, x13

	REM: beq x12, x0, RESULT
	sub x13, x13, x12
	bge x13, x12, REM
	beq x13, x0, RESULT
	add x12, x0, x13
	add x13, x0, x14
	beq x0, x0, REM

	RESULT: beq x12, x17, CONSIDER # Fail safe mechanism for 2
	
	RECONSIDER: add x15, x0, x12
	sw x15, 0(x9)
	add x9, x9, x8
	bne x0, x5, LOOP

	HALT: beq x0, x0, HALT

	SEC: add x12, x0, x10
	add x13, x0, x11
	beq x0, x0, REM

	CONSIDER: andi x18, x14, 0x01
	bne x18, x0, ONE
	andi x18, x16, 0x01
	bne x18, x0, ONE
	beq x0, x0, RECONSIDER

	ONE: addi x12, x0, 0x01
	beq x0, x0, RECONSIDER
