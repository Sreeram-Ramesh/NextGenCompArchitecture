.data
str:		.string	"Hello World\n"

.text
.globl _start

_start:
	li a7, 64
	li a0, 1
	la a1, str
	li a2, 12
	ecall

	li a7, 93
	li a0, 0
	ecall
