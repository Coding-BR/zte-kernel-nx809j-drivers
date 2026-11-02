
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000005f0c <aw8693x_get_wav_loop>:
    5f0c: d503233f     	paciasp
    5f10: d10143ff     	sub	sp, sp, #0x50
    5f14: a9017bfd     	stp	x29, x30, [sp, #0x10]
    5f18: f90013f7     	str	x23, [sp, #0x20]
    5f1c: a90357f6     	stp	x22, x21, [sp, #0x30]
    5f20: a9044ff4     	stp	x20, x19, [sp, #0x40]
    5f24: 910043fd     	add	x29, sp, #0x10
    5f28: d5384108     	mrs	x8, SP_EL0
    5f2c: aa0103f3     	mov	x19, x1
    5f30: 910013e2     	add	x2, sp, #0x4
    5f34: f9438908     	ldr	x8, [x8, #0x710]
    5f38: 52800241     	mov	w1, #0x12               // =18
    5f3c: 52800083     	mov	w3, #0x4                // =4
    5f40: aa0003f4     	mov	x20, x0
    5f44: f90007e8     	str	x8, [sp, #0x8]
    5f48: b90007ff     	str	wzr, [sp, #0x4]
    5f4c: 94000000     	bl	0x5f4c <aw8693x_get_wav_loop+0x40>
		0000000000005f4c:  R_AARCH64_CALL26	i2c_r_bytes
    5f50: 394013e8     	ldrb	w8, [sp, #0x4]
    5f54: 90000015     	adrp	x21, 0x5000 <aw8693x_get_f0+0x5c>
		0000000000005f54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9ba
    5f58: 910002b5     	add	x21, x21, #0x0
		0000000000005f58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9ba
    5f5c: aa1303e0     	mov	x0, x19
    5f60: 52820001     	mov	w1, #0x1000             // =4096
    5f64: aa1503e2     	mov	x2, x21
    5f68: 53047d04     	lsr	w4, w8, #4
    5f6c: 12000d08     	and	w8, w8, #0xf
    5f70: 52800023     	mov	w3, #0x1                // =1
    5f74: 39009e88     	strb	w8, [x20, #0x27]
    5f78: 52820016     	mov	w22, #0x1000            // =4096
    5f7c: 39009a84     	strb	w4, [x20, #0x26]
    5f80: 94000000     	bl	0x5f80 <aw8693x_get_wav_loop+0x74>
		0000000000005f80:  R_AARCH64_CALL26	snprintf
    5f84: 93407c17     	sxtw	x23, w0
    5f88: 39409e84     	ldrb	w4, [x20, #0x27]
    5f8c: aa1503e2     	mov	x2, x21
    5f90: 52800043     	mov	w3, #0x2                // =2
    5f94: cb1702c1     	sub	x1, x22, x23
    5f98: 8b170260     	add	x0, x19, x23
    5f9c: 94000000     	bl	0x5f9c <aw8693x_get_wav_loop+0x90>
		0000000000005f9c:  R_AARCH64_CALL26	snprintf
    5fa0: 394017e8     	ldrb	w8, [sp, #0x5]
    5fa4: 8b20c2f7     	add	x23, x23, w0, sxtw
    5fa8: aa1503e2     	mov	x2, x21
    5fac: 52800063     	mov	w3, #0x3                // =3
    5fb0: 53047d04     	lsr	w4, w8, #4
    5fb4: 12000d08     	and	w8, w8, #0xf
    5fb8: cb1702c1     	sub	x1, x22, x23
    5fbc: 8b170260     	add	x0, x19, x23
    5fc0: 3900a688     	strb	w8, [x20, #0x29]
    5fc4: 3900a284     	strb	w4, [x20, #0x28]
    5fc8: 94000000     	bl	0x5fc8 <aw8693x_get_wav_loop+0xbc>
		0000000000005fc8:  R_AARCH64_CALL26	snprintf
    5fcc: 8b20c2f7     	add	x23, x23, w0, sxtw
    5fd0: 3940a684     	ldrb	w4, [x20, #0x29]
    5fd4: aa1503e2     	mov	x2, x21
    5fd8: 52800083     	mov	w3, #0x4                // =4
    5fdc: cb1702c1     	sub	x1, x22, x23
    5fe0: 8b170260     	add	x0, x19, x23
    5fe4: 94000000     	bl	0x5fe4 <aw8693x_get_wav_loop+0xd8>
		0000000000005fe4:  R_AARCH64_CALL26	snprintf
    5fe8: 39401be8     	ldrb	w8, [sp, #0x6]
    5fec: 8b20c2f7     	add	x23, x23, w0, sxtw
    5ff0: aa1503e2     	mov	x2, x21
    5ff4: 528000a3     	mov	w3, #0x5                // =5
    5ff8: 53047d04     	lsr	w4, w8, #4
    5ffc: 12000d08     	and	w8, w8, #0xf
    6000: cb1702c1     	sub	x1, x22, x23
    6004: 8b170260     	add	x0, x19, x23
    6008: 3900ae88     	strb	w8, [x20, #0x2b]
    600c: 3900aa84     	strb	w4, [x20, #0x2a]
    6010: 94000000     	bl	0x6010 <aw8693x_get_wav_loop+0x104>
		0000000000006010:  R_AARCH64_CALL26	snprintf
    6014: 8b20c2f7     	add	x23, x23, w0, sxtw
    6018: 3940ae84     	ldrb	w4, [x20, #0x2b]
    601c: aa1503e2     	mov	x2, x21
    6020: 528000c3     	mov	w3, #0x6                // =6
    6024: cb1702c1     	sub	x1, x22, x23
    6028: 8b170260     	add	x0, x19, x23
    602c: 94000000     	bl	0x602c <aw8693x_get_wav_loop+0x120>
		000000000000602c:  R_AARCH64_CALL26	snprintf
    6030: 39401fe8     	ldrb	w8, [sp, #0x7]
    6034: 8b20c2f7     	add	x23, x23, w0, sxtw
    6038: aa1503e2     	mov	x2, x21
    603c: 528000e3     	mov	w3, #0x7                // =7
    6040: 53047d04     	lsr	w4, w8, #4
    6044: 12000d08     	and	w8, w8, #0xf
    6048: cb1702c1     	sub	x1, x22, x23
    604c: 8b170260     	add	x0, x19, x23
    6050: 3900b688     	strb	w8, [x20, #0x2d]
    6054: 3900b284     	strb	w4, [x20, #0x2c]
    6058: 94000000     	bl	0x6058 <aw8693x_get_wav_loop+0x14c>
		0000000000006058:  R_AARCH64_CALL26	snprintf
    605c: 8b20c2f7     	add	x23, x23, w0, sxtw
    6060: 3940b684     	ldrb	w4, [x20, #0x2d]
    6064: aa1503e2     	mov	x2, x21
    6068: 52800103     	mov	w3, #0x8                // =8
    606c: cb1702c1     	sub	x1, x22, x23
    6070: 8b170260     	add	x0, x19, x23
    6074: 94000000     	bl	0x6074 <aw8693x_get_wav_loop+0x168>
		0000000000006074:  R_AARCH64_CALL26	snprintf
    6078: d5384108     	mrs	x8, SP_EL0
    607c: f9438908     	ldr	x8, [x8, #0x710]
    6080: f94007e9     	ldr	x9, [sp, #0x8]
    6084: eb09011f     	cmp	x8, x9
    6088: 54000121     	b.ne	0x60ac <aw8693x_get_wav_loop+0x1a0>
    608c: 8b20c2e0     	add	x0, x23, w0, sxtw
    6090: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    6094: f94013f7     	ldr	x23, [sp, #0x20]
    6098: a94357f6     	ldp	x22, x21, [sp, #0x30]
    609c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    60a0: 910143ff     	add	sp, sp, #0x50
    60a4: d50323bf     	autiasp
    60a8: d65f03c0     	ret
    60ac: 94000000     	bl	0x60ac <aw8693x_get_wav_loop+0x1a0>
		00000000000060ac:  R_AARCH64_CALL26	__stack_chk_fail
