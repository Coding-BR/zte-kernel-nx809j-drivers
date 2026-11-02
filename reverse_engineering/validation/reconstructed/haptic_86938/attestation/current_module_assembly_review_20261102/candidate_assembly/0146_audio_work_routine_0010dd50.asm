
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000b5e4 <audio_work_routine>:
    b5e4: d503233f     	paciasp
    b5e8: d10183ff     	sub	sp, sp, #0x60
    b5ec: a9017bfd     	stp	x29, x30, [sp, #0x10]
    b5f0: f90013f9     	str	x25, [sp, #0x20]
    b5f4: a9035ff8     	stp	x24, x23, [sp, #0x30]
    b5f8: a90457f6     	stp	x22, x21, [sp, #0x40]
    b5fc: a9054ff4     	stp	x20, x19, [sp, #0x50]
    b600: 910043fd     	add	x29, sp, #0x10
    b604: d101c014     	sub	x20, x0, #0x70
    b608: aa0003f3     	mov	x19, x0
    b60c: d2802016     	mov	x22, #0x100             // =256
    b610: aa1403e0     	mov	x0, x20
    b614: f2fbd5b6     	movk	x22, #0xdead, lsl #48
    b618: 94000000     	bl	0xb618 <audio_work_routine+0x34>
		000000000000b618:  R_AARCH64_CALL26	mutex_lock
    b61c: f9401e77     	ldr	x23, [x19, #0x38]
    b620: 9100c275     	add	x21, x19, #0x30
    b624: a904fe7f     	stp	xzr, xzr, [x19, #0x48]
    b628: f900227f     	str	xzr, [x19, #0x40]
    b62c: eb1502ff     	cmp	x23, x21
    b630: 540005a0     	b.eq	0xb6e4 <audio_work_routine+0x100>
    b634: f94002a8     	ldr	x8, [x21]
    b638: eb15011f     	cmp	x8, x21
    b63c: 54000060     	b.eq	0xb648 <audio_work_routine+0x64>
    b640: 385f8108     	ldurb	w8, [x8, #-0x8]
    b644: 14000002     	b	0xb64c <audio_work_routine+0x68>
    b648: 2a1f03e8     	mov	w8, wzr
    b64c: 385f82e9     	ldurb	w9, [x23, #-0x8]
    b650: 6b090108     	subs	w8, w8, w9
    b654: 1a8833e9     	csel	w9, wzr, w8, lo
    b658: 11008108     	add	w8, w8, #0x20
    b65c: 1a893118     	csel	w24, w8, w9, lo
    b660: 71000f1f     	cmp	w24, #0x3
    b664: 54000503     	b.lo	0xb704 <audio_work_routine+0x120>
    b668: 2a1f03f9     	mov	w25, wzr
    b66c: 1400000a     	b	0xb694 <audio_work_routine+0xb0>
    b670: aa0903e0     	mov	x0, x9
    b674: 94000000     	bl	0xb674 <audio_work_routine+0x90>
		000000000000b674:  R_AARCH64_CALL26	__list_del_entry_valid_or_report
    b678: 91008ac8     	add	x8, x22, #0x22
    b67c: d1002120     	sub	x0, x9, #0x8
    b680: a9002136     	stp	x22, x8, [x9]
    b684: 94000000     	bl	0xb684 <audio_work_routine+0xa0>
		000000000000b684:  R_AARCH64_CALL26	kfree
    b688: 11000739     	add	w25, w25, #0x1
    b68c: 6b18033f     	cmp	w25, w24
    b690: 540003a0     	b.eq	0xb704 <audio_work_routine+0x120>
    b694: eb1502ff     	cmp	x23, x21
    b698: 54000360     	b.eq	0xb704 <audio_work_routine+0x120>
    b69c: aa1703e9     	mov	x9, x23
    b6a0: 385fa2e8     	ldurb	w8, [x23, #-0x6]
    b6a4: f94006f7     	ldr	x23, [x23, #0x8]
    b6a8: 35ffff28     	cbnz	w8, 0xb68c <audio_work_routine+0xa8>
    b6ac: 385f9128     	ldurb	w8, [x9, #-0x7]
    b6b0: 12000d08     	and	w8, w8, #0xf
    b6b4: 7100051f     	cmp	w8, #0x1
    b6b8: 54fffea1     	b.ne	0xb68c <audio_work_routine+0xa8>
    b6bc: f94002e8     	ldr	x8, [x23]
    b6c0: eb09011f     	cmp	x8, x9
    b6c4: 54fffd61     	b.ne	0xb670 <audio_work_routine+0x8c>
    b6c8: f9400128     	ldr	x8, [x9]
    b6cc: f940050a     	ldr	x10, [x8, #0x8]
    b6d0: eb09015f     	cmp	x10, x9
    b6d4: 54fffce1     	b.ne	0xb670 <audio_work_routine+0x8c>
    b6d8: f9000517     	str	x23, [x8, #0x8]
    b6dc: f90002e8     	str	x8, [x23]
    b6e0: 17ffffe6     	b	0xb678 <audio_work_routine+0x94>
    b6e4: 90000000     	adrp	x0, 0xb000 <osc_cali_store+0x1c0>
		000000000000b6e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1da4
    b6e8: 91000000     	add	x0, x0, #0x0
		000000000000b6e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1da4
    b6ec: 90000001     	adrp	x1, 0xb000 <osc_cali_store+0x1c0>
		000000000000b6ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    b6f0: 91000021     	add	x1, x1, #0x0
		000000000000b6f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    b6f4: 90000003     	adrp	x3, 0xb000 <osc_cali_store+0x1c0>
		000000000000b6f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3364
    b6f8: 91000063     	add	x3, x3, #0x0
		000000000000b6f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3364
    b6fc: 5280f442     	mov	w2, #0x7a2              // =1954
    b700: 94000000     	bl	0xb700 <audio_work_routine+0x11c>
		000000000000b700:  R_AARCH64_CALL26	_printk
    b704: f9401e69     	ldr	x9, [x19, #0x38]
    b708: eb15013f     	cmp	x9, x21
    b70c: d1158275     	sub	x21, x19, #0x560
    b710: 54000360     	b.eq	0xb77c <audio_work_routine+0x198>
    b714: aa0903e0     	mov	x0, x9
    b718: 385f8c08     	ldrb	w8, [x0, #-0x8]!
    b71c: 39010268     	strb	w8, [x19, #0x40]
    b720: 385f9128     	ldurb	w8, [x9, #-0x7]
    b724: 39010668     	strb	w8, [x19, #0x41]
    b728: 385fa128     	ldurb	w8, [x9, #-0x6]
    b72c: 39010a68     	strb	w8, [x19, #0x42]
    b730: 385fd128     	ldurb	w8, [x9, #-0x3]
    b734: 39011668     	strb	w8, [x19, #0x45]
    b738: 385fb128     	ldurb	w8, [x9, #-0x5]
    b73c: 39010e68     	strb	w8, [x19, #0x43]
    b740: 385fc128     	ldurb	w8, [x9, #-0x4]
    b744: 39011268     	strb	w8, [x19, #0x44]
    b748: f9400528     	ldr	x8, [x9, #0x8]
    b74c: f940010a     	ldr	x10, [x8]
    b750: eb09015f     	cmp	x10, x9
    b754: 540015c1     	b.ne	0xba0c <audio_work_routine+0x428>
    b758: f940012a     	ldr	x10, [x9]
    b75c: f940054b     	ldr	x11, [x10, #0x8]
    b760: eb09017f     	cmp	x11, x9
    b764: 54001541     	b.ne	0xba0c <audio_work_routine+0x428>
    b768: f9000548     	str	x8, [x10, #0x8]
    b76c: f900010a     	str	x10, [x8]
    b770: 91008ac8     	add	x8, x22, #0x22
    b774: a9002136     	stp	x22, x8, [x9]
    b778: 94000000     	bl	0xb778 <audio_work_routine+0x194>
		000000000000b778:  R_AARCH64_CALL26	kfree
    b77c: 39410a66     	ldrb	w6, [x19, #0x42]
    b780: 35001266     	cbnz	w6, 0xb9cc <audio_work_routine+0x3e8>
    b784: f9403668     	ldr	x8, [x19, #0x68]
    b788: aa1503e0     	mov	x0, x21
    b78c: f9401508     	ldr	x8, [x8, #0x28]
    b790: b85fc110     	ldur	w16, [x8, #-0x4]
    b794: 729e3e11     	movk	w17, #0xf1f0
    b798: 72aa2591     	movk	w17, #0x512c, lsl #16
    b79c: 6b11021f     	cmp	w16, w17
    b7a0: 54000040     	b.eq	0xb7a8 <audio_work_routine+0x1c4>
    b7a4: d4304500     	brk	#0x8228
    b7a8: d63f0100     	blr	x8
    b7ac: 2a0003f6     	mov	w22, w0
    b7b0: aa1403e0     	mov	x0, x20
    b7b4: 94000000     	bl	0xb7b4 <audio_work_routine+0x1d0>
		000000000000b7b4:  R_AARCH64_CALL26	mutex_unlock
    b7b8: 35000fb6     	cbnz	w22, 0xb9ac <audio_work_routine+0x3c8>
    b7bc: 39410668     	ldrb	w8, [x19, #0x41]
    b7c0: 7100051f     	cmp	w8, #0x1
    b7c4: 54000f41     	b.ne	0xb9ac <audio_work_routine+0x3c8>
    b7c8: 39410a68     	ldrb	w8, [x19, #0x42]
    b7cc: 7100091f     	cmp	w8, #0x2
    b7d0: 54000b20     	b.eq	0xb934 <audio_work_routine+0x350>
    b7d4: 7100211f     	cmp	w8, #0x8
    b7d8: 54000ca0     	b.eq	0xb96c <audio_work_routine+0x388>
    b7dc: 7100051f     	cmp	w8, #0x1
    b7e0: 54000e61     	b.ne	0xb9ac <audio_work_routine+0x3c8>
    b7e4: 90000000     	adrp	x0, 0xb000 <osc_cali_store+0x1c0>
		000000000000b7e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f8e
    b7e8: 91000000     	add	x0, x0, #0x0
		000000000000b7e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f8e
    b7ec: 90000001     	adrp	x1, 0xb000 <osc_cali_store+0x1c0>
		000000000000b7ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    b7f0: 91000021     	add	x1, x1, #0x0
		000000000000b7f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    b7f4: 90000003     	adrp	x3, 0xb000 <osc_cali_store+0x1c0>
		000000000000b7f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3364
    b7f8: 91000063     	add	x3, x3, #0x0
		000000000000b7f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3364
    b7fc: 528106c2     	mov	w2, #0x836              // =2102
    b800: 94000000     	bl	0xb800 <audio_work_routine+0x21c>
		000000000000b800:  R_AARCH64_CALL26	_printk
    b804: d109c274     	sub	x20, x19, #0x270
    b808: aa1403e0     	mov	x0, x20
    b80c: 94000000     	bl	0xb80c <audio_work_routine+0x228>
		000000000000b80c:  R_AARCH64_CALL26	mutex_lock
    b810: f9403668     	ldr	x8, [x19, #0x68]
    b814: aa1503e0     	mov	x0, x21
    b818: f9401d08     	ldr	x8, [x8, #0x38]
    b81c: b85fc110     	ldur	w16, [x8, #-0x4]
    b820: 72810611     	movk	w17, #0x830
    b824: 72b08f51     	movk	w17, #0x847a, lsl #16
    b828: 6b11021f     	cmp	w16, w17
    b82c: 54000040     	b.eq	0xb834 <audio_work_routine+0x250>
    b830: d4304500     	brk	#0x8228
    b834: d63f0100     	blr	x8
    b838: f9403668     	ldr	x8, [x19, #0x68]
    b83c: aa1503e0     	mov	x0, x21
    b840: 52800021     	mov	w1, #0x1                // =1
    b844: f9404d08     	ldr	x8, [x8, #0x98]
    b848: b85fc110     	ldur	w16, [x8, #-0x4]
    b84c: 729bedd1     	movk	w17, #0xdf6e
    b850: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    b854: 6b11021f     	cmp	w16, w17
    b858: 54000040     	b.eq	0xb860 <audio_work_routine+0x27c>
    b85c: d4304500     	brk	#0x8228
    b860: d63f0100     	blr	x8
    b864: f9403668     	ldr	x8, [x19, #0x68]
    b868: 39411662     	ldrb	w2, [x19, #0x45]
    b86c: aa1503e0     	mov	x0, x21
    b870: 2a1f03e1     	mov	w1, wzr
    b874: f9406108     	ldr	x8, [x8, #0xc0]
    b878: b85fc110     	ldur	w16, [x8, #-0x4]
    b87c: 728fccb1     	movk	w17, #0x7e65
    b880: 72af70f1     	movk	w17, #0x7b87, lsl #16
    b884: 6b11021f     	cmp	w16, w17
    b888: 54000040     	b.eq	0xb890 <audio_work_routine+0x2ac>
    b88c: d4304500     	brk	#0x8228
    b890: d63f0100     	blr	x8
    b894: f9403668     	ldr	x8, [x19, #0x68]
    b898: aa1503e0     	mov	x0, x21
    b89c: 52800021     	mov	w1, #0x1                // =1
    b8a0: 2a1f03e2     	mov	w2, wzr
    b8a4: f9406108     	ldr	x8, [x8, #0xc0]
    b8a8: b85fc110     	ldur	w16, [x8, #-0x4]
    b8ac: 728fccb1     	movk	w17, #0x7e65
    b8b0: 72af70f1     	movk	w17, #0x7b87, lsl #16
    b8b4: 6b11021f     	cmp	w16, w17
    b8b8: 54000040     	b.eq	0xb8c0 <audio_work_routine+0x2dc>
    b8bc: d4304500     	brk	#0x8228
    b8c0: d63f0100     	blr	x8
    b8c4: f9403668     	ldr	x8, [x19, #0x68]
    b8c8: 39410e62     	ldrb	w2, [x19, #0x43]
    b8cc: aa1503e0     	mov	x0, x21
    b8d0: 2a1f03e1     	mov	w1, wzr
    b8d4: f9406508     	ldr	x8, [x8, #0xc8]
    b8d8: b85fc110     	ldur	w16, [x8, #-0x4]
    b8dc: 728fccb1     	movk	w17, #0x7e65
    b8e0: 72af70f1     	movk	w17, #0x7b87, lsl #16
    b8e4: 6b11021f     	cmp	w16, w17
    b8e8: 54000040     	b.eq	0xb8f0 <audio_work_routine+0x30c>
    b8ec: d4304500     	brk	#0x8228
    b8f0: d63f0100     	blr	x8
    b8f4: f9403668     	ldr	x8, [x19, #0x68]
    b8f8: 39411261     	ldrb	w1, [x19, #0x44]
    b8fc: aa1503e0     	mov	x0, x21
    b900: f9404508     	ldr	x8, [x8, #0x88]
    b904: b85fc110     	ldur	w16, [x8, #-0x4]
    b908: 729bedd1     	movk	w17, #0xdf6e
    b90c: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    b910: 6b11021f     	cmp	w16, w17
    b914: 54000040     	b.eq	0xb91c <audio_work_routine+0x338>
    b918: d4304500     	brk	#0x8228
    b91c: d63f0100     	blr	x8
    b920: f9403668     	ldr	x8, [x19, #0x68]
    b924: aa1503e0     	mov	x0, x21
    b928: 52800021     	mov	w1, #0x1                // =1
    b92c: f9403108     	ldr	x8, [x8, #0x60]
    b930: 14000016     	b	0xb988 <audio_work_routine+0x3a4>
    b934: d109c274     	sub	x20, x19, #0x270
    b938: aa1403e0     	mov	x0, x20
    b93c: 94000000     	bl	0xb93c <audio_work_routine+0x358>
		000000000000b93c:  R_AARCH64_CALL26	mutex_lock
    b940: f9403668     	ldr	x8, [x19, #0x68]
    b944: aa1503e0     	mov	x0, x21
    b948: f9401d08     	ldr	x8, [x8, #0x38]
    b94c: b85fc110     	ldur	w16, [x8, #-0x4]
    b950: 72810611     	movk	w17, #0x830
    b954: 72b08f51     	movk	w17, #0x847a, lsl #16
    b958: 6b11021f     	cmp	w16, w17
    b95c: 54000040     	b.eq	0xb964 <audio_work_routine+0x380>
    b960: d4304500     	brk	#0x8228
    b964: d63f0100     	blr	x8
    b968: 1400000f     	b	0xb9a4 <audio_work_routine+0x3c0>
    b96c: d109c274     	sub	x20, x19, #0x270
    b970: aa1403e0     	mov	x0, x20
    b974: 94000000     	bl	0xb974 <audio_work_routine+0x390>
		000000000000b974:  R_AARCH64_CALL26	mutex_lock
    b978: f9403668     	ldr	x8, [x19, #0x68]
    b97c: 39411261     	ldrb	w1, [x19, #0x44]
    b980: aa1503e0     	mov	x0, x21
    b984: f9404508     	ldr	x8, [x8, #0x88]
    b988: b85fc110     	ldur	w16, [x8, #-0x4]
    b98c: 729bedd1     	movk	w17, #0xdf6e
    b990: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    b994: 6b11021f     	cmp	w16, w17
    b998: 54000040     	b.eq	0xb9a0 <audio_work_routine+0x3bc>
    b99c: d4304500     	brk	#0x8228
    b9a0: d63f0100     	blr	x8
    b9a4: aa1403e0     	mov	x0, x20
    b9a8: 94000000     	bl	0xb9a8 <audio_work_routine+0x3c4>
		000000000000b9a8:  R_AARCH64_CALL26	mutex_unlock
    b9ac: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    b9b0: f94013f9     	ldr	x25, [sp, #0x20]
    b9b4: a94457f6     	ldp	x22, x21, [sp, #0x40]
    b9b8: a9435ff8     	ldp	x24, x23, [sp, #0x30]
    b9bc: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    b9c0: 910183ff     	add	sp, sp, #0x60
    b9c4: d50323bf     	autiasp
    b9c8: d65f03c0     	ret
    b9cc: 39410264     	ldrb	w4, [x19, #0x40]
    b9d0: 39410665     	ldrb	w5, [x19, #0x41]
    b9d4: 90000000     	adrp	x0, 0xb000 <osc_cali_store+0x1c0>
		000000000000b9d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d3a
    b9d8: 91000000     	add	x0, x0, #0x0
		000000000000b9d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d3a
    b9dc: 39411667     	ldrb	w7, [x19, #0x45]
    b9e0: 39410e68     	ldrb	w8, [x19, #0x43]
    b9e4: 39411269     	ldrb	w9, [x19, #0x44]
    b9e8: 90000001     	adrp	x1, 0xb000 <osc_cali_store+0x1c0>
		000000000000b9e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    b9ec: 91000021     	add	x1, x1, #0x0
		000000000000b9ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    b9f0: 90000003     	adrp	x3, 0xb000 <osc_cali_store+0x1c0>
		000000000000b9f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3364
    b9f4: 91000063     	add	x3, x3, #0x0
		000000000000b9f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3364
    b9f8: 5280fba2     	mov	w2, #0x7dd              // =2013
    b9fc: b9000be9     	str	w9, [sp, #0x8]
    ba00: b90003e8     	str	w8, [sp]
    ba04: 94000000     	bl	0xba04 <audio_work_routine+0x420>
		000000000000ba04:  R_AARCH64_CALL26	_printk
    ba08: 17ffff5f     	b	0xb784 <audio_work_routine+0x1a0>
    ba0c: aa0003ea     	mov	x10, x0
    ba10: aa0903e0     	mov	x0, x9
    ba14: 94000000     	bl	0xba14 <audio_work_routine+0x430>
		000000000000ba14:  R_AARCH64_CALL26	__list_del_entry_valid_or_report
    ba18: aa0a03e0     	mov	x0, x10
    ba1c: 17ffff55     	b	0xb770 <audio_work_routine+0x18c>
