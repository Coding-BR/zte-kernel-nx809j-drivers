
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004858 <aw9620x_check_isp_go_reg>:
    4858: d503233f     	paciasp
    485c: d100c3ff     	sub	sp, sp, #0x30
    4860: a9017bfd     	stp	x29, x30, [sp, #0x10]
    4864: a9024ff4     	stp	x20, x19, [sp, #0x20]
    4868: 910043fd     	add	x29, sp, #0x10
    486c: d5384108     	mrs	x8, SP_EL0
    4870: aa0003f3     	mov	x19, x0
    4874: 52800c94     	mov	w20, #0x64              // =100
    4878: f9438908     	ldr	x8, [x8, #0x710]
    487c: f90007e8     	str	x8, [sp, #0x8]
    4880: b90007ff     	str	wzr, [sp, #0x4]
    4884: 910013e2     	add	x2, sp, #0x4
    4888: aa1303e0     	mov	x0, x19
    488c: 5288e281     	mov	w1, #0x4714             // =18196
    4890: 97fffc9c     	bl	0x3b00 <aw9620x_i2c_read>
    4894: 350003e0     	cbnz	w0, 0x4910 <aw9620x_check_isp_go_reg+0xb8>
    4898: b94007e8     	ldr	w8, [sp, #0x4]
    489c: 34000108     	cbz	w8, 0x48bc <aw9620x_check_isp_go_reg+0x64>
    48a0: 52912b00     	mov	w0, #0x8958             // =35160
    48a4: 72a00820     	movk	w0, #0x41, lsl #16
    48a8: 94000000     	bl	0x48a8 <aw9620x_check_isp_go_reg+0x50>
		00000000000048a8:  R_AARCH64_CALL26	__const_udelay
    48ac: 51000694     	sub	w20, w20, #0x1
    48b0: 3100069f     	cmn	w20, #0x1
    48b4: 54fffe81     	b.ne	0x4884 <aw9620x_check_isp_go_reg+0x2c>
    48b8: 1400000d     	b	0x48ec <aw9620x_check_isp_go_reg+0x94>
    48bc: 37f80194     	tbnz	w20, #0x1f, 0x48ec <aw9620x_check_isp_go_reg+0x94>
    48c0: 2a1f03e0     	mov	w0, wzr
    48c4: d5384108     	mrs	x8, SP_EL0
    48c8: f9438908     	ldr	x8, [x8, #0x710]
    48cc: f94007e9     	ldr	x9, [sp, #0x8]
    48d0: eb09011f     	cmp	x8, x9
    48d4: 54000341     	b.ne	0x493c <aw9620x_check_isp_go_reg+0xe4>
    48d8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    48dc: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    48e0: 9100c3ff     	add	sp, sp, #0x30
    48e4: d50323bf     	autiasp
    48e8: d65f03c0     	ret
    48ec: f9401a61     	ldr	x1, [x19, #0x30]
    48f0: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		00000000000048f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    48f4: 91000000     	add	x0, x0, #0x0
		00000000000048f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    48f8: 90000002     	adrp	x2, 0x4000 <aw9620x_load_frimware_work+0x380>
		00000000000048f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x232d
    48fc: 91000042     	add	x2, x2, #0x0
		00000000000048fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x232d
    4900: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004900:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1506
    4904: 91000063     	add	x3, x3, #0x0
		0000000000004904:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1506
    4908: 528086e4     	mov	w4, #0x437              // =1079
    490c: 14000009     	b	0x4930 <aw9620x_check_isp_go_reg+0xd8>
    4910: f9401a61     	ldr	x1, [x19, #0x30]
    4914: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004914:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    4918: 91000000     	add	x0, x0, #0x0
		0000000000004918:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    491c: 90000002     	adrp	x2, 0x4000 <aw9620x_load_frimware_work+0x380>
		000000000000491c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17d8
    4920: 91000042     	add	x2, x2, #0x0
		0000000000004920:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17d8
    4924: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004924:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1506
    4928: 91000063     	add	x3, x3, #0x0
		0000000000004928:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1506
    492c: 528085c4     	mov	w4, #0x42e              // =1070
    4930: 94000000     	bl	0x4930 <aw9620x_check_isp_go_reg+0xd8>
		0000000000004930:  R_AARCH64_CALL26	_dev_printk
    4934: 12800000     	mov	w0, #-0x1               // =-1
    4938: 17ffffe3     	b	0x48c4 <aw9620x_check_isp_go_reg+0x6c>
    493c: 94000000     	bl	0x493c <aw9620x_check_isp_go_reg+0xe4>
		000000000000493c:  R_AARCH64_CALL26	__stack_chk_fail
