
/input/zte_ir.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000071c <zte_ir_probe>:
     71c: d503233f     	paciasp
     720: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
     724: a9015ff8     	stp	x24, x23, [sp, #0x10]
     728: a90257f6     	stp	x22, x21, [sp, #0x20]
     72c: a9034ff4     	stp	x20, x19, [sp, #0x30]
     730: 910003fd     	mov	x29, sp
     734: aa0003f3     	mov	x19, x0
     738: d503201f     	nop
     73c: 52871e00     	mov	w0, #0x38f0             // =14576
     740: 5281b801     	mov	w1, #0xdc0              // =3520
     744: 72a00020     	movk	w0, #0x1, lsl #16
     748: 94000000     	bl	0x748 <zte_ir_probe+0x2c>
		0000000000000748:  R_AARCH64_CALL26	__kmalloc_large_noprof
     74c: aa0003f4     	mov	x20, x0
     750: b4000ab4     	cbz	x20, 0x8a4 <zte_ir_probe+0x188>
     754: 91404e88     	add	x8, x20, #0x13, lsl #12 // =0x13000
     758: 91404e98     	add	x24, x20, #0x13, lsl #12 // =0x13000
     75c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000075c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb2
     760: 91000021     	add	x1, x1, #0x0
		0000000000000760:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb2
     764: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000764:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x10
     768: 91000042     	add	x2, x2, #0x0
		0000000000000768:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x10
     76c: 9122a100     	add	x0, x8, #0x8a8
     770: b908a31f     	str	wzr, [x24, #0x8a0]
     774: 94000000     	bl	0x774 <zte_ir_probe+0x58>
		0000000000000774:  R_AARCH64_CALL26	__mutex_init
     778: d28003e9     	mov	x9, #0x1f               // =31
     77c: 91236315     	add	x21, x24, #0x8d8
     780: 91221308     	add	x8, x24, #0x884
     784: f2c8e009     	movk	x9, #0x4700, lsl #32
     788: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000788:  R_AARCH64_ADR_PREL_PG_HI21	.data
     78c: 91000000     	add	x0, x0, #0x0
		000000000000078c:  R_AARCH64_ADD_ABS_LO12_NC	.data
     790: f2e00129     	movk	x9, #0x9, lsl #48
     794: f9046f15     	str	x21, [x24, #0x8d8]
     798: f9047315     	str	x21, [x24, #0x8e0]
     79c: f9000109     	str	x9, [x8]
     7a0: f9044b13     	str	x19, [x24, #0x890]
     7a4: b908eb1f     	str	wzr, [x24, #0x8e8]
     7a8: 3923b31f     	strb	wzr, [x24, #0x8ec]
     7ac: 94000000     	bl	0x7ac <zte_ir_probe+0x90>
		00000000000007ac:  R_AARCH64_CALL26	mutex_lock
     7b0: 90000008     	adrp	x8, 0x0 <.text>
		00000000000007b0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
     7b4: f9400108     	ldr	x8, [x8]
		00000000000007b4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x18
     7b8: 37000508     	tbnz	w8, #0x0, 0x858 <zte_ir_probe+0x13c>
     7bc: 90000008     	adrp	x8, 0x0 <.text>
		00000000000007bc:  R_AARCH64_ADR_PREL_PG_HI21	.bss
     7c0: 90000009     	adrp	x9, 0x0 <.text>
		00000000000007c0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
     7c4: 90000004     	adrp	x4, 0x0 <.text>
		00000000000007c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x96
     7c8: 91000084     	add	x4, x4, #0x0
		00000000000007c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x96
     7cc: b9400108     	ldr	w8, [x8]
		00000000000007cc:  R_AARCH64_LDST32_ABS_LO12_NC	.bss
     7d0: f9400120     	ldr	x0, [x9]
		00000000000007d0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8
     7d4: aa1303e1     	mov	x1, x19
     7d8: aa1403e3     	mov	x3, x20
     7dc: 530c2d17     	lsl	w23, w8, #20
     7e0: 2a1703e2     	mov	w2, w23
     7e4: 94000000     	bl	0x7e4 <zte_ir_probe+0xc8>
		00000000000007e4:  R_AARCH64_CALL26	device_create
     7e8: b13ffc1f     	cmn	x0, #0xfff
     7ec: 54000063     	b.lo	0x7f8 <zte_ir_probe+0xdc>
     7f0: aa0003f6     	mov	x22, x0
     7f4: 35000356     	cbnz	w22, 0x85c <zte_ir_probe+0x140>
     7f8: b9000297     	str	w23, [x20]
     7fc: 14000032     	b	0x8c4 <zte_ir_probe+0x1a8>
     800: 52800028     	mov	w8, #0x1                // =1
     804: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000804:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
     808: 91000129     	add	x9, x9, #0x0
		0000000000000808:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x18
     80c: f828313f     	stset	x8, [x9]
     810: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000810:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     814: 91000021     	add	x1, x1, #0x0
		0000000000000814:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     818: aa1503e0     	mov	x0, x21
     81c: f9400022     	ldr	x2, [x1]
     820: 97ffffa9     	bl	0x6c4 <__list_add>
     824: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000824:  R_AARCH64_ADR_PREL_PG_HI21	.data
     828: 91000000     	add	x0, x0, #0x0
		0000000000000828:  R_AARCH64_ADD_ABS_LO12_NC	.data
     82c: 94000000     	bl	0x82c <zte_ir_probe+0x110>
		000000000000082c:  R_AARCH64_CALL26	mutex_unlock
     830: b9488b03     	ldr	w3, [x24, #0x888]
     834: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000834:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x93
     838: 91000000     	add	x0, x0, #0x0
		0000000000000838:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x93
     83c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000083c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9d
     840: 91000042     	add	x2, x2, #0x0
		0000000000000840:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9d
     844: aa1303e1     	mov	x1, x19
     848: f9004e74     	str	x20, [x19, #0x98]
     84c: 94000000     	bl	0x84c <zte_ir_probe+0x130>
		000000000000084c:  R_AARCH64_CALL26	_dev_printk
     850: 2a1f03f6     	mov	w22, wzr
     854: 14000015     	b	0x8a8 <zte_ir_probe+0x18c>
     858: 12800256     	mov	w22, #-0x13             // =-19
     85c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000085c:  R_AARCH64_ADR_PREL_PG_HI21	.data
     860: 91000000     	add	x0, x0, #0x0
		0000000000000860:  R_AARCH64_ADD_ABS_LO12_NC	.data
     864: 94000000     	bl	0x864 <zte_ir_probe+0x148>
		0000000000000864:  R_AARCH64_CALL26	mutex_unlock
     868: aa1403e0     	mov	x0, x20
     86c: 94000000     	bl	0x86c <zte_ir_probe+0x150>
		000000000000086c:  R_AARCH64_CALL26	kfree
     870: 1400000e     	b	0x8a8 <zte_ir_probe+0x18c>
     874: 52871e00     	mov	w0, #0x38f0             // =14576
     878: d5384115     	mrs	x21, SP_EL0
     87c: f9402ab6     	ldr	x22, [x21, #0x50]
     880: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000880:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags
     884: 91000108     	add	x8, x8, #0x0
		0000000000000884:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags
     888: 72a00020     	movk	w0, #0x1, lsl #16
     88c: 5281b801     	mov	w1, #0xdc0              // =3520
     890: f9002aa8     	str	x8, [x21, #0x50]
     894: 94000000     	bl	0x894 <zte_ir_probe+0x178>
		0000000000000894:  R_AARCH64_CALL26	__kmalloc_large_noprof
     898: aa0003f4     	mov	x20, x0
     89c: f9002ab6     	str	x22, [x21, #0x50]
     8a0: b5fff5b4     	cbnz	x20, 0x754 <zte_ir_probe+0x38>
     8a4: 12800176     	mov	w22, #-0xc              // =-12
     8a8: 2a1603e0     	mov	w0, w22
     8ac: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     8b0: a94257f6     	ldp	x22, x21, [sp, #0x20]
     8b4: a9415ff8     	ldp	x24, x23, [sp, #0x10]
     8b8: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     8bc: d50323bf     	autiasp
     8c0: d65f03c0     	ret
     8c4: 90000008     	adrp	x8, 0x0 <.text>
		00000000000008c4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
     8c8: 91000108     	add	x8, x8, #0x0
		00000000000008c8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x18
     8cc: f9800111     	prfm	pstl1strm, [x8]
     8d0: c85f7d09     	ldxr	x9, [x8]
     8d4: b2400129     	orr	x9, x9, #0x1
     8d8: c80a7d09     	stxr	w10, x9, [x8]
     8dc: 35ffffaa     	cbnz	w10, 0x8d0 <zte_ir_probe+0x1b4>
     8e0: 17ffffcc     	b	0x810 <zte_ir_probe+0xf4>
