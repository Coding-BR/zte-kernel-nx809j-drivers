
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002c6c <syna_tcm_check_flash_block>:
    2c6c: d503233f     	paciasp
    2c70: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    2c74: f9000bf3     	str	x19, [sp, #0x10]
    2c78: 910003fd     	mov	x29, sp
    2c7c: b40007e1     	cbz	x1, 0x2d78 <syna_tcm_check_flash_block+0x10c>
    2c80: b4000822     	cbz	x2, 0x2d84 <syna_tcm_check_flash_block+0x118>
    2c84: 39406049     	ldrb	w9, [x2, #0x18]
    2c88: aa0003e8     	mov	x8, x0
    2c8c: 2a1f03e0     	mov	w0, wzr
    2c90: 51000529     	sub	w9, w9, #0x1
    2c94: 13890529     	ror	w9, w9, #0x1
    2c98: 7100093f     	cmp	w9, #0x2
    2c9c: 5400036c     	b.gt	0x2d08 <syna_tcm_check_flash_block+0x9c>
    2ca0: 340005e9     	cbz	w9, 0x2d5c <syna_tcm_check_flash_block+0xf0>
    2ca4: 7100053f     	cmp	w9, #0x1
    2ca8: 54000901     	b.ne	0x2dc8 <syna_tcm_check_flash_block+0x15c>
    2cac: b9401040     	ldr	w0, [x2, #0x10]
    2cb0: 340008c0     	cbz	w0, 0x2dc8 <syna_tcm_check_flash_block+0x15c>
    2cb4: b9402c29     	ldr	w9, [x1, #0x2c]
    2cb8: 7941710a     	ldrh	w10, [x8, #0xb8]
    2cbc: 79417503     	ldrh	w3, [x8, #0xba]
    2cc0: 1b097d49     	mul	w9, w10, w9
    2cc4: 2a030128     	orr	w8, w9, w3
    2cc8: 34000808     	cbz	w8, 0x2dc8 <syna_tcm_check_flash_block+0x15c>
    2ccc: b9401442     	ldr	w2, [x2, #0x14]
    2cd0: 6b09005f     	cmp	w2, w9
    2cd4: 54000aa1     	b.ne	0x2e28 <syna_tcm_check_flash_block+0x1bc>
    2cd8: 6b03001f     	cmp	w0, w3
    2cdc: 54000760     	b.eq	0x2dc8 <syna_tcm_check_flash_block+0x15c>
    2ce0: 90000008     	adrp	x8, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002ce0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4de
    2ce4: 91000108     	add	x8, x8, #0x0
		0000000000002ce4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4de
    2ce8: 2a0003f3     	mov	w19, w0
    2cec: 90000001     	adrp	x1, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002cec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d10
    2cf0: 91000021     	add	x1, x1, #0x0
		0000000000002cf0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d10
    2cf4: aa0803e0     	mov	x0, x8
    2cf8: 2a1303e2     	mov	w2, w19
    2cfc: 94000000     	bl	0x2cfc <syna_tcm_check_flash_block+0x90>
		0000000000002cfc:  R_AARCH64_CALL26	_printk
    2d00: 2a1303e0     	mov	w0, w19
    2d04: 14000031     	b	0x2dc8 <syna_tcm_check_flash_block+0x15c>
    2d08: 71000d3f     	cmp	w9, #0x3
    2d0c: 54000320     	b.eq	0x2d70 <syna_tcm_check_flash_block+0x104>
    2d10: 7100253f     	cmp	w9, #0x9
    2d14: 540005a1     	b.ne	0x2dc8 <syna_tcm_check_flash_block+0x15c>
    2d18: b9401040     	ldr	w0, [x2, #0x10]
    2d1c: 71001c1f     	cmp	w0, #0x7
    2d20: 540005c9     	b.ls	0x2dd8 <syna_tcm_check_flash_block+0x16c>
    2d24: f940102a     	ldr	x10, [x1, #0x20]
    2d28: 39400148     	ldrb	w8, [x10]
    2d2c: 321f0109     	orr	w9, w8, #0x2
    2d30: 71000d3f     	cmp	w9, #0x3
    2d34: 540006a1     	b.ne	0x2e08 <syna_tcm_check_flash_block+0x19c>
    2d38: b9402c29     	ldr	w9, [x1, #0x2c]
    2d3c: b9401443     	ldr	w3, [x2, #0x14]
    2d40: 7100051f     	cmp	w8, #0x1
    2d44: 540002e0     	b.eq	0x2da0 <syna_tcm_check_flash_block+0x134>
    2d48: 71000d1f     	cmp	w8, #0x3
    2d4c: 54000361     	b.ne	0x2db8 <syna_tcm_check_flash_block+0x14c>
    2d50: 52800228     	mov	w8, #0x11               // =17
    2d54: 5280020b     	mov	w11, #0x10              // =16
    2d58: 14000014     	b	0x2da8 <syna_tcm_check_flash_block+0x13c>
    2d5c: b9401048     	ldr	w8, [x2, #0x10]
    2d60: 12801e09     	mov	w9, #-0xf1              // =-241
    2d64: 7100011f     	cmp	w8, #0x0
    2d68: 1a880120     	csel	w0, w9, w8, eq
    2d6c: 14000017     	b	0x2dc8 <syna_tcm_check_flash_block+0x15c>
    2d70: b9401040     	ldr	w0, [x2, #0x10]
    2d74: 14000015     	b	0x2dc8 <syna_tcm_check_flash_block+0x15c>
    2d78: 90000000     	adrp	x0, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002d78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x29ae
    2d7c: 91000000     	add	x0, x0, #0x0
		0000000000002d7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x29ae
    2d80: 14000003     	b	0x2d8c <syna_tcm_check_flash_block+0x120>
    2d84: 90000000     	adrp	x0, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002d84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x42e
    2d88: 91000000     	add	x0, x0, #0x0
		0000000000002d88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x42e
    2d8c: 90000001     	adrp	x1, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002d8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad10
    2d90: 91000021     	add	x1, x1, #0x0
		0000000000002d90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad10
    2d94: 94000000     	bl	0x2d94 <syna_tcm_check_flash_block+0x128>
		0000000000002d94:  R_AARCH64_CALL26	_printk
    2d98: 12801e00     	mov	w0, #-0xf1              // =-241
    2d9c: 1400000b     	b	0x2dc8 <syna_tcm_check_flash_block+0x15c>
    2da0: 528001a8     	mov	w8, #0xd                // =13
    2da4: 5280018b     	mov	w11, #0xc               // =12
    2da8: 386b694b     	ldrb	w11, [x10, x11]
    2dac: 38686948     	ldrb	w8, [x10, x8]
    2db0: 2a082168     	orr	w8, w11, w8, lsl #8
    2db4: 14000002     	b	0x2dbc <syna_tcm_check_flash_block+0x150>
    2db8: 2a1f03e8     	mov	w8, wzr
    2dbc: 1b097d02     	mul	w2, w8, w9
    2dc0: 6b02007f     	cmp	w3, w2
    2dc4: 54000181     	b.ne	0x2df4 <syna_tcm_check_flash_block+0x188>
    2dc8: f9400bf3     	ldr	x19, [sp, #0x10]
    2dcc: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    2dd0: d50323bf     	autiasp
    2dd4: d65f03c0     	ret
    2dd8: 90000008     	adrp	x8, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002dd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8b7c
    2ddc: 91000108     	add	x8, x8, #0x0
		0000000000002ddc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8b7c
    2de0: 90000001     	adrp	x1, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002de0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6df2
    2de4: 91000021     	add	x1, x1, #0x0
		0000000000002de4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6df2
    2de8: 2a0003e2     	mov	w2, w0
    2dec: aa0803e0     	mov	x0, x8
    2df0: 1400000b     	b	0x2e1c <syna_tcm_check_flash_block+0x1b0>
    2df4: 90000000     	adrp	x0, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002df4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10b0
    2df8: 91000000     	add	x0, x0, #0x0
		0000000000002df8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10b0
    2dfc: 90000001     	adrp	x1, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002dfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6df2
    2e00: 91000021     	add	x1, x1, #0x0
		0000000000002e00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6df2
    2e04: 1400000e     	b	0x2e3c <syna_tcm_check_flash_block+0x1d0>
    2e08: 90000000     	adrp	x0, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002e08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb378
    2e0c: 91000000     	add	x0, x0, #0x0
		0000000000002e0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb378
    2e10: 90000001     	adrp	x1, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002e10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6df2
    2e14: 91000021     	add	x1, x1, #0x0
		0000000000002e14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6df2
    2e18: 2a0803e2     	mov	w2, w8
    2e1c: 94000000     	bl	0x2e1c <syna_tcm_check_flash_block+0x1b0>
		0000000000002e1c:  R_AARCH64_CALL26	_printk
    2e20: 12801e00     	mov	w0, #-0xf1              // =-241
    2e24: 17ffffe9     	b	0x2dc8 <syna_tcm_check_flash_block+0x15c>
    2e28: 90000000     	adrp	x0, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002e28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x557e
    2e2c: 91000000     	add	x0, x0, #0x0
		0000000000002e2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x557e
    2e30: 90000001     	adrp	x1, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002e30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d10
    2e34: 91000021     	add	x1, x1, #0x0
		0000000000002e34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d10
    2e38: 2a0903e3     	mov	w3, w9
    2e3c: 94000000     	bl	0x2e3c <syna_tcm_check_flash_block+0x1d0>
		0000000000002e3c:  R_AARCH64_CALL26	_printk
    2e40: 12801e00     	mov	w0, #-0xf1              // =-241
    2e44: 17ffffe1     	b	0x2dc8 <syna_tcm_check_flash_block+0x15c>
