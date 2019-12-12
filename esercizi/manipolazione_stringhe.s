.data
	stringa:	.asciiz	"stringa da manipolare"
	a:		.ascii	"a"
	o:		.ascii	"o"

.text
main:	ldr	r0, =stringa
	ldr	r1, =a
	ldrb	r1, [r1]
	ldr	r2, =o
	ldrb	r2, [r2]
	bl	scambia		@ chiamata subroutine
	swi	0x11

scambia:
	ldrb	r3, [r0], #1
	cmp	r3, #0		@ test fine stringa - carattere zero codifica ascii
	beq exit
	cmp	r3, r1		@ confronto caratteri
	streqb	r2, [r0, #-1]	@ modifica stringa
	cmp	r3, r2
	streqb	r1, [r0, #-1]
	b	scambia		@ ciclo

exit:	mov	pc, lr		@ link register to program counter

.end
