
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000095e0 <osc_cali_store>:
    95e0: d503233f     	paciasp
    95e4: d10183ff     	sub	sp, sp, #0x60
    95e8: a9017bfd     	stp	x29, x30, [sp, #0x10]
    95ec: a90267fa     	stp	x26, x25, [sp, #0x20]
    95f0: a9035ff8     	stp	x24, x23, [sp, #0x30]
    95f4: a90457f6     	stp	x22, x21, [sp, #0x40]
    95f8: a9054ff4     	stp	x20, x19, [sp, #0x50]
    95fc: 910043fd     	add	x29, sp, #0x10
    9600: d5384109     	mrs	x9, SP_EL0
    9604: aa0203e8     	mov	x8, x2
    9608: 910013e2     	add	x2, sp, #0x4
    960c: f9438929     	ldr	x9, [x9, #0x710]
    9610: 2a1f03e1     	mov	w1, wzr
    9614: aa0303f3     	mov	x19, x3
    9618: f90007e9     	str	x9, [sp, #0x8]
    961c: f9404c1a     	ldr	x26, [x0, #0x98]
    9620: aa0803e0     	mov	x0, x8
    9624: b90007ff     	str	wzr, [sp, #0x4]
    9628: 94000000     	bl	0x9628 <osc_cali_store+0x48>
		0000000000009628:  R_AARCH64_CALL26	kstrtouint
    962c: 37f805a0     	tbnz	w0, #0x1f, 0x96e0 <osc_cali_store+0x100>
    9630: 91092340     	add	x0, x26, #0x248
    9634: d102a355     	sub	x21, x26, #0xa8
    9638: 94000000     	bl	0x9638 <osc_cali_store+0x58>
		0000000000009638:  R_AARCH64_CALL26	mutex_lock
    963c: b94007e8     	ldr	w8, [sp, #0x4]
    9640: 7100091f     	cmp	w8, #0x2
    9644: 54000520     	b.eq	0x96e8 <osc_cali_store+0x108>
    9648: 7100051f     	cmp	w8, #0x1
    964c: 54000681     	b.ne	0x971c <osc_cali_store+0x13c>
    9650: f9429348     	ldr	x8, [x26, #0x520]
    9654: aa1503e0     	mov	x0, x21
    9658: 2a1f03e1     	mov	w1, wzr
    965c: f9408d08     	ldr	x8, [x8, #0x118]
    9660: b85fc110     	ldur	w16, [x8, #-0x4]
    9664: 728dd2b1     	movk	w17, #0x6e95
    9668: 72ba6f71     	movk	w17, #0xd37b, lsl #16
    966c: 6b11021f     	cmp	w16, w17
    9670: 54000040     	b.eq	0x9678 <osc_cali_store+0x98>
    9674: d4304500     	brk	#0x8228
    9678: d63f0100     	blr	x8
    967c: aa1503e0     	mov	x0, x21
    9680: 940000d4     	bl	0x99d0 <rtp_osc_cali>
    9684: f9429348     	ldr	x8, [x26, #0x520]
    9688: b85f8354     	ldur	w20, [x26, #-0x8]
    968c: aa1503e0     	mov	x0, x21
    9690: f940c508     	ldr	x8, [x8, #0x188]
    9694: b85fc110     	ldur	w16, [x8, #-0x4]
    9698: 7290be71     	movk	w17, #0x85f3
    969c: 72a13471     	movk	w17, #0x9a3, lsl #16
    96a0: 6b11021f     	cmp	w16, w17
    96a4: 54000040     	b.eq	0x96ac <osc_cali_store+0xcc>
    96a8: d4304500     	brk	#0x8228
    96ac: d63f0100     	blr	x8
    96b0: 6b14001f     	cmp	w0, w20
    96b4: 54000541     	b.ne	0x975c <osc_cali_store+0x17c>
    96b8: 90000000     	adrp	x0, 0x9000 <cont_show+0x34>
		00000000000096b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1921
    96bc: 91000000     	add	x0, x0, #0x0
		00000000000096bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1921
    96c0: 90000001     	adrp	x1, 0x9000 <cont_show+0x34>
		00000000000096c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    96c4: 91000021     	add	x1, x1, #0x0
		00000000000096c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    96c8: 90000003     	adrp	x3, 0x9000 <cont_show+0x34>
		00000000000096c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa02
    96cc: 91000063     	add	x3, x3, #0x0
		00000000000096cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa02
    96d0: 52806ca2     	mov	w2, #0x365              // =869
    96d4: 2a1403e4     	mov	w4, w20
    96d8: 94000000     	bl	0x96d8 <osc_cali_store+0xf8>
		00000000000096d8:  R_AARCH64_CALL26	_printk
    96dc: 14000010     	b	0x971c <osc_cali_store+0x13c>
    96e0: 93407c13     	sxtw	x19, w0
    96e4: 14000010     	b	0x9724 <osc_cali_store+0x144>
    96e8: f9429348     	ldr	x8, [x26, #0x520]
    96ec: aa1503e0     	mov	x0, x21
    96f0: 52800041     	mov	w1, #0x2                // =2
    96f4: f9408d08     	ldr	x8, [x8, #0x118]
    96f8: b85fc110     	ldur	w16, [x8, #-0x4]
    96fc: 728dd2b1     	movk	w17, #0x6e95
    9700: 72ba6f71     	movk	w17, #0xd37b, lsl #16
    9704: 6b11021f     	cmp	w16, w17
    9708: 54000040     	b.eq	0x9710 <osc_cali_store+0x130>
    970c: d4304500     	brk	#0x8228
    9710: d63f0100     	blr	x8
    9714: aa1503e0     	mov	x0, x21
    9718: 940000ae     	bl	0x99d0 <rtp_osc_cali>
    971c: 91092340     	add	x0, x26, #0x248
    9720: 94000000     	bl	0x9720 <osc_cali_store+0x140>
		0000000000009720:  R_AARCH64_CALL26	mutex_unlock
    9724: d5384108     	mrs	x8, SP_EL0
    9728: f9438908     	ldr	x8, [x8, #0x710]
    972c: f94007e9     	ldr	x9, [sp, #0x8]
    9730: eb09011f     	cmp	x8, x9
    9734: 540014c1     	b.ne	0x99cc <osc_cali_store+0x3ec>
    9738: aa1303e0     	mov	x0, x19
    973c: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    9740: a94457f6     	ldp	x22, x21, [sp, #0x40]
    9744: a9435ff8     	ldp	x24, x23, [sp, #0x30]
    9748: a94267fa     	ldp	x26, x25, [sp, #0x20]
    974c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    9750: 910183ff     	add	sp, sp, #0x60
    9754: d50323bf     	autiasp
    9758: d65f03c0     	ret
    975c: 54000222     	b.hs	0x97a0 <osc_cali_store+0x1c0>
    9760: 5290a3e8     	mov	w8, #0x851f             // =34079
    9764: 72aa3d68     	movk	w8, #0x51eb, lsl #16
    9768: 9ba87c08     	umull	x8, w0, w8
    976c: d364fd09     	lsr	x9, x8, #36
    9770: 4b000288     	sub	w8, w20, w0
    9774: 6b09011f     	cmp	w8, w9
    9778: 54000369     	b.ls	0x97e4 <osc_cali_store+0x204>
    977c: 90000000     	adrp	x0, 0x9000 <cont_show+0x34>
		000000000000977c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x435
    9780: 91000000     	add	x0, x0, #0x0
		0000000000009780:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x435
    9784: 90000001     	adrp	x1, 0x9000 <cont_show+0x34>
		0000000000009784:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    9788: 91000021     	add	x1, x1, #0x0
		0000000000009788:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    978c: 90000003     	adrp	x3, 0x9000 <cont_show+0x34>
		000000000000978c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa02
    9790: 91000063     	add	x3, x3, #0x0
		0000000000009790:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa02
    9794: 52806d42     	mov	w2, #0x36a              // =874
    9798: 94000000     	bl	0x9798 <osc_cali_store+0x1b8>
		0000000000009798:  R_AARCH64_CALL26	_printk
    979c: 17ffffe0     	b	0x971c <osc_cali_store+0x13c>
    97a0: 6b140008     	subs	w8, w0, w20
    97a4: 54000449     	b.ls	0x982c <osc_cali_store+0x24c>
    97a8: 5290a3e9     	mov	w9, #0x851f             // =34079
    97ac: 72aa3d69     	movk	w9, #0x51eb, lsl #16
    97b0: 9ba97c09     	umull	x9, w0, w9
    97b4: d364fd29     	lsr	x9, x9, #36
    97b8: 6b09011f     	cmp	w8, w9
    97bc: 54000409     	b.ls	0x983c <osc_cali_store+0x25c>
    97c0: 90000000     	adrp	x0, 0x9000 <cont_show+0x34>
		00000000000097c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdc0
    97c4: 91000000     	add	x0, x0, #0x0
		00000000000097c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdc0
    97c8: 90000001     	adrp	x1, 0x9000 <cont_show+0x34>
		00000000000097c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    97cc: 91000021     	add	x1, x1, #0x0
		00000000000097cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    97d0: 90000003     	adrp	x3, 0x9000 <cont_show+0x34>
		00000000000097d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa02
    97d4: 91000063     	add	x3, x3, #0x0
		00000000000097d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa02
    97d8: 52806f82     	mov	w2, #0x37c              // =892
    97dc: 94000000     	bl	0x97dc <osc_cali_store+0x1fc>
		00000000000097dc:  R_AARCH64_CALL26	_printk
    97e0: 17ffffcf     	b	0x971c <osc_cali_store+0x13c>
    97e4: 0b000809     	add	w9, w0, w0, lsl #2
    97e8: 5282eb2a     	mov	w10, #0x1759            // =5977
    97ec: 72ba36ea     	movk	w10, #0xd1b7, lsl #16
    97f0: 531f7929     	lsl	w9, w9, #1
    97f4: 9baa7d29     	umull	x9, w9, w10
    97f8: d36dfd29     	lsr	x9, x9, #45
    97fc: 6b09011f     	cmp	w8, w9
    9800: 54000462     	b.hs	0x988c <osc_cali_store+0x2ac>
    9804: 90000008     	adrp	x8, 0x9000 <cont_show+0x34>
		0000000000009804:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x231e
    9808: 91000108     	add	x8, x8, #0x0
		0000000000009808:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x231e
    980c: 90000001     	adrp	x1, 0x9000 <cont_show+0x34>
		000000000000980c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    9810: 91000021     	add	x1, x1, #0x0
		0000000000009810:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    9814: 90000003     	adrp	x3, 0x9000 <cont_show+0x34>
		0000000000009814:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa02
    9818: 91000063     	add	x3, x3, #0x0
		0000000000009818:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa02
    981c: aa0003e5     	mov	x5, x0
    9820: aa0803e0     	mov	x0, x8
    9824: 52806e22     	mov	w2, #0x371              // =881
    9828: 14000016     	b	0x9880 <osc_cali_store+0x2a0>
    982c: 39592f48     	ldrb	w8, [x26, #0x64b]
    9830: aa0003f6     	mov	x22, x0
    9834: 2a1f03f7     	mov	w23, wzr
    9838: 14000041     	b	0x993c <osc_cali_store+0x35c>
    983c: 0b000809     	add	w9, w0, w0, lsl #2
    9840: 5282eb2a     	mov	w10, #0x1759            // =5977
    9844: 72ba36ea     	movk	w10, #0xd1b7, lsl #16
    9848: 531f7929     	lsl	w9, w9, #1
    984c: 9baa7d29     	umull	x9, w9, w10
    9850: d36dfd29     	lsr	x9, x9, #45
    9854: 6b09011f     	cmp	w8, w9
    9858: 540003e2     	b.hs	0x98d4 <osc_cali_store+0x2f4>
    985c: 90000008     	adrp	x8, 0x9000 <cont_show+0x34>
		000000000000985c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x231e
    9860: 91000108     	add	x8, x8, #0x0
		0000000000009860:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x231e
    9864: 90000001     	adrp	x1, 0x9000 <cont_show+0x34>
		0000000000009864:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    9868: 91000021     	add	x1, x1, #0x0
		0000000000009868:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    986c: 90000003     	adrp	x3, 0x9000 <cont_show+0x34>
		000000000000986c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa02
    9870: 91000063     	add	x3, x3, #0x0
		0000000000009870:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa02
    9874: aa0003e5     	mov	x5, x0
    9878: aa0803e0     	mov	x0, x8
    987c: 52807042     	mov	w2, #0x382              // =898
    9880: 2a1403e4     	mov	w4, w20
    9884: 94000000     	bl	0x9884 <osc_cali_store+0x2a4>
		0000000000009884:  R_AARCH64_CALL26	_printk
    9888: 17ffffa5     	b	0x971c <osc_cali_store+0x13c>
    988c: 5290d409     	mov	w9, #0x86a0             // =34464
    9890: 0b00040a     	add	w10, w0, w0, lsl #1
    9894: aa0003f6     	mov	x22, x0
    9898: 72a00029     	movk	w9, #0x1, lsl #16
    989c: 1b097d08     	mul	w8, w8, w9
    98a0: 531d7149     	lsl	w9, w10, #3
    98a4: 5280014a     	mov	w10, #0xa               // =10
    98a8: 1ac90908     	udiv	w8, w8, w9
    98ac: 529999a9     	mov	w9, #0xcccd             // =52429
    98b0: 72b99989     	movk	w9, #0xcccc, lsl #16
    98b4: 9ba97d09     	umull	x9, w8, w9
    98b8: d363fd29     	lsr	x9, x9, #35
    98bc: 1b0aa12a     	msub	w10, w9, w10, w8
    98c0: 39592f48     	ldrb	w8, [x26, #0x64b]
    98c4: 0b080129     	add	w9, w9, w8
    98c8: 7100115f     	cmp	w10, #0x4
    98cc: 1a899537     	cinc	w23, w9, hi
    98d0: 1400001b     	b	0x993c <osc_cali_store+0x35c>
    98d4: 53057c09     	lsr	w9, w0, #5
    98d8: 528b58aa     	mov	w10, #0x5ac5            // =23237
    98dc: 5291112b     	mov	w11, #0x8889            // =34953
    98e0: 72a14f8a     	movk	w10, #0xa7c, lsl #16
    98e4: 72b1110b     	movk	w11, #0x8888, lsl #16
    98e8: aa0003f6     	mov	x22, x0
    98ec: 9baa7d29     	umull	x9, w9, w10
    98f0: 5293334a     	mov	w10, #0x999a            // =39322
    98f4: 72a3332a     	movk	w10, #0x1999, lsl #16
    98f8: d367fd29     	lsr	x9, x9, #39
    98fc: 1ac90908     	udiv	w8, w8, w9
    9900: 52955569     	mov	w9, #0xaaab             // =43691
    9904: 72b55549     	movk	w9, #0xaaaa, lsl #16
    9908: 9ba97d09     	umull	x9, w8, w9
    990c: 9bab7d08     	umull	x8, w8, w11
    9910: 5280014b     	mov	w11, #0xa               // =10
    9914: d364fd29     	lsr	x9, x9, #36
    9918: 9baa7d2a     	umull	x10, w9, w10
    991c: d360fd4a     	lsr	x10, x10, #32
    9920: 1b0ba549     	msub	w9, w10, w11, w9
    9924: d367fd0a     	lsr	x10, x8, #39
    9928: 39592f48     	ldrb	w8, [x26, #0x64b]
    992c: 4b0a010a     	sub	w10, w8, w10
    9930: 7100113f     	cmp	w9, #0x4
    9934: 1a9f97e9     	cset	w9, hi
    9938: 4b090157     	sub	w23, w10, w9
    993c: 6b0802ff     	cmp	w23, w8
    9940: aa1503e0     	mov	x0, x21
    9944: 52800041     	mov	w1, #0x2                // =2
    9948: 5a883508     	cneg	w8, w8, hs
    994c: 0b170118     	add	w24, w8, w23
    9950: f9429348     	ldr	x8, [x26, #0x520]
    9954: b81f0358     	stur	w24, [x26, #-0x10]
    9958: f9408d08     	ldr	x8, [x8, #0x118]
    995c: b85fc110     	ldur	w16, [x8, #-0x4]
    9960: 728dd2b1     	movk	w17, #0x6e95
    9964: 72ba6f71     	movk	w17, #0xd37b, lsl #16
    9968: 6b11021f     	cmp	w16, w17
    996c: 54000040     	b.eq	0x9974 <osc_cali_store+0x394>
    9970: d4304500     	brk	#0x8228
    9974: d63f0100     	blr	x8
    9978: 90000015     	adrp	x21, 0x9000 <cont_show+0x34>
		0000000000009978:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    997c: 910002b5     	add	x21, x21, #0x0
		000000000000997c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    9980: 90000019     	adrp	x25, 0x9000 <cont_show+0x34>
		0000000000009980:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa02
    9984: 91000339     	add	x25, x25, #0x0
		0000000000009984:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa02
    9988: 90000000     	adrp	x0, 0x9000 <cont_show+0x34>
		0000000000009988:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1dd
    998c: 91000000     	add	x0, x0, #0x0
		000000000000998c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1dd
    9990: aa1503e1     	mov	x1, x21
    9994: 52807502     	mov	w2, #0x3a8              // =936
    9998: aa1903e3     	mov	x3, x25
    999c: 2a1403e4     	mov	w4, w20
    99a0: 2a1603e5     	mov	w5, w22
    99a4: 94000000     	bl	0x99a4 <osc_cali_store+0x3c4>
		00000000000099a4:  R_AARCH64_CALL26	_printk
    99a8: 90000000     	adrp	x0, 0x9000 <cont_show+0x34>
		00000000000099a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1233
    99ac: 91000000     	add	x0, x0, #0x0
		00000000000099ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1233
    99b0: aa1503e1     	mov	x1, x21
    99b4: 52807522     	mov	w2, #0x3a9              // =937
    99b8: aa1903e3     	mov	x3, x25
    99bc: 2a1703e4     	mov	w4, w23
    99c0: 2a1803e5     	mov	w5, w24
    99c4: 94000000     	bl	0x99c4 <osc_cali_store+0x3e4>
		00000000000099c4:  R_AARCH64_CALL26	_printk
    99c8: 17ffff55     	b	0x971c <osc_cali_store+0x13c>
    99cc: 94000000     	bl	0x99cc <osc_cali_store+0x3ec>
		00000000000099cc:  R_AARCH64_CALL26	__stack_chk_fail
