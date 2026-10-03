
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000020ecc <tpd_set_play_game>:
   20ecc: d503233f     	paciasp
   20ed0: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   20ed4: f9000bf5     	str	x21, [sp, #0x10]
   20ed8: a9024ff4     	stp	x20, x19, [sp, #0x20]
   20edc: 910003fd     	mov	x29, sp
   20ee0: aa0003f3     	mov	x19, x0
   20ee4: f946dc14     	ldr	x20, [x0, #0xdb8]
   20ee8: 2a0103f5     	mov	w21, w1
   20eec: 90000000     	adrp	x0, 0x20000 <tpd_id5_report_work+0x20>
		0000000000020eec:  R_AARCH64_ADR_PREL_PG_HI21	unk_34878
   20ef0: 91000000     	add	x0, x0, #0x0
		0000000000020ef0:  R_AARCH64_ADD_ABS_LO12_NC	unk_34878
   20ef4: 90000001     	adrp	x1, 0x20000 <tpd_id5_report_work+0x20>
		0000000000020ef4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5000
   20ef8: 91000021     	add	x1, x1, #0x0
		0000000000020ef8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5000
   20efc: 94000000     	bl	0x20efc <tpd_set_play_game+0x30>
		0000000000020efc:  R_AARCH64_CALL26	_printk
   20f00: b4000134     	cbz	x20, 0x20f24 <tpd_set_play_game+0x58>
   20f04: f9413a88     	ldr	x8, [x20, #0x270]
   20f08: b940b909     	ldr	w9, [x8, #0xb8]
   20f0c: 34000069     	cbz	w9, 0x20f18 <tpd_set_play_game+0x4c>
   20f10: 3942f108     	ldrb	w8, [x8, #0xbc]
   20f14: 370000c8     	tbnz	w8, #0x0, 0x20f2c <tpd_set_play_game+0x60>
   20f18: f9400288     	ldr	x8, [x20]
   20f1c: b9420d02     	ldr	w2, [x8, #0x20c]
   20f20: 14000004     	b	0x20f30 <tpd_set_play_game+0x64>
   20f24: 128002a0     	mov	w0, #-0x16              // =-22
   20f28: 1400000e     	b	0x20f60 <tpd_set_play_game+0x94>
   20f2c: 2a1f03e2     	mov	w2, wzr
   20f30: b9457e88     	ldr	w8, [x20, #0x57c]
   20f34: 7100051f     	cmp	w8, #0x1
   20f38: 540001e1     	b.ne	0x20f74 <tpd_set_play_game+0xa8>
   20f3c: b945de88     	ldr	w8, [x20, #0x5dc]
   20f40: 6b15011f     	cmp	w8, w21
   20f44: 540001e0     	b.eq	0x20f80 <tpd_set_play_game+0xb4>
   20f48: aa1403e0     	mov	x0, x20
   20f4c: 2a1503e1     	mov	w1, w21
   20f50: b905de95     	str	w21, [x20, #0x5dc]
   20f54: 94000000     	bl	0x20f54 <tpd_set_play_game+0x88>
		0000000000020f54:  R_AARCH64_CALL26	syna_dev_set_play_game
   20f58: 37f801a0     	tbnz	w0, #0x1f, 0x20f8c <tpd_set_play_game+0xc0>
   20f5c: b9401260     	ldr	w0, [x19, #0x10]
   20f60: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   20f64: f9400bf5     	ldr	x21, [sp, #0x10]
   20f68: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   20f6c: d50323bf     	autiasp
   20f70: d65f03c0     	ret
   20f74: 90000000     	adrp	x0, 0x20000 <tpd_id5_report_work+0x20>
		0000000000020f74:  R_AARCH64_ADR_PREL_PG_HI21	unk_3B5E0
   20f78: 91000000     	add	x0, x0, #0x0
		0000000000020f78:  R_AARCH64_ADD_ABS_LO12_NC	unk_3B5E0
   20f7c: 14000006     	b	0x20f94 <tpd_set_play_game+0xc8>
   20f80: 90000000     	adrp	x0, 0x20000 <tpd_id5_report_work+0x20>
		0000000000020f80:  R_AARCH64_ADR_PREL_PG_HI21	unk_32D58
   20f84: 91000000     	add	x0, x0, #0x0
		0000000000020f84:  R_AARCH64_ADD_ABS_LO12_NC	unk_32D58
   20f88: 14000003     	b	0x20f94 <tpd_set_play_game+0xc8>
   20f8c: 90000000     	adrp	x0, 0x20000 <tpd_id5_report_work+0x20>
		0000000000020f8c:  R_AARCH64_ADR_PREL_PG_HI21	unk_34BC7
   20f90: 91000000     	add	x0, x0, #0x0
		0000000000020f90:  R_AARCH64_ADD_ABS_LO12_NC	unk_34BC7
   20f94: 90000001     	adrp	x1, 0x20000 <tpd_id5_report_work+0x20>
		0000000000020f94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5000
   20f98: 91000021     	add	x1, x1, #0x0
		0000000000020f98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5000
   20f9c: 94000000     	bl	0x20f9c <tpd_set_play_game+0xd0>
		0000000000020f9c:  R_AARCH64_CALL26	_printk
   20fa0: 17ffffef     	b	0x20f5c <tpd_set_play_game+0x90>
