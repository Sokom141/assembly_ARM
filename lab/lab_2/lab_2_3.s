@ programma che sostituisce il vettore con una sua
@ rotazione in cui ogni elemento viene spostato in avanti di una
@ locazione.
.data
	array:	.word	1, 2, 3

.text
	LDR	R0, =array
	LDR	R1, [R0]
	LDR	R2, [R0, #4]
	LDR	R3, [R0, #8]

	STR	R2, [R0]
	STR	R3, [R0, #4]
	STR	R1, [R0, #8]

	LDR	R5, =array
	LDR	R6, [R5]
	LDR	R7, [R5, #4]
	LDR	R8, [R5, #8]

	SWI	0x11
