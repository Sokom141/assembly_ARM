.data
n:	.word	10
v:	.word	1, 2, 3, 4, 5, 6, 7, 8, 9, 10
	.equ	PrintInt, 0x6b

.text
_start:
	ldr	r0, =v
	ldr	r1, =n
	ldr	r2, [r1]
	mov	r1, r2
	sub	r1, r1, #1

main:
	ldr	r3, [r0, r1, lsl #2]
	b	div

div:
	sub	r3, r3, #2
	cmp	r3, #2
	bge	div
	cmp	r3, #0
	streq	r3, [r0, r1, lsl #2]
	subs	r1, r1, #1
	bge	main
@	beq	end
	

@ extra: stampa array su stdout	
load_print_array:
	mov	r9, r0
	mov	r0, #1
	sub	r2, r2, #1

print_array:
	ldr 	r1, [r9, r8, lsl #2]
	swi	PrintInt
	add	r8, r8, #1
	cmp	r8, r2
	ble	print_array
	b	end

end:
	swi	0x11
.end
