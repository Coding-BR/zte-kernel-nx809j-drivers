
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000008ac4 <syna_dev_set_sensibility_level>:
    8ac4: d503233f     	paciasp
    8ac8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    8acc: f9000bf5     	str	x21, [sp, #0x10]
    8ad0: a9024ff4     	stp	x20, x19, [sp, #0x20]
    8ad4: 910003fd     	mov	x29, sp
    8ad8: 2a0103f5     	mov	w21, w1
    8adc: 90000001     	adrp	x1, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008adc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x130e4
    8ae0: 91000021     	add	x1, x1, #0x0
		0000000000008ae0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x130e4
    8ae4: 2a0203f3     	mov	w19, w2
    8ae8: aa0003f4     	mov	x20, x0
    8aec: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008aec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15dc1
    8af0: 91000000     	add	x0, x0, #0x0
		0000000000008af0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15dc1
    8af4: aa0103e2     	mov	x2, x1
    8af8: 94000000     	bl	0x8af8 <syna_dev_set_sensibility_level+0x34>
		0000000000008af8:  R_AARCH64_CALL26	_printk
    8afc: b4000314     	cbz	x20, 0x8b5c <syna_dev_set_sensibility_level+0x98>
    8b00: 710006bf     	cmp	w21, #0x1
    8b04: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008b04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1740b
    8b08: 91000000     	add	x0, x0, #0x0
		0000000000008b08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1740b
    8b0c: 540002cd     	b.le	0x8b64 <syna_dev_set_sensibility_level+0xa0>
    8b10: 71000abf     	cmp	w21, #0x2
    8b14: 54000480     	b.eq	0x8ba4 <syna_dev_set_sensibility_level+0xe0>
    8b18: 71000ebf     	cmp	w21, #0x3
    8b1c: 54000760     	b.eq	0x8c08 <syna_dev_set_sensibility_level+0x144>
    8b20: 710012bf     	cmp	w21, #0x4
    8b24: 540008a1     	b.ne	0x8c38 <syna_dev_set_sensibility_level+0x174>
    8b28: b9460288     	ldr	w8, [x20, #0x600]
    8b2c: b9460689     	ldr	w9, [x20, #0x604]
    8b30: 52801f21     	mov	w1, #0xf9               // =249
    8b34: f9400280     	ldr	x0, [x20]
    8b38: 2a1303e3     	mov	w3, w19
    8b3c: 531c6d08     	lsl	w8, w8, #4
    8b40: 2a092108     	orr	w8, w8, w9, lsl #8
    8b44: 321e0102     	orr	w2, w8, #0x4
    8b48: 94000000     	bl	0x8b48 <syna_dev_set_sensibility_level+0x84>
		0000000000008b48:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    8b4c: 37f80800     	tbnz	w0, #0x1f, 0x8c4c <syna_dev_set_sensibility_level+0x188>
    8b50: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008b50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10c81
    8b54: 91000000     	add	x0, x0, #0x0
		0000000000008b54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10c81
    8b58: 14000038     	b	0x8c38 <syna_dev_set_sensibility_level+0x174>
    8b5c: 128002a0     	mov	w0, #-0x16              // =-22
    8b60: 1400003b     	b	0x8c4c <syna_dev_set_sensibility_level+0x188>
    8b64: 340003b5     	cbz	w21, 0x8bd8 <syna_dev_set_sensibility_level+0x114>
    8b68: 710006bf     	cmp	w21, #0x1
    8b6c: 54000661     	b.ne	0x8c38 <syna_dev_set_sensibility_level+0x174>
    8b70: b9460288     	ldr	w8, [x20, #0x600]
    8b74: b9460689     	ldr	w9, [x20, #0x604]
    8b78: 52801f21     	mov	w1, #0xf9               // =249
    8b7c: f9400280     	ldr	x0, [x20]
    8b80: 2a1303e3     	mov	w3, w19
    8b84: 531c6d08     	lsl	w8, w8, #4
    8b88: 2a092108     	orr	w8, w8, w9, lsl #8
    8b8c: 32000102     	orr	w2, w8, #0x1
    8b90: 94000000     	bl	0x8b90 <syna_dev_set_sensibility_level+0xcc>
		0000000000008b90:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    8b94: 37f805c0     	tbnz	w0, #0x1f, 0x8c4c <syna_dev_set_sensibility_level+0x188>
    8b98: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008b98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13546
    8b9c: 91000000     	add	x0, x0, #0x0
		0000000000008b9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13546
    8ba0: 14000026     	b	0x8c38 <syna_dev_set_sensibility_level+0x174>
    8ba4: b9460288     	ldr	w8, [x20, #0x600]
    8ba8: b9460689     	ldr	w9, [x20, #0x604]
    8bac: 52801f21     	mov	w1, #0xf9               // =249
    8bb0: f9400280     	ldr	x0, [x20]
    8bb4: 2a1303e3     	mov	w3, w19
    8bb8: 531c6d08     	lsl	w8, w8, #4
    8bbc: 2a092108     	orr	w8, w8, w9, lsl #8
    8bc0: 321f0102     	orr	w2, w8, #0x2
    8bc4: 94000000     	bl	0x8bc4 <syna_dev_set_sensibility_level+0x100>
		0000000000008bc4:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    8bc8: 37f80420     	tbnz	w0, #0x1f, 0x8c4c <syna_dev_set_sensibility_level+0x188>
    8bcc: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008bcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdfd4
    8bd0: 91000000     	add	x0, x0, #0x0
		0000000000008bd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdfd4
    8bd4: 14000019     	b	0x8c38 <syna_dev_set_sensibility_level+0x174>
    8bd8: b9460288     	ldr	w8, [x20, #0x600]
    8bdc: b9460689     	ldr	w9, [x20, #0x604]
    8be0: 52801f21     	mov	w1, #0xf9               // =249
    8be4: f9400280     	ldr	x0, [x20]
    8be8: 2a1303e3     	mov	w3, w19
    8bec: 531c6d08     	lsl	w8, w8, #4
    8bf0: 2a092102     	orr	w2, w8, w9, lsl #8
    8bf4: 94000000     	bl	0x8bf4 <syna_dev_set_sensibility_level+0x130>
		0000000000008bf4:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    8bf8: 37f802a0     	tbnz	w0, #0x1f, 0x8c4c <syna_dev_set_sensibility_level+0x188>
    8bfc: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008bfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xed2e
    8c00: 91000000     	add	x0, x0, #0x0
		0000000000008c00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xed2e
    8c04: 1400000d     	b	0x8c38 <syna_dev_set_sensibility_level+0x174>
    8c08: b9460288     	ldr	w8, [x20, #0x600]
    8c0c: b9460689     	ldr	w9, [x20, #0x604]
    8c10: 52801f21     	mov	w1, #0xf9               // =249
    8c14: f9400280     	ldr	x0, [x20]
    8c18: 2a1303e3     	mov	w3, w19
    8c1c: 531c6d08     	lsl	w8, w8, #4
    8c20: 2a092108     	orr	w8, w8, w9, lsl #8
    8c24: 32000502     	orr	w2, w8, #0x3
    8c28: 94000000     	bl	0x8c28 <syna_dev_set_sensibility_level+0x164>
		0000000000008c28:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    8c2c: 37f80100     	tbnz	w0, #0x1f, 0x8c4c <syna_dev_set_sensibility_level+0x188>
    8c30: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008c30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe004
    8c34: 91000000     	add	x0, x0, #0x0
		0000000000008c34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe004
    8c38: 90000001     	adrp	x1, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008c38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x130e4
    8c3c: 91000021     	add	x1, x1, #0x0
		0000000000008c3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x130e4
    8c40: aa0103e2     	mov	x2, x1
    8c44: 94000000     	bl	0x8c44 <syna_dev_set_sensibility_level+0x180>
		0000000000008c44:  R_AARCH64_CALL26	_printk
    8c48: 2a1f03e0     	mov	w0, wzr
    8c4c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    8c50: f9400bf5     	ldr	x21, [sp, #0x10]
    8c54: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    8c58: d50323bf     	autiasp
    8c5c: d65f03c0     	ret
