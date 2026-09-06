
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000255c0 <tpd_set_singlefpgesture>:
   255c0: d503233f     	paciasp
   255c4: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   255c8: a9014ff4     	stp	x20, x19, [sp, #0x10]
   255cc: 910003fd     	mov	x29, sp
   255d0: f946dc14     	ldr	x20, [x0, #0xdb8]
   255d4: b9457e88     	ldr	w8, [x20, #0x57c]
   255d8: 7100051f     	cmp	w8, #0x1
   255dc: 54000141     	b.ne	0x25604 <tpd_set_singlefpgesture+0x44>
   255e0: b945b688     	ldr	w8, [x20, #0x5b4]
   255e4: b945be89     	ldr	w9, [x20, #0x5bc]
   255e8: 7100003f     	cmp	w1, #0x0
   255ec: 1a9fd7e2     	cset	w2, gt
   255f0: 2a090108     	orr	w8, w8, w9
   255f4: b905ba82     	str	w2, [x20, #0x5b8]
   255f8: 2a020108     	orr	w8, w8, w2
   255fc: b905b288     	str	w8, [x20, #0x5b0]
   25600: 14000007     	b	0x2561c <tpd_set_singlefpgesture+0x5c>
   25604: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025604:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa419
   25608: 91000000     	add	x0, x0, #0x0
		0000000000025608:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa419
   2560c: 90000001     	adrp	x1, 0x25000 <syna_tpd_register_fw_class+0x32c>
		000000000002560c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4933
   25610: 91000021     	add	x1, x1, #0x0
		0000000000025610:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4933
   25614: 94000000     	bl	0x25614 <tpd_set_singlefpgesture+0x54>
		0000000000025614:  R_AARCH64_CALL26	_printk
   25618: b945ba82     	ldr	w2, [x20, #0x5b8]
   2561c: 90000013     	adrp	x19, 0x25000 <syna_tpd_register_fw_class+0x32c>
		000000000002561c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4933
   25620: 91000273     	add	x19, x19, #0x0
		0000000000025620:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4933
   25624: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025624:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d82
   25628: 91000000     	add	x0, x0, #0x0
		0000000000025628:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d82
   2562c: aa1303e1     	mov	x1, x19
   25630: 94000000     	bl	0x25630 <tpd_set_singlefpgesture+0x70>
		0000000000025630:  R_AARCH64_CALL26	_printk
   25634: b945b682     	ldr	w2, [x20, #0x5b4]
   25638: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025638:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d60
   2563c: 91000000     	add	x0, x0, #0x0
		000000000002563c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d60
   25640: aa1303e1     	mov	x1, x19
   25644: 94000000     	bl	0x25644 <tpd_set_singlefpgesture+0x84>
		0000000000025644:  R_AARCH64_CALL26	_printk
   25648: b945b282     	ldr	w2, [x20, #0x5b0]
   2564c: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		000000000002564c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x436c
   25650: 91000000     	add	x0, x0, #0x0
		0000000000025650:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x436c
   25654: aa1303e1     	mov	x1, x19
   25658: 94000000     	bl	0x25658 <tpd_set_singlefpgesture+0x98>
		0000000000025658:  R_AARCH64_CALL26	_printk
   2565c: 2a1f03e0     	mov	w0, wzr
   25660: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   25664: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   25668: d50323bf     	autiasp
   2566c: d65f03c0     	ret
