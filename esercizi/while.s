@ while (i != 0)
@	i = i - 1
@	j = j + 1

.text
main:	mov	r1, #10
	mov	r2, #5
	b	while
while:	cmp	r1, #0
	beq	fine
	sub	r1, r1, #1
	add	r2, r2, #1
	b	while
fine:	swi	0x11

.end
