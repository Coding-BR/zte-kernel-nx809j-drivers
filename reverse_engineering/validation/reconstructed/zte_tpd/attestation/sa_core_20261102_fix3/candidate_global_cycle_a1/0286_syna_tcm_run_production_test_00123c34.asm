
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000014094 <syna_tcm_run_production_test>:
   14094: d503233f     	paciasp
   14098: d10103ff     	sub	sp, sp, #0x40
   1409c: a9017bfd     	stp	x29, x30, [sp, #0x10]
   140a0: a90257f6     	stp	x22, x21, [sp, #0x20]
   140a4: a9034ff4     	stp	x20, x19, [sp, #0x30]
   140a8: 910043fd     	add	x29, sp, #0x10
   140ac: d5384108     	mrs	x8, SP_EL0
   140b0: f9438908     	ldr	x8, [x8, #0x710]
   140b4: f90007e8     	str	x8, [sp, #0x8]
   140b8: b40005a0     	cbz	x0, 0x1416c <syna_tcm_run_production_test+0xd8>
   140bc: aa0203f3     	mov	x19, x2
   140c0: 39402402     	ldrb	w2, [x0, #0x9]
   140c4: aa0003f4     	mov	x20, x0
   140c8: 7100045f     	cmp	w2, #0x1
   140cc: 540005e1     	b.ne	0x14188 <syna_tcm_run_production_test+0xf4>
   140d0: 2a0303f5     	mov	w21, w3
   140d4: 350000a3     	cbnz	w3, 0x140e8 <syna_tcm_run_production_test+0x54>
   140d8: f9402688     	ldr	x8, [x20, #0x48]
   140dc: 39405108     	ldrb	w8, [x8, #0x14]
   140e0: 36000888     	tbz	w8, #0x0, 0x141f0 <syna_tcm_run_production_test+0x15c>
   140e4: 2a1f03f5     	mov	w21, wzr
   140e8: f941ce88     	ldr	x8, [x20, #0x398]
   140ec: 390013e1     	strb	w1, [sp, #0x4]
   140f0: 910013e2     	add	x2, sp, #0x4
   140f4: aa1403e0     	mov	x0, x20
   140f8: 52800541     	mov	w1, #0x2a               // =42
   140fc: 52800023     	mov	w3, #0x1                // =1
   14100: aa1f03e4     	mov	x4, xzr
   14104: 2a1503e5     	mov	w5, w21
   14108: b85fc110     	ldur	w16, [x8, #-0x4]
   1410c: 728751d1     	movk	w17, #0x3a8e
   14110: 72a48411     	movk	w17, #0x2420, lsl #16
   14114: 6b11021f     	cmp	w16, w17
   14118: 54000040     	b.eq	0x14120 <syna_tcm_run_production_test+0x8c>
   1411c: d4304500     	brk	#0x8228
   14120: d63f0100     	blr	x8
   14124: 37f80400     	tbnz	w0, #0x1f, 0x141a4 <syna_tcm_run_production_test+0x110>
   14128: b40000d3     	cbz	x19, 0x14140 <syna_tcm_run_production_test+0xac>
   1412c: 91052281     	add	x1, x20, #0x148
   14130: aa1303e0     	mov	x0, x19
   14134: 94000000     	bl	0x14134 <syna_tcm_run_production_test+0xa0>
		0000000000014134:  R_AARCH64_CALL26	syna_tcm_buf_copy
   14138: 37f804a0     	tbnz	w0, #0x1f, 0x141cc <syna_tcm_run_production_test+0x138>
   1413c: 2a1f03e0     	mov	w0, wzr
   14140: d5384108     	mrs	x8, SP_EL0
   14144: f9438908     	ldr	x8, [x8, #0x710]
   14148: f94007e9     	ldr	x9, [sp, #0x8]
   1414c: eb09011f     	cmp	x8, x9
   14150: 54000641     	b.ne	0x14218 <syna_tcm_run_production_test+0x184>
   14154: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   14158: a94257f6     	ldp	x22, x21, [sp, #0x20]
   1415c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   14160: 910103ff     	add	sp, sp, #0x40
   14164: d50323bf     	autiasp
   14168: d65f03c0     	ret
   1416c: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0xdc>
		000000000001416c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c8
   14170: 91000000     	add	x0, x0, #0x0
		0000000000014170:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c8
   14174: 90000001     	adrp	x1, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014174:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x35e6
   14178: 91000021     	add	x1, x1, #0x0
		0000000000014178:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x35e6
   1417c: 94000000     	bl	0x1417c <syna_tcm_run_production_test+0xe8>
		000000000001417c:  R_AARCH64_CALL26	_printk
   14180: 12801e00     	mov	w0, #-0xf1              // =-241
   14184: 17ffffef     	b	0x14140 <syna_tcm_run_production_test+0xac>
   14188: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014188:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x28c6
   1418c: 91000000     	add	x0, x0, #0x0
		000000000001418c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x28c6
   14190: 90000001     	adrp	x1, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014190:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x35e6
   14194: 91000021     	add	x1, x1, #0x0
		0000000000014194:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x35e6
   14198: 94000000     	bl	0x14198 <syna_tcm_run_production_test+0x104>
		0000000000014198:  R_AARCH64_CALL26	_printk
   1419c: 12801e00     	mov	w0, #-0xf1              // =-241
   141a0: 17ffffe8     	b	0x14140 <syna_tcm_run_production_test+0xac>
   141a4: 394013e2     	ldrb	w2, [sp, #0x4]
   141a8: 90000008     	adrp	x8, 0x14000 <syna_tcm_reset+0xdc>
		00000000000141a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8f60
   141ac: 91000108     	add	x8, x8, #0x0
		00000000000141ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8f60
   141b0: 90000001     	adrp	x1, 0x14000 <syna_tcm_reset+0xdc>
		00000000000141b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x35e6
   141b4: 91000021     	add	x1, x1, #0x0
		00000000000141b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x35e6
   141b8: 2a0003f3     	mov	w19, w0
   141bc: aa0803e0     	mov	x0, x8
   141c0: 52800543     	mov	w3, #0x2a               // =42
   141c4: 94000000     	bl	0x141c4 <syna_tcm_run_production_test+0x130>
		00000000000141c4:  R_AARCH64_CALL26	_printk
   141c8: 14000008     	b	0x141e8 <syna_tcm_run_production_test+0x154>
   141cc: 90000008     	adrp	x8, 0x14000 <syna_tcm_reset+0xdc>
		00000000000141cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5fa4
   141d0: 91000108     	add	x8, x8, #0x0
		00000000000141d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5fa4
   141d4: 90000001     	adrp	x1, 0x14000 <syna_tcm_reset+0xdc>
		00000000000141d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x35e6
   141d8: 91000021     	add	x1, x1, #0x0
		00000000000141d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x35e6
   141dc: 2a0003f3     	mov	w19, w0
   141e0: aa0803e0     	mov	x0, x8
   141e4: 94000000     	bl	0x141e4 <syna_tcm_run_production_test+0x150>
		00000000000141e4:  R_AARCH64_CALL26	_printk
   141e8: 2a1303e0     	mov	w0, w19
   141ec: 17ffffd5     	b	0x14140 <syna_tcm_run_production_test+0xac>
   141f0: 90000008     	adrp	x8, 0x14000 <syna_tcm_reset+0xdc>
		00000000000141f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x35e6
   141f4: 91000108     	add	x8, x8, #0x0
		00000000000141f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x35e6
   141f8: b9420e95     	ldr	w21, [x20, #0x20c]
   141fc: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0xdc>
		00000000000141fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xab68
   14200: 91000000     	add	x0, x0, #0x0
		0000000000014200:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xab68
   14204: 2a0103f6     	mov	w22, w1
   14208: aa0803e1     	mov	x1, x8
   1420c: 94000000     	bl	0x1420c <syna_tcm_run_production_test+0x178>
		000000000001420c:  R_AARCH64_CALL26	_printk
   14210: 2a1603e1     	mov	w1, w22
   14214: 17ffffb5     	b	0x140e8 <syna_tcm_run_production_test+0x54>
   14218: 94000000     	bl	0x14218 <syna_tcm_run_production_test+0x184>
		0000000000014218:  R_AARCH64_CALL26	__stack_chk_fail
