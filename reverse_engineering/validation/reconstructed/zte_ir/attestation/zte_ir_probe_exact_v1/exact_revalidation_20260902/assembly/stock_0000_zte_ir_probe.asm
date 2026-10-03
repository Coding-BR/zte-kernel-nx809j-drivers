
/input/zte_ir.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000005b0 <zte_ir_probe>:
     5b0: d503233f     	paciasp
     5b4: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
     5b8: a9015ff8     	stp	x24, x23, [sp, #0x10]
     5bc: a90257f6     	stp	x22, x21, [sp, #0x20]
     5c0: a9034ff4     	stp	x20, x19, [sp, #0x30]
     5c4: 910003fd     	mov	x29, sp
     5c8: aa0003f3     	mov	x19, x0
     5cc: d503201f     	nop
     5d0: 52871d00     	mov	w0, #0x38e8             // =14568
     5d4: 5281b801     	mov	w1, #0xdc0              // =3520
     5d8: 72a00020     	movk	w0, #0x1, lsl #16
     5dc: 94000000     	bl	0x5dc <zte_ir_probe+0x2c>
		00000000000005dc:  R_AARCH64_CALL26	__kmalloc_large_noprof
     5e0: b5000280     	cbnz	x0, 0x630 <zte_ir_probe+0x80>
     5e4: 12800176     	mov	w22, #-0xc              // =-12
     5e8: 2a1603e0     	mov	w0, w22
     5ec: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     5f0: a94257f6     	ldp	x22, x21, [sp, #0x20]
     5f4: a9415ff8     	ldp	x24, x23, [sp, #0x10]
     5f8: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     5fc: d50323bf     	autiasp
     600: d65f03c0     	ret
     604: 52871d00     	mov	w0, #0x38e8             // =14568
     608: d5384114     	mrs	x20, SP_EL0
     60c: f9402a95     	ldr	x21, [x20, #0x50]
     610: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000610:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags
     614: 91000108     	add	x8, x8, #0x0
		0000000000000614:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags
     618: 72a00020     	movk	w0, #0x1, lsl #16
     61c: 5281b801     	mov	w1, #0xdc0              // =3520
     620: f9002a88     	str	x8, [x20, #0x50]
     624: 94000000     	bl	0x624 <zte_ir_probe+0x74>
		0000000000000624:  R_AARCH64_CALL26	__kmalloc_large_noprof
     628: f9002a95     	str	x21, [x20, #0x50]
     62c: b4fffdc0     	cbz	x0, 0x5e4 <zte_ir_probe+0x34>
     630: 91404c08     	add	x8, x0, #0x13, lsl #12  // =0x13000
     634: 91404c17     	add	x23, x0, #0x13, lsl #12 // =0x13000
     638: 5288e018     	mov	w24, #0x4700            // =18176
     63c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000063c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f
     640: 91000021     	add	x1, x1, #0x0
		0000000000000640:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f
     644: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000644:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x10
     648: 91000042     	add	x2, x2, #0x0
		0000000000000648:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x10
     64c: aa0003f4     	mov	x20, x0
     650: 9122a100     	add	x0, x8, #0x8a8
     654: f9044af3     	str	x19, [x23, #0x890]
     658: 72a00138     	movk	w24, #0x9, lsl #16
     65c: b908a2ff     	str	wzr, [x23, #0x8a0]
     660: 94000000     	bl	0x660 <zte_ir_probe+0xb0>
		0000000000000660:  R_AARCH64_CALL26	__mutex_init
     664: 912362f5     	add	x21, x23, #0x8d8
     668: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000668:  R_AARCH64_ADR_PREL_PG_HI21	.data
     66c: 91000000     	add	x0, x0, #0x0
		000000000000066c:  R_AARCH64_ADD_ABS_LO12_NC	.data
     670: f9046ef5     	str	x21, [x23, #0x8d8]
     674: f90472f5     	str	x21, [x23, #0x8e0]
     678: 94000000     	bl	0x678 <zte_ir_probe+0xc8>
		0000000000000678:  R_AARCH64_CALL26	mutex_lock
     67c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000067c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
     680: 39400108     	ldrb	w8, [x8]
		0000000000000680:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x18
     684: 37000668     	tbnz	w8, #0x0, 0x750 <zte_ir_probe+0x1a0>
     688: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000688:  R_AARCH64_ADR_PREL_PG_HI21	.bss
     68c: aa1403e3     	mov	x3, x20
     690: 90000004     	adrp	x4, 0x0 <.text>
		0000000000000690:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x117
     694: 91000084     	add	x4, x4, #0x0
		0000000000000694:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x117
     698: b9400108     	ldr	w8, [x8]
		0000000000000698:  R_AARCH64_LDST32_ABS_LO12_NC	.bss
     69c: aa1303e1     	mov	x1, x19
     6a0: 530c2d02     	lsl	w2, w8, #20
     6a4: 90000008     	adrp	x8, 0x0 <.text>
		00000000000006a4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
     6a8: f9400100     	ldr	x0, [x8]
		00000000000006a8:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8
     6ac: b9000282     	str	w2, [x20]
     6b0: 94000000     	bl	0x6b0 <zte_ir_probe+0x100>
		00000000000006b0:  R_AARCH64_CALL26	device_create
     6b4: b13ffc1f     	cmn	x0, #0xfff
     6b8: 54000063     	b.lo	0x6c4 <zte_ir_probe+0x114>
     6bc: aa0003f6     	mov	x22, x0
     6c0: 35000576     	cbnz	w22, 0x76c <zte_ir_probe+0x1bc>
     6c4: 14000040     	b	0x7c4 <zte_ir_probe+0x214>
     6c8: 52800028     	mov	w8, #0x1                // =1
     6cc: 90000009     	adrp	x9, 0x0 <.text>
		00000000000006cc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
     6d0: 91000129     	add	x9, x9, #0x0
		00000000000006d0:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x18
     6d4: f828313f     	stset	x8, [x9]
     6d8: 90000008     	adrp	x8, 0x0 <.text>
		00000000000006d8:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     6dc: f9400102     	ldr	x2, [x8]
		00000000000006dc:  R_AARCH64_LDST64_ABS_LO12_NC	.data+0x30
     6e0: eb15005f     	cmp	x2, x21
     6e4: 54000660     	b.eq	0x7b0 <zte_ir_probe+0x200>
     6e8: f9400449     	ldr	x9, [x2, #0x8]
     6ec: 90000008     	adrp	x8, 0x0 <.text>
		00000000000006ec:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     6f0: 91000108     	add	x8, x8, #0x0
		00000000000006f0:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     6f4: eb08013f     	cmp	x9, x8
     6f8: 540005c1     	b.ne	0x7b0 <zte_ir_probe+0x200>
     6fc: f9000455     	str	x21, [x2, #0x8]
     700: f9046ee2     	str	x2, [x23, #0x8d8]
     704: f90472e8     	str	x8, [x23, #0x8e0]
     708: f9000115     	str	x21, [x8]
     70c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000070c:  R_AARCH64_ADR_PREL_PG_HI21	.data
     710: 91000000     	add	x0, x0, #0x0
		0000000000000710:  R_AARCH64_ADD_ABS_LO12_NC	.data
     714: 94000000     	bl	0x714 <zte_ir_probe+0x164>
		0000000000000714:  R_AARCH64_CALL26	mutex_unlock
     718: 5288e003     	mov	w3, #0x4700             // =18176
     71c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000071c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x137
     720: 91000000     	add	x0, x0, #0x0
		0000000000000720:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x137
     724: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000724:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18d
     728: 91000042     	add	x2, x2, #0x0
		0000000000000728:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18d
     72c: aa1303e1     	mov	x1, x19
     730: 72a00123     	movk	w3, #0x9, lsl #16
     734: b9088af8     	str	w24, [x23, #0x888]
     738: 94000000     	bl	0x738 <zte_ir_probe+0x188>
		0000000000000738:  R_AARCH64_CALL26	_dev_printk
     73c: 528003e8     	mov	w8, #0x1f               // =31
     740: 2a1f03f6     	mov	w22, wzr
     744: f9004e74     	str	x20, [x19, #0x98]
     748: b90886e8     	str	w8, [x23, #0x884]
     74c: 17ffffa7     	b	0x5e8 <zte_ir_probe+0x38>
     750: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000750:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x137
     754: 91000000     	add	x0, x0, #0x0
		0000000000000754:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x137
     758: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000758:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b2
     75c: 91000042     	add	x2, x2, #0x0
		000000000000075c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b2
     760: aa1303e1     	mov	x1, x19
     764: 94000000     	bl	0x764 <zte_ir_probe+0x1b4>
		0000000000000764:  R_AARCH64_CALL26	_dev_printk
     768: 12800256     	mov	w22, #-0x13             // =-19
     76c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000076c:  R_AARCH64_ADR_PREL_PG_HI21	.data
     770: 91000000     	add	x0, x0, #0x0
		0000000000000770:  R_AARCH64_ADD_ABS_LO12_NC	.data
     774: 94000000     	bl	0x774 <zte_ir_probe+0x1c4>
		0000000000000774:  R_AARCH64_CALL26	mutex_unlock
     778: 5288e003     	mov	w3, #0x4700             // =18176
     77c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000077c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x137
     780: 91000000     	add	x0, x0, #0x0
		0000000000000780:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x137
     784: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000784:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18d
     788: 91000042     	add	x2, x2, #0x0
		0000000000000788:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18d
     78c: aa1303e1     	mov	x1, x19
     790: 72a00123     	movk	w3, #0x9, lsl #16
     794: b9088af8     	str	w24, [x23, #0x888]
     798: 94000000     	bl	0x798 <zte_ir_probe+0x1e8>
		0000000000000798:  R_AARCH64_CALL26	_dev_printk
     79c: 528003e8     	mov	w8, #0x1f               // =31
     7a0: aa1403e0     	mov	x0, x20
     7a4: b90886e8     	str	w8, [x23, #0x884]
     7a8: 94000000     	bl	0x7a8 <zte_ir_probe+0x1f8>
		00000000000007a8:  R_AARCH64_CALL26	kfree
     7ac: 17ffff8f     	b	0x5e8 <zte_ir_probe+0x38>
     7b0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000007b0:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     7b4: 91000021     	add	x1, x1, #0x0
		00000000000007b4:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     7b8: aa1503e0     	mov	x0, x21
     7bc: 94000000     	bl	0x7bc <zte_ir_probe+0x20c>
		00000000000007bc:  R_AARCH64_CALL26	__list_add_valid_or_report
     7c0: 17ffffd3     	b	0x70c <zte_ir_probe+0x15c>
     7c4: 90000008     	adrp	x8, 0x0 <.text>
		00000000000007c4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
     7c8: 91000108     	add	x8, x8, #0x0
		00000000000007c8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x18
     7cc: f9800111     	prfm	pstl1strm, [x8]
     7d0: c85f7d09     	ldxr	x9, [x8]
     7d4: b2400129     	orr	x9, x9, #0x1
     7d8: c80a7d09     	stxr	w10, x9, [x8]
     7dc: 35ffffaa     	cbnz	w10, 0x7d0 <zte_ir_probe+0x220>
     7e0: 17ffffbe     	b	0x6d8 <zte_ir_probe+0x128>
