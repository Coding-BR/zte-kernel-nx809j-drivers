
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000040e8 <suspend_store>:
    40e8: d503233f     	paciasp
    40ec: d100c3ff     	sub	sp, sp, #0x30
    40f0: a9017bfd     	stp	x29, x30, [sp, #0x10]
    40f4: a9024ff4     	stp	x20, x19, [sp, #0x20]
    40f8: 910043fd     	add	x29, sp, #0x10
    40fc: d5384108     	mrs	x8, SP_EL0
    4100: aa0203f3     	mov	x19, x2
    4104: aa0103e0     	mov	x0, x1
    4108: f9438908     	ldr	x8, [x8, #0x710]
    410c: 910013e3     	add	x3, sp, #0x4
    4110: aa0203e1     	mov	x1, x2
    4114: 52800142     	mov	w2, #0xa                // =10
    4118: f90007e8     	str	x8, [sp, #0x8]
    411c: 90000008     	adrp	x8, 0x4000 <suspend_show+0x10>
		000000000000411c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    4120: f9400114     	ldr	x20, [x8]
		0000000000004120:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    4124: b90007ff     	str	wzr, [sp, #0x4]
    4128: 94000000     	bl	0x4128 <suspend_store+0x40>
		0000000000004128:  R_AARCH64_CALL26	kstrtouint_from_user
    412c: 340001a0     	cbz	w0, 0x4160 <suspend_store+0x78>
    4130: 928002b3     	mov	x19, #-0x16             // =-22
    4134: d5384108     	mrs	x8, SP_EL0
    4138: f9438908     	ldr	x8, [x8, #0x710]
    413c: f94007e9     	ldr	x9, [sp, #0x8]
    4140: eb09011f     	cmp	x8, x9
    4144: 540005a1     	b.ne	0x41f8 <suspend_store+0x110>
    4148: aa1303e0     	mov	x0, x19
    414c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    4150: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    4154: 9100c3ff     	add	sp, sp, #0x30
    4158: d50323bf     	autiasp
    415c: d65f03c0     	ret
    4160: b94007e8     	ldr	w8, [sp, #0x4]
    4164: 90000000     	adrp	x0, 0x4000 <suspend_show+0x10>
		0000000000004164:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaea
    4168: 91000000     	add	x0, x0, #0x0
		0000000000004168:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaea
    416c: 90000001     	adrp	x1, 0x4000 <suspend_show+0x10>
		000000000000416c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f
    4170: 91000021     	add	x1, x1, #0x0
		0000000000004170:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f
    4174: 7100011f     	cmp	w8, #0x0
    4178: 1a9f07e2     	cset	w2, ne
    417c: b90007e2     	str	w2, [sp, #0x4]
    4180: 94000000     	bl	0x4180 <suspend_store+0x98>
		0000000000004180:  R_AARCH64_CALL26	_printk
    4184: 91318280     	add	x0, x20, #0xc60
    4188: 94000000     	bl	0x4188 <suspend_store+0xa0>
		0000000000004188:  R_AARCH64_CALL26	mutex_lock
    418c: 39405a89     	ldrb	w9, [x20, #0x16]
    4190: b94007e8     	ldr	w8, [sp, #0x4]
    4194: 6b09011f     	cmp	w8, w9
    4198: 54000240     	b.eq	0x41e0 <suspend_store+0xf8>
    419c: 7100011f     	cmp	w8, #0x0
    41a0: f9473288     	ldr	x8, [x20, #0xe60]
    41a4: 1a9f07e9     	cset	w9, ne
    41a8: 39005a89     	strb	w9, [x20, #0x16]
    41ac: b4000148     	cbz	x8, 0x41d4 <suspend_store+0xec>
    41b0: aa1403e0     	mov	x0, x20
    41b4: 2a1f03e1     	mov	w1, wzr
    41b8: b85fc110     	ldur	w16, [x8, #-0x4]
    41bc: 72969211     	movk	w17, #0xb490
    41c0: 72a71ab1     	movk	w17, #0x38d5, lsl #16
    41c4: 6b11021f     	cmp	w16, w17
    41c8: 54000040     	b.eq	0x41d0 <suspend_store+0xe8>
    41cc: d4304500     	brk	#0x8228
    41d0: d63f0100     	blr	x8
    41d4: 91318280     	add	x0, x20, #0xc60
    41d8: 94000000     	bl	0x41d8 <suspend_store+0xf0>
		00000000000041d8:  R_AARCH64_CALL26	mutex_unlock
    41dc: 17ffffd6     	b	0x4134 <suspend_store+0x4c>
    41e0: 90000000     	adrp	x0, 0x4000 <suspend_show+0x10>
		00000000000041e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6b4c
    41e4: 91000000     	add	x0, x0, #0x0
		00000000000041e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6b4c
    41e8: 90000001     	adrp	x1, 0x4000 <suspend_show+0x10>
		00000000000041e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f
    41ec: 91000021     	add	x1, x1, #0x0
		00000000000041ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f
    41f0: 94000000     	bl	0x41f0 <suspend_store+0x108>
		00000000000041f0:  R_AARCH64_CALL26	_printk
    41f4: 17fffff8     	b	0x41d4 <suspend_store+0xec>
    41f8: 94000000     	bl	0x41f8 <suspend_store+0x110>
		00000000000041f8:  R_AARCH64_CALL26	__stack_chk_fail
