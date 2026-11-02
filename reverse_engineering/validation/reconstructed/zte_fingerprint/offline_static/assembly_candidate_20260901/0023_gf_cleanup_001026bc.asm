
/input/zte_fingerprint_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000c9c <gf_cleanup>:
     c9c: b5000040     	cbnz	x0, 0xca4 <gf_cleanup+0x8>
     ca0: d65f03c0     	ret
     ca4: d503233f     	paciasp
     ca8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     cac: f9000bf3     	str	x19, [sp, #0x10]
     cb0: 910003fd     	mov	x29, sp
     cb4: 90000008     	adrp	x8, 0x0 <zte_goodix_pinctrl_select>
		0000000000000cb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x664
     cb8: 91000108     	add	x8, x8, #0x0
		0000000000000cb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x664
     cbc: 90000001     	adrp	x1, 0x0 <zte_goodix_pinctrl_select>
		0000000000000cbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9b2
     cc0: 91000021     	add	x1, x1, #0x0
		0000000000000cc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9b2
     cc4: aa0003f3     	mov	x19, x0
     cc8: aa0803e0     	mov	x0, x8
     ccc: 94000000     	bl	0xccc <gf_cleanup+0x30>
		0000000000000ccc:  R_AARCH64_CALL26	_printk
     cd0: b9403e60     	ldr	w0, [x19, #0x3c]
     cd4: aa1303e8     	mov	x8, x19
     cd8: 36f801a0     	tbz	w0, #0x1f, 0xd0c <gf_cleanup+0x70>
     cdc: b9404100     	ldr	w0, [x8, #0x40]
     ce0: 36f80280     	tbz	w0, #0x1f, 0xd30 <gf_cleanup+0x94>
     ce4: f9404d00     	ldr	x0, [x8, #0x98]
     ce8: b40000a0     	cbz	x0, 0xcfc <gf_cleanup+0x60>
     cec: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
     cf0: 54000068     	b.hi	0xcfc <gf_cleanup+0x60>
     cf4: 94000000     	bl	0xcf4 <gf_cleanup+0x58>
		0000000000000cf4:  R_AARCH64_CALL26	regulator_is_enabled
     cf8: 35000300     	cbnz	w0, 0xd58 <gf_cleanup+0xbc>
     cfc: f9400bf3     	ldr	x19, [sp, #0x10]
     d00: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     d04: d50323bf     	autiasp
     d08: d65f03c0     	ret
     d0c: 94000000     	bl	0xd0c <gf_cleanup+0x70>
		0000000000000d0c:  R_AARCH64_CALL26	gpio_free
     d10: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		0000000000000d10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe46
     d14: 91000000     	add	x0, x0, #0x0
		0000000000000d14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe46
     d18: 90000001     	adrp	x1, 0x0 <zte_goodix_pinctrl_select>
		0000000000000d18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9b2
     d1c: 91000021     	add	x1, x1, #0x0
		0000000000000d1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9b2
     d20: 94000000     	bl	0xd20 <gf_cleanup+0x84>
		0000000000000d20:  R_AARCH64_CALL26	_printk
     d24: aa1303e8     	mov	x8, x19
     d28: b9404100     	ldr	w0, [x8, #0x40]
     d2c: 37fffdc0     	tbnz	w0, #0x1f, 0xce4 <gf_cleanup+0x48>
     d30: 94000000     	bl	0xd30 <gf_cleanup+0x94>
		0000000000000d30:  R_AARCH64_CALL26	gpio_free
     d34: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		0000000000000d34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4f4
     d38: 91000000     	add	x0, x0, #0x0
		0000000000000d38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4f4
     d3c: 90000001     	adrp	x1, 0x0 <zte_goodix_pinctrl_select>
		0000000000000d3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9b2
     d40: 91000021     	add	x1, x1, #0x0
		0000000000000d40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9b2
     d44: 94000000     	bl	0xd44 <gf_cleanup+0xa8>
		0000000000000d44:  R_AARCH64_CALL26	_printk
     d48: aa1303e8     	mov	x8, x19
     d4c: f9404d00     	ldr	x0, [x8, #0x98]
     d50: b5fffce0     	cbnz	x0, 0xcec <gf_cleanup+0x50>
     d54: 17ffffea     	b	0xcfc <gf_cleanup+0x60>
     d58: f9404e60     	ldr	x0, [x19, #0x98]
     d5c: 94000000     	bl	0xd5c <gf_cleanup+0xc0>
		0000000000000d5c:  R_AARCH64_CALL26	regulator_disable
     d60: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		0000000000000d60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe5c
     d64: 91000000     	add	x0, x0, #0x0
		0000000000000d64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe5c
     d68: 90000001     	adrp	x1, 0x0 <zte_goodix_pinctrl_select>
		0000000000000d68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9b2
     d6c: 91000021     	add	x1, x1, #0x0
		0000000000000d6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9b2
     d70: 94000000     	bl	0xd70 <gf_cleanup+0xd4>
		0000000000000d70:  R_AARCH64_CALL26	_printk
     d74: 17ffffe2     	b	0xcfc <gf_cleanup+0x60>
