.data
stringa:	.asciiz "sator arepo tenet opera rotas"
strlen:		.word	29

.text
main:	ldr	r0, =stringa	@ string head address in r0
	ldr	r1, =strlen
	ldr	r1, [r1]	@ string length in r1
	add	r1, r1, r0
	sub	r1, r1, #1	@ string tail address in r1
	mov	r4, #1		@ mark r4 with "no palindrome"

loop:	cmp	r1, r0
	movle	r4, #0
	ble	exit
	ldrb	r2, [r0], #1	@ load head and increment pointer
	ldrb	r3, [r1], #-1	@ load tail and decrement pointer
	cmp	r3, r2
	beq	loop

exit:	swi	0x11

.end
