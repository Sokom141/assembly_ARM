.data
len:	.word	20
array:	.skip	20
.equ	PrintInt, 0x6b

.text
_start:	ldr	r0, =array
	ldr	r1, =len
	ldr	r1, [r1]

store:	str	r2, [r0, r3, lsl #2]
	add	r3, r3, #1
	b	main

main:	add	r2, r2, #1
	cmp	r2, r1
	ble	store
	b	load_print_array

load_print_array:
	mov	r9, r0
	mov	r0, #1
	mov	r7, r1

print_array:
	ldr 	r1, [r9, r8, lsl #2]
	swi	PrintInt
	add	r8, r8, #1
	cmp	r8, r7
	ble	print_ar
	b	end

end:	swi	0x11

.end
