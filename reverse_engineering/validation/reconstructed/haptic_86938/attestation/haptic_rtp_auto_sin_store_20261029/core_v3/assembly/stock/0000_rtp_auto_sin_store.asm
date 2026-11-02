
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000040b0 <rtp_auto_sin_store>:
    40b0: d503233f     	paciasp
    40b4: d10103ff     	sub	sp, sp, #0x40
    40b8: a9017bfd     	stp	x29, x30, [sp, #0x10]
    40bc: f90013f5     	str	x21, [sp, #0x20]
    40c0: a9034ff4     	stp	x20, x19, [sp, #0x30]
    40c4: 910043fd     	add	x29, sp, #0x10
    40c8: d5384109     	mrs	x9, SP_EL0
    40cc: aa0203e8     	mov	x8, x2
    40d0: 910013e2     	add	x2, sp, #0x4
    40d4: f9438929     	ldr	x9, [x9, #0x710]
    40d8: 2a1f03e1     	mov	w1, wzr
    40dc: aa0303f3     	mov	x19, x3
    40e0: f90007e9     	str	x9, [sp, #0x8]
    40e4: f9404c15     	ldr	x21, [x0, #0x98]
    40e8: aa0803e0     	mov	x0, x8
    40ec: b90007ff     	str	wzr, [sp, #0x4]
    40f0: 94000000     	bl	0x40f0 <rtp_auto_sin_store+0x40>
		00000000000040f0:  R_AARCH64_CALL26	kstrtouint
    40f4: 37f80520     	tbnz	w0, #0x1f, 0x4198 <rtp_auto_sin_store+0xe8>
    40f8: 910922a0     	add	x0, x21, #0x248
    40fc: d102a2b4     	sub	x20, x21, #0xa8
    4100: 94000000     	bl	0x4100 <rtp_auto_sin_store+0x50>
		0000000000004100:  R_AARCH64_CALL26	mutex_lock
    4104: b94007e4     	ldr	w4, [sp, #0x4]
    4108: 34000184     	cbz	w4, 0x4138 <rtp_auto_sin_store+0x88>
    410c: b9463aa8     	ldr	w8, [x21, #0x638]
    4110: 6b08009f     	cmp	w4, w8
    4114: 54000582     	b.hs	0x41c4 <rtp_auto_sin_store+0x114>
    4118: 52800028     	mov	w8, #0x1                // =1
    411c: aa1403e0     	mov	x0, x20
    4120: 528005a1     	mov	w1, #0x2d               // =45
    4124: 12800402     	mov	w2, #-0x21              // =-33
    4128: 52800403     	mov	w3, #0x20               // =32
    412c: b81982a8     	stur	w8, [x21, #-0x68]
    4130: b81e82a4     	stur	w4, [x21, #-0x18]
    4134: 14000006     	b	0x414c <rtp_auto_sin_store+0x9c>
    4138: aa1403e0     	mov	x0, x20
    413c: 528005a1     	mov	w1, #0x2d               // =45
    4140: 12800402     	mov	w2, #-0x21              // =-33
    4144: 2a1f03e3     	mov	w3, wzr
    4148: b81982bf     	stur	wzr, [x21, #-0x68]
    414c: 94000000     	bl	0x414c <rtp_auto_sin_store+0x9c>
		000000000000414c:  R_AARCH64_CALL26	i2c_w_bits
    4150: 910922a0     	add	x0, x21, #0x248
    4154: 94000000     	bl	0x4154 <rtp_auto_sin_store+0xa4>
		0000000000004154:  R_AARCH64_CALL26	mutex_unlock
    4158: f941d2a1     	ldr	x1, [x21, #0x3a0]
    415c: 910be2a2     	add	x2, x21, #0x2f8
    4160: 52800400     	mov	w0, #0x20               // =32
    4164: 94000000     	bl	0x4164 <rtp_auto_sin_store+0xb4>
		0000000000004164:  R_AARCH64_CALL26	queue_work_on
    4168: d5384108     	mrs	x8, SP_EL0
    416c: f9438908     	ldr	x8, [x8, #0x710]
    4170: f94007e9     	ldr	x9, [sp, #0x8]
    4174: eb09011f     	cmp	x8, x9
    4178: 540003a1     	b.ne	0x41ec <rtp_auto_sin_store+0x13c>
    417c: aa1303e0     	mov	x0, x19
    4180: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    4184: f94013f5     	ldr	x21, [sp, #0x20]
    4188: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    418c: 910103ff     	add	sp, sp, #0x40
    4190: d50323bf     	autiasp
    4194: d65f03c0     	ret
    4198: 2a0003f4     	mov	w20, w0
    419c: 90000000     	adrp	x0, 0x4000 <aw8693x_trig3_param_config+0x88>
		000000000000419c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2417
    41a0: 91000000     	add	x0, x0, #0x0
		00000000000041a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2417
    41a4: 90000001     	adrp	x1, 0x4000 <aw8693x_trig3_param_config+0x88>
		00000000000041a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    41a8: 91000021     	add	x1, x1, #0x0
		00000000000041a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    41ac: 90000003     	adrp	x3, 0x4000 <aw8693x_trig3_param_config+0x88>
		00000000000041ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc2f
    41b0: 91000063     	add	x3, x3, #0x0
		00000000000041b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc2f
    41b4: 52811ba2     	mov	w2, #0x8dd              // =2269
    41b8: 94000000     	bl	0x41b8 <rtp_auto_sin_store+0x108>
		00000000000041b8:  R_AARCH64_CALL26	_printk
    41bc: 93407e93     	sxtw	x19, w20
    41c0: 17ffffea     	b	0x4168 <rtp_auto_sin_store+0xb8>
    41c4: 90000000     	adrp	x0, 0x4000 <aw8693x_trig3_param_config+0x88>
		00000000000041c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19dc
    41c8: 91000000     	add	x0, x0, #0x0
		00000000000041c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19dc
    41cc: 90000001     	adrp	x1, 0x4000 <aw8693x_trig3_param_config+0x88>
		00000000000041cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    41d0: 91000021     	add	x1, x1, #0x0
		00000000000041d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    41d4: 90000003     	adrp	x3, 0x4000 <aw8693x_trig3_param_config+0x88>
		00000000000041d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc2f
    41d8: 91000063     	add	x3, x3, #0x0
		00000000000041d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc2f
    41dc: 52811dc2     	mov	w2, #0x8ee              // =2286
    41e0: b81982bf     	stur	wzr, [x21, #-0x68]
    41e4: 94000000     	bl	0x41e4 <rtp_auto_sin_store+0x134>
		00000000000041e4:  R_AARCH64_CALL26	_printk
    41e8: 17ffffda     	b	0x4150 <rtp_auto_sin_store+0xa0>
    41ec: 94000000     	bl	0x41ec <rtp_auto_sin_store+0x13c>
		00000000000041ec:  R_AARCH64_CALL26	__stack_chk_fail
