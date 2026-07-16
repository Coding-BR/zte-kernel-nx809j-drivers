
/input/nubia_hw_version.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000c1c <nubia_hw_rf_band_show>:
     c1c: b40001c2     	cbz	x2, 0xc54 <nubia_hw_rf_band_show+0x38>
     c20: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000c20:  R_AARCH64_ADR_PREL_PG_HI21	nubia_rf_gpio1_v
     c24: 39400109     	ldrb	w9, [x8]
		0000000000000c24:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_rf_gpio1_v
     c28: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000c28:  R_AARCH64_ADR_PREL_PG_HI21	nubia_rf_gpio2_v
     c2c: 39800108     	ldrsb	x8, [x8]
		0000000000000c2c:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_rf_gpio2_v
     c30: 7100053f     	cmp	w9, #0x1
     c34: 54000140     	b.eq	0xc5c <nubia_hw_rf_band_show+0x40>
     c38: 7100093f     	cmp	w9, #0x2
     c3c: 54000181     	b.ne	0xc6c <nubia_hw_rf_band_show+0x50>
     c40: 7100091f     	cmp	w8, #0x2
     c44: 540000e8     	b.hi	0xc60 <nubia_hw_rf_band_show+0x44>
     c48: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000c48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x2c0
     c4c: 91000129     	add	x9, x9, #0x0
		0000000000000c4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x2c0
     c50: 1400000e     	b	0xc88 <nubia_hw_rf_band_show+0x6c>
     c54: aa1f03e0     	mov	x0, xzr
     c58: d65f03c0     	ret
     c5c: 340001a8     	cbz	w8, 0xc90 <nubia_hw_rf_band_show+0x74>
     c60: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000c60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f7
     c64: 91000063     	add	x3, x3, #0x0
		0000000000000c64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f7
     c68: 14000010     	b	0xca8 <nubia_hw_rf_band_show+0x8c>
     c6c: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000c6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f7
     c70: 91000063     	add	x3, x3, #0x0
		0000000000000c70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f7
     c74: 350001a9     	cbnz	w9, 0xca8 <nubia_hw_rf_band_show+0x8c>
     c78: 7100091f     	cmp	w8, #0x2
     c7c: 54000168     	b.hi	0xca8 <nubia_hw_rf_band_show+0x8c>
     c80: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000c80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x2a8
     c84: 91000129     	add	x9, x9, #0x0
		0000000000000c84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x2a8
     c88: f8687928     	ldr	x8, [x9, x8, lsl #3]
     c8c: 14000002     	b	0xc94 <nubia_hw_rf_band_show+0x78>
     c90: 528000c8     	mov	w8, #0x6                // =6
     c94: 52800289     	mov	w9, #0x14               // =20
     c98: 9000000a     	adrp	x10, 0x0 <.text>
		0000000000000c98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x2d8
     c9c: 9100014a     	add	x10, x10, #0x0
		0000000000000c9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x2d8
     ca0: 9b092908     	madd	x8, x8, x9, x10
     ca4: 91002103     	add	x3, x8, #0x8
     ca8: d503233f     	paciasp
     cac: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     cb0: a9014ff4     	stp	x20, x19, [sp, #0x10]
     cb4: 910003fd     	mov	x29, sp
     cb8: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000cb8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
     cbc: b9400108     	ldr	w8, [x8]
		0000000000000cbc:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x8
     cc0: 7100051f     	cmp	w8, #0x1
     cc4: 54000180     	b.eq	0xcf4 <nubia_hw_rf_band_show+0xd8>
     cc8: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000cc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32e
     ccc: 91000108     	add	x8, x8, #0x0
		0000000000000ccc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32e
     cd0: aa0203e0     	mov	x0, x2
     cd4: 52800181     	mov	w1, #0xc                // =12
     cd8: aa0803e2     	mov	x2, x8
     cdc: 94000000     	bl	0xcdc <nubia_hw_rf_band_show+0xc0>
		0000000000000cdc:  R_AARCH64_CALL26	snprintf
     ce0: 93407c00     	sxtw	x0, w0
     ce4: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     ce8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     cec: d50323bf     	autiasp
     cf0: d65f03c0     	ret
     cf4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000cf4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d6
     cf8: 91000000     	add	x0, x0, #0x0
		0000000000000cf8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d6
     cfc: aa0303e1     	mov	x1, x3
     d00: aa0203f3     	mov	x19, x2
     d04: aa0303f4     	mov	x20, x3
     d08: 94000000     	bl	0xd08 <nubia_hw_rf_band_show+0xec>
		0000000000000d08:  R_AARCH64_CALL26	_printk
     d0c: aa1403e3     	mov	x3, x20
     d10: aa1303e2     	mov	x2, x19
     d14: 17ffffed     	b	0xcc8 <nubia_hw_rf_band_show+0xac>
