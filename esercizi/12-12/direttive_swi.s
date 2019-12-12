.data
.equ	PrintInt, 0x6b

.text
	MOV	r0, #1
	MOV	r1, #5
	SWI	PrintInt
	SWI	0x11

.end
