
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000016d0c <syna_tcm_buf_alloc>:
   16d0c: d503233f     	paciasp
   16d10: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   16d14: f9000bf5     	str	x21, [sp, #0x10]
   16d18: a9024ff4     	stp	x20, x19, [sp, #0x20]
   16d1c: 910003fd     	mov	x29, sp
   16d20: b9400815     	ldr	w21, [x0, #0x8]
   16d24: aa0003f3     	mov	x19, x0
   16d28: f9400000     	ldr	x0, [x0]
   16d2c: 6b0102bf     	cmp	w21, w1
   16d30: 54000222     	b.hs	0x16d74 <syna_tcm_buf_alloc+0x68>
   16d34: 2a0103f4     	mov	w20, w1
   16d38: b40000c0     	cbz	x0, 0x16d50 <syna_tcm_buf_alloc+0x44>
   16d3c: aa0003f5     	mov	x21, x0
   16d40: 94000000     	bl	0x16d40 <syna_tcm_buf_alloc+0x34>
		0000000000016d40:  R_AARCH64_CALL26	syna_request_managed_device
   16d44: b40002c0     	cbz	x0, 0x16d9c <syna_tcm_buf_alloc+0x90>
   16d48: aa1503e1     	mov	x1, x21
   16d4c: 94000000     	bl	0x16d4c <syna_tcm_buf_alloc+0x40>
		0000000000016d4c:  R_AARCH64_CALL26	devm_kfree
   16d50: 94000000     	bl	0x16d50 <syna_tcm_buf_alloc+0x44>
		0000000000016d50:  R_AARCH64_CALL26	syna_request_managed_device
   16d54: b4000320     	cbz	x0, 0x16db8 <syna_tcm_buf_alloc+0xac>
   16d58: 2a1403f5     	mov	w21, w20
   16d5c: 5281b802     	mov	w2, #0xdc0              // =3520
   16d60: aa1503e1     	mov	x1, x21
   16d64: 94000000     	bl	0x16d64 <syna_tcm_buf_alloc+0x58>
		0000000000016d64:  R_AARCH64_CALL26	devm_kmalloc
   16d68: f9000260     	str	x0, [x19]
   16d6c: b4000320     	cbz	x0, 0x16dd0 <syna_tcm_buf_alloc+0xc4>
   16d70: b9000a74     	str	w20, [x19, #0x8]
   16d74: 2a1f03e1     	mov	w1, wzr
   16d78: aa1503e2     	mov	x2, x21
   16d7c: 94000000     	bl	0x16d7c <syna_tcm_buf_alloc+0x70>
		0000000000016d7c:  R_AARCH64_CALL26	memset
   16d80: 2a1f03e0     	mov	w0, wzr
   16d84: b9000e7f     	str	wzr, [x19, #0xc]
   16d88: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   16d8c: f9400bf5     	ldr	x21, [sp, #0x10]
   16d90: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   16d94: d50323bf     	autiasp
   16d98: d65f03c0     	ret
   16d9c: 90000000     	adrp	x0, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016d9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   16da0: 91000000     	add	x0, x0, #0x0
		0000000000016da0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   16da4: 90000001     	adrp	x1, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016da4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   16da8: 91000021     	add	x1, x1, #0x0
		0000000000016da8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   16dac: 94000000     	bl	0x16dac <syna_tcm_buf_alloc+0xa0>
		0000000000016dac:  R_AARCH64_CALL26	_printk
   16db0: 94000000     	bl	0x16db0 <syna_tcm_buf_alloc+0xa4>
		0000000000016db0:  R_AARCH64_CALL26	syna_request_managed_device
   16db4: b5fffd20     	cbnz	x0, 0x16d58 <syna_tcm_buf_alloc+0x4c>
   16db8: 90000000     	adrp	x0, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016db8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   16dbc: 91000000     	add	x0, x0, #0x0
		0000000000016dbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   16dc0: 90000001     	adrp	x1, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016dc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ae7
   16dc4: 91000021     	add	x1, x1, #0x0
		0000000000016dc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ae7
   16dc8: 94000000     	bl	0x16dc8 <syna_tcm_buf_alloc+0xbc>
		0000000000016dc8:  R_AARCH64_CALL26	_printk
   16dcc: f900027f     	str	xzr, [x19]
   16dd0: 90000000     	adrp	x0, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016dd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5c25
   16dd4: 91000000     	add	x0, x0, #0x0
		0000000000016dd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5c25
   16dd8: 90000001     	adrp	x1, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016dd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7620
   16ddc: 91000021     	add	x1, x1, #0x0
		0000000000016ddc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7620
   16de0: 2a1403e2     	mov	w2, w20
   16de4: 94000000     	bl	0x16de4 <syna_tcm_buf_alloc+0xd8>
		0000000000016de4:  R_AARCH64_CALL26	_printk
   16de8: b9000a7f     	str	wzr, [x19, #0x8]
   16dec: 12801e40     	mov	w0, #-0xf3              // =-243
   16df0: 17ffffe5     	b	0x16d84 <syna_tcm_buf_alloc+0x78>
