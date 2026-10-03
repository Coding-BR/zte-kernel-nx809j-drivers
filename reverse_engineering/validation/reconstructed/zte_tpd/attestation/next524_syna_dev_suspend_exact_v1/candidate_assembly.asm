
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000020244 <syna_dev_suspend>:
   20244: d503233f     	paciasp
   20248: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   2024c: f9000bf5     	str	x21, [sp, #0x10]
   20250: a9024ff4     	stp	x20, x19, [sp, #0x20]
   20254: 910003fd     	mov	x29, sp
   20258: f9404c13     	ldr	x19, [x0, #0x98]
   2025c: b9457e68     	ldr	w8, [x19, #0x57c]
   20260: 7100051f     	cmp	w8, #0x1
   20264: 540000e0     	b.eq	0x20280 <syna_dev_suspend+0x3c>
   20268: 2a1f03e0     	mov	w0, wzr
   2026c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   20270: f9400bf5     	ldr	x21, [sp, #0x10]
   20274: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   20278: d50323bf     	autiasp
   2027c: d65f03c0     	ret
   20280: 90000014     	adrp	x20, 0x20000 <zte_touch_probe+0xe64>
		0000000000020280:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18852
   20284: 91000294     	add	x20, x20, #0x0
		0000000000020284:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18852
   20288: f9413a75     	ldr	x21, [x19, #0x270]
   2028c: 90000000     	adrp	x0, 0x20000 <zte_touch_probe+0xe64>
		000000000002028c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ccde
   20290: 91000000     	add	x0, x0, #0x0
		0000000000020290:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ccde
   20294: aa1403e1     	mov	x1, x20
   20298: 94000000     	bl	0x20298 <syna_dev_suspend+0x54>
		0000000000020298:  R_AARCH64_CALL26	_printk
   2029c: b945c668     	ldr	w8, [x19, #0x5c4]
   202a0: b945b269     	ldr	w9, [x19, #0x5b0]
   202a4: 90000000     	adrp	x0, 0x20000 <zte_touch_probe+0xe64>
		00000000000202a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15014
   202a8: 91000000     	add	x0, x0, #0x0
		00000000000202a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15014
   202ac: aa1403e1     	mov	x1, x20
   202b0: 2a080128     	orr	w8, w9, w8
   202b4: 7100011f     	cmp	w8, #0x0
   202b8: 1a9f07e2     	cset	w2, ne
   202bc: 39160662     	strb	w2, [x19, #0x581]
   202c0: 94000000     	bl	0x202c0 <syna_dev_suspend+0x7c>
		00000000000202c0:  R_AARCH64_CALL26	_printk
   202c4: b40003d3     	cbz	x19, 0x2033c <syna_dev_suspend+0xf8>
   202c8: f9413a68     	ldr	x8, [x19, #0x270]
   202cc: f9400260     	ldr	x0, [x19]
   202d0: b940b909     	ldr	w9, [x8, #0xb8]
   202d4: 340000a9     	cbz	w9, 0x202e8 <syna_dev_suspend+0xa4>
   202d8: 3942f108     	ldrb	w8, [x8, #0xbc]
   202dc: 36000068     	tbz	w8, #0x0, 0x202e8 <syna_dev_suspend+0xa4>
   202e0: 2a1f03e2     	mov	w2, wzr
   202e4: 14000002     	b	0x202ec <syna_dev_suspend+0xa8>
   202e8: b9420c02     	ldr	w2, [x0, #0x20c]
   202ec: 39560668     	ldrb	w8, [x19, #0x581]
   202f0: 7100051f     	cmp	w8, #0x1
   202f4: 54000101     	b.ne	0x20314 <syna_dev_suspend+0xd0>
   202f8: aa1303e0     	mov	x0, x19
   202fc: 52800021     	mov	w1, #0x1                // =1
   20300: 940003c4     	bl	0x21210 <get_follow_hand_level+0x4>
   20304: 36f802a0     	tbz	w0, #0x1f, 0x20358 <syna_dev_suspend+0x114>
   20308: 90000000     	adrp	x0, 0x20000 <zte_touch_probe+0xe64>
		0000000000020308:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x180f8
   2030c: 91000000     	add	x0, x0, #0x0
		000000000002030c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x180f8
   20310: 14000008     	b	0x20330 <syna_dev_suspend+0xec>
   20314: 39560268     	ldrb	w8, [x19, #0x580]
   20318: 37000248     	tbnz	w8, #0x0, 0x20360 <syna_dev_suspend+0x11c>
   2031c: 52800021     	mov	w1, #0x1                // =1
   20320: 94000000     	bl	0x20320 <syna_dev_suspend+0xdc>
		0000000000020320:  R_AARCH64_CALL26	syna_tcm_sleep
   20324: 36f801a0     	tbz	w0, #0x1f, 0x20358 <syna_dev_suspend+0x114>
   20328: 90000000     	adrp	x0, 0x20000 <zte_touch_probe+0xe64>
		0000000000020328:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1812e
   2032c: 91000000     	add	x0, x0, #0x0
		000000000002032c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1812e
   20330: 90000001     	adrp	x1, 0x20000 <zte_touch_probe+0xe64>
		0000000000020330:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1dfb6
   20334: 91000021     	add	x1, x1, #0x0
		0000000000020334:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1dfb6
   20338: 94000000     	bl	0x20338 <syna_dev_suspend+0xf4>
		0000000000020338:  R_AARCH64_CALL26	_printk
   2033c: 90000000     	adrp	x0, 0x20000 <zte_touch_probe+0xe64>
		000000000002033c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1dfd4
   20340: 91000000     	add	x0, x0, #0x0
		0000000000020340:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1dfd4
   20344: 90000001     	adrp	x1, 0x20000 <zte_touch_probe+0xe64>
		0000000000020344:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18852
   20348: 91000021     	add	x1, x1, #0x0
		0000000000020348:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18852
   2034c: 94000000     	bl	0x2034c <syna_dev_suspend+0x108>
		000000000002034c:  R_AARCH64_CALL26	_printk
   20350: 12800080     	mov	w0, #-0x5               // =-5
   20354: 17ffffc6     	b	0x2026c <syna_dev_suspend+0x28>
   20358: 52800c80     	mov	w0, #0x64               // =100
   2035c: 94000000     	bl	0x2035c <syna_dev_suspend+0x118>
		000000000002035c:  R_AARCH64_CALL26	msleep
   20360: 52800048     	mov	w8, #0x2                // =2
   20364: aa1303e0     	mov	x0, x19
   20368: b9057e68     	str	w8, [x19, #0x57c]
   2036c: 94000000     	bl	0x2036c <syna_dev_suspend+0x128>
		000000000002036c:  R_AARCH64_CALL26	syna_dev_free_input_events
   20370: f9400260     	ldr	x0, [x19]
   20374: 94000000     	bl	0x20374 <syna_dev_suspend+0x130>
		0000000000020374:  R_AARCH64_CALL26	syna_tcm_clear_command_processing
   20378: 39560668     	ldrb	w8, [x19, #0x581]
   2037c: 37000188     	tbnz	w8, #0x0, 0x203ac <syna_dev_suspend+0x168>
   20380: f94022a8     	ldr	x8, [x21, #0x40]
   20384: b4000148     	cbz	x8, 0x203ac <syna_dev_suspend+0x168>
   20388: 910022a0     	add	x0, x21, #0x8
   2038c: 2a1f03e1     	mov	w1, wzr
   20390: b85fc110     	ldur	w16, [x8, #-0x4]
   20394: 728c3631     	movk	w17, #0x61b1
   20398: 72a685d1     	movk	w17, #0x342e, lsl #16
   2039c: 6b11021f     	cmp	w16, w17
   203a0: 54000040     	b.eq	0x203a8 <syna_dev_suspend+0x164>
   203a4: d4304500     	brk	#0x8228
   203a8: d63f0100     	blr	x8
   203ac: b9457e62     	ldr	w2, [x19, #0x57c]
   203b0: 90000000     	adrp	x0, 0x20000 <zte_touch_probe+0xe64>
		00000000000203b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x169e6
   203b4: 91000000     	add	x0, x0, #0x0
		00000000000203b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x169e6
   203b8: 90000001     	adrp	x1, 0x20000 <zte_touch_probe+0xe64>
		00000000000203b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18852
   203bc: 91000021     	add	x1, x1, #0x0
		00000000000203bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18852
   203c0: b905e27f     	str	wzr, [x19, #0x5e0]
   203c4: 94000000     	bl	0x203c4 <syna_dev_suspend+0x180>
		00000000000203c4:  R_AARCH64_CALL26	_printk
   203c8: 17ffffa8     	b	0x20268 <syna_dev_suspend+0x24>
