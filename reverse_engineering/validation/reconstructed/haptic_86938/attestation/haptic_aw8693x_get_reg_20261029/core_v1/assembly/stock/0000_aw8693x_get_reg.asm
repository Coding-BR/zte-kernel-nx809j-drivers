
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003200 <aw8693x_get_reg>:
    3200: d503233f     	paciasp
    3204: d10343ff     	sub	sp, sp, #0xd0
    3208: a9097bfd     	stp	x29, x30, [sp, #0x90]
    320c: a90a5ff8     	stp	x24, x23, [sp, #0xa0]
    3210: a90b57f6     	stp	x22, x21, [sp, #0xb0]
    3214: a90c4ff4     	stp	x20, x19, [sp, #0xc0]
    3218: 910243fd     	add	x29, sp, #0x90
    321c: d5384108     	mrs	x8, SP_EL0
    3220: aa0203f4     	mov	x20, x2
    3224: aa0103f3     	mov	x19, x1
    3228: f9438908     	ldr	x8, [x8, #0x710]
    322c: 910003e2     	mov	x2, sp
    3230: 2a1f03e1     	mov	w1, wzr
    3234: 52800643     	mov	w3, #0x32               // =50
    3238: aa0003f5     	mov	x21, x0
    323c: 910003f7     	mov	x23, sp
    3240: f81f83a8     	stur	x8, [x29, #-0x8]
    3244: b807f3ff     	stur	wzr, [sp, #0x7f]
    3248: a9077fff     	stp	xzr, xzr, [sp, #0x70]
    324c: a9067fff     	stp	xzr, xzr, [sp, #0x60]
    3250: a9057fff     	stp	xzr, xzr, [sp, #0x50]
    3254: a9047fff     	stp	xzr, xzr, [sp, #0x40]
    3258: a9037fff     	stp	xzr, xzr, [sp, #0x30]
    325c: a9027fff     	stp	xzr, xzr, [sp, #0x20]
    3260: a9017fff     	stp	xzr, xzr, [sp, #0x10]
    3264: a9007fff     	stp	xzr, xzr, [sp]
    3268: 94000000     	bl	0x3268 <aw8693x_get_reg+0x68>
		0000000000003268:  R_AARCH64_CALL26	i2c_r_bytes
    326c: 9100cee2     	add	x2, x23, #0x33
    3270: aa1503e0     	mov	x0, x21
    3274: 52800661     	mov	w1, #0x33               // =51
    3278: 528001e3     	mov	w3, #0xf                // =15
    327c: 94000000     	bl	0x327c <aw8693x_get_reg+0x7c>
		000000000000327c:  R_AARCH64_CALL26	i2c_r_bytes
    3280: 91010ee2     	add	x2, x23, #0x43
    3284: aa1503e0     	mov	x0, x21
    3288: 52800861     	mov	w1, #0x43               // =67
    328c: 52800803     	mov	w3, #0x40               // =64
    3290: 94000000     	bl	0x3290 <aw8693x_get_reg+0x90>
		0000000000003290:  R_AARCH64_CALL26	i2c_r_bytes
    3294: aa1f03f5     	mov	x21, xzr
    3298: 52820018     	mov	w24, #0x1000            // =4096
    329c: 90000016     	adrp	x22, 0x3000 <aw8693x_get_wav_loop+0x30>
		000000000000329c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x79b
    32a0: 910002d6     	add	x22, x22, #0x0
		00000000000032a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x79b
    32a4: 14000004     	b	0x32b4 <aw8693x_get_reg+0xb4>
    32a8: 910006b5     	add	x21, x21, #0x1
    32ac: f1020ebf     	cmp	x21, #0x83
    32b0: 540001c0     	b.eq	0x32e8 <aw8693x_get_reg+0xe8>
    32b4: 12001ea8     	and	w8, w21, #0xff
    32b8: 7100c91f     	cmp	w8, #0x32
    32bc: 54ffff60     	b.eq	0x32a8 <aw8693x_get_reg+0xa8>
    32c0: 7101091f     	cmp	w8, #0x42
    32c4: 54ffff20     	b.eq	0x32a8 <aw8693x_get_reg+0xa8>
    32c8: 38756ae4     	ldrb	w4, [x23, x21]
    32cc: cb130301     	sub	x1, x24, x19
    32d0: 8b130280     	add	x0, x20, x19
    32d4: aa1603e2     	mov	x2, x22
    32d8: 2a1503e3     	mov	w3, w21
    32dc: 94000000     	bl	0x32dc <aw8693x_get_reg+0xdc>
		00000000000032dc:  R_AARCH64_CALL26	snprintf
    32e0: 8b20c273     	add	x19, x19, w0, sxtw
    32e4: 17fffff1     	b	0x32a8 <aw8693x_get_reg+0xa8>
    32e8: d5384108     	mrs	x8, SP_EL0
    32ec: f9438908     	ldr	x8, [x8, #0x710]
    32f0: f85f83a9     	ldur	x9, [x29, #-0x8]
    32f4: eb09011f     	cmp	x8, x9
    32f8: 54000121     	b.ne	0x331c <aw8693x_get_reg+0x11c>
    32fc: aa1303e0     	mov	x0, x19
    3300: a94c4ff4     	ldp	x20, x19, [sp, #0xc0]
    3304: a94b57f6     	ldp	x22, x21, [sp, #0xb0]
    3308: a94a5ff8     	ldp	x24, x23, [sp, #0xa0]
    330c: a9497bfd     	ldp	x29, x30, [sp, #0x90]
    3310: 910343ff     	add	sp, sp, #0xd0
    3314: d50323bf     	autiasp
    3318: d65f03c0     	ret
    331c: 94000000     	bl	0x331c <aw8693x_get_reg+0x11c>
		000000000000331c:  R_AARCH64_CALL26	__stack_chk_fail
