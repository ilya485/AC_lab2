//(a-b)*3+2^c
.global lab1
.syntax unified
lab1:
    push {lr}

    // calculate 

    mov r0, #3  //a
    mov r1, #2  //b
    mov r2, #1  //c
    mov r3, #3
    mov r4, #1

    bl test_var
    pop {pc}

test_var:
    push { r0, r1, r2, r3, r4, lr }
    sub r0, r1
    mul r0, r3

    mov r3, #2

pow:
    cmp r2, #0
    beq e
    mul r4, r3
    sub r2, #1
    b pow
    
e:
    add r0, r4
    pop { r0, r1, r2, r3, r4, pc }

