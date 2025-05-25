.data
numbers:
    .word 0x0069, 0x0089, 0x0060, 0x0068, 0x0101
    .word 0x0209, 0x0039, 0x0049, 0x0020, 0x0420

buffer: .zero 20       # buffer to store ASCII string

newline: .string "\n"

.text
.globl _start

_start:
    li x4, 4                    # stride
    li x5, 10                   # loop counter
    la x7, numbers  # pointer to numbers

    li x10, 0                   # sum accumulator

loop:
    lw x6, 0(x7)
    add x10, x10, x6
    add x7, x7, x4
    addi x5, x5, -1
    bnez x5, loop

    # Convert x10 to ASCII string (decimal) into buffer
    la t0, numbers
    addi t0, t0, 19             # point to end of buffer
    li t1, 10                   # divisor
    li t2, 0                    # digit count

convert_loop:
    remu t3, x10, t1            # remainder = x10 % 10
    addi t3, t3, 48             # convert to ASCII
    sb t3, 0(t0)
    addi t0, t0, -1
    divu x10, x10, t1
    addi t2, t2, 1
    bnez x10, convert_loop

    addi t0, t0, 1              # point to first char

    # Print result using write syscall
    li a0, 1                    # stdout
    mv a1, t0                   # buffer pointer
    mv a2, t2                   # length
    li a7, 64                   # syscall: write
    ecall

    # Print newline
    la a1, newline
    li a2, 1
    li a7, 64
    ecall

    # Exit cleanly
    li a0, 0
    li a7, 93
    ecall

