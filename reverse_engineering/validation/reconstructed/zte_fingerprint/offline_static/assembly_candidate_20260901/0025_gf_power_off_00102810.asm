
/input/zte_fingerprint_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000be0 <gf_power_off>:
     be0: d503233f     	paciasp
     be4: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     be8: f9000bf3     	str	x19, [sp, #0x10]
     bec: 910003fd     	mov	x29, sp
     bf0: f9404c08     	ldr	x8, [x0, #0x98]
     bf4: b4000328     	cbz	x8, 0xc58 <gf_power_off+0x78>
     bf8: b13ffd1f     	cmn	x8, #0xfff
     bfc: 540002e2     	b.hs	0xc58 <gf_power_off+0x78>
     c00: aa0003f3     	mov	x19, x0
     c04: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		0000000000000c04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2bd
     c08: 91000000     	add	x0, x0, #0x0
		0000000000000c08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2bd
     c0c: 90000001     	adrp	x1, 0x0 <zte_goodix_pinctrl_select>
		0000000000000c0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa66
     c10: 91000021     	add	x1, x1, #0x0
		0000000000000c10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa66
     c14: 94000000     	bl	0xc14 <gf_power_off+0x34>
		0000000000000c14:  R_AARCH64_CALL26	_printk
     c18: f9404e60     	ldr	x0, [x19, #0x98]
     c1c: 94000000     	bl	0xc1c <gf_power_off+0x3c>
		0000000000000c1c:  R_AARCH64_CALL26	regulator_is_enabled
     c20: 34000300     	cbz	w0, 0xc80 <gf_power_off+0xa0>
     c24: f9404e60     	ldr	x0, [x19, #0x98]
     c28: 94000000     	bl	0xc28 <gf_power_off+0x48>
		0000000000000c28:  R_AARCH64_CALL26	regulator_disable
     c2c: 34000220     	cbz	w0, 0xc70 <gf_power_off+0x90>
     c30: 90000008     	adrp	x8, 0x0 <zte_goodix_pinctrl_select>
		0000000000000c30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe1
     c34: 91000108     	add	x8, x8, #0x0
		0000000000000c34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe1
     c38: 2a0003f3     	mov	w19, w0
     c3c: 90000001     	adrp	x1, 0x0 <zte_goodix_pinctrl_select>
		0000000000000c3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa66
     c40: 91000021     	add	x1, x1, #0x0
		0000000000000c40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa66
     c44: aa0803e0     	mov	x0, x8
     c48: 2a1303e2     	mov	w2, w19
     c4c: 94000000     	bl	0xc4c <gf_power_off+0x6c>
		0000000000000c4c:  R_AARCH64_CALL26	_printk
     c50: 2a1303e0     	mov	w0, w19
     c54: 14000007     	b	0xc70 <gf_power_off+0x90>
     c58: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		0000000000000c58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xec6
     c5c: 91000000     	add	x0, x0, #0x0
		0000000000000c5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xec6
     c60: 90000001     	adrp	x1, 0x0 <zte_goodix_pinctrl_select>
		0000000000000c60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa66
     c64: 91000021     	add	x1, x1, #0x0
		0000000000000c64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa66
     c68: 94000000     	bl	0xc68 <gf_power_off+0x88>
		0000000000000c68:  R_AARCH64_CALL26	_printk
     c6c: 128002a0     	mov	w0, #-0x16              // =-22
     c70: f9400bf3     	ldr	x19, [sp, #0x10]
     c74: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     c78: d50323bf     	autiasp
     c7c: d65f03c0     	ret
     c80: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		0000000000000c80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a9
     c84: 91000000     	add	x0, x0, #0x0
		0000000000000c84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a9
     c88: 90000001     	adrp	x1, 0x0 <zte_goodix_pinctrl_select>
		0000000000000c88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa66
     c8c: 91000021     	add	x1, x1, #0x0
		0000000000000c8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa66
     c90: 94000000     	bl	0xc90 <gf_power_off+0xb0>
		0000000000000c90:  R_AARCH64_CALL26	_printk
     c94: 2a1f03e0     	mov	w0, wzr
     c98: 17fffff6     	b	0xc70 <gf_power_off+0x90>
