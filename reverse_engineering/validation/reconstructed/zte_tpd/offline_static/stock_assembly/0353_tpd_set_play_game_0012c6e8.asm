
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000025e60 <tpd_set_play_game>:
   25e60: d503233f     	paciasp
   25e64: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   25e68: f9000bf5     	str	x21, [sp, #0x10]
   25e6c: a9024ff4     	stp	x20, x19, [sp, #0x20]
   25e70: 910003fd     	mov	x29, sp
   25e74: aa0003f3     	mov	x19, x0
   25e78: f946dc14     	ldr	x20, [x0, #0xdb8]
   25e7c: 2a0103f5     	mov	w21, w1
   25e80: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025e80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3346
   25e84: 91000000     	add	x0, x0, #0x0
		0000000000025e84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3346
   25e88: 90000001     	adrp	x1, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025e88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8a27
   25e8c: 91000021     	add	x1, x1, #0x0
		0000000000025e8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8a27
   25e90: 94000000     	bl	0x25e90 <tpd_set_play_game+0x30>
		0000000000025e90:  R_AARCH64_CALL26	_printk
   25e94: b40002f4     	cbz	x20, 0x25ef0 <tpd_set_play_game+0x90>
   25e98: f9413a89     	ldr	x9, [x20, #0x270]
   25e9c: f9400288     	ldr	x8, [x20]
   25ea0: b940b92a     	ldr	w10, [x9, #0xb8]
   25ea4: 340000aa     	cbz	w10, 0x25eb8 <tpd_set_play_game+0x58>
   25ea8: 3942f129     	ldrb	w9, [x9, #0xbc]
   25eac: 36000069     	tbz	w9, #0x0, 0x25eb8 <tpd_set_play_game+0x58>
   25eb0: 2a1f03e2     	mov	w2, wzr
   25eb4: 14000002     	b	0x25ebc <tpd_set_play_game+0x5c>
   25eb8: b9420d02     	ldr	w2, [x8, #0x20c]
   25ebc: b9457e88     	ldr	w8, [x20, #0x57c]
   25ec0: 7100051f     	cmp	w8, #0x1
   25ec4: 54000221     	b.ne	0x25f08 <tpd_set_play_game+0xa8>
   25ec8: b945de88     	ldr	w8, [x20, #0x5dc]
   25ecc: 6b15011f     	cmp	w8, w21
   25ed0: 54000220     	b.eq	0x25f14 <tpd_set_play_game+0xb4>
   25ed4: aa1403e0     	mov	x0, x20
   25ed8: 2a1503e1     	mov	w1, w21
   25edc: b905de95     	str	w21, [x20, #0x5dc]
   25ee0: 94000000     	bl	0x25ee0 <tpd_set_play_game+0x80>
		0000000000025ee0:  R_AARCH64_CALL26	syna_dev_set_play_game
   25ee4: 37f801e0     	tbnz	w0, #0x1f, 0x25f20 <tpd_set_play_game+0xc0>
   25ee8: b9401260     	ldr	w0, [x19, #0x10]
   25eec: 14000002     	b	0x25ef4 <tpd_set_play_game+0x94>
   25ef0: 128002a0     	mov	w0, #-0x16              // =-22
   25ef4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   25ef8: f9400bf5     	ldr	x21, [sp, #0x10]
   25efc: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   25f00: d50323bf     	autiasp
   25f04: d65f03c0     	ret
   25f08: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025f08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa419
   25f0c: 91000000     	add	x0, x0, #0x0
		0000000000025f0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa419
   25f10: 14000006     	b	0x25f28 <tpd_set_play_game+0xc8>
   25f14: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025f14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1696
   25f18: 91000000     	add	x0, x0, #0x0
		0000000000025f18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1696
   25f1c: 14000003     	b	0x25f28 <tpd_set_play_game+0xc8>
   25f20: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025f20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3695
   25f24: 91000000     	add	x0, x0, #0x0
		0000000000025f24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3695
   25f28: 90000001     	adrp	x1, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025f28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8a27
   25f2c: 91000021     	add	x1, x1, #0x0
		0000000000025f2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8a27
   25f30: 94000000     	bl	0x25f30 <tpd_set_play_game+0xd0>
		0000000000025f30:  R_AARCH64_CALL26	_printk
   25f34: 17ffffed     	b	0x25ee8 <tpd_set_play_game+0x88>
