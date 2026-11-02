
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000b614 <audio_work_routine>:
    b614: d503233f     	paciasp
    b618: d10183ff     	sub	sp, sp, #0x60
    b61c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    b620: f90013f9     	str	x25, [sp, #0x20]
    b624: a9035ff8     	stp	x24, x23, [sp, #0x30]
    b628: a90457f6     	stp	x22, x21, [sp, #0x40]
    b62c: a9054ff4     	stp	x20, x19, [sp, #0x50]
    b630: 910043fd     	add	x29, sp, #0x10
    b634: d101c014     	sub	x20, x0, #0x70
    b638: aa0003f3     	mov	x19, x0
    b63c: d2802016     	mov	x22, #0x100             // =256
    b640: aa1403e0     	mov	x0, x20
    b644: f2fbd5b6     	movk	x22, #0xdead, lsl #48
    b648: 94000000     	bl	0xb648 <audio_work_routine+0x34>
		000000000000b648:  R_AARCH64_CALL26	mutex_lock
    b64c: f9401e77     	ldr	x23, [x19, #0x38]
    b650: 9100c275     	add	x21, x19, #0x30
    b654: a904fe7f     	stp	xzr, xzr, [x19, #0x48]
    b658: f900227f     	str	xzr, [x19, #0x40]
    b65c: eb1502ff     	cmp	x23, x21
    b660: 540005a0     	b.eq	0xb714 <audio_work_routine+0x100>
    b664: f94002a8     	ldr	x8, [x21]
    b668: eb15011f     	cmp	x8, x21
    b66c: 54000060     	b.eq	0xb678 <audio_work_routine+0x64>
    b670: 385f8108     	ldurb	w8, [x8, #-0x8]
    b674: 14000002     	b	0xb67c <audio_work_routine+0x68>
    b678: 2a1f03e8     	mov	w8, wzr
    b67c: 385f82e9     	ldurb	w9, [x23, #-0x8]
    b680: 6b090108     	subs	w8, w8, w9
    b684: 1a8833e9     	csel	w9, wzr, w8, lo
    b688: 11008108     	add	w8, w8, #0x20
    b68c: 1a893118     	csel	w24, w8, w9, lo
    b690: 71000f1f     	cmp	w24, #0x3
    b694: 54000503     	b.lo	0xb734 <audio_work_routine+0x120>
    b698: 2a1f03f9     	mov	w25, wzr
    b69c: 1400000a     	b	0xb6c4 <audio_work_routine+0xb0>
    b6a0: aa0903e0     	mov	x0, x9
    b6a4: 94000000     	bl	0xb6a4 <audio_work_routine+0x90>
		000000000000b6a4:  R_AARCH64_CALL26	__list_del_entry_valid_or_report
    b6a8: 91008ac8     	add	x8, x22, #0x22
    b6ac: d1002120     	sub	x0, x9, #0x8
    b6b0: a9002136     	stp	x22, x8, [x9]
    b6b4: 94000000     	bl	0xb6b4 <audio_work_routine+0xa0>
		000000000000b6b4:  R_AARCH64_CALL26	kfree
    b6b8: 11000739     	add	w25, w25, #0x1
    b6bc: 6b18033f     	cmp	w25, w24
    b6c0: 540003a0     	b.eq	0xb734 <audio_work_routine+0x120>
    b6c4: eb1502ff     	cmp	x23, x21
    b6c8: 54000360     	b.eq	0xb734 <audio_work_routine+0x120>
    b6cc: aa1703e9     	mov	x9, x23
    b6d0: 385fa2e8     	ldurb	w8, [x23, #-0x6]
    b6d4: f94006f7     	ldr	x23, [x23, #0x8]
    b6d8: 35ffff28     	cbnz	w8, 0xb6bc <audio_work_routine+0xa8>
    b6dc: 385f9128     	ldurb	w8, [x9, #-0x7]
    b6e0: 12000d08     	and	w8, w8, #0xf
    b6e4: 7100051f     	cmp	w8, #0x1
    b6e8: 54fffea1     	b.ne	0xb6bc <audio_work_routine+0xa8>
    b6ec: f94002e8     	ldr	x8, [x23]
    b6f0: eb09011f     	cmp	x8, x9
    b6f4: 54fffd61     	b.ne	0xb6a0 <audio_work_routine+0x8c>
    b6f8: f9400128     	ldr	x8, [x9]
    b6fc: f940050a     	ldr	x10, [x8, #0x8]
    b700: eb09015f     	cmp	x10, x9
    b704: 54fffce1     	b.ne	0xb6a0 <audio_work_routine+0x8c>
    b708: f9000517     	str	x23, [x8, #0x8]
    b70c: f90002e8     	str	x8, [x23]
    b710: 17ffffe6     	b	0xb6a8 <audio_work_routine+0x94>
    b714: 90000000     	adrp	x0, 0xb000 <osc_cali_store+0x190>
		000000000000b714:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1da4
    b718: 91000000     	add	x0, x0, #0x0
		000000000000b718:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1da4
    b71c: 90000001     	adrp	x1, 0xb000 <osc_cali_store+0x190>
		000000000000b71c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    b720: 91000021     	add	x1, x1, #0x0
		000000000000b720:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    b724: 90000003     	adrp	x3, 0xb000 <osc_cali_store+0x190>
		000000000000b724:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3364
    b728: 91000063     	add	x3, x3, #0x0
		000000000000b728:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3364
    b72c: 5280f442     	mov	w2, #0x7a2              // =1954
    b730: 94000000     	bl	0xb730 <audio_work_routine+0x11c>
		000000000000b730:  R_AARCH64_CALL26	_printk
    b734: f9401e69     	ldr	x9, [x19, #0x38]
    b738: eb15013f     	cmp	x9, x21
    b73c: d1158275     	sub	x21, x19, #0x560
    b740: 54000360     	b.eq	0xb7ac <audio_work_routine+0x198>
    b744: aa0903e0     	mov	x0, x9
    b748: 385f8c08     	ldrb	w8, [x0, #-0x8]!
    b74c: 39010268     	strb	w8, [x19, #0x40]
    b750: 385f9128     	ldurb	w8, [x9, #-0x7]
    b754: 39010668     	strb	w8, [x19, #0x41]
    b758: 385fa128     	ldurb	w8, [x9, #-0x6]
    b75c: 39010a68     	strb	w8, [x19, #0x42]
    b760: 385fd128     	ldurb	w8, [x9, #-0x3]
    b764: 39011668     	strb	w8, [x19, #0x45]
    b768: 385fb128     	ldurb	w8, [x9, #-0x5]
    b76c: 39010e68     	strb	w8, [x19, #0x43]
    b770: 385fc128     	ldurb	w8, [x9, #-0x4]
    b774: 39011268     	strb	w8, [x19, #0x44]
    b778: f9400528     	ldr	x8, [x9, #0x8]
    b77c: f940010a     	ldr	x10, [x8]
    b780: eb09015f     	cmp	x10, x9
    b784: 540015c1     	b.ne	0xba3c <audio_work_routine+0x428>
    b788: f940012a     	ldr	x10, [x9]
    b78c: f940054b     	ldr	x11, [x10, #0x8]
    b790: eb09017f     	cmp	x11, x9
    b794: 54001541     	b.ne	0xba3c <audio_work_routine+0x428>
    b798: f9000548     	str	x8, [x10, #0x8]
    b79c: f900010a     	str	x10, [x8]
    b7a0: 91008ac8     	add	x8, x22, #0x22
    b7a4: a9002136     	stp	x22, x8, [x9]
    b7a8: 94000000     	bl	0xb7a8 <audio_work_routine+0x194>
		000000000000b7a8:  R_AARCH64_CALL26	kfree
    b7ac: 39410a66     	ldrb	w6, [x19, #0x42]
    b7b0: 35001266     	cbnz	w6, 0xb9fc <audio_work_routine+0x3e8>
    b7b4: f9403668     	ldr	x8, [x19, #0x68]
    b7b8: aa1503e0     	mov	x0, x21
    b7bc: f9401508     	ldr	x8, [x8, #0x28]
    b7c0: b85fc110     	ldur	w16, [x8, #-0x4]
    b7c4: 729e3e11     	movk	w17, #0xf1f0
    b7c8: 72aa2591     	movk	w17, #0x512c, lsl #16
    b7cc: 6b11021f     	cmp	w16, w17
    b7d0: 54000040     	b.eq	0xb7d8 <audio_work_routine+0x1c4>
    b7d4: d4304500     	brk	#0x8228
    b7d8: d63f0100     	blr	x8
    b7dc: 2a0003f6     	mov	w22, w0
    b7e0: aa1403e0     	mov	x0, x20
    b7e4: 94000000     	bl	0xb7e4 <audio_work_routine+0x1d0>
		000000000000b7e4:  R_AARCH64_CALL26	mutex_unlock
    b7e8: 35000fb6     	cbnz	w22, 0xb9dc <audio_work_routine+0x3c8>
    b7ec: 39410668     	ldrb	w8, [x19, #0x41]
    b7f0: 7100051f     	cmp	w8, #0x1
    b7f4: 54000f41     	b.ne	0xb9dc <audio_work_routine+0x3c8>
    b7f8: 39410a68     	ldrb	w8, [x19, #0x42]
    b7fc: 7100091f     	cmp	w8, #0x2
    b800: 54000b20     	b.eq	0xb964 <audio_work_routine+0x350>
    b804: 7100211f     	cmp	w8, #0x8
    b808: 54000ca0     	b.eq	0xb99c <audio_work_routine+0x388>
    b80c: 7100051f     	cmp	w8, #0x1
    b810: 54000e61     	b.ne	0xb9dc <audio_work_routine+0x3c8>
    b814: 90000000     	adrp	x0, 0xb000 <osc_cali_store+0x190>
		000000000000b814:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f8e
    b818: 91000000     	add	x0, x0, #0x0
		000000000000b818:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f8e
    b81c: 90000001     	adrp	x1, 0xb000 <osc_cali_store+0x190>
		000000000000b81c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    b820: 91000021     	add	x1, x1, #0x0
		000000000000b820:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    b824: 90000003     	adrp	x3, 0xb000 <osc_cali_store+0x190>
		000000000000b824:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3364
    b828: 91000063     	add	x3, x3, #0x0
		000000000000b828:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3364
    b82c: 528106c2     	mov	w2, #0x836              // =2102
    b830: 94000000     	bl	0xb830 <audio_work_routine+0x21c>
		000000000000b830:  R_AARCH64_CALL26	_printk
    b834: d109c274     	sub	x20, x19, #0x270
    b838: aa1403e0     	mov	x0, x20
    b83c: 94000000     	bl	0xb83c <audio_work_routine+0x228>
		000000000000b83c:  R_AARCH64_CALL26	mutex_lock
    b840: f9403668     	ldr	x8, [x19, #0x68]
    b844: aa1503e0     	mov	x0, x21
    b848: f9401d08     	ldr	x8, [x8, #0x38]
    b84c: b85fc110     	ldur	w16, [x8, #-0x4]
    b850: 72810611     	movk	w17, #0x830
    b854: 72b08f51     	movk	w17, #0x847a, lsl #16
    b858: 6b11021f     	cmp	w16, w17
    b85c: 54000040     	b.eq	0xb864 <audio_work_routine+0x250>
    b860: d4304500     	brk	#0x8228
    b864: d63f0100     	blr	x8
    b868: f9403668     	ldr	x8, [x19, #0x68]
    b86c: aa1503e0     	mov	x0, x21
    b870: 52800021     	mov	w1, #0x1                // =1
    b874: f9404d08     	ldr	x8, [x8, #0x98]
    b878: b85fc110     	ldur	w16, [x8, #-0x4]
    b87c: 729bedd1     	movk	w17, #0xdf6e
    b880: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    b884: 6b11021f     	cmp	w16, w17
    b888: 54000040     	b.eq	0xb890 <audio_work_routine+0x27c>
    b88c: d4304500     	brk	#0x8228
    b890: d63f0100     	blr	x8
    b894: f9403668     	ldr	x8, [x19, #0x68]
    b898: 39411662     	ldrb	w2, [x19, #0x45]
    b89c: aa1503e0     	mov	x0, x21
    b8a0: 2a1f03e1     	mov	w1, wzr
    b8a4: f9406108     	ldr	x8, [x8, #0xc0]
    b8a8: b85fc110     	ldur	w16, [x8, #-0x4]
    b8ac: 728fccb1     	movk	w17, #0x7e65
    b8b0: 72af70f1     	movk	w17, #0x7b87, lsl #16
    b8b4: 6b11021f     	cmp	w16, w17
    b8b8: 54000040     	b.eq	0xb8c0 <audio_work_routine+0x2ac>
    b8bc: d4304500     	brk	#0x8228
    b8c0: d63f0100     	blr	x8
    b8c4: f9403668     	ldr	x8, [x19, #0x68]
    b8c8: aa1503e0     	mov	x0, x21
    b8cc: 52800021     	mov	w1, #0x1                // =1
    b8d0: 2a1f03e2     	mov	w2, wzr
    b8d4: f9406108     	ldr	x8, [x8, #0xc0]
    b8d8: b85fc110     	ldur	w16, [x8, #-0x4]
    b8dc: 728fccb1     	movk	w17, #0x7e65
    b8e0: 72af70f1     	movk	w17, #0x7b87, lsl #16
    b8e4: 6b11021f     	cmp	w16, w17
    b8e8: 54000040     	b.eq	0xb8f0 <audio_work_routine+0x2dc>
    b8ec: d4304500     	brk	#0x8228
    b8f0: d63f0100     	blr	x8
    b8f4: f9403668     	ldr	x8, [x19, #0x68]
    b8f8: 39410e62     	ldrb	w2, [x19, #0x43]
    b8fc: aa1503e0     	mov	x0, x21
    b900: 2a1f03e1     	mov	w1, wzr
    b904: f9406508     	ldr	x8, [x8, #0xc8]
    b908: b85fc110     	ldur	w16, [x8, #-0x4]
    b90c: 728fccb1     	movk	w17, #0x7e65
    b910: 72af70f1     	movk	w17, #0x7b87, lsl #16
    b914: 6b11021f     	cmp	w16, w17
    b918: 54000040     	b.eq	0xb920 <audio_work_routine+0x30c>
    b91c: d4304500     	brk	#0x8228
    b920: d63f0100     	blr	x8
    b924: f9403668     	ldr	x8, [x19, #0x68]
    b928: 39411261     	ldrb	w1, [x19, #0x44]
    b92c: aa1503e0     	mov	x0, x21
    b930: f9404508     	ldr	x8, [x8, #0x88]
    b934: b85fc110     	ldur	w16, [x8, #-0x4]
    b938: 729bedd1     	movk	w17, #0xdf6e
    b93c: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    b940: 6b11021f     	cmp	w16, w17
    b944: 54000040     	b.eq	0xb94c <audio_work_routine+0x338>
    b948: d4304500     	brk	#0x8228
    b94c: d63f0100     	blr	x8
    b950: f9403668     	ldr	x8, [x19, #0x68]
    b954: aa1503e0     	mov	x0, x21
    b958: 52800021     	mov	w1, #0x1                // =1
    b95c: f9403108     	ldr	x8, [x8, #0x60]
    b960: 14000016     	b	0xb9b8 <audio_work_routine+0x3a4>
    b964: d109c274     	sub	x20, x19, #0x270
    b968: aa1403e0     	mov	x0, x20
    b96c: 94000000     	bl	0xb96c <audio_work_routine+0x358>
		000000000000b96c:  R_AARCH64_CALL26	mutex_lock
    b970: f9403668     	ldr	x8, [x19, #0x68]
    b974: aa1503e0     	mov	x0, x21
    b978: f9401d08     	ldr	x8, [x8, #0x38]
    b97c: b85fc110     	ldur	w16, [x8, #-0x4]
    b980: 72810611     	movk	w17, #0x830
    b984: 72b08f51     	movk	w17, #0x847a, lsl #16
    b988: 6b11021f     	cmp	w16, w17
    b98c: 54000040     	b.eq	0xb994 <audio_work_routine+0x380>
    b990: d4304500     	brk	#0x8228
    b994: d63f0100     	blr	x8
    b998: 1400000f     	b	0xb9d4 <audio_work_routine+0x3c0>
    b99c: d109c274     	sub	x20, x19, #0x270
    b9a0: aa1403e0     	mov	x0, x20
    b9a4: 94000000     	bl	0xb9a4 <audio_work_routine+0x390>
		000000000000b9a4:  R_AARCH64_CALL26	mutex_lock
    b9a8: f9403668     	ldr	x8, [x19, #0x68]
    b9ac: 39411261     	ldrb	w1, [x19, #0x44]
    b9b0: aa1503e0     	mov	x0, x21
    b9b4: f9404508     	ldr	x8, [x8, #0x88]
    b9b8: b85fc110     	ldur	w16, [x8, #-0x4]
    b9bc: 729bedd1     	movk	w17, #0xdf6e
    b9c0: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    b9c4: 6b11021f     	cmp	w16, w17
    b9c8: 54000040     	b.eq	0xb9d0 <audio_work_routine+0x3bc>
    b9cc: d4304500     	brk	#0x8228
    b9d0: d63f0100     	blr	x8
    b9d4: aa1403e0     	mov	x0, x20
    b9d8: 94000000     	bl	0xb9d8 <audio_work_routine+0x3c4>
		000000000000b9d8:  R_AARCH64_CALL26	mutex_unlock
    b9dc: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    b9e0: f94013f9     	ldr	x25, [sp, #0x20]
    b9e4: a94457f6     	ldp	x22, x21, [sp, #0x40]
    b9e8: a9435ff8     	ldp	x24, x23, [sp, #0x30]
    b9ec: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    b9f0: 910183ff     	add	sp, sp, #0x60
    b9f4: d50323bf     	autiasp
    b9f8: d65f03c0     	ret
    b9fc: 39410264     	ldrb	w4, [x19, #0x40]
    ba00: 39410665     	ldrb	w5, [x19, #0x41]
    ba04: 90000000     	adrp	x0, 0xb000 <osc_cali_store+0x190>
		000000000000ba04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d3a
    ba08: 91000000     	add	x0, x0, #0x0
		000000000000ba08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d3a
    ba0c: 39411667     	ldrb	w7, [x19, #0x45]
    ba10: 39410e68     	ldrb	w8, [x19, #0x43]
    ba14: 39411269     	ldrb	w9, [x19, #0x44]
    ba18: 90000001     	adrp	x1, 0xb000 <osc_cali_store+0x190>
		000000000000ba18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    ba1c: 91000021     	add	x1, x1, #0x0
		000000000000ba1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    ba20: 90000003     	adrp	x3, 0xb000 <osc_cali_store+0x190>
		000000000000ba20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3364
    ba24: 91000063     	add	x3, x3, #0x0
		000000000000ba24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3364
    ba28: 5280fba2     	mov	w2, #0x7dd              // =2013
    ba2c: b9000be9     	str	w9, [sp, #0x8]
    ba30: b90003e8     	str	w8, [sp]
    ba34: 94000000     	bl	0xba34 <audio_work_routine+0x420>
		000000000000ba34:  R_AARCH64_CALL26	_printk
    ba38: 17ffff5f     	b	0xb7b4 <audio_work_routine+0x1a0>
    ba3c: aa0003ea     	mov	x10, x0
    ba40: aa0903e0     	mov	x0, x9
    ba44: 94000000     	bl	0xba44 <audio_work_routine+0x430>
		000000000000ba44:  R_AARCH64_CALL26	__list_del_entry_valid_or_report
    ba48: aa0a03e0     	mov	x0, x10
    ba4c: 17ffff55     	b	0xb7a0 <audio_work_routine+0x18c>
