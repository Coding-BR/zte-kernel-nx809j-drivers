
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000021940 <syna_dev_set_stability_level>:
   21940: d503233f     	paciasp
   21944: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   21948: f9000bf5     	str	x21, [sp, #0x10]
   2194c: a9024ff4     	stp	x20, x19, [sp, #0x20]
   21950: 910003fd     	mov	x29, sp
   21954: 2a0103f5     	mov	w21, w1
   21958: 90000001     	adrp	x1, 0x21000 <set_play_game+0x48>
		0000000000021958:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b88e
   2195c: 91000021     	add	x1, x1, #0x0
		000000000002195c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b88e
   21960: 2a0203f3     	mov	w19, w2
   21964: aa0003f4     	mov	x20, x0
   21968: 90000000     	adrp	x0, 0x21000 <set_play_game+0x48>
		0000000000021968:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b018
   2196c: 91000000     	add	x0, x0, #0x0
		000000000002196c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b018
   21970: aa0103e2     	mov	x2, x1
   21974: 94000000     	bl	0x21974 <syna_dev_set_stability_level+0x34>
		0000000000021974:  R_AARCH64_CALL26	_printk
   21978: b40002f4     	cbz	x20, 0x219d4 <syna_dev_set_stability_level+0x94>
   2197c: 710006bf     	cmp	w21, #0x1
   21980: 90000000     	adrp	x0, 0x21000 <set_play_game+0x48>
		0000000000021980:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c69a
   21984: 91000000     	add	x0, x0, #0x0
		0000000000021984:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c69a
   21988: 540002ad     	b.le	0x219dc <syna_dev_set_stability_level+0x9c>
   2198c: 71000abf     	cmp	w21, #0x2
   21990: 54000440     	b.eq	0x21a18 <syna_dev_set_stability_level+0xd8>
   21994: 71000ebf     	cmp	w21, #0x3
   21998: 540006e0     	b.eq	0x21a74 <syna_dev_set_stability_level+0x134>
   2199c: 710012bf     	cmp	w21, #0x4
   219a0: 54000801     	b.ne	0x21aa0 <syna_dev_set_stability_level+0x160>
   219a4: b9460288     	ldr	w8, [x20, #0x600]
   219a8: b945fe89     	ldr	w9, [x20, #0x5fc]
   219ac: 52801f21     	mov	w1, #0xf9               // =249
   219b0: f9400280     	ldr	x0, [x20]
   219b4: 2a1303e3     	mov	w3, w19
   219b8: 2a081128     	orr	w8, w9, w8, lsl #4
   219bc: 32160102     	orr	w2, w8, #0x400
   219c0: 94000000     	bl	0x219c0 <syna_dev_set_stability_level+0x80>
		00000000000219c0:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
   219c4: 37f80780     	tbnz	w0, #0x1f, 0x21ab4 <syna_dev_set_stability_level+0x174>
   219c8: 90000000     	adrp	x0, 0x21000 <set_play_game+0x48>
		00000000000219c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1578a
   219cc: 91000000     	add	x0, x0, #0x0
		00000000000219cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1578a
   219d0: 14000034     	b	0x21aa0 <syna_dev_set_stability_level+0x160>
   219d4: 128002a0     	mov	w0, #-0x16              // =-22
   219d8: 14000037     	b	0x21ab4 <syna_dev_set_stability_level+0x174>
   219dc: 34000375     	cbz	w21, 0x21a48 <syna_dev_set_stability_level+0x108>
   219e0: 710006bf     	cmp	w21, #0x1
   219e4: 540005e1     	b.ne	0x21aa0 <syna_dev_set_stability_level+0x160>
   219e8: b9460288     	ldr	w8, [x20, #0x600]
   219ec: b945fe89     	ldr	w9, [x20, #0x5fc]
   219f0: 52801f21     	mov	w1, #0xf9               // =249
   219f4: f9400280     	ldr	x0, [x20]
   219f8: 2a1303e3     	mov	w3, w19
   219fc: 2a081128     	orr	w8, w9, w8, lsl #4
   21a00: 32180102     	orr	w2, w8, #0x100
   21a04: 94000000     	bl	0x21a04 <syna_dev_set_stability_level+0xc4>
		0000000000021a04:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
   21a08: 37f80560     	tbnz	w0, #0x1f, 0x21ab4 <syna_dev_set_stability_level+0x174>
   21a0c: 90000000     	adrp	x0, 0x21000 <set_play_game+0x48>
		0000000000021a0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1743e
   21a10: 91000000     	add	x0, x0, #0x0
		0000000000021a10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1743e
   21a14: 14000023     	b	0x21aa0 <syna_dev_set_stability_level+0x160>
   21a18: b9460288     	ldr	w8, [x20, #0x600]
   21a1c: b945fe89     	ldr	w9, [x20, #0x5fc]
   21a20: 52801f21     	mov	w1, #0xf9               // =249
   21a24: f9400280     	ldr	x0, [x20]
   21a28: 2a1303e3     	mov	w3, w19
   21a2c: 2a081128     	orr	w8, w9, w8, lsl #4
   21a30: 32170102     	orr	w2, w8, #0x200
   21a34: 94000000     	bl	0x21a34 <syna_dev_set_stability_level+0xf4>
		0000000000021a34:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
   21a38: 37f803e0     	tbnz	w0, #0x1f, 0x21ab4 <syna_dev_set_stability_level+0x174>
   21a3c: 90000000     	adrp	x0, 0x21000 <set_play_game+0x48>
		0000000000021a3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a9c8
   21a40: 91000000     	add	x0, x0, #0x0
		0000000000021a40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a9c8
   21a44: 14000017     	b	0x21aa0 <syna_dev_set_stability_level+0x160>
   21a48: b9460288     	ldr	w8, [x20, #0x600]
   21a4c: b945fe89     	ldr	w9, [x20, #0x5fc]
   21a50: 52801f21     	mov	w1, #0xf9               // =249
   21a54: f9400280     	ldr	x0, [x20]
   21a58: 2a1303e3     	mov	w3, w19
   21a5c: 2a081122     	orr	w2, w9, w8, lsl #4
   21a60: 94000000     	bl	0x21a60 <syna_dev_set_stability_level+0x120>
		0000000000021a60:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
   21a64: 37f80280     	tbnz	w0, #0x1f, 0x21ab4 <syna_dev_set_stability_level+0x174>
   21a68: 90000000     	adrp	x0, 0x21000 <set_play_game+0x48>
		0000000000021a68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b8ac
   21a6c: 91000000     	add	x0, x0, #0x0
		0000000000021a6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b8ac
   21a70: 1400000c     	b	0x21aa0 <syna_dev_set_stability_level+0x160>
   21a74: b9460288     	ldr	w8, [x20, #0x600]
   21a78: b945fe89     	ldr	w9, [x20, #0x5fc]
   21a7c: 52801f21     	mov	w1, #0xf9               // =249
   21a80: f9400280     	ldr	x0, [x20]
   21a84: 2a1303e3     	mov	w3, w19
   21a88: 2a081128     	orr	w8, w9, w8, lsl #4
   21a8c: 32180502     	orr	w2, w8, #0x300
   21a90: 94000000     	bl	0x21a90 <syna_dev_set_stability_level+0x150>
		0000000000021a90:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
   21a94: 37f80100     	tbnz	w0, #0x1f, 0x21ab4 <syna_dev_set_stability_level+0x174>
   21a98: 90000000     	adrp	x0, 0x21000 <set_play_game+0x48>
		0000000000021a98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19f7a
   21a9c: 91000000     	add	x0, x0, #0x0
		0000000000021a9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19f7a
   21aa0: 90000001     	adrp	x1, 0x21000 <set_play_game+0x48>
		0000000000021aa0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b88e
   21aa4: 91000021     	add	x1, x1, #0x0
		0000000000021aa4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b88e
   21aa8: aa0103e2     	mov	x2, x1
   21aac: 94000000     	bl	0x21aac <syna_dev_set_stability_level+0x16c>
		0000000000021aac:  R_AARCH64_CALL26	_printk
   21ab0: 2a1f03e0     	mov	w0, wzr
   21ab4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   21ab8: f9400bf5     	ldr	x21, [sp, #0x10]
   21abc: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   21ac0: d50323bf     	autiasp
   21ac4: d65f03c0     	ret
