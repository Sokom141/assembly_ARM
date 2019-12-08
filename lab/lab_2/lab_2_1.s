@  programma che sostituisce il vettore con
@ il vettore contenente i primi 4 numeri naturali.
.data
	array:	.word	0, 0, 0, 0

.text
	LDR	R4, =array

	MOV	R0,  #1
	STR	R0, [R4]

	ADD	R0, R0, #1
	STR	R0, [R4, #4]

	ADD	R0, R0, #1
	STR	R0, [R4, #8]

	ADD	R0, R0, #1
	STR	R0, [R4, #12]

	SWI	0x11
