
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000201d8 <syna_tcm_get_dynamic_config>:
   201d8: d503233f     	paciasp
   201dc: d10103ff     	sub	sp, sp, #0x40
   201e0: a9017bfd     	stp	x29, x30, [sp, #0x10]
   201e4: a90257f6     	stp	x22, x21, [sp, #0x20]
   201e8: a9034ff4     	stp	x20, x19, [sp, #0x30]
   201ec: 910043fd     	add	x29, sp, #0x10
   201f0: d5384108     	mrs	x8, SP_EL0
   201f4: f9438908     	ldr	x8, [x8, #0x710]
   201f8: f90007e8     	str	x8, [sp, #0x8]
   201fc: b40005e0     	cbz	x0, 0x202b8 <syna_tcm_get_dynamic_config+0xe0>
   20200: aa0203f3     	mov	x19, x2
   20204: 39402402     	ldrb	w2, [x0, #0x9]
   20208: aa0003f5     	mov	x21, x0
   2020c: 7100045f     	cmp	w2, #0x1
   20210: 54000621     	b.ne	0x202d4 <syna_tcm_get_dynamic_config+0xfc>
   20214: 2a0303f6     	mov	w22, w3
   20218: 2a0103f4     	mov	w20, w1
   2021c: 350000a3     	cbnz	w3, 0x20230 <syna_tcm_get_dynamic_config+0x58>
   20220: f94026a8     	ldr	x8, [x21, #0x48]
   20224: 39405108     	ldrb	w8, [x8, #0x14]
   20228: 360008c8     	tbz	w8, #0x0, 0x20340 <syna_tcm_get_dynamic_config+0x168>
   2022c: 2a1f03f6     	mov	w22, wzr
   20230: f941cea8     	ldr	x8, [x21, #0x398]
   20234: 910013e2     	add	x2, sp, #0x4
   20238: aa1503e0     	mov	x0, x21
   2023c: 52800461     	mov	w1, #0x23               // =35
   20240: 52800023     	mov	w3, #0x1                // =1
   20244: aa1f03e4     	mov	x4, xzr
   20248: 2a1603e5     	mov	w5, w22
   2024c: 390013f4     	strb	w20, [sp, #0x4]
   20250: b85fc110     	ldur	w16, [x8, #-0x4]
   20254: 728751d1     	movk	w17, #0x3a8e
   20258: 72a48411     	movk	w17, #0x2420, lsl #16
   2025c: 6b11021f     	cmp	w16, w17
   20260: 54000040     	b.eq	0x20268 <syna_tcm_get_dynamic_config+0x90>
   20264: d4304500     	brk	#0x8228
   20268: d63f0100     	blr	x8
   2026c: 37f80420     	tbnz	w0, #0x1f, 0x202f0 <syna_tcm_get_dynamic_config+0x118>
   20270: b94156a2     	ldr	w2, [x21, #0x154]
   20274: 7100045f     	cmp	w2, #0x1
   20278: 54000529     	b.ls	0x2031c <syna_tcm_get_dynamic_config+0x144>
   2027c: f940a6a8     	ldr	x8, [x21, #0x148]
   20280: 2a1f03e0     	mov	w0, wzr
   20284: 79400108     	ldrh	w8, [x8]
   20288: 79000268     	strh	w8, [x19]
   2028c: d5384108     	mrs	x8, SP_EL0
   20290: f9438908     	ldr	x8, [x8, #0x710]
   20294: f94007e9     	ldr	x9, [sp, #0x8]
   20298: eb09011f     	cmp	x8, x9
   2029c: 54000601     	b.ne	0x2035c <syna_tcm_get_dynamic_config+0x184>
   202a0: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   202a4: a94257f6     	ldp	x22, x21, [sp, #0x20]
   202a8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   202ac: 910103ff     	add	sp, sp, #0x40
   202b0: d50323bf     	autiasp
   202b4: d65f03c0     	ret
   202b8: 90000000     	adrp	x0, 0x20000 <syna_tcm_get_app_info+0xcc>
		00000000000202b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcda2
   202bc: 91000000     	add	x0, x0, #0x0
		00000000000202bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcda2
   202c0: 90000001     	adrp	x1, 0x20000 <syna_tcm_get_app_info+0xcc>
		00000000000202c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe28c
   202c4: 91000021     	add	x1, x1, #0x0
		00000000000202c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe28c
   202c8: 94000000     	bl	0x202c8 <syna_tcm_get_dynamic_config+0xf0>
		00000000000202c8:  R_AARCH64_CALL26	_printk
   202cc: 12801e00     	mov	w0, #-0xf1              // =-241
   202d0: 17ffffef     	b	0x2028c <syna_tcm_get_dynamic_config+0xb4>
   202d4: 90000000     	adrp	x0, 0x20000 <syna_tcm_get_app_info+0xcc>
		00000000000202d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd59a
   202d8: 91000000     	add	x0, x0, #0x0
		00000000000202d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd59a
   202dc: 90000001     	adrp	x1, 0x20000 <syna_tcm_get_app_info+0xcc>
		00000000000202dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe28c
   202e0: 91000021     	add	x1, x1, #0x0
		00000000000202e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe28c
   202e4: 94000000     	bl	0x202e4 <syna_tcm_get_dynamic_config+0x10c>
		00000000000202e4:  R_AARCH64_CALL26	_printk
   202e8: 12801e00     	mov	w0, #-0xf1              // =-241
   202ec: 17ffffe8     	b	0x2028c <syna_tcm_get_dynamic_config+0xb4>
   202f0: 90000008     	adrp	x8, 0x20000 <syna_tcm_get_app_info+0xcc>
		00000000000202f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb02e
   202f4: 91000108     	add	x8, x8, #0x0
		00000000000202f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb02e
   202f8: 90000001     	adrp	x1, 0x20000 <syna_tcm_get_app_info+0xcc>
		00000000000202f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe28c
   202fc: 91000021     	add	x1, x1, #0x0
		00000000000202fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe28c
   20300: 12001e83     	and	w3, w20, #0xff
   20304: 2a0003f3     	mov	w19, w0
   20308: aa0803e0     	mov	x0, x8
   2030c: 52800462     	mov	w2, #0x23               // =35
   20310: 94000000     	bl	0x20310 <syna_tcm_get_dynamic_config+0x138>
		0000000000020310:  R_AARCH64_CALL26	_printk
   20314: 2a1303e0     	mov	w0, w19
   20318: 17ffffdd     	b	0x2028c <syna_tcm_get_dynamic_config+0xb4>
   2031c: 90000008     	adrp	x8, 0x20000 <syna_tcm_get_app_info+0xcc>
		000000000002031c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10c4c
   20320: 91000108     	add	x8, x8, #0x0
		0000000000020320:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10c4c
   20324: 90000001     	adrp	x1, 0x20000 <syna_tcm_get_app_info+0xcc>
		0000000000020324:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe28c
   20328: 91000021     	add	x1, x1, #0x0
		0000000000020328:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe28c
   2032c: 2a0003f3     	mov	w19, w0
   20330: aa0803e0     	mov	x0, x8
   20334: 94000000     	bl	0x20334 <syna_tcm_get_dynamic_config+0x15c>
		0000000000020334:  R_AARCH64_CALL26	_printk
   20338: 2a1303e0     	mov	w0, w19
   2033c: 17ffffd4     	b	0x2028c <syna_tcm_get_dynamic_config+0xb4>
   20340: b9420eb6     	ldr	w22, [x21, #0x20c]
   20344: 90000000     	adrp	x0, 0x20000 <syna_tcm_get_app_info+0xcc>
		0000000000020344:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15814
   20348: 91000000     	add	x0, x0, #0x0
		0000000000020348:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15814
   2034c: 90000001     	adrp	x1, 0x20000 <syna_tcm_get_app_info+0xcc>
		000000000002034c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe28c
   20350: 91000021     	add	x1, x1, #0x0
		0000000000020350:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe28c
   20354: 94000000     	bl	0x20354 <syna_tcm_get_dynamic_config+0x17c>
		0000000000020354:  R_AARCH64_CALL26	_printk
   20358: 17ffffb6     	b	0x20230 <syna_tcm_get_dynamic_config+0x58>
   2035c: 94000000     	bl	0x2035c <syna_tcm_get_dynamic_config+0x184>
		000000000002035c:  R_AARCH64_CALL26	__stack_chk_fail
