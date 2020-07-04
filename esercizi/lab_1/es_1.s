.text

mov r0, #0x1000      @ copia in r0 la costante esadecimale 1000
add r0, r0, #0x10    @ somma r0:=r0 + 10
ldr r1, [r0]         @ carica in r1 4 byte a partire dall'indirzzo contenuto in r0
str r1, [r0, #8]     @ carica il valore di r1 nell'indirzzo contenuto in r0 spostato di 8 byte


mov r0, #0
mov r0, #1
mov r0, #2

;exit
swi 0x11

.end 
