
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001e72c <syna_tcm_remove_device>:
   1e72c: d503233f     	paciasp
   1e730: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   1e734: a9014ff4     	stp	x20, x19, [sp, #0x10]
   1e738: 910003fd     	mov	x29, sp
   1e73c: b5000080     	cbnz	x0, 0x1e74c <syna_tcm_remove_device+0x20>
   1e740: 90000000     	adrp	x0, 0x1e000 <string_change+0x18>
		000000000001e740:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c8
   1e744: 91000000     	add	x0, x0, #0x0
		000000000001e744:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c8
   1e748: 1400008e     	b	0x1e980 <syna_tcm_remove_device+0x254>
   1e74c: 394c4002     	ldrb	w2, [x0, #0x310]
   1e750: aa0003f3     	mov	x19, x0
   1e754: 340000c2     	cbz	w2, 0x1e76c <syna_tcm_remove_device+0x40>
   1e758: 90000000     	adrp	x0, 0x1e000 <string_change+0x18>
		000000000001e758:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33ce
   1e75c: 91000000     	add	x0, x0, #0x0
		000000000001e75c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33ce
   1e760: 90000001     	adrp	x1, 0x1e000 <string_change+0x18>
		000000000001e760:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bf0
   1e764: 91000021     	add	x1, x1, #0x0
		000000000001e764:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bf0
   1e768: 94000000     	bl	0x1e768 <syna_tcm_remove_device+0x3c>
		000000000001e768:  R_AARCH64_CALL26	_printk
   1e76c: f9416a74     	ldr	x20, [x19, #0x2d0]
   1e770: 94000000     	bl	0x1e770 <syna_tcm_remove_device+0x44>
		000000000001e770:  R_AARCH64_CALL26	syna_request_managed_device
   1e774: b50000e0     	cbnz	x0, 0x1e790 <syna_tcm_remove_device+0x64>
   1e778: 90000000     	adrp	x0, 0x1e000 <string_change+0x18>
		000000000001e778:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   1e77c: 91000000     	add	x0, x0, #0x0
		000000000001e77c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   1e780: 90000001     	adrp	x1, 0x1e000 <string_change+0x18>
		000000000001e780:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   1e784: 91000021     	add	x1, x1, #0x0
		000000000001e784:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   1e788: 94000000     	bl	0x1e788 <syna_tcm_remove_device+0x5c>
		000000000001e788:  R_AARCH64_CALL26	_printk
   1e78c: 14000004     	b	0x1e79c <syna_tcm_remove_device+0x70>
   1e790: b4000074     	cbz	x20, 0x1e79c <syna_tcm_remove_device+0x70>
   1e794: aa1403e1     	mov	x1, x20
   1e798: 94000000     	bl	0x1e798 <syna_tcm_remove_device+0x6c>
		000000000001e798:  R_AARCH64_CALL26	devm_kfree
   1e79c: 394b2262     	ldrb	w2, [x19, #0x2c8]
   1e7a0: f9016e7f     	str	xzr, [x19, #0x2d8]
   1e7a4: 390c427f     	strb	wzr, [x19, #0x310]
   1e7a8: 340000c2     	cbz	w2, 0x1e7c0 <syna_tcm_remove_device+0x94>
   1e7ac: 90000000     	adrp	x0, 0x1e000 <string_change+0x18>
		000000000001e7ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33ce
   1e7b0: 91000000     	add	x0, x0, #0x0
		000000000001e7b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33ce
   1e7b4: 90000001     	adrp	x1, 0x1e000 <string_change+0x18>
		000000000001e7b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bf0
   1e7b8: 91000021     	add	x1, x1, #0x0
		000000000001e7b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bf0
   1e7bc: 94000000     	bl	0x1e7bc <syna_tcm_remove_device+0x90>
		000000000001e7bc:  R_AARCH64_CALL26	_printk
   1e7c0: f9414674     	ldr	x20, [x19, #0x288]
   1e7c4: 94000000     	bl	0x1e7c4 <syna_tcm_remove_device+0x98>
		000000000001e7c4:  R_AARCH64_CALL26	syna_request_managed_device
   1e7c8: b50000e0     	cbnz	x0, 0x1e7e4 <syna_tcm_remove_device+0xb8>
   1e7cc: 90000000     	adrp	x0, 0x1e000 <string_change+0x18>
		000000000001e7cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   1e7d0: 91000000     	add	x0, x0, #0x0
		000000000001e7d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   1e7d4: 90000001     	adrp	x1, 0x1e000 <string_change+0x18>
		000000000001e7d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   1e7d8: 91000021     	add	x1, x1, #0x0
		000000000001e7d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   1e7dc: 94000000     	bl	0x1e7dc <syna_tcm_remove_device+0xb0>
		000000000001e7dc:  R_AARCH64_CALL26	_printk
   1e7e0: 14000004     	b	0x1e7f0 <syna_tcm_remove_device+0xc4>
   1e7e4: b4000074     	cbz	x20, 0x1e7f0 <syna_tcm_remove_device+0xc4>
   1e7e8: aa1403e1     	mov	x1, x20
   1e7ec: 94000000     	bl	0x1e7ec <syna_tcm_remove_device+0xc0>
		000000000001e7ec:  R_AARCH64_CALL26	devm_kfree
   1e7f0: 394a0262     	ldrb	w2, [x19, #0x280]
   1e7f4: f9014a7f     	str	xzr, [x19, #0x290]
   1e7f8: 390b227f     	strb	wzr, [x19, #0x2c8]
   1e7fc: 340000c2     	cbz	w2, 0x1e814 <syna_tcm_remove_device+0xe8>
   1e800: 90000000     	adrp	x0, 0x1e000 <string_change+0x18>
		000000000001e800:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33ce
   1e804: 91000000     	add	x0, x0, #0x0
		000000000001e804:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33ce
   1e808: 90000001     	adrp	x1, 0x1e000 <string_change+0x18>
		000000000001e808:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bf0
   1e80c: 91000021     	add	x1, x1, #0x0
		000000000001e80c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bf0
   1e810: 94000000     	bl	0x1e810 <syna_tcm_remove_device+0xe4>
		000000000001e810:  R_AARCH64_CALL26	_printk
   1e814: f9412274     	ldr	x20, [x19, #0x240]
   1e818: 94000000     	bl	0x1e818 <syna_tcm_remove_device+0xec>
		000000000001e818:  R_AARCH64_CALL26	syna_request_managed_device
   1e81c: b50000e0     	cbnz	x0, 0x1e838 <syna_tcm_remove_device+0x10c>
   1e820: 90000000     	adrp	x0, 0x1e000 <string_change+0x18>
		000000000001e820:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   1e824: 91000000     	add	x0, x0, #0x0
		000000000001e824:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   1e828: 90000001     	adrp	x1, 0x1e000 <string_change+0x18>
		000000000001e828:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   1e82c: 91000021     	add	x1, x1, #0x0
		000000000001e82c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   1e830: 94000000     	bl	0x1e830 <syna_tcm_remove_device+0x104>
		000000000001e830:  R_AARCH64_CALL26	_printk
   1e834: 14000004     	b	0x1e844 <syna_tcm_remove_device+0x118>
   1e838: b4000074     	cbz	x20, 0x1e844 <syna_tcm_remove_device+0x118>
   1e83c: aa1403e1     	mov	x1, x20
   1e840: 94000000     	bl	0x1e840 <syna_tcm_remove_device+0x114>
		000000000001e840:  R_AARCH64_CALL26	devm_kfree
   1e844: 39474262     	ldrb	w2, [x19, #0x1d0]
   1e848: f901267f     	str	xzr, [x19, #0x248]
   1e84c: 390a027f     	strb	wzr, [x19, #0x280]
   1e850: 340000c2     	cbz	w2, 0x1e868 <syna_tcm_remove_device+0x13c>
   1e854: 90000000     	adrp	x0, 0x1e000 <string_change+0x18>
		000000000001e854:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33ce
   1e858: 91000000     	add	x0, x0, #0x0
		000000000001e858:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33ce
   1e85c: 90000001     	adrp	x1, 0x1e000 <string_change+0x18>
		000000000001e85c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bf0
   1e860: 91000021     	add	x1, x1, #0x0
		000000000001e860:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bf0
   1e864: 94000000     	bl	0x1e864 <syna_tcm_remove_device+0x138>
		000000000001e864:  R_AARCH64_CALL26	_printk
   1e868: f940ca74     	ldr	x20, [x19, #0x190]
   1e86c: 94000000     	bl	0x1e86c <syna_tcm_remove_device+0x140>
		000000000001e86c:  R_AARCH64_CALL26	syna_request_managed_device
   1e870: b50000e0     	cbnz	x0, 0x1e88c <syna_tcm_remove_device+0x160>
   1e874: 90000000     	adrp	x0, 0x1e000 <string_change+0x18>
		000000000001e874:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   1e878: 91000000     	add	x0, x0, #0x0
		000000000001e878:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   1e87c: 90000001     	adrp	x1, 0x1e000 <string_change+0x18>
		000000000001e87c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   1e880: 91000021     	add	x1, x1, #0x0
		000000000001e880:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   1e884: 94000000     	bl	0x1e884 <syna_tcm_remove_device+0x158>
		000000000001e884:  R_AARCH64_CALL26	_printk
   1e888: 14000004     	b	0x1e898 <syna_tcm_remove_device+0x16c>
   1e88c: b4000074     	cbz	x20, 0x1e898 <syna_tcm_remove_device+0x16c>
   1e890: aa1403e1     	mov	x1, x20
   1e894: 94000000     	bl	0x1e894 <syna_tcm_remove_device+0x168>
		000000000001e894:  R_AARCH64_CALL26	devm_kfree
   1e898: 39450262     	ldrb	w2, [x19, #0x140]
   1e89c: f900ce7f     	str	xzr, [x19, #0x198]
   1e8a0: 3907427f     	strb	wzr, [x19, #0x1d0]
   1e8a4: 340000c2     	cbz	w2, 0x1e8bc <syna_tcm_remove_device+0x190>
   1e8a8: 90000000     	adrp	x0, 0x1e000 <string_change+0x18>
		000000000001e8a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33ce
   1e8ac: 91000000     	add	x0, x0, #0x0
		000000000001e8ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33ce
   1e8b0: 90000001     	adrp	x1, 0x1e000 <string_change+0x18>
		000000000001e8b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bf0
   1e8b4: 91000021     	add	x1, x1, #0x0
		000000000001e8b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bf0
   1e8b8: 94000000     	bl	0x1e8b8 <syna_tcm_remove_device+0x18c>
		000000000001e8b8:  R_AARCH64_CALL26	_printk
   1e8bc: f9408274     	ldr	x20, [x19, #0x100]
   1e8c0: 94000000     	bl	0x1e8c0 <syna_tcm_remove_device+0x194>
		000000000001e8c0:  R_AARCH64_CALL26	syna_request_managed_device
   1e8c4: b50000e0     	cbnz	x0, 0x1e8e0 <syna_tcm_remove_device+0x1b4>
   1e8c8: 90000000     	adrp	x0, 0x1e000 <string_change+0x18>
		000000000001e8c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   1e8cc: 91000000     	add	x0, x0, #0x0
		000000000001e8cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   1e8d0: 90000001     	adrp	x1, 0x1e000 <string_change+0x18>
		000000000001e8d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   1e8d4: 91000021     	add	x1, x1, #0x0
		000000000001e8d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   1e8d8: 94000000     	bl	0x1e8d8 <syna_tcm_remove_device+0x1ac>
		000000000001e8d8:  R_AARCH64_CALL26	_printk
   1e8dc: 14000004     	b	0x1e8ec <syna_tcm_remove_device+0x1c0>
   1e8e0: b4000074     	cbz	x20, 0x1e8ec <syna_tcm_remove_device+0x1c0>
   1e8e4: aa1403e1     	mov	x1, x20
   1e8e8: 94000000     	bl	0x1e8e8 <syna_tcm_remove_device+0x1bc>
		000000000001e8e8:  R_AARCH64_CALL26	devm_kfree
   1e8ec: 39462262     	ldrb	w2, [x19, #0x188]
   1e8f0: f900867f     	str	xzr, [x19, #0x108]
   1e8f4: 3905027f     	strb	wzr, [x19, #0x140]
   1e8f8: 340000c2     	cbz	w2, 0x1e910 <syna_tcm_remove_device+0x1e4>
   1e8fc: 90000000     	adrp	x0, 0x1e000 <string_change+0x18>
		000000000001e8fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33ce
   1e900: 91000000     	add	x0, x0, #0x0
		000000000001e900:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33ce
   1e904: 90000001     	adrp	x1, 0x1e000 <string_change+0x18>
		000000000001e904:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bf0
   1e908: 91000021     	add	x1, x1, #0x0
		000000000001e908:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bf0
   1e90c: 94000000     	bl	0x1e90c <syna_tcm_remove_device+0x1e0>
		000000000001e90c:  R_AARCH64_CALL26	_printk
   1e910: f940a674     	ldr	x20, [x19, #0x148]
   1e914: 94000000     	bl	0x1e914 <syna_tcm_remove_device+0x1e8>
		000000000001e914:  R_AARCH64_CALL26	syna_request_managed_device
   1e918: b50000e0     	cbnz	x0, 0x1e934 <syna_tcm_remove_device+0x208>
   1e91c: 90000000     	adrp	x0, 0x1e000 <string_change+0x18>
		000000000001e91c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   1e920: 91000000     	add	x0, x0, #0x0
		000000000001e920:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   1e924: 90000001     	adrp	x1, 0x1e000 <string_change+0x18>
		000000000001e924:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   1e928: 91000021     	add	x1, x1, #0x0
		000000000001e928:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   1e92c: 94000000     	bl	0x1e92c <syna_tcm_remove_device+0x200>
		000000000001e92c:  R_AARCH64_CALL26	_printk
   1e930: 14000004     	b	0x1e940 <syna_tcm_remove_device+0x214>
   1e934: b4000074     	cbz	x20, 0x1e940 <syna_tcm_remove_device+0x214>
   1e938: aa1403e1     	mov	x1, x20
   1e93c: 94000000     	bl	0x1e93c <syna_tcm_remove_device+0x210>
		000000000001e93c:  R_AARCH64_CALL26	devm_kfree
   1e940: f900aa7f     	str	xzr, [x19, #0x150]
   1e944: 3906227f     	strb	wzr, [x19, #0x188]
   1e948: f900027f     	str	xzr, [x19]
   1e94c: f900267f     	str	xzr, [x19, #0x48]
   1e950: 94000000     	bl	0x1e950 <syna_tcm_remove_device+0x224>
		000000000001e950:  R_AARCH64_CALL26	syna_request_managed_device
   1e954: b50000e0     	cbnz	x0, 0x1e970 <syna_tcm_remove_device+0x244>
   1e958: 90000000     	adrp	x0, 0x1e000 <string_change+0x18>
		000000000001e958:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   1e95c: 91000000     	add	x0, x0, #0x0
		000000000001e95c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   1e960: 90000001     	adrp	x1, 0x1e000 <string_change+0x18>
		000000000001e960:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   1e964: 91000021     	add	x1, x1, #0x0
		000000000001e964:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   1e968: 94000000     	bl	0x1e968 <syna_tcm_remove_device+0x23c>
		000000000001e968:  R_AARCH64_CALL26	_printk
   1e96c: 14000003     	b	0x1e978 <syna_tcm_remove_device+0x24c>
   1e970: aa1303e1     	mov	x1, x19
   1e974: 94000000     	bl	0x1e974 <syna_tcm_remove_device+0x248>
		000000000001e974:  R_AARCH64_CALL26	devm_kfree
   1e978: 90000000     	adrp	x0, 0x1e000 <string_change+0x18>
		000000000001e978:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9d06
   1e97c: 91000000     	add	x0, x0, #0x0
		000000000001e97c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9d06
   1e980: 90000001     	adrp	x1, 0x1e000 <string_change+0x18>
		000000000001e980:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8a6e
   1e984: 91000021     	add	x1, x1, #0x0
		000000000001e984:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8a6e
   1e988: 94000000     	bl	0x1e988 <syna_tcm_remove_device+0x25c>
		000000000001e988:  R_AARCH64_CALL26	_printk
   1e98c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   1e990: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   1e994: d50323bf     	autiasp
   1e998: d65f03c0     	ret
