
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000025bb8 <tpd_set_rotation_limit_level>:
   25bb8: d503233f     	paciasp
   25bbc: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   25bc0: f9000bf5     	str	x21, [sp, #0x10]
   25bc4: a9024ff4     	stp	x20, x19, [sp, #0x20]
   25bc8: 910003fd     	mov	x29, sp
   25bcc: aa0003f4     	mov	x20, x0
   25bd0: f946dc13     	ldr	x19, [x0, #0xdb8]
   25bd4: 2a0103f5     	mov	w21, w1
   25bd8: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025bd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3346
   25bdc: 91000000     	add	x0, x0, #0x0
		0000000000025bdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3346
   25be0: 90000001     	adrp	x1, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025be0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb269
   25be4: 91000021     	add	x1, x1, #0x0
		0000000000025be4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb269
   25be8: 94000000     	bl	0x25be8 <tpd_set_rotation_limit_level+0x30>
		0000000000025be8:  R_AARCH64_CALL26	_printk
   25bec: b4000313     	cbz	x19, 0x25c4c <tpd_set_rotation_limit_level+0x94>
   25bf0: f9413a69     	ldr	x9, [x19, #0x270]
   25bf4: f9400268     	ldr	x8, [x19]
   25bf8: b940b92a     	ldr	w10, [x9, #0xb8]
   25bfc: 340000aa     	cbz	w10, 0x25c10 <tpd_set_rotation_limit_level+0x58>
   25c00: 3942f129     	ldrb	w9, [x9, #0xbc]
   25c04: 36000069     	tbz	w9, #0x0, 0x25c10 <tpd_set_rotation_limit_level+0x58>
   25c08: 2a1f03e2     	mov	w2, wzr
   25c0c: 14000002     	b	0x25c14 <tpd_set_rotation_limit_level+0x5c>
   25c10: b9420d02     	ldr	w2, [x8, #0x20c]
   25c14: b9457e68     	ldr	w8, [x19, #0x57c]
   25c18: 71000ebf     	cmp	w21, #0x3
   25c1c: 52800069     	mov	w9, #0x3                // =3
   25c20: 1a89b2a9     	csel	w9, w21, w9, lt
   25c24: 7100051f     	cmp	w8, #0x1
   25c28: b9060e69     	str	w9, [x19, #0x60c]
   25c2c: 540001c1     	b.ne	0x25c64 <tpd_set_rotation_limit_level+0xac>
   25c30: b9401281     	ldr	w1, [x20, #0x10]
   25c34: aa1303e0     	mov	x0, x19
   25c38: 94000000     	bl	0x25c38 <tpd_set_rotation_limit_level+0x80>
		0000000000025c38:  R_AARCH64_CALL26	syna_dev_set_display_rotation
   25c3c: 340000a0     	cbz	w0, 0x25c50 <tpd_set_rotation_limit_level+0x98>
   25c40: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025c40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaab
   25c44: 91000000     	add	x0, x0, #0x0
		0000000000025c44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaab
   25c48: 14000009     	b	0x25c6c <tpd_set_rotation_limit_level+0xb4>
   25c4c: 128002a0     	mov	w0, #-0x16              // =-22
   25c50: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   25c54: f9400bf5     	ldr	x21, [sp, #0x10]
   25c58: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   25c5c: d50323bf     	autiasp
   25c60: d65f03c0     	ret
   25c64: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025c64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa419
   25c68: 91000000     	add	x0, x0, #0x0
		0000000000025c68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa419
   25c6c: 90000001     	adrp	x1, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025c6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb269
   25c70: 91000021     	add	x1, x1, #0x0
		0000000000025c70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb269
   25c74: 94000000     	bl	0x25c74 <tpd_set_rotation_limit_level+0xbc>
		0000000000025c74:  R_AARCH64_CALL26	_printk
   25c78: 2a1f03e0     	mov	w0, wzr
   25c7c: 17fffff5     	b	0x25c50 <tpd_set_rotation_limit_level+0x98>
