.globl __start

.rodata
    msg0:   .string "This is p3(two sum)"
    msg1:   .string "\nThe result is: "
    msg2:   .string " and "

.data
    A:      .word 1, 2, 3, 4
    len:    .word 4
    target: .word 8

.text
__start:
    # print msg
    li a0, 4
    la a1, msg0
    ecall

    # load 
    la a2, A     
    lw a3, len        
    lw a4, target  
    
    ### TODO ### 
    
done:
    # print result
    li a0, 4
    la a1, msg1
    ecall

    li a0, 1
    mv a1, t0
    ecall

    li a0, 4
    la a1, msg2
    ecall

    li a0, 1
    mv a1, t1
    ecall
    
    # exit
    li a0, 10
    ecall