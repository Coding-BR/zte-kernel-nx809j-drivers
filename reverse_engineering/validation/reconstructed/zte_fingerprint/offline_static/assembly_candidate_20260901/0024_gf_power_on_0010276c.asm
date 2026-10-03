
/input/zte_fingerprint_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000b24 <gf_power_on>:
     b24: d503233f     	paciasp
     b28: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     b2c: f9000bf3     	str	x19, [sp, #0x10]
     b30: 910003fd     	mov	x29, sp
     b34: f9404c08     	ldr	x8, [x0, #0x98]
     b38: b4000328     	cbz	x8, 0xb9c <gf_power_on+0x78>
     b3c: b13ffd1f     	cmn	x8, #0xfff
     b40: 540002e2     	b.hs	0xb9c <gf_power_on+0x78>
     b44: aa0003f3     	mov	x19, x0
     b48: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		0000000000000b48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x100b
     b4c: 91000000     	add	x0, x0, #0x0
		0000000000000b4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x100b
     b50: 90000001     	adrp	x1, 0x0 <zte_goodix_pinctrl_select>
		0000000000000b50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9a6
     b54: 91000021     	add	x1, x1, #0x0
		0000000000000b54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9a6
     b58: 94000000     	bl	0xb58 <gf_power_on+0x34>
		0000000000000b58:  R_AARCH64_CALL26	_printk
     b5c: f9404e60     	ldr	x0, [x19, #0x98]
     b60: 94000000     	bl	0xb60 <gf_power_on+0x3c>
		0000000000000b60:  R_AARCH64_CALL26	regulator_is_enabled
     b64: 35000300     	cbnz	w0, 0xbc4 <gf_power_on+0xa0>
     b68: f9404e60     	ldr	x0, [x19, #0x98]
     b6c: 94000000     	bl	0xb6c <gf_power_on+0x48>
		0000000000000b6c:  R_AARCH64_CALL26	regulator_enable
     b70: 34000220     	cbz	w0, 0xbb4 <gf_power_on+0x90>
     b74: 90000008     	adrp	x8, 0x0 <zte_goodix_pinctrl_select>
		0000000000000b74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd49
     b78: 91000108     	add	x8, x8, #0x0
		0000000000000b78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd49
     b7c: 2a0003f3     	mov	w19, w0
     b80: 90000001     	adrp	x1, 0x0 <zte_goodix_pinctrl_select>
		0000000000000b80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9a6
     b84: 91000021     	add	x1, x1, #0x0
		0000000000000b84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9a6
     b88: aa0803e0     	mov	x0, x8
     b8c: 2a1303e2     	mov	w2, w19
     b90: 94000000     	bl	0xb90 <gf_power_on+0x6c>
		0000000000000b90:  R_AARCH64_CALL26	_printk
     b94: 2a1303e0     	mov	w0, w19
     b98: 14000007     	b	0xbb4 <gf_power_on+0x90>
     b9c: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		0000000000000b9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xec6
     ba0: 91000000     	add	x0, x0, #0x0
		0000000000000ba0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xec6
     ba4: 90000001     	adrp	x1, 0x0 <zte_goodix_pinctrl_select>
		0000000000000ba4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9a6
     ba8: 91000021     	add	x1, x1, #0x0
		0000000000000ba8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9a6
     bac: 94000000     	bl	0xbac <gf_power_on+0x88>
		0000000000000bac:  R_AARCH64_CALL26	_printk
     bb0: 128002a0     	mov	w0, #-0x16              // =-22
     bb4: f9400bf3     	ldr	x19, [sp, #0x10]
     bb8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     bbc: d50323bf     	autiasp
     bc0: d65f03c0     	ret
     bc4: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		0000000000000bc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ed
     bc8: 91000000     	add	x0, x0, #0x0
		0000000000000bc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ed
     bcc: 90000001     	adrp	x1, 0x0 <zte_goodix_pinctrl_select>
		0000000000000bcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9a6
     bd0: 91000021     	add	x1, x1, #0x0
		0000000000000bd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9a6
     bd4: 94000000     	bl	0xbd4 <gf_power_on+0xb0>
		0000000000000bd4:  R_AARCH64_CALL26	_printk
     bd8: 2a1f03e0     	mov	w0, wzr
     bdc: 17fffff6     	b	0xbb4 <gf_power_on+0x90>
