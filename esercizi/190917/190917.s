.data
    string: .asciiz "stringa"

.text
_start:
    ldr r1, =string

loop:
    ldrb r2, [r1], #1
    cmp r2, #0
    bne loop
    sub r1, r1, #1
    ldr r0, =string

loop1:
    ldrb    r2, [r0]
    ldrb    r3, [r1, #-1]!
    cmp r0, r1
    bpl exit
    strb    r2, [r1]
    strb    r3, [r0], #1
    b   loop1

exit:
    swi 0x11

.end

    