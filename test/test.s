@ Comment - Test ARM assembly program
MOV	r2, #10    @ Carica il valore 10 nel registro r2
MOV	r3, #2     @ Carica il valore 2 nel registro r3
MUL	r1, r2, r3 @ Calcola r2*r3 e salva in r1
MOV	r0, #1     @ Carica 1 nel registro r0 (stdout handle)
SWI	0x6b       @ Stampa l'intero nel registro r1 su stdout
SWI	0x11       @ Interrompi l'esecuzione del programma 
