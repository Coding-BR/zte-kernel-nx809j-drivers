
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000021acc <syna_dev_set_display_rotation>:
   21acc: d503233f     	paciasp
   21ad0: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
   21ad4: f9000bf7     	str	x23, [sp, #0x10]
   21ad8: a90257f6     	stp	x22, x21, [sp, #0x20]
   21adc: a9034ff4     	stp	x20, x19, [sp, #0x30]
   21ae0: 910003fd     	mov	x29, sp
   21ae4: 2a0103f3     	mov	w19, w1
   21ae8: 2a0203f4     	mov	w20, w2
   21aec: aa0003f5     	mov	x21, x0
   21af0: b9460c16     	ldr	w22, [x0, #0x60c]
   21af4: 90000000     	adrp	x0, 0x21000 <set_play_game+0x48>
		0000000000021af4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1874c
   21af8: 91000000     	add	x0, x0, #0x0
		0000000000021af8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1874c
   21afc: 90000001     	adrp	x1, 0x21000 <set_play_game+0x48>
		0000000000021afc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x143b6
   21b00: 91000021     	add	x1, x1, #0x0
		0000000000021b00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x143b6
   21b04: 2a1303e2     	mov	w2, w19
   21b08: 94000000     	bl	0x21b08 <syna_dev_set_display_rotation+0x3c>
		0000000000021b08:  R_AARCH64_CALL26	_printk
   21b0c: b4000555     	cbz	x21, 0x21bb4 <syna_dev_set_display_rotation+0xe8>
   21b10: 710002df     	cmp	w22, #0x0
   21b14: 52800068     	mov	w8, #0x3                // =3
   21b18: f94002a0     	ldr	x0, [x21]
   21b1c: 1a8803f7     	csel	w23, wzr, w8, eq
   21b20: 528016c1     	mov	w1, #0xb6               // =182
   21b24: 2a1403e3     	mov	w3, w20
   21b28: 2a1703e2     	mov	w2, w23
   21b2c: 94000000     	bl	0x21b2c <syna_dev_set_display_rotation+0x60>
		0000000000021b2c:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
   21b30: 37f80440     	tbnz	w0, #0x1f, 0x21bb8 <syna_dev_set_display_rotation+0xec>
   21b34: 90000000     	adrp	x0, 0x21000 <set_play_game+0x48>
		0000000000021b34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18d7e
   21b38: 91000000     	add	x0, x0, #0x0
		0000000000021b38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18d7e
   21b3c: 90000001     	adrp	x1, 0x21000 <set_play_game+0x48>
		0000000000021b3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x143b6
   21b40: 91000021     	add	x1, x1, #0x0
		0000000000021b40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x143b6
   21b44: 2a1703e2     	mov	w2, w23
   21b48: 94000000     	bl	0x21b48 <syna_dev_set_display_rotation+0x7c>
		0000000000021b48:  R_AARCH64_CALL26	_printk
   21b4c: f94002a0     	ldr	x0, [x21]
   21b50: 528016a1     	mov	w1, #0xb5               // =181
   21b54: 2a1603e2     	mov	w2, w22
   21b58: 2a1403e3     	mov	w3, w20
   21b5c: 94000000     	bl	0x21b5c <syna_dev_set_display_rotation+0x90>
		0000000000021b5c:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
   21b60: 37f802c0     	tbnz	w0, #0x1f, 0x21bb8 <syna_dev_set_display_rotation+0xec>
   21b64: 90000000     	adrp	x0, 0x21000 <set_play_game+0x48>
		0000000000021b64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a9f6
   21b68: 91000000     	add	x0, x0, #0x0
		0000000000021b68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a9f6
   21b6c: 90000001     	adrp	x1, 0x21000 <set_play_game+0x48>
		0000000000021b6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x143b6
   21b70: 91000021     	add	x1, x1, #0x0
		0000000000021b70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x143b6
   21b74: 2a1603e2     	mov	w2, w22
   21b78: 94000000     	bl	0x21b78 <syna_dev_set_display_rotation+0xac>
		0000000000021b78:  R_AARCH64_CALL26	_printk
   21b7c: f94002a0     	ldr	x0, [x21]
   21b80: 52801681     	mov	w1, #0xb4               // =180
   21b84: 2a1303e2     	mov	w2, w19
   21b88: 2a1403e3     	mov	w3, w20
   21b8c: 94000000     	bl	0x21b8c <syna_dev_set_display_rotation+0xc0>
		0000000000021b8c:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
   21b90: 37f80140     	tbnz	w0, #0x1f, 0x21bb8 <syna_dev_set_display_rotation+0xec>
   21b94: 90000000     	adrp	x0, 0x21000 <set_play_game+0x48>
		0000000000021b94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11eae
   21b98: 91000000     	add	x0, x0, #0x0
		0000000000021b98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11eae
   21b9c: 90000001     	adrp	x1, 0x21000 <set_play_game+0x48>
		0000000000021b9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x143b6
   21ba0: 91000021     	add	x1, x1, #0x0
		0000000000021ba0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x143b6
   21ba4: 2a1303e2     	mov	w2, w19
   21ba8: 94000000     	bl	0x21ba8 <syna_dev_set_display_rotation+0xdc>
		0000000000021ba8:  R_AARCH64_CALL26	_printk
   21bac: 2a1f03e0     	mov	w0, wzr
   21bb0: 14000002     	b	0x21bb8 <syna_dev_set_display_rotation+0xec>
   21bb4: 128002a0     	mov	w0, #-0x16              // =-22
   21bb8: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   21bbc: f9400bf7     	ldr	x23, [sp, #0x10]
   21bc0: a94257f6     	ldp	x22, x21, [sp, #0x20]
   21bc4: a8c47bfd     	ldp	x29, x30, [sp], #0x40
   21bc8: d50323bf     	autiasp
   21bcc: d65f03c0     	ret
