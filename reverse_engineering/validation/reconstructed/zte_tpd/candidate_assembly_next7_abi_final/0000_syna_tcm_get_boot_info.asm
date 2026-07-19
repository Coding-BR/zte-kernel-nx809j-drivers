
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000010cb0 <syna_tcm_get_boot_info>:
   10cb0: d503233f     	paciasp
   10cb4: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   10cb8: f9000bf5     	str	x21, [sp, #0x10]
   10cbc: a9024ff4     	stp	x20, x19, [sp, #0x20]
   10cc0: 910003fd     	mov	x29, sp
   10cc4: b4000800     	cbz	x0, 0x10dc4 <syna_tcm_get_boot_info+0x114>
   10cc8: 2a0203f5     	mov	w21, w2
   10ccc: 39402402     	ldrb	w2, [x0, #0x9]
   10cd0: aa0003f3     	mov	x19, x0
   10cd4: 71002c5f     	cmp	w2, #0xb
   10cd8: 54000841     	b.ne	0x10de0 <syna_tcm_get_boot_info+0x130>
   10cdc: aa0103f4     	mov	x20, x1
   10ce0: 350000b5     	cbnz	w21, 0x10cf4 <syna_tcm_get_boot_info+0x44>
   10ce4: f9402668     	ldr	x8, [x19, #0x48]
   10ce8: 39405108     	ldrb	w8, [x8, #0x14]
   10cec: 36000e28     	tbz	w8, #0x0, 0x10eb0 <syna_tcm_get_boot_info+0x200>
   10cf0: 2a1f03f5     	mov	w21, wzr
   10cf4: f941ce68     	ldr	x8, [x19, #0x398]
   10cf8: aa1303e0     	mov	x0, x19
   10cfc: 52800201     	mov	w1, #0x10               // =16
   10d00: aa1f03e2     	mov	x2, xzr
   10d04: 2a1f03e3     	mov	w3, wzr
   10d08: aa1f03e4     	mov	x4, xzr
   10d0c: 2a1503e5     	mov	w5, w21
   10d10: b85fc110     	ldur	w16, [x8, #-0x4]
   10d14: 728751d1     	movk	w17, #0x3a8e
   10d18: 72a48411     	movk	w17, #0x2420, lsl #16
   10d1c: 6b11021f     	cmp	w16, w17
   10d20: 54000040     	b.eq	0x10d28 <syna_tcm_get_boot_info+0x78>
   10d24: d4304500     	brk	#0x8228
   10d28: d63f0100     	blr	x8
   10d2c: 37f80680     	tbnz	w0, #0x1f, 0x10dfc <syna_tcm_get_boot_info+0x14c>
   10d30: b9415668     	ldr	w8, [x19, #0x154]
   10d34: 39462262     	ldrb	w2, [x19, #0x188]
   10d38: 52800409     	mov	w9, #0x20               // =32
   10d3c: 7100811f     	cmp	w8, #0x20
   10d40: 1a893115     	csel	w21, w8, w9, lo
   10d44: 35000702     	cbnz	w2, 0x10e24 <syna_tcm_get_boot_info+0x174>
   10d48: 91056260     	add	x0, x19, #0x158
   10d4c: 94000000     	bl	0x10d4c <syna_tcm_get_boot_info+0x9c>
		0000000000010d4c:  R_AARCH64_CALL26	mutex_lock
   10d50: 39462268     	ldrb	w8, [x19, #0x188]
   10d54: f940a661     	ldr	x1, [x19, #0x148]
   10d58: 11000508     	add	w8, w8, #0x1
   10d5c: 39062268     	strb	w8, [x19, #0x188]
   10d60: b40007c1     	cbz	x1, 0x10e58 <syna_tcm_get_boot_info+0x1a8>
   10d64: b9415262     	ldr	w2, [x19, #0x150]
   10d68: 6b0202bf     	cmp	w21, w2
   10d6c: 54000688     	b.hi	0x10e3c <syna_tcm_get_boot_info+0x18c>
   10d70: 91038260     	add	x0, x19, #0xe0
   10d74: aa1503e2     	mov	x2, x21
   10d78: 94000000     	bl	0x10d78 <syna_tcm_get_boot_info+0xc8>
		0000000000010d78:  R_AARCH64_CALL26	memcpy
   10d7c: 39462262     	ldrb	w2, [x19, #0x188]
   10d80: 7100045f     	cmp	w2, #0x1
   10d84: 54000861     	b.ne	0x10e90 <syna_tcm_get_boot_info+0x1e0>
   10d88: 2a1f03e8     	mov	w8, wzr
   10d8c: 91056260     	add	x0, x19, #0x158
   10d90: 39062268     	strb	w8, [x19, #0x188]
   10d94: 94000000     	bl	0x10d94 <syna_tcm_get_boot_info+0xe4>
		0000000000010d94:  R_AARCH64_CALL26	mutex_unlock
   10d98: b40000b4     	cbz	x20, 0x10dac <syna_tcm_get_boot_info+0xfc>
   10d9c: 91038261     	add	x1, x19, #0xe0
   10da0: aa1403e0     	mov	x0, x20
   10da4: aa1503e2     	mov	x2, x21
   10da8: 94000000     	bl	0x10da8 <syna_tcm_get_boot_info+0xf8>
		0000000000010da8:  R_AARCH64_CALL26	memcpy
   10dac: 2a1f03e0     	mov	w0, wzr
   10db0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   10db4: f9400bf5     	ldr	x21, [sp, #0x10]
   10db8: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   10dbc: d50323bf     	autiasp
   10dc0: d65f03c0     	ret
   10dc4: 90000000     	adrp	x0, 0x10000 <syna_tcm_detect_device+0x80>
		0000000000010dc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd77
   10dc8: 91000000     	add	x0, x0, #0x0
		0000000000010dc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd77
   10dcc: 90000001     	adrp	x1, 0x10000 <syna_tcm_detect_device+0x80>
		0000000000010dcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ca9
   10dd0: 91000021     	add	x1, x1, #0x0
		0000000000010dd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ca9
   10dd4: 94000000     	bl	0x10dd4 <syna_tcm_get_boot_info+0x124>
		0000000000010dd4:  R_AARCH64_CALL26	_printk
   10dd8: 12801e00     	mov	w0, #-0xf1              // =-241
   10ddc: 17fffff5     	b	0x10db0 <syna_tcm_get_boot_info+0x100>
   10de0: 90000000     	adrp	x0, 0x10000 <syna_tcm_detect_device+0x80>
		0000000000010de0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f28
   10de4: 91000000     	add	x0, x0, #0x0
		0000000000010de4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f28
   10de8: 90000001     	adrp	x1, 0x10000 <syna_tcm_detect_device+0x80>
		0000000000010de8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ca9
   10dec: 91000021     	add	x1, x1, #0x0
		0000000000010dec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ca9
   10df0: 94000000     	bl	0x10df0 <syna_tcm_get_boot_info+0x140>
		0000000000010df0:  R_AARCH64_CALL26	_printk
   10df4: 12801e00     	mov	w0, #-0xf1              // =-241
   10df8: 17ffffee     	b	0x10db0 <syna_tcm_get_boot_info+0x100>
   10dfc: 90000008     	adrp	x8, 0x10000 <syna_tcm_detect_device+0x80>
		0000000000010dfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x368f
   10e00: 91000108     	add	x8, x8, #0x0
		0000000000010e00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x368f
   10e04: 90000001     	adrp	x1, 0x10000 <syna_tcm_detect_device+0x80>
		0000000000010e04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ca9
   10e08: 91000021     	add	x1, x1, #0x0
		0000000000010e08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ca9
   10e0c: 2a0003f3     	mov	w19, w0
   10e10: aa0803e0     	mov	x0, x8
   10e14: 52800202     	mov	w2, #0x10               // =16
   10e18: 94000000     	bl	0x10e18 <syna_tcm_get_boot_info+0x168>
		0000000000010e18:  R_AARCH64_CALL26	_printk
   10e1c: 2a1303e0     	mov	w0, w19
   10e20: 17ffffe4     	b	0x10db0 <syna_tcm_get_boot_info+0x100>
   10e24: 90000000     	adrp	x0, 0x10000 <syna_tcm_detect_device+0x80>
		0000000000010e24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c79
   10e28: 91000000     	add	x0, x0, #0x0
		0000000000010e28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c79
   10e2c: 90000001     	adrp	x1, 0x10000 <syna_tcm_detect_device+0x80>
		0000000000010e2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2bfd
   10e30: 91000021     	add	x1, x1, #0x0
		0000000000010e30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2bfd
   10e34: 94000000     	bl	0x10e34 <syna_tcm_get_boot_info+0x184>
		0000000000010e34:  R_AARCH64_CALL26	_printk
   10e38: 17ffffc4     	b	0x10d48 <syna_tcm_get_boot_info+0x98>
   10e3c: 90000000     	adrp	x0, 0x10000 <syna_tcm_detect_device+0x80>
		0000000000010e3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3294
   10e40: 91000000     	add	x0, x0, #0x0
		0000000000010e40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3294
   10e44: 90000001     	adrp	x1, 0x10000 <syna_tcm_detect_device+0x80>
		0000000000010e44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaea
   10e48: 91000021     	add	x1, x1, #0x0
		0000000000010e48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaea
   10e4c: 52800403     	mov	w3, #0x20               // =32
   10e50: 2a1503e4     	mov	w4, w21
   10e54: 94000000     	bl	0x10e54 <syna_tcm_get_boot_info+0x1a4>
		0000000000010e54:  R_AARCH64_CALL26	_printk
   10e58: 90000000     	adrp	x0, 0x10000 <syna_tcm_detect_device+0x80>
		0000000000010e58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32d2
   10e5c: 91000000     	add	x0, x0, #0x0
		0000000000010e5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32d2
   10e60: 90000001     	adrp	x1, 0x10000 <syna_tcm_detect_device+0x80>
		0000000000010e60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ca9
   10e64: 91000021     	add	x1, x1, #0x0
		0000000000010e64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ca9
   10e68: 94000000     	bl	0x10e68 <syna_tcm_get_boot_info+0x1b8>
		0000000000010e68:  R_AARCH64_CALL26	_printk
   10e6c: 39462262     	ldrb	w2, [x19, #0x188]
   10e70: 7100045f     	cmp	w2, #0x1
   10e74: 540002c1     	b.ne	0x10ecc <syna_tcm_get_boot_info+0x21c>
   10e78: 2a1f03e8     	mov	w8, wzr
   10e7c: 91056260     	add	x0, x19, #0x158
   10e80: 39062268     	strb	w8, [x19, #0x188]
   10e84: 94000000     	bl	0x10e84 <syna_tcm_get_boot_info+0x1d4>
		0000000000010e84:  R_AARCH64_CALL26	mutex_unlock
   10e88: 128002a0     	mov	w0, #-0x16              // =-22
   10e8c: 17ffffc9     	b	0x10db0 <syna_tcm_get_boot_info+0x100>
   10e90: 90000000     	adrp	x0, 0x10000 <syna_tcm_detect_device+0x80>
		0000000000010e90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c79
   10e94: 91000000     	add	x0, x0, #0x0
		0000000000010e94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c79
   10e98: 90000001     	adrp	x1, 0x10000 <syna_tcm_detect_device+0x80>
		0000000000010e98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x473d
   10e9c: 91000021     	add	x1, x1, #0x0
		0000000000010e9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x473d
   10ea0: 94000000     	bl	0x10ea0 <syna_tcm_get_boot_info+0x1f0>
		0000000000010ea0:  R_AARCH64_CALL26	_printk
   10ea4: 39462268     	ldrb	w8, [x19, #0x188]
   10ea8: 51000508     	sub	w8, w8, #0x1
   10eac: 17ffffb8     	b	0x10d8c <syna_tcm_get_boot_info+0xdc>
   10eb0: b9420e75     	ldr	w21, [x19, #0x20c]
   10eb4: 90000000     	adrp	x0, 0x10000 <syna_tcm_detect_device+0x80>
		0000000000010eb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4105
   10eb8: 91000000     	add	x0, x0, #0x0
		0000000000010eb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4105
   10ebc: 90000001     	adrp	x1, 0x10000 <syna_tcm_detect_device+0x80>
		0000000000010ebc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ca9
   10ec0: 91000021     	add	x1, x1, #0x0
		0000000000010ec0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ca9
   10ec4: 94000000     	bl	0x10ec4 <syna_tcm_get_boot_info+0x214>
		0000000000010ec4:  R_AARCH64_CALL26	_printk
   10ec8: 17ffff8b     	b	0x10cf4 <syna_tcm_get_boot_info+0x44>
   10ecc: 90000000     	adrp	x0, 0x10000 <syna_tcm_detect_device+0x80>
		0000000000010ecc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c79
   10ed0: 91000000     	add	x0, x0, #0x0
		0000000000010ed0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c79
   10ed4: 90000001     	adrp	x1, 0x10000 <syna_tcm_detect_device+0x80>
		0000000000010ed4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x473d
   10ed8: 91000021     	add	x1, x1, #0x0
		0000000000010ed8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x473d
   10edc: 94000000     	bl	0x10edc <syna_tcm_get_boot_info+0x22c>
		0000000000010edc:  R_AARCH64_CALL26	_printk
   10ee0: 39462268     	ldrb	w8, [x19, #0x188]
   10ee4: 51000508     	sub	w8, w8, #0x1
   10ee8: 17ffffe5     	b	0x10e7c <syna_tcm_get_boot_info+0x1cc>
