.globl __start

.rodata
    msg0: .string "This is p2 (max subarray sum)"
    msg1: .string "\nThe result is: "
.data
    A:   .word -2, 1, -3, 4, -1, 2, 1, -5, 4
    len: .word 9

.text

__start:
    # print msg
    li a0, 4
    la a1, msg0
    ecall
    
    lw t1, len        # t1 = len
    la t2, A          # t2 = base address of A
    
    ### TODO ###
    
done:
    # print result
    li a0, 4
    la a1, msg1
    ecall
    li a0, 1
    mv a1, t0
    ecall

    # exit
    li a0, 10
    ecall