.data
interi:	.word	5, 10, 15, 20
len:	.word	4

.text
_start:	ldr	r0, =interi
	ldr	r1, =len
	ldr	r1, [r1]
	sub	r1, r1, #1

load:	ldr	r2, [r0, r1, lsl #2]
	add	r3, r2, r3

main:	sub	r1, r1, #1
	cmp	r1, #-1
	bne	load
	moveq	r0, r3
	moveq	r2, #0
	moveq	r3, #0
	b	end

end:	swi 0x11

.end
