
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000016184 <syna_dev_set_follow_hand_level>:
   16184: d503233f     	paciasp
   16188: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   1618c: f9000bf5     	str	x21, [sp, #0x10]
   16190: a9024ff4     	stp	x20, x19, [sp, #0x20]
   16194: 910003fd     	mov	x29, sp
   16198: 2a0103f5     	mov	w21, w1
   1619c: 90000001     	adrp	x1, 0x16000 <tp_sensibility_level_read+0x7c>
		000000000001619c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x98e0
   161a0: 91000021     	add	x1, x1, #0x0
		00000000000161a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x98e0
   161a4: 2a0203f3     	mov	w19, w2
   161a8: aa0003f4     	mov	x20, x0
   161ac: 90000000     	adrp	x0, 0x16000 <tp_sensibility_level_read+0x7c>
		00000000000161ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x98c6
   161b0: 91000000     	add	x0, x0, #0x0
		00000000000161b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x98c6
   161b4: aa0103e2     	mov	x2, x1
   161b8: 94000000     	bl	0x161b8 <syna_dev_set_follow_hand_level+0x34>
		00000000000161b8:  R_AARCH64_CALL26	_printk
   161bc: b40002f4     	cbz	x20, 0x16218 <syna_dev_set_follow_hand_level+0x94>
   161c0: 710006bf     	cmp	w21, #0x1
   161c4: 90000000     	adrp	x0, 0x16000 <tp_sensibility_level_read+0x7c>
		00000000000161c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaf54
   161c8: 91000000     	add	x0, x0, #0x0
		00000000000161c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaf54
   161cc: 540002ad     	b.le	0x16220 <syna_dev_set_follow_hand_level+0x9c>
   161d0: 71000abf     	cmp	w21, #0x2
   161d4: 54000440     	b.eq	0x1625c <syna_dev_set_follow_hand_level+0xd8>
   161d8: 71000ebf     	cmp	w21, #0x3
   161dc: 540006e0     	b.eq	0x162b8 <syna_dev_set_follow_hand_level+0x134>
   161e0: 710012bf     	cmp	w21, #0x4
   161e4: 54000801     	b.ne	0x162e4 <syna_dev_set_follow_hand_level+0x160>
   161e8: b9460688     	ldr	w8, [x20, #0x604]
   161ec: b945fe89     	ldr	w9, [x20, #0x5fc]
   161f0: 52801f21     	mov	w1, #0xf9               // =249
   161f4: f9400280     	ldr	x0, [x20]
   161f8: 2a1303e3     	mov	w3, w19
   161fc: 2a082128     	orr	w8, w9, w8, lsl #8
   16200: 321a0102     	orr	w2, w8, #0x40
   16204: 94000000     	bl	0x16204 <syna_dev_set_follow_hand_level+0x80>
		0000000000016204:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
   16208: 37f80780     	tbnz	w0, #0x1f, 0x162f8 <syna_dev_set_follow_hand_level+0x174>
   1620c: 90000000     	adrp	x0, 0x16000 <tp_sensibility_level_read+0x7c>
		000000000001620c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa87c
   16210: 91000000     	add	x0, x0, #0x0
		0000000000016210:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa87c
   16214: 14000034     	b	0x162e4 <syna_dev_set_follow_hand_level+0x160>
   16218: 128002a0     	mov	w0, #-0x16              // =-22
   1621c: 14000037     	b	0x162f8 <syna_dev_set_follow_hand_level+0x174>
   16220: 34000375     	cbz	w21, 0x1628c <syna_dev_set_follow_hand_level+0x108>
   16224: 710006bf     	cmp	w21, #0x1
   16228: 540005e1     	b.ne	0x162e4 <syna_dev_set_follow_hand_level+0x160>
   1622c: b9460688     	ldr	w8, [x20, #0x604]
   16230: b945fe89     	ldr	w9, [x20, #0x5fc]
   16234: 52801f21     	mov	w1, #0xf9               // =249
   16238: f9400280     	ldr	x0, [x20]
   1623c: 2a1303e3     	mov	w3, w19
   16240: 2a082128     	orr	w8, w9, w8, lsl #8
   16244: 321c0102     	orr	w2, w8, #0x10
   16248: 94000000     	bl	0x16248 <syna_dev_set_follow_hand_level+0xc4>
		0000000000016248:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
   1624c: 37f80560     	tbnz	w0, #0x1f, 0x162f8 <syna_dev_set_follow_hand_level+0x174>
   16250: 90000000     	adrp	x0, 0x16000 <tp_sensibility_level_read+0x7c>
		0000000000016250:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x76de
   16254: 91000000     	add	x0, x0, #0x0
		0000000000016254:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x76de
   16258: 14000023     	b	0x162e4 <syna_dev_set_follow_hand_level+0x160>
   1625c: b9460688     	ldr	w8, [x20, #0x604]
   16260: b945fe89     	ldr	w9, [x20, #0x5fc]
   16264: 52801f21     	mov	w1, #0xf9               // =249
   16268: f9400280     	ldr	x0, [x20]
   1626c: 2a1303e3     	mov	w3, w19
   16270: 2a082128     	orr	w8, w9, w8, lsl #8
   16274: 321b0102     	orr	w2, w8, #0x20
   16278: 94000000     	bl	0x16278 <syna_dev_set_follow_hand_level+0xf4>
		0000000000016278:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
   1627c: 37f803e0     	tbnz	w0, #0x1f, 0x162f8 <syna_dev_set_follow_hand_level+0x174>
   16280: 90000000     	adrp	x0, 0x16000 <tp_sensibility_level_read+0x7c>
		0000000000016280:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x91e4
   16284: 91000000     	add	x0, x0, #0x0
		0000000000016284:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x91e4
   16288: 14000017     	b	0x162e4 <syna_dev_set_follow_hand_level+0x160>
   1628c: b9460688     	ldr	w8, [x20, #0x604]
   16290: b945fe89     	ldr	w9, [x20, #0x5fc]
   16294: 52801f21     	mov	w1, #0xf9               // =249
   16298: f9400280     	ldr	x0, [x20]
   1629c: 2a1303e3     	mov	w3, w19
   162a0: 2a082122     	orr	w2, w9, w8, lsl #8
   162a4: 94000000     	bl	0x162a4 <syna_dev_set_follow_hand_level+0x120>
		00000000000162a4:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
   162a8: 37f80280     	tbnz	w0, #0x1f, 0x162f8 <syna_dev_set_follow_hand_level+0x174>
   162ac: 90000000     	adrp	x0, 0x16000 <tp_sensibility_level_read+0x7c>
		00000000000162ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa140
   162b0: 91000000     	add	x0, x0, #0x0
		00000000000162b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa140
   162b4: 1400000c     	b	0x162e4 <syna_dev_set_follow_hand_level+0x160>
   162b8: b9460688     	ldr	w8, [x20, #0x604]
   162bc: b945fe89     	ldr	w9, [x20, #0x5fc]
   162c0: 52801f21     	mov	w1, #0xf9               // =249
   162c4: f9400280     	ldr	x0, [x20]
   162c8: 2a1303e3     	mov	w3, w19
   162cc: 2a082128     	orr	w8, w9, w8, lsl #8
   162d0: 321c0502     	orr	w2, w8, #0x30
   162d4: 94000000     	bl	0x162d4 <syna_dev_set_follow_hand_level+0x150>
		00000000000162d4:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
   162d8: 37f80100     	tbnz	w0, #0x1f, 0x162f8 <syna_dev_set_follow_hand_level+0x174>
   162dc: 90000000     	adrp	x0, 0x16000 <tp_sensibility_level_read+0x7c>
		00000000000162dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x87e0
   162e0: 91000000     	add	x0, x0, #0x0
		00000000000162e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x87e0
   162e4: 90000001     	adrp	x1, 0x16000 <tp_sensibility_level_read+0x7c>
		00000000000162e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x98e0
   162e8: 91000021     	add	x1, x1, #0x0
		00000000000162e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x98e0
   162ec: aa0103e2     	mov	x2, x1
   162f0: 94000000     	bl	0x162f0 <syna_dev_set_follow_hand_level+0x16c>
		00000000000162f0:  R_AARCH64_CALL26	_printk
   162f4: 2a1f03e0     	mov	w0, wzr
   162f8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   162fc: f9400bf5     	ldr	x21, [sp, #0x10]
   16300: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   16304: d50323bf     	autiasp
   16308: d65f03c0     	ret
