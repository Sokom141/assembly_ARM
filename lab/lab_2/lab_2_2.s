.data
	num:	.word	1, 2, 4

.text
	LDR	R3, =num
	LDR	R4, [R3]
	LDR	R5, [R3, #4]
	LDR	R6, [R3, #8]

	MOV	R0, R4, LSL #2
	MOV	R1, R5, LSL #2
	MOV	R2, R6, LSL #2

	STR	R0, [R3]
	STR	R1, [R3, #4]
	STR	R2, [R3, #8]

	SWI	0x11
