
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000060b4 <audio_off>:
    60b4: d503233f     	paciasp
    60b8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    60bc: a90157f6     	stp	x22, x21, [sp, #0x10]
    60c0: a9024ff4     	stp	x20, x19, [sp, #0x20]
    60c4: 910003fd     	mov	x29, sp
    60c8: aa0003f3     	mov	x19, x0
    60cc: 90000000     	adrp	x0, 0x6000 <aw8693x_get_wav_loop+0xf4>
		00000000000060cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6e1
    60d0: 91000000     	add	x0, x0, #0x0
		00000000000060d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6e1
    60d4: 90000001     	adrp	x1, 0x6000 <aw8693x_get_wav_loop+0xf4>
		00000000000060d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    60d8: 91000021     	add	x1, x1, #0x0
		00000000000060d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    60dc: 90000003     	adrp	x3, 0x6000 <aw8693x_get_wav_loop+0xf4>
		00000000000060dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32a
    60e0: 91000063     	add	x3, x3, #0x0
		00000000000060e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32a
    60e4: 5280eca2     	mov	w2, #0x765              // =1893
    60e8: 94000000     	bl	0x60e8 <audio_off+0x34>
		00000000000060e8:  R_AARCH64_CALL26	_printk
    60ec: 910bc260     	add	x0, x19, #0x2f0
    60f0: 94000000     	bl	0x60f0 <audio_off+0x3c>
		00000000000060f0:  R_AARCH64_CALL26	mutex_lock
    60f4: f942e668     	ldr	x8, [x19, #0x5c8]
    60f8: aa1303e0     	mov	x0, x19
    60fc: 52801001     	mov	w1, #0x80               // =128
    6100: f9404508     	ldr	x8, [x8, #0x88]
    6104: b85fc110     	ldur	w16, [x8, #-0x4]
    6108: 729bedd1     	movk	w17, #0xdf6e
    610c: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    6110: 6b11021f     	cmp	w16, w17
    6114: 54000040     	b.eq	0x611c <audio_off+0x68>
    6118: d4304500     	brk	#0x8228
    611c: d63f0100     	blr	x8
    6120: f942e668     	ldr	x8, [x19, #0x5c8]
    6124: aa1303e0     	mov	x0, x19
    6128: f9401d08     	ldr	x8, [x8, #0x38]
    612c: b85fc110     	ldur	w16, [x8, #-0x4]
    6130: 72810611     	movk	w17, #0x830
    6134: 72b08f51     	movk	w17, #0x847a, lsl #16
    6138: 6b11021f     	cmp	w16, w17
    613c: 54000040     	b.eq	0x6144 <audio_off+0x90>
    6140: d4304500     	brk	#0x8228
    6144: d63f0100     	blr	x8
    6148: f942ce69     	ldr	x9, [x19, #0x598]
    614c: 91164274     	add	x20, x19, #0x590
    6150: eb14013f     	cmp	x9, x20
    6154: 54000300     	b.eq	0x61b4 <audio_off+0x100>
    6158: d2802015     	mov	x21, #0x100             // =256
    615c: f2fbd5b5     	movk	x21, #0xdead, lsl #48
    6160: f9400536     	ldr	x22, [x9, #0x8]
    6164: f94002c8     	ldr	x8, [x22]
    6168: eb09011f     	cmp	x8, x9
    616c: 540001e1     	b.ne	0x61a8 <audio_off+0xf4>
    6170: f9400128     	ldr	x8, [x9]
    6174: f940050a     	ldr	x10, [x8, #0x8]
    6178: eb09015f     	cmp	x10, x9
    617c: 54000161     	b.ne	0x61a8 <audio_off+0xf4>
    6180: f9000516     	str	x22, [x8, #0x8]
    6184: f90002c8     	str	x8, [x22]
    6188: 91008aa8     	add	x8, x21, #0x22
    618c: d1002120     	sub	x0, x9, #0x8
    6190: a9002135     	stp	x21, x8, [x9]
    6194: 94000000     	bl	0x6194 <audio_off+0xe0>
		0000000000006194:  R_AARCH64_CALL26	kfree
    6198: eb1402df     	cmp	x22, x20
    619c: aa1603e9     	mov	x9, x22
    61a0: 54fffe01     	b.ne	0x6160 <audio_off+0xac>
    61a4: 14000004     	b	0x61b4 <audio_off+0x100>
    61a8: aa0903e0     	mov	x0, x9
    61ac: 94000000     	bl	0x61ac <audio_off+0xf8>
		00000000000061ac:  R_AARCH64_CALL26	__list_del_entry_valid_or_report
    61b0: 17fffff6     	b	0x6188 <audio_off+0xd4>
    61b4: 910bc260     	add	x0, x19, #0x2f0
    61b8: 94000000     	bl	0x61b8 <audio_off+0x104>
		00000000000061b8:  R_AARCH64_CALL26	mutex_unlock
    61bc: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    61c0: a94157f6     	ldp	x22, x21, [sp, #0x10]
    61c4: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    61c8: d50323bf     	autiasp
    61cc: d65f03c0     	ret
