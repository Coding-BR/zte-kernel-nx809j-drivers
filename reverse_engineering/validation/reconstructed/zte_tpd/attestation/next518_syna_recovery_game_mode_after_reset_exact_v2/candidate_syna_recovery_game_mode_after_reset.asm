
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000021bd4 <syna_recovery_game_mode_after_reset>:
   21bd4: b5000060     	cbnz	x0, 0x21be0 <syna_recovery_game_mode_after_reset+0xc>
   21bd8: 128002a0     	mov	w0, #-0x16              // =-22
   21bdc: d65f03c0     	ret
   21be0: d503233f     	paciasp
   21be4: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   21be8: f9000bf5     	str	x21, [sp, #0x10]
   21bec: a9024ff4     	stp	x20, x19, [sp, #0x20]
   21bf0: 910003fd     	mov	x29, sp
   21bf4: f9413809     	ldr	x9, [x0, #0x270]
   21bf8: f9400008     	ldr	x8, [x0]
   21bfc: b102a13f     	cmn	x9, #0xa8
   21c00: 540000e0     	b.eq	0x21c1c <syna_recovery_game_mode_after_reset+0x48>
   21c04: b940b92a     	ldr	w10, [x9, #0xb8]
   21c08: 340000aa     	cbz	w10, 0x21c1c <syna_recovery_game_mode_after_reset+0x48>
   21c0c: 3942f129     	ldrb	w9, [x9, #0xbc]
   21c10: 36000069     	tbz	w9, #0x0, 0x21c1c <syna_recovery_game_mode_after_reset+0x48>
   21c14: 2a1f03f3     	mov	w19, wzr
   21c18: 14000002     	b	0x21c20 <syna_recovery_game_mode_after_reset+0x4c>
   21c1c: b9420d13     	ldr	w19, [x8, #0x20c]
   21c20: b945dc08     	ldr	w8, [x0, #0x5dc]
   21c24: 35000148     	cbnz	w8, 0x21c4c <syna_recovery_game_mode_after_reset+0x78>
   21c28: b945f801     	ldr	w1, [x0, #0x5f8]
   21c2c: 2a1303e2     	mov	w2, w19
   21c30: 94000000     	bl	0x21c30 <syna_recovery_game_mode_after_reset+0x5c>
		0000000000021c30:  R_AARCH64_CALL26	syna_dev_set_tp_report_rate
   21c34: 90000013     	adrp	x19, 0x21000 <set_play_game+0x48>
		0000000000021c34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aa2e
   21c38: 91000273     	add	x19, x19, #0x0
		0000000000021c38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aa2e
   21c3c: 36f80840     	tbz	w0, #0x1f, 0x21d44 <syna_recovery_game_mode_after_reset+0x170>
   21c40: 90000000     	adrp	x0, 0x21000 <set_play_game+0x48>
		0000000000021c40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1820e
   21c44: 91000000     	add	x0, x0, #0x0
		0000000000021c44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1820e
   21c48: 1400003c     	b	0x21d38 <syna_recovery_game_mode_after_reset+0x164>
   21c4c: 90000008     	adrp	x8, 0x21000 <set_play_game+0x48>
		0000000000021c4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1636e
   21c50: 91000108     	add	x8, x8, #0x0
		0000000000021c50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1636e
   21c54: 90000001     	adrp	x1, 0x21000 <set_play_game+0x48>
		0000000000021c54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12a96
   21c58: 91000021     	add	x1, x1, #0x0
		0000000000021c58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12a96
   21c5c: aa0003f5     	mov	x21, x0
   21c60: aa0803e0     	mov	x0, x8
   21c64: 52800022     	mov	w2, #0x1                // =1
   21c68: 94000000     	bl	0x21c68 <syna_recovery_game_mode_after_reset+0x94>
		0000000000021c68:  R_AARCH64_CALL26	_printk
   21c6c: f94002a0     	ldr	x0, [x21]
   21c70: 52801aa1     	mov	w1, #0xd5               // =213
   21c74: 52800062     	mov	w2, #0x3                // =3
   21c78: 2a1303e3     	mov	w3, w19
   21c7c: aa1503f4     	mov	x20, x21
   21c80: 94000000     	bl	0x21c80 <syna_recovery_game_mode_after_reset+0xac>
		0000000000021c80:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
   21c84: 36f800c0     	tbz	w0, #0x1f, 0x21c9c <syna_recovery_game_mode_after_reset+0xc8>
   21c88: 90000000     	adrp	x0, 0x21000 <set_play_game+0x48>
		0000000000021c88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x149d0
   21c8c: 91000000     	add	x0, x0, #0x0
		0000000000021c8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x149d0
   21c90: 90000001     	adrp	x1, 0x21000 <set_play_game+0x48>
		0000000000021c90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b032
   21c94: 91000021     	add	x1, x1, #0x0
		0000000000021c94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b032
   21c98: 94000000     	bl	0x21c98 <syna_recovery_game_mode_after_reset+0xc4>
		0000000000021c98:  R_AARCH64_CALL26	_printk
   21c9c: b945fa81     	ldr	w1, [x20, #0x5f8]
   21ca0: aa1403e0     	mov	x0, x20
   21ca4: 2a1303e2     	mov	w2, w19
   21ca8: 94000000     	bl	0x21ca8 <syna_recovery_game_mode_after_reset+0xd4>
		0000000000021ca8:  R_AARCH64_CALL26	syna_dev_set_tp_report_rate
   21cac: 36f800c0     	tbz	w0, #0x1f, 0x21cc4 <syna_recovery_game_mode_after_reset+0xf0>
   21cb0: 90000000     	adrp	x0, 0x21000 <set_play_game+0x48>
		0000000000021cb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1820e
   21cb4: 91000000     	add	x0, x0, #0x0
		0000000000021cb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1820e
   21cb8: 90000001     	adrp	x1, 0x21000 <set_play_game+0x48>
		0000000000021cb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b032
   21cbc: 91000021     	add	x1, x1, #0x0
		0000000000021cbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b032
   21cc0: 94000000     	bl	0x21cc0 <syna_recovery_game_mode_after_reset+0xec>
		0000000000021cc0:  R_AARCH64_CALL26	_printk
   21cc4: b945fe81     	ldr	w1, [x20, #0x5fc]
   21cc8: aa1403e0     	mov	x0, x20
   21ccc: 2a1303e2     	mov	w2, w19
   21cd0: 94000000     	bl	0x21cd0 <syna_recovery_game_mode_after_reset+0xfc>
		0000000000021cd0:  R_AARCH64_CALL26	syna_dev_set_sensibility_level
   21cd4: 36f800c0     	tbz	w0, #0x1f, 0x21cec <syna_recovery_game_mode_after_reset+0x118>
   21cd8: 90000000     	adrp	x0, 0x21000 <set_play_game+0x48>
		0000000000021cd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x149d0
   21cdc: 91000000     	add	x0, x0, #0x0
		0000000000021cdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x149d0
   21ce0: 90000001     	adrp	x1, 0x21000 <set_play_game+0x48>
		0000000000021ce0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b032
   21ce4: 91000021     	add	x1, x1, #0x0
		0000000000021ce4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b032
   21ce8: 94000000     	bl	0x21ce8 <syna_recovery_game_mode_after_reset+0x114>
		0000000000021ce8:  R_AARCH64_CALL26	_printk
   21cec: b9460281     	ldr	w1, [x20, #0x600]
   21cf0: aa1403e0     	mov	x0, x20
   21cf4: 2a1303e2     	mov	w2, w19
   21cf8: 94000000     	bl	0x21cf8 <syna_recovery_game_mode_after_reset+0x124>
		0000000000021cf8:  R_AARCH64_CALL26	syna_dev_set_follow_hand_level
   21cfc: 36f800c0     	tbz	w0, #0x1f, 0x21d14 <syna_recovery_game_mode_after_reset+0x140>
   21d00: 90000000     	adrp	x0, 0x21000 <set_play_game+0x48>
		0000000000021d00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x149d0
   21d04: 91000000     	add	x0, x0, #0x0
		0000000000021d04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x149d0
   21d08: 90000001     	adrp	x1, 0x21000 <set_play_game+0x48>
		0000000000021d08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b032
   21d0c: 91000021     	add	x1, x1, #0x0
		0000000000021d0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b032
   21d10: 94000000     	bl	0x21d10 <syna_recovery_game_mode_after_reset+0x13c>
		0000000000021d10:  R_AARCH64_CALL26	_printk
   21d14: b9460681     	ldr	w1, [x20, #0x604]
   21d18: aa1403e0     	mov	x0, x20
   21d1c: 2a1303e2     	mov	w2, w19
   21d20: 94000000     	bl	0x21d20 <syna_recovery_game_mode_after_reset+0x14c>
		0000000000021d20:  R_AARCH64_CALL26	syna_dev_set_stability_level
   21d24: 90000013     	adrp	x19, 0x21000 <set_play_game+0x48>
		0000000000021d24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c6c0
   21d28: 91000273     	add	x19, x19, #0x0
		0000000000021d28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c6c0
   21d2c: 36f800c0     	tbz	w0, #0x1f, 0x21d44 <syna_recovery_game_mode_after_reset+0x170>
   21d30: 90000000     	adrp	x0, 0x21000 <set_play_game+0x48>
		0000000000021d30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x149d0
   21d34: 91000000     	add	x0, x0, #0x0
		0000000000021d34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x149d0
   21d38: 90000001     	adrp	x1, 0x21000 <set_play_game+0x48>
		0000000000021d38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b032
   21d3c: 91000021     	add	x1, x1, #0x0
		0000000000021d3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b032
   21d40: 94000000     	bl	0x21d40 <syna_recovery_game_mode_after_reset+0x16c>
		0000000000021d40:  R_AARCH64_CALL26	_printk
   21d44: 90000001     	adrp	x1, 0x21000 <set_play_game+0x48>
		0000000000021d44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b032
   21d48: 91000021     	add	x1, x1, #0x0
		0000000000021d48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b032
   21d4c: aa1303e0     	mov	x0, x19
   21d50: 94000000     	bl	0x21d50 <syna_recovery_game_mode_after_reset+0x17c>
		0000000000021d50:  R_AARCH64_CALL26	_printk
   21d54: 2a1f03e0     	mov	w0, wzr
   21d58: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   21d5c: f9400bf5     	ldr	x21, [sp, #0x10]
   21d60: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   21d64: d50323bf     	autiasp
   21d68: d65f03c0     	ret
