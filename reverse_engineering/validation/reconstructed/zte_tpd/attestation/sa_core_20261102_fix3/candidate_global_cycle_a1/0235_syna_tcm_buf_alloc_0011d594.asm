
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000024898 <syna_tcm_buf_alloc>:
   24898: d503233f     	paciasp
   2489c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   248a0: f9000bf5     	str	x21, [sp, #0x10]
   248a4: a9024ff4     	stp	x20, x19, [sp, #0x20]
   248a8: 910003fd     	mov	x29, sp
   248ac: b9400815     	ldr	w21, [x0, #0x8]
   248b0: aa0003f3     	mov	x19, x0
   248b4: f9400000     	ldr	x0, [x0]
   248b8: 6b0102bf     	cmp	w21, w1
   248bc: 54000222     	b.hs	0x24900 <syna_tcm_buf_alloc+0x68>
   248c0: 2a0103f4     	mov	w20, w1
   248c4: b40000c0     	cbz	x0, 0x248dc <syna_tcm_buf_alloc+0x44>
   248c8: aa0003f5     	mov	x21, x0
   248cc: 94000000     	bl	0x248cc <syna_tcm_buf_alloc+0x34>
		00000000000248cc:  R_AARCH64_CALL26	syna_request_managed_device
   248d0: b40002c0     	cbz	x0, 0x24928 <syna_tcm_buf_alloc+0x90>
   248d4: aa1503e1     	mov	x1, x21
   248d8: 94000000     	bl	0x248d8 <syna_tcm_buf_alloc+0x40>
		00000000000248d8:  R_AARCH64_CALL26	devm_kfree
   248dc: 94000000     	bl	0x248dc <syna_tcm_buf_alloc+0x44>
		00000000000248dc:  R_AARCH64_CALL26	syna_request_managed_device
   248e0: b4000320     	cbz	x0, 0x24944 <syna_tcm_buf_alloc+0xac>
   248e4: 2a1403f5     	mov	w21, w20
   248e8: 5281b802     	mov	w2, #0xdc0              // =3520
   248ec: aa1503e1     	mov	x1, x21
   248f0: 94000000     	bl	0x248f0 <syna_tcm_buf_alloc+0x58>
		00000000000248f0:  R_AARCH64_CALL26	devm_kmalloc
   248f4: f9000260     	str	x0, [x19]
   248f8: b4000320     	cbz	x0, 0x2495c <syna_tcm_buf_alloc+0xc4>
   248fc: b9000a74     	str	w20, [x19, #0x8]
   24900: 2a1f03e1     	mov	w1, wzr
   24904: aa1503e2     	mov	x2, x21
   24908: 94000000     	bl	0x24908 <syna_tcm_buf_alloc+0x70>
		0000000000024908:  R_AARCH64_CALL26	memset
   2490c: 2a1f03e0     	mov	w0, wzr
   24910: b9000e7f     	str	wzr, [x19, #0xc]
   24914: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   24918: f9400bf5     	ldr	x21, [sp, #0x10]
   2491c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   24920: d50323bf     	autiasp
   24924: d65f03c0     	ret
   24928: 90000000     	adrp	x0, 0x24000 <syna_testing_pt01_show+0x24c>
		0000000000024928:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   2492c: 91000000     	add	x0, x0, #0x0
		000000000002492c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   24930: 90000001     	adrp	x1, 0x24000 <syna_testing_pt01_show+0x24c>
		0000000000024930:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
   24934: 91000021     	add	x1, x1, #0x0
		0000000000024934:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
   24938: 94000000     	bl	0x24938 <syna_tcm_buf_alloc+0xa0>
		0000000000024938:  R_AARCH64_CALL26	_printk
   2493c: 94000000     	bl	0x2493c <syna_tcm_buf_alloc+0xa4>
		000000000002493c:  R_AARCH64_CALL26	syna_request_managed_device
   24940: b5fffd20     	cbnz	x0, 0x248e4 <syna_tcm_buf_alloc+0x4c>
   24944: 90000000     	adrp	x0, 0x24000 <syna_testing_pt01_show+0x24c>
		0000000000024944:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   24948: 91000000     	add	x0, x0, #0x0
		0000000000024948:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   2494c: 90000001     	adrp	x1, 0x24000 <syna_testing_pt01_show+0x24c>
		000000000002494c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x194ed
   24950: 91000021     	add	x1, x1, #0x0
		0000000000024950:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x194ed
   24954: 94000000     	bl	0x24954 <syna_tcm_buf_alloc+0xbc>
		0000000000024954:  R_AARCH64_CALL26	_printk
   24958: f900027f     	str	xzr, [x19]
   2495c: 90000000     	adrp	x0, 0x24000 <syna_testing_pt01_show+0x24c>
		000000000002495c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19bba
   24960: 91000000     	add	x0, x0, #0x0
		0000000000024960:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19bba
   24964: 90000001     	adrp	x1, 0x24000 <syna_testing_pt01_show+0x24c>
		0000000000024964:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a804
   24968: 91000021     	add	x1, x1, #0x0
		0000000000024968:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a804
   2496c: 2a1403e2     	mov	w2, w20
   24970: 94000000     	bl	0x24970 <syna_tcm_buf_alloc+0xd8>
		0000000000024970:  R_AARCH64_CALL26	_printk
   24974: b9000a7f     	str	wzr, [x19, #0x8]
   24978: 12801e40     	mov	w0, #-0xf3              // =-243
   2497c: 17ffffe5     	b	0x24910 <syna_tcm_buf_alloc+0x78>
