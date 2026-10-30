
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000014038 <syna_tcm_run_production_test>:
   14038: d503233f     	paciasp
   1403c: d10103ff     	sub	sp, sp, #0x40
   14040: a9017bfd     	stp	x29, x30, [sp, #0x10]
   14044: a90257f6     	stp	x22, x21, [sp, #0x20]
   14048: a9034ff4     	stp	x20, x19, [sp, #0x30]
   1404c: 910043fd     	add	x29, sp, #0x10
   14050: d5384108     	mrs	x8, SP_EL0
   14054: f9438908     	ldr	x8, [x8, #0x710]
   14058: f90007e8     	str	x8, [sp, #0x8]
   1405c: b40005a0     	cbz	x0, 0x14110 <syna_tcm_run_production_test+0xd8>
   14060: aa0203f3     	mov	x19, x2
   14064: 39402402     	ldrb	w2, [x0, #0x9]
   14068: aa0003f4     	mov	x20, x0
   1406c: 7100045f     	cmp	w2, #0x1
   14070: 540005e1     	b.ne	0x1412c <syna_tcm_run_production_test+0xf4>
   14074: 2a0303f5     	mov	w21, w3
   14078: 350000a3     	cbnz	w3, 0x1408c <syna_tcm_run_production_test+0x54>
   1407c: f9402688     	ldr	x8, [x20, #0x48]
   14080: 39405108     	ldrb	w8, [x8, #0x14]
   14084: 36000888     	tbz	w8, #0x0, 0x14194 <syna_tcm_run_production_test+0x15c>
   14088: 2a1f03f5     	mov	w21, wzr
   1408c: f941ce88     	ldr	x8, [x20, #0x398]
   14090: 390013e1     	strb	w1, [sp, #0x4]
   14094: 910013e2     	add	x2, sp, #0x4
   14098: aa1403e0     	mov	x0, x20
   1409c: 52800541     	mov	w1, #0x2a               // =42
   140a0: 52800023     	mov	w3, #0x1                // =1
   140a4: aa1f03e4     	mov	x4, xzr
   140a8: 2a1503e5     	mov	w5, w21
   140ac: b85fc110     	ldur	w16, [x8, #-0x4]
   140b0: 728751d1     	movk	w17, #0x3a8e
   140b4: 72a48411     	movk	w17, #0x2420, lsl #16
   140b8: 6b11021f     	cmp	w16, w17
   140bc: 54000040     	b.eq	0x140c4 <syna_tcm_run_production_test+0x8c>
   140c0: d4304500     	brk	#0x8228
   140c4: d63f0100     	blr	x8
   140c8: 37f80400     	tbnz	w0, #0x1f, 0x14148 <syna_tcm_run_production_test+0x110>
   140cc: b40000d3     	cbz	x19, 0x140e4 <syna_tcm_run_production_test+0xac>
   140d0: 91052281     	add	x1, x20, #0x148
   140d4: aa1303e0     	mov	x0, x19
   140d8: 94000000     	bl	0x140d8 <syna_tcm_run_production_test+0xa0>
		00000000000140d8:  R_AARCH64_CALL26	syna_tcm_buf_copy
   140dc: 37f804a0     	tbnz	w0, #0x1f, 0x14170 <syna_tcm_run_production_test+0x138>
   140e0: 2a1f03e0     	mov	w0, wzr
   140e4: d5384108     	mrs	x8, SP_EL0
   140e8: f9438908     	ldr	x8, [x8, #0x710]
   140ec: f94007e9     	ldr	x9, [sp, #0x8]
   140f0: eb09011f     	cmp	x8, x9
   140f4: 54000641     	b.ne	0x141bc <syna_tcm_run_production_test+0x184>
   140f8: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   140fc: a94257f6     	ldp	x22, x21, [sp, #0x20]
   14100: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   14104: 910103ff     	add	sp, sp, #0x40
   14108: d50323bf     	autiasp
   1410c: d65f03c0     	ret
   14110: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0x138>
		0000000000014110:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c8
   14114: 91000000     	add	x0, x0, #0x0
		0000000000014114:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c8
   14118: 90000001     	adrp	x1, 0x14000 <syna_tcm_reset+0x138>
		0000000000014118:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x35e6
   1411c: 91000021     	add	x1, x1, #0x0
		000000000001411c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x35e6
   14120: 94000000     	bl	0x14120 <syna_tcm_run_production_test+0xe8>
		0000000000014120:  R_AARCH64_CALL26	_printk
   14124: 12801e00     	mov	w0, #-0xf1              // =-241
   14128: 17ffffef     	b	0x140e4 <syna_tcm_run_production_test+0xac>
   1412c: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0x138>
		000000000001412c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x28c6
   14130: 91000000     	add	x0, x0, #0x0
		0000000000014130:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x28c6
   14134: 90000001     	adrp	x1, 0x14000 <syna_tcm_reset+0x138>
		0000000000014134:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x35e6
   14138: 91000021     	add	x1, x1, #0x0
		0000000000014138:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x35e6
   1413c: 94000000     	bl	0x1413c <syna_tcm_run_production_test+0x104>
		000000000001413c:  R_AARCH64_CALL26	_printk
   14140: 12801e00     	mov	w0, #-0xf1              // =-241
   14144: 17ffffe8     	b	0x140e4 <syna_tcm_run_production_test+0xac>
   14148: 394013e2     	ldrb	w2, [sp, #0x4]
   1414c: 90000008     	adrp	x8, 0x14000 <syna_tcm_reset+0x138>
		000000000001414c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8f60
   14150: 91000108     	add	x8, x8, #0x0
		0000000000014150:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8f60
   14154: 90000001     	adrp	x1, 0x14000 <syna_tcm_reset+0x138>
		0000000000014154:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x35e6
   14158: 91000021     	add	x1, x1, #0x0
		0000000000014158:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x35e6
   1415c: 2a0003f3     	mov	w19, w0
   14160: aa0803e0     	mov	x0, x8
   14164: 52800543     	mov	w3, #0x2a               // =42
   14168: 94000000     	bl	0x14168 <syna_tcm_run_production_test+0x130>
		0000000000014168:  R_AARCH64_CALL26	_printk
   1416c: 14000008     	b	0x1418c <syna_tcm_run_production_test+0x154>
   14170: 90000008     	adrp	x8, 0x14000 <syna_tcm_reset+0x138>
		0000000000014170:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5fa4
   14174: 91000108     	add	x8, x8, #0x0
		0000000000014174:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5fa4
   14178: 90000001     	adrp	x1, 0x14000 <syna_tcm_reset+0x138>
		0000000000014178:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x35e6
   1417c: 91000021     	add	x1, x1, #0x0
		000000000001417c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x35e6
   14180: 2a0003f3     	mov	w19, w0
   14184: aa0803e0     	mov	x0, x8
   14188: 94000000     	bl	0x14188 <syna_tcm_run_production_test+0x150>
		0000000000014188:  R_AARCH64_CALL26	_printk
   1418c: 2a1303e0     	mov	w0, w19
   14190: 17ffffd5     	b	0x140e4 <syna_tcm_run_production_test+0xac>
   14194: 90000008     	adrp	x8, 0x14000 <syna_tcm_reset+0x138>
		0000000000014194:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x35e6
   14198: 91000108     	add	x8, x8, #0x0
		0000000000014198:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x35e6
   1419c: b9420e95     	ldr	w21, [x20, #0x20c]
   141a0: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0x138>
		00000000000141a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xab68
   141a4: 91000000     	add	x0, x0, #0x0
		00000000000141a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xab68
   141a8: 2a0103f6     	mov	w22, w1
   141ac: aa0803e1     	mov	x1, x8
   141b0: 94000000     	bl	0x141b0 <syna_tcm_run_production_test+0x178>
		00000000000141b0:  R_AARCH64_CALL26	_printk
   141b4: 2a1603e1     	mov	w1, w22
   141b8: 17ffffb5     	b	0x1408c <syna_tcm_run_production_test+0x54>
   141bc: 94000000     	bl	0x141bc <syna_tcm_run_production_test+0x184>
		00000000000141bc:  R_AARCH64_CALL26	__stack_chk_fail
