.data
num:	.word	-5, -20, -50, 6

.text
@load from memory to registers
ldr	r5, =num
ldr	r6, [r5]
ldr	r7, [r5, #4]
ldr	r8, [r5, #8]
ldr	r9, [r5, #12]

@ ** part 1: r0 == sum of n1, n2, n3, n4
add	r0, r6, r7
add	r0, r0, r8
add	r0, r0, r9

@ ** part 2: r1 == mean of n1, n2, n3, n4
mov	r1, r0, lsr #2

@ ** part 3: r2 == (2^10 + 1) x n1
add	r2, r6, r6, lsl #10

@ ** part 4: r3 == resto divisione per 16 (bitwise 1111)
and 	r3, r6, #0x0f

@ ** part 5: r4 == segno del numero (shift 31 bit a dx)
mov	r4, r6, lsr #31


;exit
swi	0x11

.end
