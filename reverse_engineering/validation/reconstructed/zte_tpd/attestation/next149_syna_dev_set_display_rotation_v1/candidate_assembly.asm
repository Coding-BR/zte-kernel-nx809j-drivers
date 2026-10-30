
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009ce4 <syna_dev_set_display_rotation>:
    9ce4: d503233f     	paciasp
    9ce8: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    9cec: f9000bf7     	str	x23, [sp, #0x10]
    9cf0: a90257f6     	stp	x22, x21, [sp, #0x20]
    9cf4: a9034ff4     	stp	x20, x19, [sp, #0x30]
    9cf8: 910003fd     	mov	x29, sp
    9cfc: 2a0103f3     	mov	w19, w1
    9d00: 2a0203f4     	mov	w20, w2
    9d04: aa0003f5     	mov	x21, x0
    9d08: b9460c16     	ldr	w22, [x0, #0x60c]
    9d0c: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009d0c:  R_AARCH64_ADR_PREL_PG_HI21	unk_38188
    9d10: 91000000     	add	x0, x0, #0x0
		0000000000009d10:  R_AARCH64_ADD_ABS_LO12_NC	unk_38188
    9d14: 90000001     	adrp	x1, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009d14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aad
    9d18: 91000021     	add	x1, x1, #0x0
		0000000000009d18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aad
    9d1c: 2a1303e2     	mov	w2, w19
    9d20: 94000000     	bl	0x9d20 <syna_dev_set_display_rotation+0x3c>
		0000000000009d20:  R_AARCH64_CALL26	_printk
    9d24: b4000555     	cbz	x21, 0x9dcc <syna_dev_set_display_rotation+0xe8>
    9d28: 710002df     	cmp	w22, #0x0
    9d2c: 52800068     	mov	w8, #0x3                // =3
    9d30: f94002a0     	ldr	x0, [x21]
    9d34: 1a8803f7     	csel	w23, wzr, w8, eq
    9d38: 528016c1     	mov	w1, #0xb6               // =182
    9d3c: 2a1403e3     	mov	w3, w20
    9d40: 2a1703e2     	mov	w2, w23
    9d44: 94000000     	bl	0x9d44 <syna_dev_set_display_rotation+0x60>
		0000000000009d44:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    9d48: 37f80440     	tbnz	w0, #0x1f, 0x9dd0 <syna_dev_set_display_rotation+0xec>
    9d4c: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009d4c:  R_AARCH64_ADR_PREL_PG_HI21	unk_387F8
    9d50: 91000000     	add	x0, x0, #0x0
		0000000000009d50:  R_AARCH64_ADD_ABS_LO12_NC	unk_387F8
    9d54: 90000001     	adrp	x1, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009d54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aad
    9d58: 91000021     	add	x1, x1, #0x0
		0000000000009d58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aad
    9d5c: 2a1703e2     	mov	w2, w23
    9d60: 94000000     	bl	0x9d60 <syna_dev_set_display_rotation+0x7c>
		0000000000009d60:  R_AARCH64_CALL26	_printk
    9d64: f94002a0     	ldr	x0, [x21]
    9d68: 528016a1     	mov	w1, #0xb5               // =181
    9d6c: 2a1603e2     	mov	w2, w22
    9d70: 2a1403e3     	mov	w3, w20
    9d74: 94000000     	bl	0x9d74 <syna_dev_set_display_rotation+0x90>
		0000000000009d74:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    9d78: 37f802c0     	tbnz	w0, #0x1f, 0x9dd0 <syna_dev_set_display_rotation+0xec>
    9d7c: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009d7c:  R_AARCH64_ADR_PREL_PG_HI21	unk_3A221
    9d80: 91000000     	add	x0, x0, #0x0
		0000000000009d80:  R_AARCH64_ADD_ABS_LO12_NC	unk_3A221
    9d84: 90000001     	adrp	x1, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009d84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aad
    9d88: 91000021     	add	x1, x1, #0x0
		0000000000009d88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aad
    9d8c: 2a1603e2     	mov	w2, w22
    9d90: 94000000     	bl	0x9d90 <syna_dev_set_display_rotation+0xac>
		0000000000009d90:  R_AARCH64_CALL26	_printk
    9d94: f94002a0     	ldr	x0, [x21]
    9d98: 52801681     	mov	w1, #0xb4               // =180
    9d9c: 2a1303e2     	mov	w2, w19
    9da0: 2a1403e3     	mov	w3, w20
    9da4: 94000000     	bl	0x9da4 <syna_dev_set_display_rotation+0xc0>
		0000000000009da4:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    9da8: 37f80140     	tbnz	w0, #0x1f, 0x9dd0 <syna_dev_set_display_rotation+0xec>
    9dac: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009dac:  R_AARCH64_ADR_PREL_PG_HI21	unk_31E36
    9db0: 91000000     	add	x0, x0, #0x0
		0000000000009db0:  R_AARCH64_ADD_ABS_LO12_NC	unk_31E36
    9db4: 90000001     	adrp	x1, 0x9000 <syna_dev_process_touch_report+0x268>
		0000000000009db4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aad
    9db8: 91000021     	add	x1, x1, #0x0
		0000000000009db8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aad
    9dbc: 2a1303e2     	mov	w2, w19
    9dc0: 94000000     	bl	0x9dc0 <syna_dev_set_display_rotation+0xdc>
		0000000000009dc0:  R_AARCH64_CALL26	_printk
    9dc4: 2a1f03e0     	mov	w0, wzr
    9dc8: 14000002     	b	0x9dd0 <syna_dev_set_display_rotation+0xec>
    9dcc: 128002a0     	mov	w0, #-0x16              // =-22
    9dd0: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    9dd4: f9400bf7     	ldr	x23, [sp, #0x10]
    9dd8: a94257f6     	ldp	x22, x21, [sp, #0x20]
    9ddc: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    9de0: d50323bf     	autiasp
    9de4: d65f03c0     	ret
