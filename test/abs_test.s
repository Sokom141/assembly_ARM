@ ARM assembly absolute value
MOV	r2, #-6
MOV	r3, #10
MVN	r1, r2
MVN	r4, r3
MOV	r0, #1
SWI	0x6b
SWI	0x11
