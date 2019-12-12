.data
string:	.asciiz	"stdout string"

.text
	ldr	r0, =string
	swi	0x02
	swi	0x11

.end
