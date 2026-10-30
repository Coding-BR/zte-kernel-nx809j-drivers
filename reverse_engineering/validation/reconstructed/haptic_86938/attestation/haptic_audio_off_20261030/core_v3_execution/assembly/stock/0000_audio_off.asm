
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000a328 <audio_off>:
    a328: d503233f     	paciasp
    a32c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    a330: a90157f6     	stp	x22, x21, [sp, #0x10]
    a334: a9024ff4     	stp	x20, x19, [sp, #0x20]
    a338: 910003fd     	mov	x29, sp
    a33c: aa0003f3     	mov	x19, x0
    a340: 90000000     	adrp	x0, 0xa000 <haptic_audio_store+0x84>
		000000000000a340:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb54
    a344: 91000000     	add	x0, x0, #0x0
		000000000000a344:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb54
    a348: 90000001     	adrp	x1, 0xa000 <haptic_audio_store+0x84>
		000000000000a348:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    a34c: 91000021     	add	x1, x1, #0x0
		000000000000a34c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    a350: 90000003     	adrp	x3, 0xa000 <haptic_audio_store+0x84>
		000000000000a350:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5a2
    a354: 91000063     	add	x3, x3, #0x0
		000000000000a354:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5a2
    a358: 5280eca2     	mov	w2, #0x765              // =1893
    a35c: 94000000     	bl	0xa35c <audio_off+0x34>
		000000000000a35c:  R_AARCH64_CALL26	_printk
    a360: 910bc260     	add	x0, x19, #0x2f0
    a364: 94000000     	bl	0xa364 <audio_off+0x3c>
		000000000000a364:  R_AARCH64_CALL26	mutex_lock
    a368: f942e668     	ldr	x8, [x19, #0x5c8]
    a36c: aa1303e0     	mov	x0, x19
    a370: 52801001     	mov	w1, #0x80               // =128
    a374: f9404508     	ldr	x8, [x8, #0x88]
    a378: b85fc110     	ldur	w16, [x8, #-0x4]
    a37c: 729bedd1     	movk	w17, #0xdf6e
    a380: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    a384: 6b11021f     	cmp	w16, w17
    a388: 54000040     	b.eq	0xa390 <audio_off+0x68>
    a38c: d4304500     	brk	#0x8228
    a390: d63f0100     	blr	x8
    a394: f942e668     	ldr	x8, [x19, #0x5c8]
    a398: aa1303e0     	mov	x0, x19
    a39c: f9401d08     	ldr	x8, [x8, #0x38]
    a3a0: b85fc110     	ldur	w16, [x8, #-0x4]
    a3a4: 72810611     	movk	w17, #0x830
    a3a8: 72b08f51     	movk	w17, #0x847a, lsl #16
    a3ac: 6b11021f     	cmp	w16, w17
    a3b0: 54000040     	b.eq	0xa3b8 <audio_off+0x90>
    a3b4: d4304500     	brk	#0x8228
    a3b8: d63f0100     	blr	x8
    a3bc: f942ce69     	ldr	x9, [x19, #0x598]
    a3c0: 91164274     	add	x20, x19, #0x590
    a3c4: eb14013f     	cmp	x9, x20
    a3c8: 54000300     	b.eq	0xa428 <audio_off+0x100>
    a3cc: d2802015     	mov	x21, #0x100             // =256
    a3d0: f2fbd5b5     	movk	x21, #0xdead, lsl #48
    a3d4: f9400536     	ldr	x22, [x9, #0x8]
    a3d8: f94002c8     	ldr	x8, [x22]
    a3dc: eb09011f     	cmp	x8, x9
    a3e0: 540001e1     	b.ne	0xa41c <audio_off+0xf4>
    a3e4: f9400128     	ldr	x8, [x9]
    a3e8: f940050a     	ldr	x10, [x8, #0x8]
    a3ec: eb09015f     	cmp	x10, x9
    a3f0: 54000161     	b.ne	0xa41c <audio_off+0xf4>
    a3f4: f9000516     	str	x22, [x8, #0x8]
    a3f8: f90002c8     	str	x8, [x22]
    a3fc: 91008aa8     	add	x8, x21, #0x22
    a400: d1002120     	sub	x0, x9, #0x8
    a404: a9002135     	stp	x21, x8, [x9]
    a408: 94000000     	bl	0xa408 <audio_off+0xe0>
		000000000000a408:  R_AARCH64_CALL26	kfree
    a40c: eb1402df     	cmp	x22, x20
    a410: aa1603e9     	mov	x9, x22
    a414: 54fffe01     	b.ne	0xa3d4 <audio_off+0xac>
    a418: 14000004     	b	0xa428 <audio_off+0x100>
    a41c: aa0903e0     	mov	x0, x9
    a420: 94000000     	bl	0xa420 <audio_off+0xf8>
		000000000000a420:  R_AARCH64_CALL26	__list_del_entry_valid_or_report
    a424: 17fffff6     	b	0xa3fc <audio_off+0xd4>
    a428: 910bc260     	add	x0, x19, #0x2f0
    a42c: 94000000     	bl	0xa42c <audio_off+0x104>
		000000000000a42c:  R_AARCH64_CALL26	mutex_unlock
    a430: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    a434: a94157f6     	ldp	x22, x21, [sp, #0x10]
    a438: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    a43c: d50323bf     	autiasp
    a440: d65f03c0     	ret
