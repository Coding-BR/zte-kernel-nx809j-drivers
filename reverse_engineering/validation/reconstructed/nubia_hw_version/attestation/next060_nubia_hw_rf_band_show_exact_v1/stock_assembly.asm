
/input/nubia_hw_version.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000c1c <nubia_hw_rf_band_show>:
     c1c: b40001e2     	cbz	x2, 0xc58 <nubia_hw_rf_band_show+0x3c>
     c20: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000c20:  R_AARCH64_ADR_PREL_PG_HI21	nubia_rf_gpio1_v
     c24: 39400109     	ldrb	w9, [x8]
		0000000000000c24:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_rf_gpio1_v
     c28: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000c28:  R_AARCH64_ADR_PREL_PG_HI21	nubia_rf_gpio2_v
     c2c: 39800108     	ldrsb	x8, [x8]
		0000000000000c2c:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_rf_gpio2_v
     c30: 7100093f     	cmp	w9, #0x2
     c34: 540001c0     	b.eq	0xc6c <nubia_hw_rf_band_show+0x50>
     c38: 7100053f     	cmp	w9, #0x1
     c3c: 54000120     	b.eq	0xc60 <nubia_hw_rf_band_show+0x44>
     c40: 350002c9     	cbnz	w9, 0xc98 <nubia_hw_rf_band_show+0x7c>
     c44: 71000d1f     	cmp	w8, #0x3
     c48: 54000282     	b.hs	0xc98 <nubia_hw_rf_band_show+0x7c>
     c4c: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000c4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x358
     c50: 91000129     	add	x9, x9, #0x0
		0000000000000c50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x358
     c54: 1400000a     	b	0xc7c <nubia_hw_rf_band_show+0x60>
     c58: aa1f03e0     	mov	x0, xzr
     c5c: d65f03c0     	ret
     c60: 350001c8     	cbnz	w8, 0xc98 <nubia_hw_rf_band_show+0x7c>
     c64: 528000c8     	mov	w8, #0x6                // =6
     c68: 14000006     	b	0xc80 <nubia_hw_rf_band_show+0x64>
     c6c: 71000d1f     	cmp	w8, #0x3
     c70: 54000142     	b.hs	0xc98 <nubia_hw_rf_band_show+0x7c>
     c74: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000c74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x370
     c78: 91000129     	add	x9, x9, #0x0
		0000000000000c78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x370
     c7c: f8687928     	ldr	x8, [x9, x8, lsl #3]
     c80: 52800289     	mov	w9, #0x14               // =20
     c84: 9000000a     	adrp	x10, 0x0 <.text>
		0000000000000c84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x280
     c88: 9100014a     	add	x10, x10, #0x0
		0000000000000c88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x280
     c8c: 9b092908     	madd	x8, x8, x9, x10
     c90: 91002103     	add	x3, x8, #0x8
     c94: 14000003     	b	0xca0 <nubia_hw_rf_band_show+0x84>
     c98: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000c98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f7
     c9c: 91000063     	add	x3, x3, #0x0
		0000000000000c9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f7
     ca0: d503233f     	paciasp
     ca4: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     ca8: a9014ff4     	stp	x20, x19, [sp, #0x10]
     cac: 910003fd     	mov	x29, sp
     cb0: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000cb0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
     cb4: b9400108     	ldr	w8, [x8]
		0000000000000cb4:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x18
     cb8: 7100051f     	cmp	w8, #0x1
     cbc: 54000180     	b.eq	0xcec <nubia_hw_rf_band_show+0xd0>
     cc0: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000cc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f2
     cc4: 91000108     	add	x8, x8, #0x0
		0000000000000cc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f2
     cc8: aa0203e0     	mov	x0, x2
     ccc: 52800181     	mov	w1, #0xc                // =12
     cd0: aa0803e2     	mov	x2, x8
     cd4: 94000000     	bl	0xcd4 <nubia_hw_rf_band_show+0xb8>
		0000000000000cd4:  R_AARCH64_CALL26	snprintf
     cd8: 93407c00     	sxtw	x0, w0
     cdc: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     ce0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     ce4: d50323bf     	autiasp
     ce8: d65f03c0     	ret
     cec: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000cec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d6
     cf0: 91000000     	add	x0, x0, #0x0
		0000000000000cf0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d6
     cf4: aa0303e1     	mov	x1, x3
     cf8: aa0203f3     	mov	x19, x2
     cfc: aa0303f4     	mov	x20, x3
     d00: 94000000     	bl	0xd00 <nubia_hw_rf_band_show+0xe4>
		0000000000000d00:  R_AARCH64_CALL26	_printk
     d04: aa1403e3     	mov	x3, x20
     d08: aa1303e2     	mov	x2, x19
     d0c: 17ffffed     	b	0xcc0 <nubia_hw_rf_band_show+0xa4>
