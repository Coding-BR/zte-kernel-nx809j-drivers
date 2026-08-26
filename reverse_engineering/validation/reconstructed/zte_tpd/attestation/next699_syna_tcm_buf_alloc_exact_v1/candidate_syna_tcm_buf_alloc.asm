
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000029a14 <syna_tcm_buf_alloc>:
   29a14: d503233f     	paciasp
   29a18: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   29a1c: f9000bf5     	str	x21, [sp, #0x10]
   29a20: a9024ff4     	stp	x20, x19, [sp, #0x20]
   29a24: 910003fd     	mov	x29, sp
   29a28: b9400815     	ldr	w21, [x0, #0x8]
   29a2c: aa0003f3     	mov	x19, x0
   29a30: f9400000     	ldr	x0, [x0]
   29a34: 6b0102bf     	cmp	w21, w1
   29a38: 54000222     	b.hs	0x29a7c <syna_tcm_buf_alloc+0x68>
   29a3c: 2a0103f4     	mov	w20, w1
   29a40: b40000c0     	cbz	x0, 0x29a58 <syna_tcm_buf_alloc+0x44>
   29a44: aa0003f5     	mov	x21, x0
   29a48: 94000000     	bl	0x29a48 <syna_tcm_buf_alloc+0x34>
		0000000000029a48:  R_AARCH64_CALL26	syna_request_managed_device
   29a4c: b40002c0     	cbz	x0, 0x29aa4 <syna_tcm_buf_alloc+0x90>
   29a50: aa1503e1     	mov	x1, x21
   29a54: 94000000     	bl	0x29a54 <syna_tcm_buf_alloc+0x40>
		0000000000029a54:  R_AARCH64_CALL26	devm_kfree
   29a58: 94000000     	bl	0x29a58 <syna_tcm_buf_alloc+0x44>
		0000000000029a58:  R_AARCH64_CALL26	syna_request_managed_device
   29a5c: b4000320     	cbz	x0, 0x29ac0 <syna_tcm_buf_alloc+0xac>
   29a60: 2a1403f5     	mov	w21, w20
   29a64: 5281b802     	mov	w2, #0xdc0              // =3520
   29a68: aa1503e1     	mov	x1, x21
   29a6c: 94000000     	bl	0x29a6c <syna_tcm_buf_alloc+0x58>
		0000000000029a6c:  R_AARCH64_CALL26	devm_kmalloc
   29a70: f9000260     	str	x0, [x19]
   29a74: b4000320     	cbz	x0, 0x29ad8 <syna_tcm_buf_alloc+0xc4>
   29a78: b9000a74     	str	w20, [x19, #0x8]
   29a7c: 2a1f03e1     	mov	w1, wzr
   29a80: aa1503e2     	mov	x2, x21
   29a84: 94000000     	bl	0x29a84 <syna_tcm_buf_alloc+0x70>
		0000000000029a84:  R_AARCH64_CALL26	memset
   29a88: 2a1f03e0     	mov	w0, wzr
   29a8c: b9000e7f     	str	wzr, [x19, #0xc]
   29a90: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   29a94: f9400bf5     	ldr	x21, [sp, #0x10]
   29a98: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   29a9c: d50323bf     	autiasp
   29aa0: d65f03c0     	ret
   29aa4: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctl_raw_write+0x128>
		0000000000029aa4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c19d
   29aa8: 91000000     	add	x0, x0, #0x0
		0000000000029aa8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c19d
   29aac: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctl_raw_write+0x128>
		0000000000029aac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bbc3
   29ab0: 91000021     	add	x1, x1, #0x0
		0000000000029ab0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bbc3
   29ab4: 94000000     	bl	0x29ab4 <syna_tcm_buf_alloc+0xa0>
		0000000000029ab4:  R_AARCH64_CALL26	_printk
   29ab8: 94000000     	bl	0x29ab8 <syna_tcm_buf_alloc+0xa4>
		0000000000029ab8:  R_AARCH64_CALL26	syna_request_managed_device
   29abc: b5fffd20     	cbnz	x0, 0x29a60 <syna_tcm_buf_alloc+0x4c>
   29ac0: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctl_raw_write+0x128>
		0000000000029ac0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c19d
   29ac4: 91000000     	add	x0, x0, #0x0
		0000000000029ac4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c19d
   29ac8: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctl_raw_write+0x128>
		0000000000029ac8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x196d5
   29acc: 91000021     	add	x1, x1, #0x0
		0000000000029acc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x196d5
   29ad0: 94000000     	bl	0x29ad0 <syna_tcm_buf_alloc+0xbc>
		0000000000029ad0:  R_AARCH64_CALL26	_printk
   29ad4: f900027f     	str	xzr, [x19]
   29ad8: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctl_raw_write+0x128>
		0000000000029ad8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19fed
   29adc: 91000000     	add	x0, x0, #0x0
		0000000000029adc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19fed
   29ae0: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctl_raw_write+0x128>
		0000000000029ae0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a887
   29ae4: 91000021     	add	x1, x1, #0x0
		0000000000029ae4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a887
   29ae8: 2a1403e2     	mov	w2, w20
   29aec: 94000000     	bl	0x29aec <syna_tcm_buf_alloc+0xd8>
		0000000000029aec:  R_AARCH64_CALL26	_printk
   29af0: b9000a7f     	str	wzr, [x19, #0x8]
   29af4: 12801e40     	mov	w0, #-0xf3              // =-243
   29af8: 17ffffe5     	b	0x29a8c <syna_tcm_buf_alloc+0x78>
