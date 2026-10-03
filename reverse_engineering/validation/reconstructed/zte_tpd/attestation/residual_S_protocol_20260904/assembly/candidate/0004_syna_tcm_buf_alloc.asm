
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000002483c <syna_tcm_buf_alloc>:
   2483c: d503233f     	paciasp
   24840: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   24844: f9000bf5     	str	x21, [sp, #0x10]
   24848: a9024ff4     	stp	x20, x19, [sp, #0x20]
   2484c: 910003fd     	mov	x29, sp
   24850: b9400815     	ldr	w21, [x0, #0x8]
   24854: aa0003f3     	mov	x19, x0
   24858: f9400000     	ldr	x0, [x0]
   2485c: 6b0102bf     	cmp	w21, w1
   24860: 54000222     	b.hs	0x248a4 <syna_tcm_buf_alloc+0x68>
   24864: 2a0103f4     	mov	w20, w1
   24868: b40000c0     	cbz	x0, 0x24880 <syna_tcm_buf_alloc+0x44>
   2486c: aa0003f5     	mov	x21, x0
   24870: 94000000     	bl	0x24870 <syna_tcm_buf_alloc+0x34>
		0000000000024870:  R_AARCH64_CALL26	syna_request_managed_device
   24874: b40002c0     	cbz	x0, 0x248cc <syna_tcm_buf_alloc+0x90>
   24878: aa1503e1     	mov	x1, x21
   2487c: 94000000     	bl	0x2487c <syna_tcm_buf_alloc+0x40>
		000000000002487c:  R_AARCH64_CALL26	devm_kfree
   24880: 94000000     	bl	0x24880 <syna_tcm_buf_alloc+0x44>
		0000000000024880:  R_AARCH64_CALL26	syna_request_managed_device
   24884: b4000320     	cbz	x0, 0x248e8 <syna_tcm_buf_alloc+0xac>
   24888: 2a1403f5     	mov	w21, w20
   2488c: 5281b802     	mov	w2, #0xdc0              // =3520
   24890: aa1503e1     	mov	x1, x21
   24894: 94000000     	bl	0x24894 <syna_tcm_buf_alloc+0x58>
		0000000000024894:  R_AARCH64_CALL26	devm_kmalloc
   24898: f9000260     	str	x0, [x19]
   2489c: b4000320     	cbz	x0, 0x24900 <syna_tcm_buf_alloc+0xc4>
   248a0: b9000a74     	str	w20, [x19, #0x8]
   248a4: 2a1f03e1     	mov	w1, wzr
   248a8: aa1503e2     	mov	x2, x21
   248ac: 94000000     	bl	0x248ac <syna_tcm_buf_alloc+0x70>
		00000000000248ac:  R_AARCH64_CALL26	memset
   248b0: 2a1f03e0     	mov	w0, wzr
   248b4: b9000e7f     	str	wzr, [x19, #0xc]
   248b8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   248bc: f9400bf5     	ldr	x21, [sp, #0x10]
   248c0: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   248c4: d50323bf     	autiasp
   248c8: d65f03c0     	ret
   248cc: 90000000     	adrp	x0, 0x24000 <syna_tcm_testing_noise+0x4c>
		00000000000248cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   248d0: 91000000     	add	x0, x0, #0x0
		00000000000248d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   248d4: 90000001     	adrp	x1, 0x24000 <syna_tcm_testing_noise+0x4c>
		00000000000248d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
   248d8: 91000021     	add	x1, x1, #0x0
		00000000000248d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
   248dc: 94000000     	bl	0x248dc <syna_tcm_buf_alloc+0xa0>
		00000000000248dc:  R_AARCH64_CALL26	_printk
   248e0: 94000000     	bl	0x248e0 <syna_tcm_buf_alloc+0xa4>
		00000000000248e0:  R_AARCH64_CALL26	syna_request_managed_device
   248e4: b5fffd20     	cbnz	x0, 0x24888 <syna_tcm_buf_alloc+0x4c>
   248e8: 90000000     	adrp	x0, 0x24000 <syna_tcm_testing_noise+0x4c>
		00000000000248e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   248ec: 91000000     	add	x0, x0, #0x0
		00000000000248ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   248f0: 90000001     	adrp	x1, 0x24000 <syna_tcm_testing_noise+0x4c>
		00000000000248f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x194ed
   248f4: 91000021     	add	x1, x1, #0x0
		00000000000248f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x194ed
   248f8: 94000000     	bl	0x248f8 <syna_tcm_buf_alloc+0xbc>
		00000000000248f8:  R_AARCH64_CALL26	_printk
   248fc: f900027f     	str	xzr, [x19]
   24900: 90000000     	adrp	x0, 0x24000 <syna_tcm_testing_noise+0x4c>
		0000000000024900:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19bba
   24904: 91000000     	add	x0, x0, #0x0
		0000000000024904:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19bba
   24908: 90000001     	adrp	x1, 0x24000 <syna_tcm_testing_noise+0x4c>
		0000000000024908:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a804
   2490c: 91000021     	add	x1, x1, #0x0
		000000000002490c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a804
   24910: 2a1403e2     	mov	w2, w20
   24914: 94000000     	bl	0x24914 <syna_tcm_buf_alloc+0xd8>
		0000000000024914:  R_AARCH64_CALL26	_printk
   24918: b9000a7f     	str	wzr, [x19, #0x8]
   2491c: 12801e40     	mov	w0, #-0xf3              // =-243
   24920: 17ffffe5     	b	0x248b4 <syna_tcm_buf_alloc+0x78>
