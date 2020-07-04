<<<<<<< HEAD
.data
am: .word   2, 16   @ a^x = m

.text
_start:
    ldr r0, =am
    ldr r1, [r0, #4]
    ldr r0, [r0]

    mov r3, #1

main:
    mul r2, r0, r0
    cmp r2, r1
    ble log
    mov r0, #1
    b  end

log:
    add r3, r3, #1
    mov r4, r2
    mul r2, r4, r0
    cmp r2, r1
    ble log
    mov r0, r3
    @ldm [r3, r4], #0
    
end:
    swi 0x11

.end
=======
.data
am: .word   2, 9   @ a^x = m

.text
_start:
    ldr r0, =am
    ldr r1, [r0, #4]
    ldr r0, [r0]
    mov r3, #1

main:
    mul r2, r0, r0
    cmp r2, r1
    ble log
    mov r0, #1
    b  end

log:
    add r3, r3, #1
    mov r4, r2
    mul r2, r4, r0
    cmp r2, r1
    ble log
    mov r0, r3
    @ldm [r3, r4], #0
    
end:
    swi 0x11

.end
>>>>>>> f56efd58806392003aa226ca7f447e97019a56eb
