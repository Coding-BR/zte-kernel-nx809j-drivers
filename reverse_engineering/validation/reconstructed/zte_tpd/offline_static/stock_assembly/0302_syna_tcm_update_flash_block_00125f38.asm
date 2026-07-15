
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001f6b0 <syna_tcm_update_flash_block>:
   1f6b0: d503233f     	paciasp
   1f6b4: d10243ff     	sub	sp, sp, #0x90
   1f6b8: a9037bfd     	stp	x29, x30, [sp, #0x30]
   1f6bc: a9046ffc     	stp	x28, x27, [sp, #0x40]
   1f6c0: a90567fa     	stp	x26, x25, [sp, #0x50]
   1f6c4: a9065ff8     	stp	x24, x23, [sp, #0x60]
   1f6c8: a90757f6     	stp	x22, x21, [sp, #0x70]
   1f6cc: a9084ff4     	stp	x20, x19, [sp, #0x80]
   1f6d0: 9100c3fd     	add	x29, sp, #0x30
   1f6d4: d5384108     	mrs	x8, SP_EL0
   1f6d8: f9438908     	ldr	x8, [x8, #0x710]
   1f6dc: f81f83a8     	stur	x8, [x29, #-0x8]
   1f6e0: b4000381     	cbz	x1, 0x1f750 <syna_tcm_update_flash_block+0xa0>
   1f6e4: aa0203f3     	mov	x19, x2
   1f6e8: b40003a2     	cbz	x2, 0x1f75c <syna_tcm_update_flash_block+0xac>
   1f6ec: aa1303e2     	mov	x2, x19
   1f6f0: 2a0503fa     	mov	w26, w5
   1f6f4: 2a0403f7     	mov	w23, w4
   1f6f8: 2a0303fc     	mov	w28, w3
   1f6fc: aa0103f4     	mov	x20, x1
   1f700: aa0003f8     	mov	x24, x0
   1f704: 940003b9     	bl	0x205e8 <syna_tcm_check_flash_block>
   1f708: 2a0003f5     	mov	w21, w0
   1f70c: 37f80360     	tbnz	w0, #0x1f, 0x1f778 <syna_tcm_update_flash_block+0xc8>
   1f710: 35000415     	cbnz	w21, 0x1f790 <syna_tcm_update_flash_block+0xe0>
   1f714: d5384108     	mrs	x8, SP_EL0
   1f718: f9438908     	ldr	x8, [x8, #0x710]
   1f71c: f85f83a9     	ldur	x9, [x29, #-0x8]
   1f720: eb09011f     	cmp	x8, x9
   1f724: 54003fe1     	b.ne	0x1ff20 <syna_tcm_update_flash_block+0x870>
   1f728: 2a1503e0     	mov	w0, w21
   1f72c: a9484ff4     	ldp	x20, x19, [sp, #0x80]
   1f730: a94757f6     	ldp	x22, x21, [sp, #0x70]
   1f734: a9465ff8     	ldp	x24, x23, [sp, #0x60]
   1f738: a94567fa     	ldp	x26, x25, [sp, #0x50]
   1f73c: a9446ffc     	ldp	x28, x27, [sp, #0x40]
   1f740: a9437bfd     	ldp	x29, x30, [sp, #0x30]
   1f744: 910243ff     	add	sp, sp, #0x90
   1f748: d50323bf     	autiasp
   1f74c: d65f03c0     	ret
   1f750: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f750:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2917
   1f754: 91000000     	add	x0, x0, #0x0
		000000000001f754:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2917
   1f758: 14000003     	b	0x1f764 <syna_tcm_update_flash_block+0xb4>
   1f75c: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f75c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x41c
   1f760: 91000000     	add	x0, x0, #0x0
		000000000001f760:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x41c
   1f764: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f764:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9c3e
   1f768: 91000021     	add	x1, x1, #0x0
		000000000001f768:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9c3e
   1f76c: 94000000     	bl	0x1f76c <syna_tcm_update_flash_block+0xbc>
		000000000001f76c:  R_AARCH64_CALL26	_printk
   1f770: 12801e15     	mov	w21, #-0xf1             // =-241
   1f774: 17ffffe8     	b	0x1f714 <syna_tcm_update_flash_block+0x64>
   1f778: 39406260     	ldrb	w0, [x19, #0x18]
   1f77c: 94000000     	bl	0x1f77c <syna_tcm_update_flash_block+0xcc>
		000000000001f77c:  R_AARCH64_CALL26	syna_tcm_get_partition_id_string
   1f780: aa0003e2     	mov	x2, x0
   1f784: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f784:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9bd4
   1f788: 91000000     	add	x0, x0, #0x0
		000000000001f788:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9bd4
   1f78c: 140001d6     	b	0x1fee4 <syna_tcm_update_flash_block+0x834>
   1f790: 39406260     	ldrb	w0, [x19, #0x18]
   1f794: 94000000     	bl	0x1f794 <syna_tcm_update_flash_block+0xe4>
		000000000001f794:  R_AARCH64_CALL26	syna_tcm_get_partition_id_string
   1f798: aa0003e2     	mov	x2, x0
   1f79c: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f79c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x43e
   1f7a0: 91000000     	add	x0, x0, #0x0
		000000000001f7a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x43e
   1f7a4: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f7a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9c3e
   1f7a8: 91000021     	add	x1, x1, #0x0
		000000000001f7a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9c3e
   1f7ac: 94000000     	bl	0x1f7ac <syna_tcm_update_flash_block+0xfc>
		000000000001f7ac:  R_AARCH64_CALL26	_printk
   1f7b0: 3600009a     	tbz	w26, #0x0, 0x1f7c0 <syna_tcm_update_flash_block+0x110>
   1f7b4: 90000015     	adrp	x21, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f7b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb6f4
   1f7b8: 910002b5     	add	x21, x21, #0x0
		000000000001f7b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb6f4
   1f7bc: 1400000b     	b	0x1f7e8 <syna_tcm_update_flash_block+0x138>
   1f7c0: b9401279     	ldr	w25, [x19, #0x10]
   1f7c4: 35001b39     	cbnz	w25, 0x1fb28 <syna_tcm_update_flash_block+0x478>
   1f7c8: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f7c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x466
   1f7cc: 91000000     	add	x0, x0, #0x0
		000000000001f7cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x466
   1f7d0: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f7d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8d8f
   1f7d4: 91000021     	add	x1, x1, #0x0
		000000000001f7d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8d8f
   1f7d8: 2a1f03e2     	mov	w2, wzr
   1f7dc: 94000000     	bl	0x1f7dc <syna_tcm_update_flash_block+0x12c>
		000000000001f7dc:  R_AARCH64_CALL26	_printk
   1f7e0: 90000015     	adrp	x21, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f7e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x491
   1f7e4: 910002b5     	add	x21, x21, #0x0
		000000000001f7e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x491
   1f7e8: 39406260     	ldrb	w0, [x19, #0x18]
   1f7ec: 94000000     	bl	0x1f7ec <syna_tcm_update_flash_block+0x13c>
		000000000001f7ec:  R_AARCH64_CALL26	syna_tcm_get_partition_id_string
   1f7f0: aa0003e2     	mov	x2, x0
   1f7f4: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f7f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8d8f
   1f7f8: 91000021     	add	x1, x1, #0x0
		000000000001f7f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8d8f
   1f7fc: aa1503e0     	mov	x0, x21
   1f800: 94000000     	bl	0x1f800 <syna_tcm_update_flash_block+0x150>
		000000000001f800:  R_AARCH64_CALL26	_printk
   1f804: 39406260     	ldrb	w0, [x19, #0x18]
   1f808: 94000000     	bl	0x1f808 <syna_tcm_update_flash_block+0x158>
		000000000001f808:  R_AARCH64_CALL26	syna_tcm_get_partition_id_string
   1f80c: aa0003e2     	mov	x2, x0
   1f810: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f810:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1049
   1f814: 91000000     	add	x0, x0, #0x0
		000000000001f814:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1049
   1f818: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f818:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9c3e
   1f81c: 91000021     	add	x1, x1, #0x0
		000000000001f81c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9c3e
   1f820: 94000000     	bl	0x1f820 <syna_tcm_update_flash_block+0x170>
		000000000001f820:  R_AARCH64_CALL26	_printk
   1f824: b940126a     	ldr	w10, [x19, #0x10]
   1f828: 3500022a     	cbnz	w10, 0x1f86c <syna_tcm_update_flash_block+0x1bc>
   1f82c: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f82c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x58f7
   1f830: 91000000     	add	x0, x0, #0x0
		000000000001f830:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x58f7
   1f834: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f834:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4af
   1f838: 91000021     	add	x1, x1, #0x0
		000000000001f838:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4af
   1f83c: 2a1f03e2     	mov	w2, wzr
   1f840: 94000000     	bl	0x1f840 <syna_tcm_update_flash_block+0x190>
		000000000001f840:  R_AARCH64_CALL26	_printk
   1f844: 39406260     	ldrb	w0, [x19, #0x18]
   1f848: 94000000     	bl	0x1f848 <syna_tcm_update_flash_block+0x198>
		000000000001f848:  R_AARCH64_CALL26	syna_tcm_get_partition_id_string
   1f84c: aa0003e2     	mov	x2, x0
   1f850: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f850:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5f2b
   1f854: 91000000     	add	x0, x0, #0x0
		000000000001f854:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5f2b
   1f858: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f858:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4af
   1f85c: 91000021     	add	x1, x1, #0x0
		000000000001f85c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4af
   1f860: 94000000     	bl	0x1f860 <syna_tcm_update_flash_block+0x1b0>
		000000000001f860:  R_AARCH64_CALL26	_printk
   1f864: 2a1f03f5     	mov	w21, wzr
   1f868: 17ffffab     	b	0x1f714 <syna_tcm_update_flash_block+0x64>
   1f86c: b9401679     	ldr	w25, [x19, #0x14]
   1f870: b9402e95     	ldr	w21, [x20, #0x2c]
   1f874: 1ad50b28     	udiv	w8, w25, w21
   1f878: 1b15e509     	msub	w9, w8, w21, w25
   1f87c: 35001749     	cbnz	w9, 0x1fb64 <syna_tcm_update_flash_block+0x4b4>
   1f880: f9400663     	ldr	x3, [x19, #0x8]
   1f884: 3600191a     	tbz	w26, #0x0, 0x1fba4 <syna_tcm_update_flash_block+0x4f4>
   1f888: 39422289     	ldrb	w9, [x20, #0x88]
   1f88c: 36001ca9     	tbz	w9, #0x0, 0x1fc20 <syna_tcm_update_flash_block+0x570>
   1f890: 0b150149     	add	w9, w10, w21
   1f894: b81f03aa     	stur	w10, [x29, #-0x10]
   1f898: b940328a     	ldr	w10, [x20, #0x30]
   1f89c: 51000529     	sub	w9, w9, #0x1
   1f8a0: 39420282     	ldrb	w2, [x20, #0x80]
   1f8a4: f90007e3     	str	x3, [sp, #0x8]
   1f8a8: 1ad50929     	udiv	w9, w9, w21
   1f8ac: b90017f7     	str	w23, [sp, #0x14]
   1f8b0: 1ad50956     	udiv	w22, w10, w21
   1f8b4: 0b080128     	add	w8, w9, w8
   1f8b8: b81ec3a8     	stur	w8, [x29, #-0x14]
   1f8bc: 340000c2     	cbz	w2, 0x1f8d4 <syna_tcm_update_flash_block+0x224>
   1f8c0: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f8c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   1f8c4: 91000000     	add	x0, x0, #0x0
		000000000001f8c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   1f8c8: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001f8c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f05
   1f8cc: 91000021     	add	x1, x1, #0x0
		000000000001f8cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f05
   1f8d0: 94000000     	bl	0x1f8d0 <syna_tcm_update_flash_block+0x220>
		000000000001f8d0:  R_AARCH64_CALL26	_printk
   1f8d4: 1b157ec8     	mul	w8, w22, w21
   1f8d8: 91014280     	add	x0, x20, #0x50
   1f8dc: b9001be8     	str	w8, [sp, #0x18]
   1f8e0: 94000000     	bl	0x1f8e0 <syna_tcm_update_flash_block+0x230>
		000000000001f8e0:  R_AARCH64_CALL26	mutex_lock
   1f8e4: b85ec3a9     	ldur	w9, [x29, #-0x14]
   1f8e8: 39420288     	ldrb	w8, [x20, #0x80]
   1f8ec: 2a1f03f6     	mov	w22, wzr
   1f8f0: b85f03b7     	ldur	w23, [x29, #-0x10]
   1f8f4: 53087d29     	lsr	w9, w9, #8
   1f8f8: 11000508     	add	w8, w8, #0x1
   1f8fc: 39020288     	strb	w8, [x20, #0x80]
   1f900: b90013e9     	str	w9, [sp, #0x10]
   1f904: b9401be8     	ldr	w8, [sp, #0x18]
   1f908: b9404a82     	ldr	w2, [x20, #0x48]
   1f90c: f9402280     	ldr	x0, [x20, #0x40]
   1f910: 6b0802ff     	cmp	w23, w8
   1f914: 1a8832fc     	csel	w28, w23, w8, lo
   1f918: 11001b9b     	add	w27, w28, #0x6
   1f91c: 6b1b005f     	cmp	w2, w27
   1f920: 54000242     	b.hs	0x1f968 <syna_tcm_update_flash_block+0x2b8>
   1f924: b40000c0     	cbz	x0, 0x1f93c <syna_tcm_update_flash_block+0x28c>
   1f928: aa0003f5     	mov	x21, x0
   1f92c: 94000000     	bl	0x1f92c <syna_tcm_update_flash_block+0x27c>
		000000000001f92c:  R_AARCH64_CALL26	syna_request_managed_device
   1f930: b4000e80     	cbz	x0, 0x1fb00 <syna_tcm_update_flash_block+0x450>
   1f934: aa1503e1     	mov	x1, x21
   1f938: 94000000     	bl	0x1f938 <syna_tcm_update_flash_block+0x288>
		000000000001f938:  R_AARCH64_CALL26	devm_kfree
   1f93c: 94000000     	bl	0x1f93c <syna_tcm_update_flash_block+0x28c>
		000000000001f93c:  R_AARCH64_CALL26	syna_request_managed_device
   1f940: b4000ee0     	cbz	x0, 0x1fb1c <syna_tcm_update_flash_block+0x46c>
   1f944: 7100037f     	cmp	w27, #0x0
   1f948: 5400252d     	b.le	0x1fdec <syna_tcm_update_flash_block+0x73c>
   1f94c: aa1b03e1     	mov	x1, x27
   1f950: 5281b802     	mov	w2, #0xdc0              // =3520
   1f954: 94000000     	bl	0x1f954 <syna_tcm_update_flash_block+0x2a4>
		000000000001f954:  R_AARCH64_CALL26	devm_kmalloc
   1f958: f9002280     	str	x0, [x20, #0x40]
   1f95c: b4002540     	cbz	x0, 0x1fe04 <syna_tcm_update_flash_block+0x754>
   1f960: aa1b03e2     	mov	x2, x27
   1f964: b9004a9b     	str	w27, [x20, #0x48]
   1f968: 2a1f03e1     	mov	w1, wzr
   1f96c: 94000000     	bl	0x1f96c <syna_tcm_update_flash_block+0x2bc>
		000000000001f96c:  R_AARCH64_CALL26	memset
   1f970: b9402e88     	ldr	w8, [x20, #0x2c]
   1f974: 0b1902cc     	add	w12, w22, w25
   1f978: b85f03ab     	ldur	w11, [x29, #-0x10]
   1f97c: f9402289     	ldr	x9, [x20, #0x40]
   1f980: b9004e9f     	str	wzr, [x20, #0x4c]
   1f984: 1ac80988     	udiv	w8, w12, w8
   1f988: 6b0b02ff     	cmp	w23, w11
   1f98c: 1a9f17ea     	cset	w10, eq
   1f990: 3900012a     	strb	w10, [x9]
   1f994: f9402289     	ldr	x9, [x20, #0x40]
   1f998: 39000928     	strb	w8, [x9, #0x2]
   1f99c: 53087d08     	lsr	w8, w8, #8
   1f9a0: f9402289     	ldr	x9, [x20, #0x40]
   1f9a4: 39000d28     	strb	w8, [x9, #0x3]
   1f9a8: b85ec3a9     	ldur	w9, [x29, #-0x14]
   1f9ac: f9402288     	ldr	x8, [x20, #0x40]
   1f9b0: 39001109     	strb	w9, [x8, #0x4]
   1f9b4: b94013e9     	ldr	w9, [sp, #0x10]
   1f9b8: f9402288     	ldr	x8, [x20, #0x40]
   1f9bc: 39001509     	strb	w9, [x8, #0x5]
   1f9c0: b9402e88     	ldr	w8, [x20, #0x2c]
   1f9c4: 34000088     	cbz	w8, 0x1f9d4 <syna_tcm_update_flash_block+0x324>
   1f9c8: 0b080389     	add	w9, w28, w8
   1f9cc: 51000529     	sub	w9, w9, #0x1
   1f9d0: 1ac80928     	udiv	w8, w9, w8
   1f9d4: f94007ea     	ldr	x10, [sp, #0x8]
   1f9d8: b94017e9     	ldr	w9, [sp, #0x14]
   1f9dc: 34000129     	cbz	w9, 0x1fa00 <syna_tcm_update_flash_block+0x350>
   1f9e0: 1b097d08     	mul	w8, w8, w9
   1f9e4: 5289ba69     	mov	w9, #0x4dd3             // =19923
   1f9e8: 72a20c49     	movk	w9, #0x1062, lsl #16
   1f9ec: 9ba97d08     	umull	x8, w8, w9
   1f9f0: d366fd15     	lsr	x21, x8, #38
   1f9f4: ab364141     	adds	x1, x10, w22, uxtw
   1f9f8: 540000a1     	b.ne	0x1fa0c <syna_tcm_update_flash_block+0x35c>
   1f9fc: 140000cb     	b	0x1fd28 <syna_tcm_update_flash_block+0x678>
   1fa00: 2a1f03f5     	mov	w21, wzr
   1fa04: ab364141     	adds	x1, x10, w22, uxtw
   1fa08: 54001900     	b.eq	0x1fd28 <syna_tcm_update_flash_block+0x678>
   1fa0c: f9402288     	ldr	x8, [x20, #0x40]
   1fa10: 91001900     	add	x0, x8, #0x6
   1fa14: b40018a0     	cbz	x0, 0x1fd28 <syna_tcm_update_flash_block+0x678>
   1fa18: b9404a88     	ldr	w8, [x20, #0x48]
   1fa1c: 4b160162     	sub	w2, w11, w22
   1fa20: 6b02039f     	cmp	w28, w2
   1fa24: 51001903     	sub	w3, w8, #0x6
   1fa28: 54001748     	b.hi	0x1fd10 <syna_tcm_update_flash_block+0x660>
   1fa2c: 6b03039f     	cmp	w28, w3
   1fa30: 54001708     	b.hi	0x1fd10 <syna_tcm_update_flash_block+0x660>
   1fa34: aa1c03e2     	mov	x2, x28
   1fa38: b90007ec     	str	w12, [sp, #0x4]
   1fa3c: 2a1903fa     	mov	w26, w25
   1fa40: 94000000     	bl	0x1fa40 <syna_tcm_update_flash_block+0x390>
		000000000001fa40:  R_AARCH64_CALL26	memcpy
   1fa44: 39402702     	ldrb	w2, [x24, #0x9]
   1fa48: f9402299     	ldr	x25, [x20, #0x40]
   1fa4c: 71002c5f     	cmp	w2, #0xb
   1fa50: 540003a1     	b.ne	0x1fac4 <syna_tcm_update_flash_block+0x414>
   1fa54: 350000b5     	cbnz	w21, 0x1fa68 <syna_tcm_update_flash_block+0x3b8>
   1fa58: f9402708     	ldr	x8, [x24, #0x48]
   1fa5c: 39405108     	ldrb	w8, [x8, #0x14]
   1fa60: 36000408     	tbz	w8, #0x0, 0x1fae0 <syna_tcm_update_flash_block+0x430>
   1fa64: 2a1f03f5     	mov	w21, wzr
   1fa68: f941cf08     	ldr	x8, [x24, #0x398]
   1fa6c: aa1803e0     	mov	x0, x24
   1fa70: 52801fc1     	mov	w1, #0xfe               // =254
   1fa74: aa1903e2     	mov	x2, x25
   1fa78: 2a1b03e3     	mov	w3, w27
   1fa7c: aa1f03e4     	mov	x4, xzr
   1fa80: 2a1503e5     	mov	w5, w21
   1fa84: b85fc110     	ldur	w16, [x8, #-0x4]
   1fa88: 728751d1     	movk	w17, #0x3a8e
   1fa8c: 72a48411     	movk	w17, #0x2420, lsl #16
   1fa90: 6b11021f     	cmp	w16, w17
   1fa94: 54000040     	b.eq	0x1fa9c <syna_tcm_update_flash_block+0x3ec>
   1fa98: d4304500     	brk	#0x8228
   1fa9c: d63f0100     	blr	x8
   1faa0: 37f81740     	tbnz	w0, #0x1f, 0x1fd88 <syna_tcm_update_flash_block+0x6d8>
   1faa4: b9409288     	ldr	w8, [x20, #0x90]
   1faa8: 6b1c02f7     	subs	w23, w23, w28
   1faac: 0b160396     	add	w22, w28, w22
   1fab0: 2a1a03f9     	mov	w25, w26
   1fab4: 0b1c0108     	add	w8, w8, w28
   1fab8: b9009288     	str	w8, [x20, #0x90]
   1fabc: 54fff241     	b.ne	0x1f904 <syna_tcm_update_flash_block+0x254>
   1fac0: 140000c6     	b	0x1fdd8 <syna_tcm_update_flash_block+0x728>
   1fac4: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001fac4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x666c
   1fac8: 91000000     	add	x0, x0, #0x0
		000000000001fac8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x666c
   1facc: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001facc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x783e
   1fad0: 91000021     	add	x1, x1, #0x0
		000000000001fad0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x783e
   1fad4: 94000000     	bl	0x1fad4 <syna_tcm_update_flash_block+0x424>
		000000000001fad4:  R_AARCH64_CALL26	_printk
   1fad8: 35fffc95     	cbnz	w21, 0x1fa68 <syna_tcm_update_flash_block+0x3b8>
   1fadc: 17ffffdf     	b	0x1fa58 <syna_tcm_update_flash_block+0x3a8>
   1fae0: b9420f15     	ldr	w21, [x24, #0x20c]
   1fae4: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001fae4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x53b6
   1fae8: 91000000     	add	x0, x0, #0x0
		000000000001fae8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x53b6
   1faec: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001faec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x783e
   1faf0: 91000021     	add	x1, x1, #0x0
		000000000001faf0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x783e
   1faf4: 2a1503e2     	mov	w2, w21
   1faf8: 94000000     	bl	0x1faf8 <syna_tcm_update_flash_block+0x448>
		000000000001faf8:  R_AARCH64_CALL26	_printk
   1fafc: 17ffffdb     	b	0x1fa68 <syna_tcm_update_flash_block+0x3b8>
   1fb00: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001fb00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   1fb04: 91000000     	add	x0, x0, #0x0
		000000000001fb04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   1fb08: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001fb08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   1fb0c: 91000021     	add	x1, x1, #0x0
		000000000001fb0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   1fb10: 94000000     	bl	0x1fb10 <syna_tcm_update_flash_block+0x460>
		000000000001fb10:  R_AARCH64_CALL26	_printk
   1fb14: 94000000     	bl	0x1fb14 <syna_tcm_update_flash_block+0x464>
		000000000001fb14:  R_AARCH64_CALL26	syna_request_managed_device
   1fb18: b5fff160     	cbnz	x0, 0x1f944 <syna_tcm_update_flash_block+0x294>
   1fb1c: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001fb1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   1fb20: 91000000     	add	x0, x0, #0x0
		000000000001fb20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   1fb24: 140000b4     	b	0x1fdf4 <syna_tcm_update_flash_block+0x744>
   1fb28: b9401676     	ldr	w22, [x19, #0x14]
   1fb2c: b9402a88     	ldr	w8, [x20, #0x28]
   1fb30: 1ac80adb     	udiv	w27, w22, w8
   1fb34: 1b08db69     	msub	w9, w27, w8, w22
   1fb38: 35000269     	cbnz	w9, 0x1fb84 <syna_tcm_update_flash_block+0x4d4>
   1fb3c: 0b080329     	add	w9, w25, w8
   1fb40: b81f43bf     	stur	wzr, [x29, #-0xc]
   1fb44: 51000529     	sub	w9, w9, #0x1
   1fb48: 1ac80929     	udiv	w9, w9, w8
   1fb4c: 2a1b0128     	orr	w8, w9, w27
   1fb50: 7104011f     	cmp	w8, #0x100
   1fb54: 540003c2     	b.hs	0x1fbcc <syna_tcm_update_flash_block+0x51c>
   1fb58: 52800055     	mov	w21, #0x2               // =2
   1fb5c: 2a0903e8     	mov	w8, w9
   1fb60: 1400001e     	b	0x1fbd8 <syna_tcm_update_flash_block+0x528>
   1fb64: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001fb64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8904
   1fb68: 91000000     	add	x0, x0, #0x0
		000000000001fb68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8904
   1fb6c: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001fb6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4af
   1fb70: 91000021     	add	x1, x1, #0x0
		000000000001fb70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4af
   1fb74: 2a1903e2     	mov	w2, w25
   1fb78: 94000000     	bl	0x1fb78 <syna_tcm_update_flash_block+0x4c8>
		000000000001fb78:  R_AARCH64_CALL26	_printk
   1fb7c: 12801e15     	mov	w21, #-0xf1             // =-241
   1fb80: 140000d4     	b	0x1fed0 <syna_tcm_update_flash_block+0x820>
   1fb84: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001fb84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa33f
   1fb88: 91000000     	add	x0, x0, #0x0
		000000000001fb88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa33f
   1fb8c: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001fb8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8d8f
   1fb90: 91000021     	add	x1, x1, #0x0
		000000000001fb90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8d8f
   1fb94: 2a1603e2     	mov	w2, w22
   1fb98: 94000000     	bl	0x1fb98 <syna_tcm_update_flash_block+0x4e8>
		000000000001fb98:  R_AARCH64_CALL26	_printk
   1fb9c: 12801e15     	mov	w21, #-0xf1             // =-241
   1fba0: 14000056     	b	0x1fcf8 <syna_tcm_update_flash_block+0x648>
   1fba4: aa1803e0     	mov	x0, x24
   1fba8: aa1403e1     	mov	x1, x20
   1fbac: 2a1903e2     	mov	w2, w25
   1fbb0: 2a0a03e4     	mov	w4, w10
   1fbb4: 2a1703e5     	mov	w5, w23
   1fbb8: 2a0a03f4     	mov	w20, w10
   1fbbc: 94000302     	bl	0x207c4 <syna_tcm_write_flash>
   1fbc0: 2a0003f5     	mov	w21, w0
   1fbc4: 36ffe400     	tbz	w0, #0x1f, 0x1f844 <syna_tcm_update_flash_block+0x194>
   1fbc8: 140000b8     	b	0x1fea8 <syna_tcm_update_flash_block+0x7f8>
   1fbcc: 53087f68     	lsr	w8, w27, #8
   1fbd0: 52800095     	mov	w21, #0x4               // =4
   1fbd4: 781f63a9     	sturh	w9, [x29, #-0xa]
   1fbd8: 39402702     	ldrb	w2, [x24, #0x9]
   1fbdc: 1b1c7d3c     	mul	w28, w9, w28
   1fbe0: b81f03a9     	stur	w9, [x29, #-0x10]
   1fbe4: 381f43bb     	sturb	w27, [x29, #-0xc]
   1fbe8: 71002c5f     	cmp	w2, #0xb
   1fbec: 381f53a8     	sturb	w8, [x29, #-0xb]
   1fbf0: 540000c0     	b.eq	0x1fc08 <syna_tcm_update_flash_block+0x558>
   1fbf4: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001fbf4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x666c
   1fbf8: 91000000     	add	x0, x0, #0x0
		000000000001fbf8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x666c
   1fbfc: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001fbfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x783e
   1fc00: 91000021     	add	x1, x1, #0x0
		000000000001fc00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x783e
   1fc04: 94000000     	bl	0x1fc04 <syna_tcm_update_flash_block+0x554>
		000000000001fc04:  R_AARCH64_CALL26	_printk
   1fc08: 350002bc     	cbnz	w28, 0x1fc5c <syna_tcm_update_flash_block+0x5ac>
   1fc0c: f9402708     	ldr	x8, [x24, #0x48]
   1fc10: 39405108     	ldrb	w8, [x8, #0x14]
   1fc14: 36000168     	tbz	w8, #0x0, 0x1fc40 <syna_tcm_update_flash_block+0x590>
   1fc18: 2a1f03fc     	mov	w28, wzr
   1fc1c: 14000010     	b	0x1fc5c <syna_tcm_update_flash_block+0x5ac>
   1fc20: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001fc20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x669a
   1fc24: 91000000     	add	x0, x0, #0x0
		000000000001fc24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x669a
   1fc28: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001fc28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1598
   1fc2c: 91000021     	add	x1, x1, #0x0
		000000000001fc2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1598
   1fc30: 2a0a03f4     	mov	w20, w10
   1fc34: 94000000     	bl	0x1fc34 <syna_tcm_update_flash_block+0x584>
		000000000001fc34:  R_AARCH64_CALL26	_printk
   1fc38: 12801e15     	mov	w21, #-0xf1             // =-241
   1fc3c: 1400009b     	b	0x1fea8 <syna_tcm_update_flash_block+0x7f8>
   1fc40: b9420f1c     	ldr	w28, [x24, #0x20c]
   1fc44: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001fc44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x53b6
   1fc48: 91000000     	add	x0, x0, #0x0
		000000000001fc48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x53b6
   1fc4c: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001fc4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x783e
   1fc50: 91000021     	add	x1, x1, #0x0
		000000000001fc50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x783e
   1fc54: 2a1c03e2     	mov	w2, w28
   1fc58: 94000000     	bl	0x1fc58 <syna_tcm_update_flash_block+0x5a8>
		000000000001fc58:  R_AARCH64_CALL26	_printk
   1fc5c: f941cf08     	ldr	x8, [x24, #0x398]
   1fc60: d10033a2     	sub	x2, x29, #0xc
   1fc64: aa1803e0     	mov	x0, x24
   1fc68: 52800221     	mov	w1, #0x11               // =17
   1fc6c: 2a1503e3     	mov	w3, w21
   1fc70: aa1f03e4     	mov	x4, xzr
   1fc74: 2a1c03e5     	mov	w5, w28
   1fc78: b85fc110     	ldur	w16, [x8, #-0x4]
   1fc7c: 728751d1     	movk	w17, #0x3a8e
   1fc80: 72a48411     	movk	w17, #0x2420, lsl #16
   1fc84: 6b11021f     	cmp	w16, w17
   1fc88: 54000040     	b.eq	0x1fc90 <syna_tcm_update_flash_block+0x5e0>
   1fc8c: d4304500     	brk	#0x8228
   1fc90: d63f0100     	blr	x8
   1fc94: 36ffda60     	tbz	w0, #0x1f, 0x1f7e0 <syna_tcm_update_flash_block+0x130>
   1fc98: 2a0003f5     	mov	w21, w0
   1fc9c: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001fc9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x885a
   1fca0: 91000000     	add	x0, x0, #0x0
		000000000001fca0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x885a
   1fca4: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001fca4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x783e
   1fca8: 91000021     	add	x1, x1, #0x0
		000000000001fca8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x783e
   1fcac: 52800222     	mov	w2, #0x11               // =17
   1fcb0: 94000000     	bl	0x1fcb0 <syna_tcm_update_flash_block+0x600>
		000000000001fcb0:  R_AARCH64_CALL26	_printk
   1fcb4: b85f03a3     	ldur	w3, [x29, #-0x10]
   1fcb8: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001fcb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4fa1
   1fcbc: 91000000     	add	x0, x0, #0x0
		000000000001fcbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4fa1
   1fcc0: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001fcc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c54
   1fcc4: 91000021     	add	x1, x1, #0x0
		000000000001fcc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c54
   1fcc8: 2a1b03e2     	mov	w2, w27
   1fccc: 94000000     	bl	0x1fccc <syna_tcm_update_flash_block+0x61c>
		000000000001fccc:  R_AARCH64_CALL26	_printk
   1fcd0: 39406260     	ldrb	w0, [x19, #0x18]
   1fcd4: 94000000     	bl	0x1fcd4 <syna_tcm_update_flash_block+0x624>
		000000000001fcd4:  R_AARCH64_CALL26	syna_tcm_get_partition_id_string
   1fcd8: aa0003e2     	mov	x2, x0
   1fcdc: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001fcdc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa388
   1fce0: 91000000     	add	x0, x0, #0x0
		000000000001fce0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa388
   1fce4: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001fce4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8d8f
   1fce8: 91000021     	add	x1, x1, #0x0
		000000000001fce8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8d8f
   1fcec: 2a1603e3     	mov	w3, w22
   1fcf0: 2a1903e4     	mov	w4, w25
   1fcf4: 94000000     	bl	0x1fcf4 <syna_tcm_update_flash_block+0x644>
		000000000001fcf4:  R_AARCH64_CALL26	_printk
   1fcf8: 39406260     	ldrb	w0, [x19, #0x18]
   1fcfc: 94000000     	bl	0x1fcfc <syna_tcm_update_flash_block+0x64c>
		000000000001fcfc:  R_AARCH64_CALL26	syna_tcm_get_partition_id_string
   1fd00: aa0003e2     	mov	x2, x0
   1fd04: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001fd04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc3d4
   1fd08: 91000000     	add	x0, x0, #0x0
		000000000001fd08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc3d4
   1fd0c: 14000076     	b	0x1fee4 <syna_tcm_update_flash_block+0x834>
   1fd10: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001fd10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81f1
   1fd14: 91000000     	add	x0, x0, #0x0
		000000000001fd14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81f1
   1fd18: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001fd18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a25
   1fd1c: 91000021     	add	x1, x1, #0x0
		000000000001fd1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a25
   1fd20: 2a1c03e4     	mov	w4, w28
   1fd24: 94000000     	bl	0x1fd24 <syna_tcm_update_flash_block+0x674>
		000000000001fd24:  R_AARCH64_CALL26	_printk
   1fd28: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001fd28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c0f
   1fd2c: 91000000     	add	x0, x0, #0x0
		000000000001fd2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c0f
   1fd30: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001fd30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1598
   1fd34: 91000021     	add	x1, x1, #0x0
		000000000001fd34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1598
   1fd38: 2a1c03e2     	mov	w2, w28
   1fd3c: 94000000     	bl	0x1fd3c <syna_tcm_update_flash_block+0x68c>
		000000000001fd3c:  R_AARCH64_CALL26	_printk
   1fd40: 39420282     	ldrb	w2, [x20, #0x80]
   1fd44: 7100045f     	cmp	w2, #0x1
   1fd48: 54000061     	b.ne	0x1fd54 <syna_tcm_update_flash_block+0x6a4>
   1fd4c: 2a1f03e8     	mov	w8, wzr
   1fd50: 14000008     	b	0x1fd70 <syna_tcm_update_flash_block+0x6c0>
   1fd54: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001fd54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   1fd58: 91000000     	add	x0, x0, #0x0
		000000000001fd58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   1fd5c: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001fd5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
   1fd60: 91000021     	add	x1, x1, #0x0
		000000000001fd60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
   1fd64: 94000000     	bl	0x1fd64 <syna_tcm_update_flash_block+0x6b4>
		000000000001fd64:  R_AARCH64_CALL26	_printk
   1fd68: 39420288     	ldrb	w8, [x20, #0x80]
   1fd6c: 51000508     	sub	w8, w8, #0x1
   1fd70: 91014280     	add	x0, x20, #0x50
   1fd74: 39020288     	strb	w8, [x20, #0x80]
   1fd78: 94000000     	bl	0x1fd78 <syna_tcm_update_flash_block+0x6c8>
		000000000001fd78:  R_AARCH64_CALL26	mutex_unlock
   1fd7c: b85f03b4     	ldur	w20, [x29, #-0x10]
   1fd80: 128002b5     	mov	w21, #-0x16             // =-22
   1fd84: 14000049     	b	0x1fea8 <syna_tcm_update_flash_block+0x7f8>
   1fd88: 2a0003f5     	mov	w21, w0
   1fd8c: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001fd8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x885a
   1fd90: 91000000     	add	x0, x0, #0x0
		000000000001fd90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x885a
   1fd94: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001fd94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x783e
   1fd98: 91000021     	add	x1, x1, #0x0
		000000000001fd98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x783e
   1fd9c: 52801fc2     	mov	w2, #0xfe               // =254
   1fda0: 94000000     	bl	0x1fda0 <syna_tcm_update_flash_block+0x6f0>
		000000000001fda0:  R_AARCH64_CALL26	_printk
   1fda4: b94007e2     	ldr	w2, [sp, #0x4]
   1fda8: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001fda8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7de2
   1fdac: 91000000     	add	x0, x0, #0x0
		000000000001fdac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7de2
   1fdb0: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001fdb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1598
   1fdb4: 91000021     	add	x1, x1, #0x0
		000000000001fdb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1598
   1fdb8: 2a1b03e3     	mov	w3, w27
   1fdbc: 94000000     	bl	0x1fdbc <syna_tcm_update_flash_block+0x70c>
		000000000001fdbc:  R_AARCH64_CALL26	_printk
   1fdc0: 39420282     	ldrb	w2, [x20, #0x80]
   1fdc4: 2a1a03f9     	mov	w25, w26
   1fdc8: 7100045f     	cmp	w2, #0x1
   1fdcc: 54000581     	b.ne	0x1fe7c <syna_tcm_update_flash_block+0x7cc>
   1fdd0: 2a1f03e8     	mov	w8, wzr
   1fdd4: 14000031     	b	0x1fe98 <syna_tcm_update_flash_block+0x7e8>
   1fdd8: 39420282     	ldrb	w2, [x20, #0x80]
   1fddc: 7100045f     	cmp	w2, #0x1
   1fde0: 540008a1     	b.ne	0x1fef4 <syna_tcm_update_flash_block+0x844>
   1fde4: 2a1f03e8     	mov	w8, wzr
   1fde8: 1400004a     	b	0x1ff10 <syna_tcm_update_flash_block+0x860>
   1fdec: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001fdec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f17
   1fdf0: 91000000     	add	x0, x0, #0x0
		000000000001fdf0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f17
   1fdf4: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001fdf4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ae7
   1fdf8: 91000021     	add	x1, x1, #0x0
		000000000001fdf8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ae7
   1fdfc: 94000000     	bl	0x1fdfc <syna_tcm_update_flash_block+0x74c>
		000000000001fdfc:  R_AARCH64_CALL26	_printk
   1fe00: f900229f     	str	xzr, [x20, #0x40]
   1fe04: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001fe04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5c25
   1fe08: 91000000     	add	x0, x0, #0x0
		000000000001fe08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5c25
   1fe0c: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001fe0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7620
   1fe10: 91000021     	add	x1, x1, #0x0
		000000000001fe10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7620
   1fe14: 2a1b03e2     	mov	w2, w27
   1fe18: 94000000     	bl	0x1fe18 <syna_tcm_update_flash_block+0x768>
		000000000001fe18:  R_AARCH64_CALL26	_printk
   1fe1c: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001fe1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4f59
   1fe20: 91000000     	add	x0, x0, #0x0
		000000000001fe20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4f59
   1fe24: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001fe24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1598
   1fe28: 91000021     	add	x1, x1, #0x0
		000000000001fe28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1598
   1fe2c: f900269f     	str	xzr, [x20, #0x48]
   1fe30: 94000000     	bl	0x1fe30 <syna_tcm_update_flash_block+0x780>
		000000000001fe30:  R_AARCH64_CALL26	_printk
   1fe34: 39420282     	ldrb	w2, [x20, #0x80]
   1fe38: 7100045f     	cmp	w2, #0x1
   1fe3c: 54000061     	b.ne	0x1fe48 <syna_tcm_update_flash_block+0x798>
   1fe40: 2a1f03e8     	mov	w8, wzr
   1fe44: 14000008     	b	0x1fe64 <syna_tcm_update_flash_block+0x7b4>
   1fe48: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001fe48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   1fe4c: 91000000     	add	x0, x0, #0x0
		000000000001fe4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   1fe50: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001fe50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
   1fe54: 91000021     	add	x1, x1, #0x0
		000000000001fe54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
   1fe58: 94000000     	bl	0x1fe58 <syna_tcm_update_flash_block+0x7a8>
		000000000001fe58:  R_AARCH64_CALL26	_printk
   1fe5c: 39420288     	ldrb	w8, [x20, #0x80]
   1fe60: 51000508     	sub	w8, w8, #0x1
   1fe64: 91014280     	add	x0, x20, #0x50
   1fe68: 39020288     	strb	w8, [x20, #0x80]
   1fe6c: 94000000     	bl	0x1fe6c <syna_tcm_update_flash_block+0x7bc>
		000000000001fe6c:  R_AARCH64_CALL26	mutex_unlock
   1fe70: b85f03b4     	ldur	w20, [x29, #-0x10]
   1fe74: 12801e55     	mov	w21, #-0xf3             // =-243
   1fe78: 1400000c     	b	0x1fea8 <syna_tcm_update_flash_block+0x7f8>
   1fe7c: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001fe7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   1fe80: 91000000     	add	x0, x0, #0x0
		000000000001fe80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   1fe84: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001fe84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
   1fe88: 91000021     	add	x1, x1, #0x0
		000000000001fe88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
   1fe8c: 94000000     	bl	0x1fe8c <syna_tcm_update_flash_block+0x7dc>
		000000000001fe8c:  R_AARCH64_CALL26	_printk
   1fe90: 39420288     	ldrb	w8, [x20, #0x80]
   1fe94: 51000508     	sub	w8, w8, #0x1
   1fe98: 91014280     	add	x0, x20, #0x50
   1fe9c: 39020288     	strb	w8, [x20, #0x80]
   1fea0: 94000000     	bl	0x1fea0 <syna_tcm_update_flash_block+0x7f0>
		000000000001fea0:  R_AARCH64_CALL26	mutex_unlock
   1fea4: b85f03b4     	ldur	w20, [x29, #-0x10]
   1fea8: 39406260     	ldrb	w0, [x19, #0x18]
   1feac: 94000000     	bl	0x1feac <syna_tcm_update_flash_block+0x7fc>
		000000000001feac:  R_AARCH64_CALL26	syna_tcm_get_partition_id_string
   1feb0: aa0003e2     	mov	x2, x0
   1feb4: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001feb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5eeb
   1feb8: 91000000     	add	x0, x0, #0x0
		000000000001feb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5eeb
   1febc: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001febc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4af
   1fec0: 91000021     	add	x1, x1, #0x0
		000000000001fec0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4af
   1fec4: 2a1903e3     	mov	w3, w25
   1fec8: 2a1403e4     	mov	w4, w20
   1fecc: 94000000     	bl	0x1fecc <syna_tcm_update_flash_block+0x81c>
		000000000001fecc:  R_AARCH64_CALL26	_printk
   1fed0: 39406260     	ldrb	w0, [x19, #0x18]
   1fed4: 94000000     	bl	0x1fed4 <syna_tcm_update_flash_block+0x824>
		000000000001fed4:  R_AARCH64_CALL26	syna_tcm_get_partition_id_string
   1fed8: aa0003e2     	mov	x2, x0
   1fedc: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001fedc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5406
   1fee0: 91000000     	add	x0, x0, #0x0
		000000000001fee0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5406
   1fee4: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001fee4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9c3e
   1fee8: 91000021     	add	x1, x1, #0x0
		000000000001fee8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9c3e
   1feec: 94000000     	bl	0x1feec <syna_tcm_update_flash_block+0x83c>
		000000000001feec:  R_AARCH64_CALL26	_printk
   1fef0: 17fffe09     	b	0x1f714 <syna_tcm_update_flash_block+0x64>
   1fef4: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001fef4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   1fef8: 91000000     	add	x0, x0, #0x0
		000000000001fef8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   1fefc: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001fefc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
   1ff00: 91000021     	add	x1, x1, #0x0
		000000000001ff00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
   1ff04: 94000000     	bl	0x1ff04 <syna_tcm_update_flash_block+0x854>
		000000000001ff04:  R_AARCH64_CALL26	_printk
   1ff08: 39420288     	ldrb	w8, [x20, #0x80]
   1ff0c: 51000508     	sub	w8, w8, #0x1
   1ff10: 91014280     	add	x0, x20, #0x50
   1ff14: 39020288     	strb	w8, [x20, #0x80]
   1ff18: 94000000     	bl	0x1ff18 <syna_tcm_update_flash_block+0x868>
		000000000001ff18:  R_AARCH64_CALL26	mutex_unlock
   1ff1c: 17fffe4a     	b	0x1f844 <syna_tcm_update_flash_block+0x194>
   1ff20: 94000000     	bl	0x1ff20 <syna_tcm_update_flash_block+0x870>
		000000000001ff20:  R_AARCH64_CALL26	__stack_chk_fail
