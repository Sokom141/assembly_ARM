@ if (i == j)
@	i = i + 1
@ else
@	i = j

.data
	ij:	.word	4, 5	@ creo in mem l'array 

.text
main:	ldr	r0, =ij		@ carico nel registro 0 l'array
	ldr	r1, [r0]	@ assegno ad r1 i primi 4 byte
	ldr	r2, [r0, #4]	@ assegno a  r2 i byte da 4 a 8
	cmp	r1, r2		@ aggiorno i flag del registro di stato cprs
	beq	then		@ branch a then se uguali
	mov	r1, r2		@ else: carico in r1 il valore di r2
	b	fine		@ salto incondizionato a fine
then:	add	r1, r1, #1	@ r1 = r1 + 1
fine:	swi	0x11		@ software interrupt

.end

@ codice alternativo senza salti:
@ cmp	r1, r2
@ addeq	r1, r1, #1
@ movne	r1, r2
