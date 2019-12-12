.text
_start: MOV	R0, #5

div:
	SUBS	R0, R0, #1
	BNE	div
	B	exit
exit:
	SWI	0x11

.end
