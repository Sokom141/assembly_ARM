@ Calcolare e scrivere nel registro r1 l'n-esimo numero di Fibonacci F(n),
@ con n contenuto nel registro r0
.text
main:	mov	r0, #10		@ n
	mov	r1, #0		@ F(0)
	mov	r2, #1		@ F(1)
	mov	r4, r2		@ il contatore parte da 1.
	b while

while:	cmp r4, r0
	beq fine
	add	r3, r1, r2	@ r3 = r1 + r2  ( 0 + 1) --> ( 1 + 1)	..
	mov	r1, r2		@ r1 = r2	( 1 )	 --> ( 1 ) 	..
	mov	r2, r3		@ r2 = r3	( 1 )	 --> ( 2 )	..
	add	r4, r4, #1
	b while

fine:	swi	0x11

.end
