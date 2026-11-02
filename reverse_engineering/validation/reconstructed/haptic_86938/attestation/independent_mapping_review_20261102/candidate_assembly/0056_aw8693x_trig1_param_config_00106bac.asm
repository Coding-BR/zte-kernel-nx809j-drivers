
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001914 <aw8693x_trig1_param_config>:
    1914: d503233f     	paciasp
    1918: d100c3ff     	sub	sp, sp, #0x30
    191c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    1920: f90013f3     	str	x19, [sp, #0x20]
    1924: 910043fd     	add	x29, sp, #0x10
    1928: d5384108     	mrs	x8, SP_EL0
    192c: 12800fea     	mov	w10, #-0x80             // =-128
    1930: 52800721     	mov	w1, #0x39               // =57
    1934: f9438908     	ldr	x8, [x8, #0x710]
    1938: 12801e02     	mov	w2, #-0xf1              // =-241
    193c: aa0003f3     	mov	x19, x0
    1940: f90007e8     	str	x8, [sp, #0x8]
    1944: 39579c08     	ldrb	w8, [x0, #0x5e7]
    1948: 3957a009     	ldrb	w9, [x0, #0x5e8]
    194c: 7100011f     	cmp	w8, #0x0
    1950: 1a9f07e8     	cset	w8, ne
    1954: 7100013f     	cmp	w9, #0x0
    1958: 531a650b     	lsl	w11, w8, #6
    195c: 331a010a     	bfi	w10, w8, #6, #1
    1960: 39579408     	ldrb	w8, [x0, #0x5e5]
    1964: 1a8a0169     	csel	w9, w11, w10, eq
    1968: 7100011f     	cmp	w8, #0x0
    196c: 39579808     	ldrb	w8, [x0, #0x5e6]
    1970: 321b012a     	orr	w10, w9, #0x20
    1974: 1a8a0129     	csel	w9, w9, w10, eq
    1978: 7100011f     	cmp	w8, #0x0
    197c: 321c012a     	orr	w10, w9, #0x10
    1980: 1a8a0123     	csel	w3, w9, w10, eq
    1984: 94000000     	bl	0x1984 <aw8693x_trig1_param_config+0x70>
		0000000000001984:  R_AARCH64_CALL26	i2c_w_bits
    1988: 3957a668     	ldrb	w8, [x19, #0x5e9]
    198c: 910013e2     	add	x2, sp, #0x4
    1990: aa1303e0     	mov	x0, x19
    1994: 52800661     	mov	w1, #0x33               // =51
    1998: 52800023     	mov	w3, #0x1                // =1
    199c: 7100011f     	cmp	w8, #0x0
    19a0: 3957ae68     	ldrb	w8, [x19, #0x5eb]
    19a4: 1a9f07e9     	cset	w9, ne
    19a8: 2a091d08     	orr	w8, w8, w9, lsl #7
    19ac: 390013e8     	strb	w8, [sp, #0x4]
    19b0: 94000000     	bl	0x19b0 <aw8693x_trig1_param_config+0x9c>
		00000000000019b0:  R_AARCH64_CALL26	i2c_w_bytes
    19b4: 3957aa68     	ldrb	w8, [x19, #0x5ea]
    19b8: 910013e2     	add	x2, sp, #0x4
    19bc: aa1303e0     	mov	x0, x19
    19c0: 528006c1     	mov	w1, #0x36               // =54
    19c4: 52800023     	mov	w3, #0x1                // =1
    19c8: 7100011f     	cmp	w8, #0x0
    19cc: 3957b268     	ldrb	w8, [x19, #0x5ec]
    19d0: 1a9f07e9     	cset	w9, ne
    19d4: 2a091d08     	orr	w8, w8, w9, lsl #7
    19d8: 390013e8     	strb	w8, [sp, #0x4]
    19dc: 94000000     	bl	0x19dc <aw8693x_trig1_param_config+0xc8>
		00000000000019dc:  R_AARCH64_CALL26	i2c_w_bytes
    19e0: d5384108     	mrs	x8, SP_EL0
    19e4: f9438908     	ldr	x8, [x8, #0x710]
    19e8: f94007e9     	ldr	x9, [sp, #0x8]
    19ec: eb09011f     	cmp	x8, x9
    19f0: 540000c1     	b.ne	0x1a08 <aw8693x_trig1_param_config+0xf4>
    19f4: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    19f8: f94013f3     	ldr	x19, [sp, #0x20]
    19fc: 9100c3ff     	add	sp, sp, #0x30
    1a00: d50323bf     	autiasp
    1a04: d65f03c0     	ret
    1a08: 94000000     	bl	0x1a08 <aw8693x_trig1_param_config+0xf4>
		0000000000001a08:  R_AARCH64_CALL26	__stack_chk_fail
