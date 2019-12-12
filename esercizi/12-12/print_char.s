.data
	char:	.ascii "a"

.text
	LDR	r0, =char
	LDR	r0, [r0]
	SWI	0x00		@ print_char
	SWI	0x11
.end
