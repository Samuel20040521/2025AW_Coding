.globl __start

.rodata
    msg0: .string "This is p1-2 (iterative)"
    msg1: .string "\nThe integer n: "
    msg2: .string "\nThe result is: "
.data
    n: .word 8

.text

__start:
    # load n in t1
    lw t1, n
    # print msg
    li a0, 4
    la a1, msg0
    ecall
    li a0, 4
    la a1, msg1
    ecall
    li a0, 1
    mv a1, t1
    ecall
    
### TODO ###
    
done:
    # print msg
    li a0, 4
    la a1, msg2
    ecall
    # print result in t0
    li a0, 1
    mv a1, t0
    ecall
    
    #exit
    li a0, 10
    ecall