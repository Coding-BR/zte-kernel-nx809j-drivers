
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000217b4 <syna_dev_set_follow_hand_level>:
   217b4: d503233f     	paciasp
   217b8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   217bc: f9000bf5     	str	x21, [sp, #0x10]
   217c0: a9024ff4     	stp	x20, x19, [sp, #0x20]
   217c4: 910003fd     	mov	x29, sp
   217c8: 2a0103f5     	mov	w21, w1
   217cc: 90000001     	adrp	x1, 0x21000 <set_play_game+0x48>
		00000000000217cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aff8
   217d0: 91000021     	add	x1, x1, #0x0
		00000000000217d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aff8
   217d4: 2a0203f3     	mov	w19, w2
   217d8: aa0003f4     	mov	x20, x0
   217dc: 90000000     	adrp	x0, 0x21000 <set_play_game+0x48>
		00000000000217dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b018
   217e0: 91000000     	add	x0, x0, #0x0
		00000000000217e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b018
   217e4: aa0103e2     	mov	x2, x1
   217e8: 94000000     	bl	0x217e8 <syna_dev_set_follow_hand_level+0x34>
		00000000000217e8:  R_AARCH64_CALL26	_printk
   217ec: b40002f4     	cbz	x20, 0x21848 <syna_dev_set_follow_hand_level+0x94>
   217f0: 710006bf     	cmp	w21, #0x1
   217f4: 90000000     	adrp	x0, 0x21000 <set_play_game+0x48>
		00000000000217f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c69a
   217f8: 91000000     	add	x0, x0, #0x0
		00000000000217f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c69a
   217fc: 540002ad     	b.le	0x21850 <syna_dev_set_follow_hand_level+0x9c>
   21800: 71000abf     	cmp	w21, #0x2
   21804: 54000440     	b.eq	0x2188c <syna_dev_set_follow_hand_level+0xd8>
   21808: 71000ebf     	cmp	w21, #0x3
   2180c: 540006e0     	b.eq	0x218e8 <syna_dev_set_follow_hand_level+0x134>
   21810: 710012bf     	cmp	w21, #0x4
   21814: 54000801     	b.ne	0x21914 <syna_dev_set_follow_hand_level+0x160>
   21818: b9460688     	ldr	w8, [x20, #0x604]
   2181c: b945fe89     	ldr	w9, [x20, #0x5fc]
   21820: 52801f21     	mov	w1, #0xf9               // =249
   21824: f9400280     	ldr	x0, [x20]
   21828: 2a1303e3     	mov	w3, w19
   2182c: 2a082128     	orr	w8, w9, w8, lsl #8
   21830: 321a0102     	orr	w2, w8, #0x40
   21834: 94000000     	bl	0x21834 <syna_dev_set_follow_hand_level+0x80>
		0000000000021834:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
   21838: 37f80780     	tbnz	w0, #0x1f, 0x21928 <syna_dev_set_follow_hand_level+0x174>
   2183c: 90000000     	adrp	x0, 0x21000 <set_play_game+0x48>
		000000000002183c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bfa8
   21840: 91000000     	add	x0, x0, #0x0
		0000000000021840:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bfa8
   21844: 14000034     	b	0x21914 <syna_dev_set_follow_hand_level+0x160>
   21848: 128002a0     	mov	w0, #-0x16              // =-22
   2184c: 14000037     	b	0x21928 <syna_dev_set_follow_hand_level+0x174>
   21850: 34000375     	cbz	w21, 0x218bc <syna_dev_set_follow_hand_level+0x108>
   21854: 710006bf     	cmp	w21, #0x1
   21858: 540005e1     	b.ne	0x21914 <syna_dev_set_follow_hand_level+0x160>
   2185c: b9460688     	ldr	w8, [x20, #0x604]
   21860: b945fe89     	ldr	w9, [x20, #0x5fc]
   21864: 52801f21     	mov	w1, #0xf9               // =249
   21868: f9400280     	ldr	x0, [x20]
   2186c: 2a1303e3     	mov	w3, w19
   21870: 2a082128     	orr	w8, w9, w8, lsl #8
   21874: 321c0102     	orr	w2, w8, #0x10
   21878: 94000000     	bl	0x21878 <syna_dev_set_follow_hand_level+0xc4>
		0000000000021878:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
   2187c: 37f80560     	tbnz	w0, #0x1f, 0x21928 <syna_dev_set_follow_hand_level+0x174>
   21880: 90000000     	adrp	x0, 0x21000 <set_play_game+0x48>
		0000000000021880:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18d4e
   21884: 91000000     	add	x0, x0, #0x0
		0000000000021884:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18d4e
   21888: 14000023     	b	0x21914 <syna_dev_set_follow_hand_level+0x160>
   2188c: b9460688     	ldr	w8, [x20, #0x604]
   21890: b945fe89     	ldr	w9, [x20, #0x5fc]
   21894: 52801f21     	mov	w1, #0xf9               // =249
   21898: f9400280     	ldr	x0, [x20]
   2189c: 2a1303e3     	mov	w3, w19
   218a0: 2a082128     	orr	w8, w9, w8, lsl #8
   218a4: 321b0102     	orr	w2, w8, #0x20
   218a8: 94000000     	bl	0x218a8 <syna_dev_set_follow_hand_level+0xf4>
		00000000000218a8:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
   218ac: 37f803e0     	tbnz	w0, #0x1f, 0x21928 <syna_dev_set_follow_hand_level+0x174>
   218b0: 90000000     	adrp	x0, 0x21000 <set_play_game+0x48>
		00000000000218b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a998
   218b4: 91000000     	add	x0, x0, #0x0
		00000000000218b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a998
   218b8: 14000017     	b	0x21914 <syna_dev_set_follow_hand_level+0x160>
   218bc: b9460688     	ldr	w8, [x20, #0x604]
   218c0: b945fe89     	ldr	w9, [x20, #0x5fc]
   218c4: 52801f21     	mov	w1, #0xf9               // =249
   218c8: f9400280     	ldr	x0, [x20]
   218cc: 2a1303e3     	mov	w3, w19
   218d0: 2a082122     	orr	w2, w9, w8, lsl #8
   218d4: 94000000     	bl	0x218d4 <syna_dev_set_follow_hand_level+0x120>
		00000000000218d4:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
   218d8: 37f80280     	tbnz	w0, #0x1f, 0x21928 <syna_dev_set_follow_hand_level+0x174>
   218dc: 90000000     	adrp	x0, 0x21000 <set_play_game+0x48>
		00000000000218dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b85e
   218e0: 91000000     	add	x0, x0, #0x0
		00000000000218e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b85e
   218e4: 1400000c     	b	0x21914 <syna_dev_set_follow_hand_level+0x160>
   218e8: b9460688     	ldr	w8, [x20, #0x604]
   218ec: b945fe89     	ldr	w9, [x20, #0x5fc]
   218f0: 52801f21     	mov	w1, #0xf9               // =249
   218f4: f9400280     	ldr	x0, [x20]
   218f8: 2a1303e3     	mov	w3, w19
   218fc: 2a082128     	orr	w8, w9, w8, lsl #8
   21900: 321c0502     	orr	w2, w8, #0x30
   21904: 94000000     	bl	0x21904 <syna_dev_set_follow_hand_level+0x150>
		0000000000021904:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
   21908: 37f80100     	tbnz	w0, #0x1f, 0x21928 <syna_dev_set_follow_hand_level+0x174>
   2190c: 90000000     	adrp	x0, 0x21000 <set_play_game+0x48>
		000000000002190c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19f4a
   21910: 91000000     	add	x0, x0, #0x0
		0000000000021910:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19f4a
   21914: 90000001     	adrp	x1, 0x21000 <set_play_game+0x48>
		0000000000021914:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aff8
   21918: 91000021     	add	x1, x1, #0x0
		0000000000021918:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aff8
   2191c: aa0103e2     	mov	x2, x1
   21920: 94000000     	bl	0x21920 <syna_dev_set_follow_hand_level+0x16c>
		0000000000021920:  R_AARCH64_CALL26	_printk
   21924: 2a1f03e0     	mov	w0, wzr
   21928: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   2192c: f9400bf5     	ldr	x21, [sp, #0x10]
   21930: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   21934: d50323bf     	autiasp
   21938: d65f03c0     	ret
