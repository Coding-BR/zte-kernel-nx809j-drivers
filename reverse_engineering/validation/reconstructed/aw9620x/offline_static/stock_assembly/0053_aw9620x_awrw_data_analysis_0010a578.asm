
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000008cf8 <aw9620x_awrw_data_analysis>:
    8cf8: d503233f     	paciasp
    8cfc: d101c3ff     	sub	sp, sp, #0x70
    8d00: a9017bfd     	stp	x29, x30, [sp, #0x10]
    8d04: f90013fb     	str	x27, [sp, #0x20]
    8d08: a90367fa     	stp	x26, x25, [sp, #0x30]
    8d0c: a9045ff8     	stp	x24, x23, [sp, #0x40]
    8d10: a90557f6     	stp	x22, x21, [sp, #0x50]
    8d14: a9064ff4     	stp	x20, x19, [sp, #0x60]
    8d18: 910043fd     	add	x29, sp, #0x10
    8d1c: d5384108     	mrs	x8, SP_EL0
    8d20: 12001c49     	and	w9, w2, #0xff
    8d24: aa0003f3     	mov	x19, x0
    8d28: f9438908     	ldr	x8, [x8, #0x710]
    8d2c: 0b220939     	add	w25, w9, w2, uxtb #2
    8d30: aa0103e0     	mov	x0, x1
    8d34: 2a0203f5     	mov	w21, w2
    8d38: aa0103f4     	mov	x20, x1
    8d3c: f90007e8     	str	x8, [sp, #0x8]
    8d40: 11005336     	add	w22, w25, #0x14
    8d44: b90003ff     	str	wzr, [sp]
    8d48: 94000000     	bl	0x8d48 <aw9620x_awrw_data_analysis+0x50>
		0000000000008d48:  R_AARCH64_CALL26	strlen
    8d4c: f9401a61     	ldr	x1, [x19, #0x30]
    8d50: aa0003f7     	mov	x23, x0
    8d54: 90000000     	adrp	x0, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008d54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    8d58: 91000000     	add	x0, x0, #0x0
		0000000000008d58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    8d5c: 90000002     	adrp	x2, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008d5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xebd
    8d60: 91000042     	add	x2, x2, #0x0
		0000000000008d60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xebd
    8d64: 90000003     	adrp	x3, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008d64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3653
    8d68: 91000063     	add	x3, x3, #0x0
		0000000000008d68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3653
    8d6c: 52815d24     	mov	w4, #0xae9              // =2793
    8d70: 94000000     	bl	0x8d70 <aw9620x_awrw_data_analysis+0x78>
		0000000000008d70:  R_AARCH64_CALL26	_dev_printk
    8d74: 6b1702df     	cmp	w22, w23
    8d78: 54000701     	b.ne	0x8e58 <aw9620x_awrw_data_analysis+0x160>
    8d7c: 72001ebf     	tst	w21, #0xff
    8d80: 540004e0     	b.eq	0x8e1c <aw9620x_awrw_data_analysis+0x124>
    8d84: 2a1f03fb     	mov	w27, wzr
    8d88: 2a1f03fa     	mov	w26, wzr
    8d8c: 90000015     	adrp	x21, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008d8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x366e
    8d90: 910002b5     	add	x21, x21, #0x0
		0000000000008d90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x366e
    8d94: 90000016     	adrp	x22, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008d94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    8d98: 910002d6     	add	x22, x22, #0x0
		0000000000008d98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    8d9c: 90000017     	adrp	x23, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008d9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc7c
    8da0: 910002f7     	add	x23, x23, #0x0
		0000000000008da0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc7c
    8da4: 90000018     	adrp	x24, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008da4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3653
    8da8: 91000318     	add	x24, x24, #0x0
		0000000000008da8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3653
    8dac: 14000006     	b	0x8dc4 <aw9620x_awrw_data_analysis+0xcc>
    8db0: 11001768     	add	w8, w27, #0x5
    8db4: 1100075a     	add	w26, w26, #0x1
    8db8: 12001d1b     	and	w27, w8, #0xff
    8dbc: 6b19037f     	cmp	w27, w25
    8dc0: 540002e2     	b.hs	0x8e1c <aw9620x_awrw_data_analysis+0x124>
    8dc4: 8b3b4288     	add	x8, x20, w27, uxtw
    8dc8: 910013e0     	add	x0, sp, #0x4
    8dcc: 910003e2     	mov	x2, sp
    8dd0: aa1503e1     	mov	x1, x21
    8dd4: 79402d08     	ldrh	w8, [x8, #0x16]
    8dd8: 79000be8     	strh	w8, [sp, #0x4]
    8ddc: 94000000     	bl	0x8ddc <aw9620x_awrw_data_analysis+0xe4>
		0000000000008ddc:  R_AARCH64_CALL26	sscanf
    8de0: 7100041f     	cmp	w0, #0x1
    8de4: 54fffe61     	b.ne	0x8db0 <aw9620x_awrw_data_analysis+0xb8>
    8de8: f9413e68     	ldr	x8, [x19, #0x278]
    8dec: b94003e9     	ldr	w9, [sp]
    8df0: 92401f4a     	and	x10, x26, #0xff
    8df4: aa1603e0     	mov	x0, x22
    8df8: aa1703e2     	mov	x2, x23
    8dfc: aa1803e3     	mov	x3, x24
    8e00: 382a6909     	strb	w9, [x8, x10]
    8e04: 52815f64     	mov	w4, #0xafb              // =2811
    8e08: f9413e68     	ldr	x8, [x19, #0x278]
    8e0c: f9401a61     	ldr	x1, [x19, #0x30]
    8e10: 386a6905     	ldrb	w5, [x8, x10]
    8e14: 94000000     	bl	0x8e14 <aw9620x_awrw_data_analysis+0x11c>
		0000000000008e14:  R_AARCH64_CALL26	_dev_printk
    8e18: 17ffffe6     	b	0x8db0 <aw9620x_awrw_data_analysis+0xb8>
    8e1c: 2a1f03e0     	mov	w0, wzr
    8e20: d5384108     	mrs	x8, SP_EL0
    8e24: f9438908     	ldr	x8, [x8, #0x710]
    8e28: f94007e9     	ldr	x9, [sp, #0x8]
    8e2c: eb09011f     	cmp	x8, x9
    8e30: 540002e1     	b.ne	0x8e8c <aw9620x_awrw_data_analysis+0x194>
    8e34: a9464ff4     	ldp	x20, x19, [sp, #0x60]
    8e38: f94013fb     	ldr	x27, [sp, #0x20]
    8e3c: a94557f6     	ldp	x22, x21, [sp, #0x50]
    8e40: a9445ff8     	ldp	x24, x23, [sp, #0x40]
    8e44: a94367fa     	ldp	x26, x25, [sp, #0x30]
    8e48: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    8e4c: 9101c3ff     	add	sp, sp, #0x70
    8e50: d50323bf     	autiasp
    8e54: d65f03c0     	ret
    8e58: f9401a61     	ldr	x1, [x19, #0x30]
    8e5c: 90000000     	adrp	x0, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008e5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    8e60: 91000000     	add	x0, x0, #0x0
		0000000000008e60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    8e64: 90000002     	adrp	x2, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008e64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9
    8e68: 91000042     	add	x2, x2, #0x0
		0000000000008e68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9
    8e6c: 90000003     	adrp	x3, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008e6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3653
    8e70: 91000063     	add	x3, x3, #0x0
		0000000000008e70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3653
    8e74: 52815dc4     	mov	w4, #0xaee              // =2798
    8e78: 2a1603e5     	mov	w5, w22
    8e7c: 2a1703e6     	mov	w6, w23
    8e80: 94000000     	bl	0x8e80 <aw9620x_awrw_data_analysis+0x188>
		0000000000008e80:  R_AARCH64_CALL26	_dev_printk
    8e84: 12800000     	mov	w0, #-0x1               // =-1
    8e88: 17ffffe6     	b	0x8e20 <aw9620x_awrw_data_analysis+0x128>
    8e8c: 94000000     	bl	0x8e8c <aw9620x_awrw_data_analysis+0x194>
		0000000000008e8c:  R_AARCH64_CALL26	__stack_chk_fail
