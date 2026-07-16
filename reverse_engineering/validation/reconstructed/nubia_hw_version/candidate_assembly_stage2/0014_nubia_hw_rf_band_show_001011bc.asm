
/input/nubia_hw_version.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000bf4 <nubia_hw_rf_band_show>:
     bf4: b40001c2     	cbz	x2, 0xc2c <nubia_hw_rf_band_show+0x38>
     bf8: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000bf8:  R_AARCH64_ADR_PREL_PG_HI21	nubia_rf_gpio1_v
     bfc: 39400109     	ldrb	w9, [x8]
		0000000000000bfc:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_rf_gpio1_v
     c00: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000c00:  R_AARCH64_ADR_PREL_PG_HI21	nubia_rf_gpio2_v
     c04: 39800108     	ldrsb	x8, [x8]
		0000000000000c04:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_rf_gpio2_v
     c08: 7100053f     	cmp	w9, #0x1
     c0c: 54000140     	b.eq	0xc34 <nubia_hw_rf_band_show+0x40>
     c10: 7100093f     	cmp	w9, #0x2
     c14: 54000181     	b.ne	0xc44 <nubia_hw_rf_band_show+0x50>
     c18: 7100091f     	cmp	w8, #0x2
     c1c: 540000e8     	b.hi	0xc38 <nubia_hw_rf_band_show+0x44>
     c20: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000c20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x2c0
     c24: 91000129     	add	x9, x9, #0x0
		0000000000000c24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x2c0
     c28: 1400000e     	b	0xc60 <nubia_hw_rf_band_show+0x6c>
     c2c: aa1f03e0     	mov	x0, xzr
     c30: d65f03c0     	ret
     c34: 340001e8     	cbz	w8, 0xc70 <nubia_hw_rf_band_show+0x7c>
     c38: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000c38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d4
     c3c: 91000063     	add	x3, x3, #0x0
		0000000000000c3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d4
     c40: 14000011     	b	0xc84 <nubia_hw_rf_band_show+0x90>
     c44: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000c44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d4
     c48: 91000063     	add	x3, x3, #0x0
		0000000000000c48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d4
     c4c: 350001c9     	cbnz	w9, 0xc84 <nubia_hw_rf_band_show+0x90>
     c50: 7100091f     	cmp	w8, #0x2
     c54: 54000188     	b.hi	0xc84 <nubia_hw_rf_band_show+0x90>
     c58: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000c58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x2a8
     c5c: 91000129     	add	x9, x9, #0x0
		0000000000000c5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x2a8
     c60: f8687928     	ldr	x8, [x9, x8, lsl #3]
     c64: 8b080908     	add	x8, x8, x8, lsl #2
     c68: d37ef508     	lsl	x8, x8, #2
     c6c: 14000002     	b	0xc74 <nubia_hw_rf_band_show+0x80>
     c70: 52800f08     	mov	w8, #0x78               // =120
     c74: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000c74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x2d8
     c78: 91000129     	add	x9, x9, #0x0
		0000000000000c78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x2d8
     c7c: 8b080128     	add	x8, x9, x8
     c80: 91002103     	add	x3, x8, #0x8
     c84: d503233f     	paciasp
     c88: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     c8c: a9014ff4     	stp	x20, x19, [sp, #0x10]
     c90: 910003fd     	mov	x29, sp
     c94: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000c94:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
     c98: b9400108     	ldr	w8, [x8]
		0000000000000c98:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x8
     c9c: 7100051f     	cmp	w8, #0x1
     ca0: 54000180     	b.eq	0xcd0 <nubia_hw_rf_band_show+0xdc>
     ca4: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000ca4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e5
     ca8: 91000108     	add	x8, x8, #0x0
		0000000000000ca8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e5
     cac: aa0203e0     	mov	x0, x2
     cb0: 52800181     	mov	w1, #0xc                // =12
     cb4: aa0803e2     	mov	x2, x8
     cb8: 94000000     	bl	0xcb8 <nubia_hw_rf_band_show+0xc4>
		0000000000000cb8:  R_AARCH64_CALL26	snprintf
     cbc: 93407c00     	sxtw	x0, w0
     cc0: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     cc4: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     cc8: d50323bf     	autiasp
     ccc: d65f03c0     	ret
     cd0: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000cd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5da
     cd4: 91000000     	add	x0, x0, #0x0
		0000000000000cd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5da
     cd8: aa0303e1     	mov	x1, x3
     cdc: aa0203f3     	mov	x19, x2
     ce0: aa0303f4     	mov	x20, x3
     ce4: 94000000     	bl	0xce4 <nubia_hw_rf_band_show+0xf0>
		0000000000000ce4:  R_AARCH64_CALL26	_printk
     ce8: aa1403e3     	mov	x3, x20
     cec: aa1303e2     	mov	x2, x19
     cf0: 17ffffed     	b	0xca4 <nubia_hw_rf_band_show+0xb0>
