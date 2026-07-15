
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000025adc <tpd_set_stability_level>:
   25adc: d503233f     	paciasp
   25ae0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   25ae4: a9014ff4     	stp	x20, x19, [sp, #0x10]
   25ae8: 910003fd     	mov	x29, sp
   25aec: f946dc13     	ldr	x19, [x0, #0xdb8]
   25af0: 2a0103f4     	mov	w20, w1
   25af4: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025af4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3346
   25af8: 91000000     	add	x0, x0, #0x0
		0000000000025af8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3346
   25afc: 90000001     	adrp	x1, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025afc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb7ad
   25b00: 91000021     	add	x1, x1, #0x0
		0000000000025b00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb7ad
   25b04: 94000000     	bl	0x25b04 <tpd_set_stability_level+0x28>
		0000000000025b04:  R_AARCH64_CALL26	_printk
   25b08: b40002d3     	cbz	x19, 0x25b60 <tpd_set_stability_level+0x84>
   25b0c: f9413a69     	ldr	x9, [x19, #0x270]
   25b10: f9400268     	ldr	x8, [x19]
   25b14: b940b92a     	ldr	w10, [x9, #0xb8]
   25b18: 340000aa     	cbz	w10, 0x25b2c <tpd_set_stability_level+0x50>
   25b1c: 3942f129     	ldrb	w9, [x9, #0xbc]
   25b20: 36000069     	tbz	w9, #0x0, 0x25b2c <tpd_set_stability_level+0x50>
   25b24: 2a1f03e2     	mov	w2, wzr
   25b28: 14000002     	b	0x25b30 <tpd_set_stability_level+0x54>
   25b2c: b9420d02     	ldr	w2, [x8, #0x20c]
   25b30: b9457e68     	ldr	w8, [x19, #0x57c]
   25b34: 7100129f     	cmp	w20, #0x4
   25b38: 52800089     	mov	w9, #0x4                // =4
   25b3c: 1a89b281     	csel	w1, w20, w9, lt
   25b40: 7100051f     	cmp	w8, #0x1
   25b44: b9060661     	str	w1, [x19, #0x604]
   25b48: 54000161     	b.ne	0x25b74 <tpd_set_stability_level+0x98>
   25b4c: aa1303e0     	mov	x0, x19
   25b50: 94000000     	bl	0x25b50 <tpd_set_stability_level+0x74>
		0000000000025b50:  R_AARCH64_CALL26	syna_dev_set_stability_level
   25b54: 37f80160     	tbnz	w0, #0x1f, 0x25b80 <tpd_set_stability_level+0xa4>
   25b58: 2a1f03e0     	mov	w0, wzr
   25b5c: 14000002     	b	0x25b64 <tpd_set_stability_level+0x88>
   25b60: 128002a0     	mov	w0, #-0x16              // =-22
   25b64: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   25b68: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   25b6c: d50323bf     	autiasp
   25b70: d65f03c0     	ret
   25b74: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025b74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa419
   25b78: 91000000     	add	x0, x0, #0x0
		0000000000025b78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa419
   25b7c: 14000003     	b	0x25b88 <tpd_set_stability_level+0xac>
   25b80: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025b80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb7c5
   25b84: 91000000     	add	x0, x0, #0x0
		0000000000025b84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb7c5
   25b88: 90000001     	adrp	x1, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025b88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb7ad
   25b8c: 91000021     	add	x1, x1, #0x0
		0000000000025b8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb7ad
   25b90: 94000000     	bl	0x25b90 <tpd_set_stability_level+0xb4>
		0000000000025b90:  R_AARCH64_CALL26	_printk
   25b94: 17fffff1     	b	0x25b58 <tpd_set_stability_level+0x7c>
