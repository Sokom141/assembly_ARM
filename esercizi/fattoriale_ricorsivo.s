fattoriale:
	stmfd   sp!, {r4, lr}	@ salva registri
	mov	r4, r0
	sub	r0, r0, #1
	cmp	r0, #1		@ se r0 == 1 ...
	beq	skip		@ va a svuotare lo stack
	bl	fattoriale	@ chiamata ricorsiva
skip:	mul	r0, r4, r0	@ accumula risultato
	ldmfd	sp!, {r4, lr}	@ ripristina registri
	mov	pc, lr		@ rientra dalla procedura
