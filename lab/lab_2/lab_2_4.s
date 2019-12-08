@ Calcolo quoziente e resto della divisione m/n
.data
mn:     .word   26, 12           @ m, n. Numeri interi positivi

.text
main:   LDR R3, =mn             @ carico l'array
        LDR R1, [R3]            @ carico nel registro R1 m
        LDR R2, [R3, #4]        @ carico nel registro R5 n

rem:    CMP R1, R2              @ Aggiorno il registro di stato
        BGE div                 @ Se m >= n branch alla divsione
        B stop                  @ Branch a software interrupt

div:    SUB R1, R1, R2         @ m - n
        ADD R0, R0, #1         @ quoziente + 1
        B   rem

stop:   SWI 0x11

.end
