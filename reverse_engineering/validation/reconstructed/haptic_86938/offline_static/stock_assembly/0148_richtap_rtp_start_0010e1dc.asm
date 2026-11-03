
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000b3bc <richtap_rtp_start>:
    b3bc: d503233f     	paciasp
    b3c0: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    b3c4: f9000bf5     	str	x21, [sp, #0x10]
    b3c8: a9024ff4     	stp	x20, x19, [sp, #0x20]
    b3cc: 910003fd     	mov	x29, sp
    b3d0: aa0003f3     	mov	x19, x0
    b3d4: 910bc000     	add	x0, x0, #0x2f0
    b3d8: 94000000     	bl	0xb3d8 <richtap_rtp_start+0x1c>
		000000000000b3d8:  R_AARCH64_CALL26	mutex_lock
    b3dc: f942e668     	ldr	x8, [x19, #0x5c8]
    b3e0: aa1303e0     	mov	x0, x19
    b3e4: 52800041     	mov	w1, #0x2                // =2
    b3e8: f9404d08     	ldr	x8, [x8, #0x98]
    b3ec: b85fc110     	ldur	w16, [x8, #-0x4]
    b3f0: 729bedd1     	movk	w17, #0xdf6e
    b3f4: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    b3f8: 6b11021f     	cmp	w16, w17
    b3fc: 54000040     	b.eq	0xb404 <richtap_rtp_start+0x48>
    b400: d4304500     	brk	#0x8228
    b404: d63f0100     	blr	x8
    b408: f942e668     	ldr	x8, [x19, #0x5c8]
    b40c: aa1303e0     	mov	x0, x19
    b410: 52800021     	mov	w1, #0x1                // =1
    b414: f9403108     	ldr	x8, [x8, #0x60]
    b418: b85fc110     	ldur	w16, [x8, #-0x4]
    b41c: 729bedd1     	movk	w17, #0xdf6e
    b420: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    b424: 6b11021f     	cmp	w16, w17
    b428: 54000040     	b.eq	0xb430 <richtap_rtp_start+0x74>
    b42c: d4304500     	brk	#0x8228
    b430: d63f0100     	blr	x8
    b434: 5280fa00     	mov	w0, #0x7d0              // =2000
    b438: 5280fa01     	mov	w1, #0x7d0              // =2000
    b43c: 52800042     	mov	w2, #0x2                // =2
    b440: 94000000     	bl	0xb440 <richtap_rtp_start+0x84>
		000000000000b440:  R_AARCH64_CALL26	usleep_range_state
    b444: 128018f5     	mov	w21, #-0xc8             // =-200
    b448: f942e668     	ldr	x8, [x19, #0x5c8]
    b44c: aa1303e0     	mov	x0, x19
    b450: f940b108     	ldr	x8, [x8, #0x160]
    b454: b85fc110     	ldur	w16, [x8, #-0x4]
    b458: 72870a91     	movk	w17, #0x3854
    b45c: 72af0971     	movk	w17, #0x784b, lsl #16
    b460: 6b11021f     	cmp	w16, w17
    b464: 54000040     	b.eq	0xb46c <richtap_rtp_start+0xb0>
    b468: d4304500     	brk	#0x8228
    b46c: d63f0100     	blr	x8
    b470: 12000c14     	and	w20, w0, #0xf
    b474: 7100229f     	cmp	w20, #0x8
    b478: 54000340     	b.eq	0xb4e0 <richtap_rtp_start+0x124>
    b47c: 5280fa00     	mov	w0, #0x7d0              // =2000
    b480: 52813881     	mov	w1, #0x9c4              // =2500
    b484: 52800042     	mov	w2, #0x2                // =2
    b488: 94000000     	bl	0xb488 <richtap_rtp_start+0xcc>
		000000000000b488:  R_AARCH64_CALL26	usleep_range_state
    b48c: 310006b5     	adds	w21, w21, #0x1
    b490: 54fffdc3     	b.lo	0xb448 <richtap_rtp_start+0x8c>
    b494: 90000000     	adrp	x0, 0xb000 <audio_work_routine+0xd0>
		000000000000b494:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13ff
    b498: 91000000     	add	x0, x0, #0x0
		000000000000b498:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13ff
    b49c: 90000001     	adrp	x1, 0xb000 <audio_work_routine+0xd0>
		000000000000b49c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    b4a0: 91000021     	add	x1, x1, #0x0
		000000000000b4a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    b4a4: 90000003     	adrp	x3, 0xb000 <audio_work_routine+0xd0>
		000000000000b4a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf9b
    b4a8: 91000063     	add	x3, x3, #0x0
		000000000000b4a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf9b
    b4ac: 5280a122     	mov	w2, #0x509              // =1289
    b4b0: 94000000     	bl	0xb4b0 <richtap_rtp_start+0xf4>
		000000000000b4b0:  R_AARCH64_CALL26	_printk
    b4b4: f942e668     	ldr	x8, [x19, #0x5c8]
    b4b8: aa1303e0     	mov	x0, x19
    b4bc: f9401d08     	ldr	x8, [x8, #0x38]
    b4c0: b85fc110     	ldur	w16, [x8, #-0x4]
    b4c4: 72810611     	movk	w17, #0x830
    b4c8: 72b08f51     	movk	w17, #0x847a, lsl #16
    b4cc: 6b11021f     	cmp	w16, w17
    b4d0: 54000040     	b.eq	0xb4d8 <richtap_rtp_start+0x11c>
    b4d4: d4304500     	brk	#0x8228
    b4d8: d63f0100     	blr	x8
    b4dc: 1400000d     	b	0xb510 <richtap_rtp_start+0x154>
    b4e0: 90000000     	adrp	x0, 0xb000 <audio_work_routine+0xd0>
		000000000000b4e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x27a1
    b4e4: 91000000     	add	x0, x0, #0x0
		000000000000b4e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x27a1
    b4e8: 90000001     	adrp	x1, 0xb000 <audio_work_routine+0xd0>
		000000000000b4e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    b4ec: 91000021     	add	x1, x1, #0x0
		000000000000b4ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    b4f0: 90000003     	adrp	x3, 0xb000 <audio_work_routine+0xd0>
		000000000000b4f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf9b
    b4f4: 91000063     	add	x3, x3, #0x0
		000000000000b4f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf9b
    b4f8: 52809fa2     	mov	w2, #0x4fd              // =1277
    b4fc: 94000000     	bl	0xb4fc <richtap_rtp_start+0x140>
		000000000000b4fc:  R_AARCH64_CALL26	_printk
    b500: 5280fa00     	mov	w0, #0x7d0              // =2000
    b504: 52813881     	mov	w1, #0x9c4              // =2500
    b508: 52800042     	mov	w2, #0x2                // =2
    b50c: 94000000     	bl	0xb50c <richtap_rtp_start+0x150>
		000000000000b50c:  R_AARCH64_CALL26	usleep_range_state
    b510: 7100229f     	cmp	w20, #0x8
    b514: 910bc260     	add	x0, x19, #0x2f0
    b518: 1a9f17f4     	cset	w20, eq
    b51c: 94000000     	bl	0xb51c <richtap_rtp_start+0x160>
		000000000000b51c:  R_AARCH64_CALL26	mutex_unlock
    b520: 2a1403e0     	mov	w0, w20
    b524: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    b528: f9400bf5     	ldr	x21, [sp, #0x10]
    b52c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    b530: d50323bf     	autiasp
    b534: d65f03c0     	ret
