.data
seq:	.word	0b10100000011111111000000101

.text
main:	ldr	r0, =seq
	ldr	r0, [r0]
	mov	r1, r0
	mov 	r2, #0x00000001		@ LSB on in r2
	mov	r3, #0x80000000		@ MSB on in r3
	and	r4, r2, r0		@ seq LSB in r4
	and	r5, r3, r1		@ seq MSB in r5

loop:	cmp	r0, #0
	beq	exit_y			@ palindrome YES
	eors	r6, r4, r5, lsr #31	@ compare LSB with MSB and set
	bne	exit			@ if LSB != MSB then exit
	mov	r0, r0, lsr #1		@ right-shift r0
	mov	r1, r1, lsl #1		@ left-shift r1
	and	r4, r2, r0		@ next seq LSB in r4
	and	r5, r3, r1		@ next seq MSB in r5
	b 	loop

exit_y:	mov	r6, #0xFFFFFFFF		@ marks r6

exit:	swi	0x11

.end
