.data
	len:	.word	20
	array:	.skip	20
	.equ	PrintInt, 0x6b

.text
_start:
	ldr	r0, =array		@ load memory
	ldr	r1, =len
	ldr	r1, [r1]

store:
	str	r2, [r0, r3, lsl #2]	@ store in array
	add	r3, r3, #1		@ add 1 to offset
	b	main

main:
	add	r2, r2, #1
	cmp	r2, r1			@ compare
	ble	store			@ .. if less or equal branch to store
	b	load_print_array	@ .. else branch to load_print_array / end

@ extra: print array
load_print_array:
	mov	r9, r0
	mov	r0, #1
	mov	r7, r1

print_array:
	ldr 	r1, [r9, r8, lsl #2]
	swi	PrintInt
	add	r8, r8, #1
	cmp	r8, r7
	ble	print_array
	b	end

end:
	swi	0x11

.end
