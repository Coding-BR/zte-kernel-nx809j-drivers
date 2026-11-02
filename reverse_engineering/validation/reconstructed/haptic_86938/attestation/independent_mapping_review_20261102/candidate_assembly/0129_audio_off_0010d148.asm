
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000060e4 <audio_off>:
    60e4: d503233f     	paciasp
    60e8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    60ec: a90157f6     	stp	x22, x21, [sp, #0x10]
    60f0: a9024ff4     	stp	x20, x19, [sp, #0x20]
    60f4: 910003fd     	mov	x29, sp
    60f8: aa0003f3     	mov	x19, x0
    60fc: 90000000     	adrp	x0, 0x6000 <aw8693x_get_wav_loop+0xc4>
		00000000000060fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6e1
    6100: 91000000     	add	x0, x0, #0x0
		0000000000006100:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6e1
    6104: 90000001     	adrp	x1, 0x6000 <aw8693x_get_wav_loop+0xc4>
		0000000000006104:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    6108: 91000021     	add	x1, x1, #0x0
		0000000000006108:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    610c: 90000003     	adrp	x3, 0x6000 <aw8693x_get_wav_loop+0xc4>
		000000000000610c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32a
    6110: 91000063     	add	x3, x3, #0x0
		0000000000006110:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32a
    6114: 5280eca2     	mov	w2, #0x765              // =1893
    6118: 94000000     	bl	0x6118 <audio_off+0x34>
		0000000000006118:  R_AARCH64_CALL26	_printk
    611c: 910bc260     	add	x0, x19, #0x2f0
    6120: 94000000     	bl	0x6120 <audio_off+0x3c>
		0000000000006120:  R_AARCH64_CALL26	mutex_lock
    6124: f942e668     	ldr	x8, [x19, #0x5c8]
    6128: aa1303e0     	mov	x0, x19
    612c: 52801001     	mov	w1, #0x80               // =128
    6130: f9404508     	ldr	x8, [x8, #0x88]
    6134: b85fc110     	ldur	w16, [x8, #-0x4]
    6138: 729bedd1     	movk	w17, #0xdf6e
    613c: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    6140: 6b11021f     	cmp	w16, w17
    6144: 54000040     	b.eq	0x614c <audio_off+0x68>
    6148: d4304500     	brk	#0x8228
    614c: d63f0100     	blr	x8
    6150: f942e668     	ldr	x8, [x19, #0x5c8]
    6154: aa1303e0     	mov	x0, x19
    6158: f9401d08     	ldr	x8, [x8, #0x38]
    615c: b85fc110     	ldur	w16, [x8, #-0x4]
    6160: 72810611     	movk	w17, #0x830
    6164: 72b08f51     	movk	w17, #0x847a, lsl #16
    6168: 6b11021f     	cmp	w16, w17
    616c: 54000040     	b.eq	0x6174 <audio_off+0x90>
    6170: d4304500     	brk	#0x8228
    6174: d63f0100     	blr	x8
    6178: f942ce69     	ldr	x9, [x19, #0x598]
    617c: 91164274     	add	x20, x19, #0x590
    6180: eb14013f     	cmp	x9, x20
    6184: 54000300     	b.eq	0x61e4 <audio_off+0x100>
    6188: d2802015     	mov	x21, #0x100             // =256
    618c: f2fbd5b5     	movk	x21, #0xdead, lsl #48
    6190: f9400536     	ldr	x22, [x9, #0x8]
    6194: f94002c8     	ldr	x8, [x22]
    6198: eb09011f     	cmp	x8, x9
    619c: 540001e1     	b.ne	0x61d8 <audio_off+0xf4>
    61a0: f9400128     	ldr	x8, [x9]
    61a4: f940050a     	ldr	x10, [x8, #0x8]
    61a8: eb09015f     	cmp	x10, x9
    61ac: 54000161     	b.ne	0x61d8 <audio_off+0xf4>
    61b0: f9000516     	str	x22, [x8, #0x8]
    61b4: f90002c8     	str	x8, [x22]
    61b8: 91008aa8     	add	x8, x21, #0x22
    61bc: d1002120     	sub	x0, x9, #0x8
    61c0: a9002135     	stp	x21, x8, [x9]
    61c4: 94000000     	bl	0x61c4 <audio_off+0xe0>
		00000000000061c4:  R_AARCH64_CALL26	kfree
    61c8: eb1402df     	cmp	x22, x20
    61cc: aa1603e9     	mov	x9, x22
    61d0: 54fffe01     	b.ne	0x6190 <audio_off+0xac>
    61d4: 14000004     	b	0x61e4 <audio_off+0x100>
    61d8: aa0903e0     	mov	x0, x9
    61dc: 94000000     	bl	0x61dc <audio_off+0xf8>
		00000000000061dc:  R_AARCH64_CALL26	__list_del_entry_valid_or_report
    61e0: 17fffff6     	b	0x61b8 <audio_off+0xd4>
    61e4: 910bc260     	add	x0, x19, #0x2f0
    61e8: 94000000     	bl	0x61e8 <audio_off+0x104>
		00000000000061e8:  R_AARCH64_CALL26	mutex_unlock
    61ec: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    61f0: a94157f6     	ldp	x22, x21, [sp, #0x10]
    61f4: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    61f8: d50323bf     	autiasp
    61fc: d65f03c0     	ret
