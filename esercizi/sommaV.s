@ Calcolare, e scrivere nel registro r1 la somma degli elementi di un vettore V
@ con 10 elementi, con indirizzo base il valore di r0.

.data
	V:	.word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10	@ numeri da sommare
	n_it:	.byte 10				@ numero_iterazioni (= a len(V))
.text
main:	ldr	r0, =V
	ldr	r5, =n_it
	ldr	r6, [r5]

while:  cmp	r3, r6
	beq	fine
	ldr	r2, [r0, r4]
	add	r1, r1, r2
	add	r3, r3, #1
	add	r4, r4, #4
	b	while

fine:	swi	0x11

.end
