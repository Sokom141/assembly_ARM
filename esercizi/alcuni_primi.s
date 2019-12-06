.data
	primi:	.word	2, 3, 5, 7, 11
	string:	.asciiz	"alcuni numeri primi"

.text
main:	ldr	r0, =primi
	ldr	r1, [r0]
	ldr	r2, [r0, #4]	@ leggo numero 3
	ldr	r0, =string
	ldrb	r3, [r0]
	ldrb	r4, [r0, #3]	@ leggo carattere u
	swi	0x11		@ comando di terminazione

.end
