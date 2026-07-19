
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000016184 <syna_tcm_set_dynamic_config>:
   16184: d503233f     	paciasp
   16188: d10103ff     	sub	sp, sp, #0x40
   1618c: a9017bfd     	stp	x29, x30, [sp, #0x10]
   16190: a90257f6     	stp	x22, x21, [sp, #0x20]
   16194: a9034ff4     	stp	x20, x19, [sp, #0x30]
   16198: 910043fd     	add	x29, sp, #0x10
   1619c: d5384108     	mrs	x8, SP_EL0
   161a0: f9438908     	ldr	x8, [x8, #0x710]
   161a4: f90007e8     	str	x8, [sp, #0x8]
   161a8: b4000540     	cbz	x0, 0x16250 <syna_tcm_set_dynamic_config+0xcc>
   161ac: 2a0203f4     	mov	w20, w2
   161b0: 39402402     	ldrb	w2, [x0, #0x9]
   161b4: 7100045f     	cmp	w2, #0x1
   161b8: 540005a1     	b.ne	0x1626c <syna_tcm_set_dynamic_config+0xe8>
   161bc: 2a0303f5     	mov	w21, w3
   161c0: 2a0103f3     	mov	w19, w1
   161c4: 350000a3     	cbnz	w3, 0x161d8 <syna_tcm_set_dynamic_config+0x54>
   161c8: f9402408     	ldr	x8, [x0, #0x48]
   161cc: 39405108     	ldrb	w8, [x8, #0x14]
   161d0: 36000748     	tbz	w8, #0x0, 0x162b8 <syna_tcm_set_dynamic_config+0x134>
   161d4: 2a1f03f5     	mov	w21, wzr
   161d8: 53087e88     	lsr	w8, w20, #8
   161dc: f941cc09     	ldr	x9, [x0, #0x398]
   161e0: 910013e2     	add	x2, sp, #0x4
   161e4: 52800481     	mov	w1, #0x24               // =36
   161e8: 52800063     	mov	w3, #0x3                // =3
   161ec: aa1f03e4     	mov	x4, xzr
   161f0: 2a1503e5     	mov	w5, w21
   161f4: 390013f3     	strb	w19, [sp, #0x4]
   161f8: 390017f4     	strb	w20, [sp, #0x5]
   161fc: 39001be8     	strb	w8, [sp, #0x6]
   16200: b85fc130     	ldur	w16, [x9, #-0x4]
   16204: 728751d1     	movk	w17, #0x3a8e
   16208: 72a48411     	movk	w17, #0x2420, lsl #16
   1620c: 6b11021f     	cmp	w16, w17
   16210: 54000040     	b.eq	0x16218 <syna_tcm_set_dynamic_config+0x94>
   16214: d4304520     	brk	#0x8229
   16218: d63f0120     	blr	x9
   1621c: 37f80360     	tbnz	w0, #0x1f, 0x16288 <syna_tcm_set_dynamic_config+0x104>
   16220: 2a1f03e0     	mov	w0, wzr
   16224: d5384108     	mrs	x8, SP_EL0
   16228: f9438908     	ldr	x8, [x8, #0x710]
   1622c: f94007e9     	ldr	x9, [sp, #0x8]
   16230: eb09011f     	cmp	x8, x9
   16234: 54000561     	b.ne	0x162e0 <syna_tcm_set_dynamic_config+0x15c>
   16238: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   1623c: a94257f6     	ldp	x22, x21, [sp, #0x20]
   16240: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   16244: 910103ff     	add	sp, sp, #0x40
   16248: d50323bf     	autiasp
   1624c: d65f03c0     	ret
   16250: 90000000     	adrp	x0, 0x16000 <syna_tcm_send_command+0x190>
		0000000000016250:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd85
   16254: 91000000     	add	x0, x0, #0x0
		0000000000016254:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd85
   16258: 90000001     	adrp	x1, 0x16000 <syna_tcm_send_command+0x190>
		0000000000016258:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f6
   1625c: 91000021     	add	x1, x1, #0x0
		000000000001625c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f6
   16260: 94000000     	bl	0x16260 <syna_tcm_set_dynamic_config+0xdc>
		0000000000016260:  R_AARCH64_CALL26	_printk
   16264: 12801e00     	mov	w0, #-0xf1              // =-241
   16268: 17ffffef     	b	0x16224 <syna_tcm_set_dynamic_config+0xa0>
   1626c: 90000000     	adrp	x0, 0x16000 <syna_tcm_send_command+0x190>
		000000000001626c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1168
   16270: 91000000     	add	x0, x0, #0x0
		0000000000016270:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1168
   16274: 90000001     	adrp	x1, 0x16000 <syna_tcm_send_command+0x190>
		0000000000016274:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f6
   16278: 91000021     	add	x1, x1, #0x0
		0000000000016278:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f6
   1627c: 94000000     	bl	0x1627c <syna_tcm_set_dynamic_config+0xf8>
		000000000001627c:  R_AARCH64_CALL26	_printk
   16280: 12801e00     	mov	w0, #-0xf1              // =-241
   16284: 17ffffe8     	b	0x16224 <syna_tcm_set_dynamic_config+0xa0>
   16288: 90000008     	adrp	x8, 0x16000 <syna_tcm_send_command+0x190>
		0000000000016288:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4a7f
   1628c: 91000108     	add	x8, x8, #0x0
		000000000001628c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4a7f
   16290: 90000001     	adrp	x1, 0x16000 <syna_tcm_send_command+0x190>
		0000000000016290:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f6
   16294: 91000021     	add	x1, x1, #0x0
		0000000000016294:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f6
   16298: 12003e83     	and	w3, w20, #0xffff
   1629c: 12001e64     	and	w4, w19, #0xff
   162a0: 2a0003f3     	mov	w19, w0
   162a4: aa0803e0     	mov	x0, x8
   162a8: 52800482     	mov	w2, #0x24               // =36
   162ac: 94000000     	bl	0x162ac <syna_tcm_set_dynamic_config+0x128>
		00000000000162ac:  R_AARCH64_CALL26	_printk
   162b0: 2a1303e0     	mov	w0, w19
   162b4: 17ffffdc     	b	0x16224 <syna_tcm_set_dynamic_config+0xa0>
   162b8: 90000008     	adrp	x8, 0x16000 <syna_tcm_send_command+0x190>
		00000000000162b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x42ec
   162bc: 91000108     	add	x8, x8, #0x0
		00000000000162bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x42ec
   162c0: b9420c15     	ldr	w21, [x0, #0x20c]
   162c4: 90000001     	adrp	x1, 0x16000 <syna_tcm_send_command+0x190>
		00000000000162c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f6
   162c8: 91000021     	add	x1, x1, #0x0
		00000000000162c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f6
   162cc: aa0003f6     	mov	x22, x0
   162d0: aa0803e0     	mov	x0, x8
   162d4: 94000000     	bl	0x162d4 <syna_tcm_set_dynamic_config+0x150>
		00000000000162d4:  R_AARCH64_CALL26	_printk
   162d8: aa1603e0     	mov	x0, x22
   162dc: 17ffffbf     	b	0x161d8 <syna_tcm_set_dynamic_config+0x54>
   162e0: 94000000     	bl	0x162e0 <syna_tcm_set_dynamic_config+0x15c>
		00000000000162e0:  R_AARCH64_CALL26	__stack_chk_fail
