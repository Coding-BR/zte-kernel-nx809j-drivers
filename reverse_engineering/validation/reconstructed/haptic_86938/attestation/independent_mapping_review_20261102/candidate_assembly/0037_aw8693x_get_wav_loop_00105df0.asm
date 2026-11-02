
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000005f3c <aw8693x_get_wav_loop>:
    5f3c: d503233f     	paciasp
    5f40: d10143ff     	sub	sp, sp, #0x50
    5f44: a9017bfd     	stp	x29, x30, [sp, #0x10]
    5f48: f90013f7     	str	x23, [sp, #0x20]
    5f4c: a90357f6     	stp	x22, x21, [sp, #0x30]
    5f50: a9044ff4     	stp	x20, x19, [sp, #0x40]
    5f54: 910043fd     	add	x29, sp, #0x10
    5f58: d5384108     	mrs	x8, SP_EL0
    5f5c: aa0103f3     	mov	x19, x1
    5f60: 910013e2     	add	x2, sp, #0x4
    5f64: f9438908     	ldr	x8, [x8, #0x710]
    5f68: 52800241     	mov	w1, #0x12               // =18
    5f6c: 52800083     	mov	w3, #0x4                // =4
    5f70: aa0003f4     	mov	x20, x0
    5f74: f90007e8     	str	x8, [sp, #0x8]
    5f78: b90007ff     	str	wzr, [sp, #0x4]
    5f7c: 94000000     	bl	0x5f7c <aw8693x_get_wav_loop+0x40>
		0000000000005f7c:  R_AARCH64_CALL26	i2c_r_bytes
    5f80: 394013e8     	ldrb	w8, [sp, #0x4]
    5f84: 90000015     	adrp	x21, 0x5000 <aw8693x_get_f0+0x2c>
		0000000000005f84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9ba
    5f88: 910002b5     	add	x21, x21, #0x0
		0000000000005f88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9ba
    5f8c: aa1303e0     	mov	x0, x19
    5f90: 52820001     	mov	w1, #0x1000             // =4096
    5f94: aa1503e2     	mov	x2, x21
    5f98: 53047d04     	lsr	w4, w8, #4
    5f9c: 12000d08     	and	w8, w8, #0xf
    5fa0: 52800023     	mov	w3, #0x1                // =1
    5fa4: 39009e88     	strb	w8, [x20, #0x27]
    5fa8: 52820016     	mov	w22, #0x1000            // =4096
    5fac: 39009a84     	strb	w4, [x20, #0x26]
    5fb0: 94000000     	bl	0x5fb0 <aw8693x_get_wav_loop+0x74>
		0000000000005fb0:  R_AARCH64_CALL26	snprintf
    5fb4: 93407c17     	sxtw	x23, w0
    5fb8: 39409e84     	ldrb	w4, [x20, #0x27]
    5fbc: aa1503e2     	mov	x2, x21
    5fc0: 52800043     	mov	w3, #0x2                // =2
    5fc4: cb1702c1     	sub	x1, x22, x23
    5fc8: 8b170260     	add	x0, x19, x23
    5fcc: 94000000     	bl	0x5fcc <aw8693x_get_wav_loop+0x90>
		0000000000005fcc:  R_AARCH64_CALL26	snprintf
    5fd0: 394017e8     	ldrb	w8, [sp, #0x5]
    5fd4: 8b20c2f7     	add	x23, x23, w0, sxtw
    5fd8: aa1503e2     	mov	x2, x21
    5fdc: 52800063     	mov	w3, #0x3                // =3
    5fe0: 53047d04     	lsr	w4, w8, #4
    5fe4: 12000d08     	and	w8, w8, #0xf
    5fe8: cb1702c1     	sub	x1, x22, x23
    5fec: 8b170260     	add	x0, x19, x23
    5ff0: 3900a688     	strb	w8, [x20, #0x29]
    5ff4: 3900a284     	strb	w4, [x20, #0x28]
    5ff8: 94000000     	bl	0x5ff8 <aw8693x_get_wav_loop+0xbc>
		0000000000005ff8:  R_AARCH64_CALL26	snprintf
    5ffc: 8b20c2f7     	add	x23, x23, w0, sxtw
    6000: 3940a684     	ldrb	w4, [x20, #0x29]
    6004: aa1503e2     	mov	x2, x21
    6008: 52800083     	mov	w3, #0x4                // =4
    600c: cb1702c1     	sub	x1, x22, x23
    6010: 8b170260     	add	x0, x19, x23
    6014: 94000000     	bl	0x6014 <aw8693x_get_wav_loop+0xd8>
		0000000000006014:  R_AARCH64_CALL26	snprintf
    6018: 39401be8     	ldrb	w8, [sp, #0x6]
    601c: 8b20c2f7     	add	x23, x23, w0, sxtw
    6020: aa1503e2     	mov	x2, x21
    6024: 528000a3     	mov	w3, #0x5                // =5
    6028: 53047d04     	lsr	w4, w8, #4
    602c: 12000d08     	and	w8, w8, #0xf
    6030: cb1702c1     	sub	x1, x22, x23
    6034: 8b170260     	add	x0, x19, x23
    6038: 3900ae88     	strb	w8, [x20, #0x2b]
    603c: 3900aa84     	strb	w4, [x20, #0x2a]
    6040: 94000000     	bl	0x6040 <aw8693x_get_wav_loop+0x104>
		0000000000006040:  R_AARCH64_CALL26	snprintf
    6044: 8b20c2f7     	add	x23, x23, w0, sxtw
    6048: 3940ae84     	ldrb	w4, [x20, #0x2b]
    604c: aa1503e2     	mov	x2, x21
    6050: 528000c3     	mov	w3, #0x6                // =6
    6054: cb1702c1     	sub	x1, x22, x23
    6058: 8b170260     	add	x0, x19, x23
    605c: 94000000     	bl	0x605c <aw8693x_get_wav_loop+0x120>
		000000000000605c:  R_AARCH64_CALL26	snprintf
    6060: 39401fe8     	ldrb	w8, [sp, #0x7]
    6064: 8b20c2f7     	add	x23, x23, w0, sxtw
    6068: aa1503e2     	mov	x2, x21
    606c: 528000e3     	mov	w3, #0x7                // =7
    6070: 53047d04     	lsr	w4, w8, #4
    6074: 12000d08     	and	w8, w8, #0xf
    6078: cb1702c1     	sub	x1, x22, x23
    607c: 8b170260     	add	x0, x19, x23
    6080: 3900b688     	strb	w8, [x20, #0x2d]
    6084: 3900b284     	strb	w4, [x20, #0x2c]
    6088: 94000000     	bl	0x6088 <aw8693x_get_wav_loop+0x14c>
		0000000000006088:  R_AARCH64_CALL26	snprintf
    608c: 8b20c2f7     	add	x23, x23, w0, sxtw
    6090: 3940b684     	ldrb	w4, [x20, #0x2d]
    6094: aa1503e2     	mov	x2, x21
    6098: 52800103     	mov	w3, #0x8                // =8
    609c: cb1702c1     	sub	x1, x22, x23
    60a0: 8b170260     	add	x0, x19, x23
    60a4: 94000000     	bl	0x60a4 <aw8693x_get_wav_loop+0x168>
		00000000000060a4:  R_AARCH64_CALL26	snprintf
    60a8: d5384108     	mrs	x8, SP_EL0
    60ac: f9438908     	ldr	x8, [x8, #0x710]
    60b0: f94007e9     	ldr	x9, [sp, #0x8]
    60b4: eb09011f     	cmp	x8, x9
    60b8: 54000121     	b.ne	0x60dc <aw8693x_get_wav_loop+0x1a0>
    60bc: 8b20c2e0     	add	x0, x23, w0, sxtw
    60c0: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    60c4: f94013f7     	ldr	x23, [sp, #0x20]
    60c8: a94357f6     	ldp	x22, x21, [sp, #0x30]
    60cc: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    60d0: 910143ff     	add	sp, sp, #0x50
    60d4: d50323bf     	autiasp
    60d8: d65f03c0     	ret
    60dc: 94000000     	bl	0x60dc <aw8693x_get_wav_loop+0x1a0>
		00000000000060dc:  R_AARCH64_CALL26	__stack_chk_fail
