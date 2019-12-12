.data
n:	.word	5
v:	.word	1, 2, 3, 4, 5

.text
_start:
	ldr	r0, =n
	ldr	r1, =v

main:
	
.end
