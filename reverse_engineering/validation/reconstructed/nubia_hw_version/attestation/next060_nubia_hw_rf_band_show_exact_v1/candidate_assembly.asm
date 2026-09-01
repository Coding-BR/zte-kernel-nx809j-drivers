
/input/nubia_hw_version.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <nubia_hw_rf_band_show>:
       4: b40001e2     	cbz	x2, 0x40 <nubia_hw_rf_band_show+0x3c>
       8: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000008:  R_AARCH64_ADR_PREL_PG_HI21	nubia_rf_gpio1_v
       c: 39400109     	ldrb	w9, [x8]
		000000000000000c:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_rf_gpio1_v
      10: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000010:  R_AARCH64_ADR_PREL_PG_HI21	nubia_rf_gpio2_v
      14: 39800108     	ldrsb	x8, [x8]
		0000000000000014:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_rf_gpio2_v
      18: 7100093f     	cmp	w9, #0x2
      1c: 540001c0     	b.eq	0x54 <nubia_hw_rf_band_show+0x50>
      20: 7100053f     	cmp	w9, #0x1
      24: 54000120     	b.eq	0x48 <nubia_hw_rf_band_show+0x44>
      28: 350002c9     	cbnz	w9, 0x80 <nubia_hw_rf_band_show+0x7c>
      2c: 71000d1f     	cmp	w8, #0x3
      30: 54000282     	b.hs	0x80 <nubia_hw_rf_band_show+0x7c>
      34: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000034:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x358
      38: 91000129     	add	x9, x9, #0x0
		0000000000000038:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x358
      3c: 1400000a     	b	0x64 <nubia_hw_rf_band_show+0x60>
      40: aa1f03e0     	mov	x0, xzr
      44: d65f03c0     	ret
      48: 350001c8     	cbnz	w8, 0x80 <nubia_hw_rf_band_show+0x7c>
      4c: 528000c8     	mov	w8, #0x6                // =6
      50: 14000006     	b	0x68 <nubia_hw_rf_band_show+0x64>
      54: 71000d1f     	cmp	w8, #0x3
      58: 54000142     	b.hs	0x80 <nubia_hw_rf_band_show+0x7c>
      5c: 90000009     	adrp	x9, 0x0 <.text>
		000000000000005c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x370
      60: 91000129     	add	x9, x9, #0x0
		0000000000000060:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x370
      64: f8687928     	ldr	x8, [x9, x8, lsl #3]
      68: 52800289     	mov	w9, #0x14               // =20
      6c: 9000000a     	adrp	x10, 0x0 <.text>
		000000000000006c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x280
      70: 9100014a     	add	x10, x10, #0x0
		0000000000000070:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x280
      74: 9b092908     	madd	x8, x8, x9, x10
      78: 91002103     	add	x3, x8, #0x8
      7c: 14000003     	b	0x88 <nubia_hw_rf_band_show+0x84>
      80: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000080:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f7
      84: 91000063     	add	x3, x3, #0x0
		0000000000000084:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f7
      88: d503233f     	paciasp
      8c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
      90: a9014ff4     	stp	x20, x19, [sp, #0x10]
      94: 910003fd     	mov	x29, sp
      98: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000098:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
      9c: b9400108     	ldr	w8, [x8]
		000000000000009c:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x18
      a0: 7100051f     	cmp	w8, #0x1
      a4: 54000180     	b.eq	0xd4 <nubia_hw_rf_band_show+0xd0>
      a8: 90000008     	adrp	x8, 0x0 <.text>
		00000000000000a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f2
      ac: 91000108     	add	x8, x8, #0x0
		00000000000000ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f2
      b0: aa0203e0     	mov	x0, x2
      b4: 52800181     	mov	w1, #0xc                // =12
      b8: aa0803e2     	mov	x2, x8
      bc: 94000000     	bl	0xbc <nubia_hw_rf_band_show+0xb8>
		00000000000000bc:  R_AARCH64_CALL26	snprintf
      c0: 93407c00     	sxtw	x0, w0
      c4: a9414ff4     	ldp	x20, x19, [sp, #0x10]
      c8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
      cc: d50323bf     	autiasp
      d0: d65f03c0     	ret
      d4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000000d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d6
      d8: 91000000     	add	x0, x0, #0x0
		00000000000000d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d6
      dc: aa0303e1     	mov	x1, x3
      e0: aa0203f3     	mov	x19, x2
      e4: aa0303f4     	mov	x20, x3
      e8: 94000000     	bl	0xe8 <nubia_hw_rf_band_show+0xe4>
		00000000000000e8:  R_AARCH64_CALL26	_printk
      ec: aa1403e3     	mov	x3, x20
      f0: aa1303e2     	mov	x2, x19
      f4: 17ffffed     	b	0xa8 <nubia_hw_rf_band_show+0xa4>
