
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000020200 <syna_tcm_set_dynamic_config>:
   20200: d503233f     	paciasp
   20204: d10103ff     	sub	sp, sp, #0x40
   20208: a9017bfd     	stp	x29, x30, [sp, #0x10]
   2020c: a90257f6     	stp	x22, x21, [sp, #0x20]
   20210: a9034ff4     	stp	x20, x19, [sp, #0x30]
   20214: 910043fd     	add	x29, sp, #0x10
   20218: d5384108     	mrs	x8, SP_EL0
   2021c: f9438908     	ldr	x8, [x8, #0x710]
   20220: f90007e8     	str	x8, [sp, #0x8]
   20224: b4000540     	cbz	x0, 0x202cc <syna_tcm_set_dynamic_config+0xcc>
   20228: 2a0203f4     	mov	w20, w2
   2022c: 39402402     	ldrb	w2, [x0, #0x9]
   20230: 7100045f     	cmp	w2, #0x1
   20234: 540005a1     	b.ne	0x202e8 <syna_tcm_set_dynamic_config+0xe8>
   20238: 2a0303f5     	mov	w21, w3
   2023c: 2a0103f3     	mov	w19, w1
   20240: 350000a3     	cbnz	w3, 0x20254 <syna_tcm_set_dynamic_config+0x54>
   20244: f9402408     	ldr	x8, [x0, #0x48]
   20248: 39405108     	ldrb	w8, [x8, #0x14]
   2024c: 36000748     	tbz	w8, #0x0, 0x20334 <syna_tcm_set_dynamic_config+0x134>
   20250: 2a1f03f5     	mov	w21, wzr
   20254: 53087e88     	lsr	w8, w20, #8
   20258: f941cc09     	ldr	x9, [x0, #0x398]
   2025c: 910013e2     	add	x2, sp, #0x4
   20260: 52800481     	mov	w1, #0x24               // =36
   20264: 52800063     	mov	w3, #0x3                // =3
   20268: aa1f03e4     	mov	x4, xzr
   2026c: 2a1503e5     	mov	w5, w21
   20270: 390013f3     	strb	w19, [sp, #0x4]
   20274: 390017f4     	strb	w20, [sp, #0x5]
   20278: 39001be8     	strb	w8, [sp, #0x6]
   2027c: b85fc130     	ldur	w16, [x9, #-0x4]
   20280: 728751d1     	movk	w17, #0x3a8e
   20284: 72a48411     	movk	w17, #0x2420, lsl #16
   20288: 6b11021f     	cmp	w16, w17
   2028c: 54000040     	b.eq	0x20294 <syna_tcm_set_dynamic_config+0x94>
   20290: d4304520     	brk	#0x8229
   20294: d63f0120     	blr	x9
   20298: 37f80360     	tbnz	w0, #0x1f, 0x20304 <syna_tcm_set_dynamic_config+0x104>
   2029c: 2a1f03e0     	mov	w0, wzr
   202a0: d5384108     	mrs	x8, SP_EL0
   202a4: f9438908     	ldr	x8, [x8, #0x710]
   202a8: f94007e9     	ldr	x9, [sp, #0x8]
   202ac: eb09011f     	cmp	x8, x9
   202b0: 54000561     	b.ne	0x2035c <syna_tcm_set_dynamic_config+0x15c>
   202b4: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   202b8: a94257f6     	ldp	x22, x21, [sp, #0x20]
   202bc: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   202c0: 910103ff     	add	sp, sp, #0x40
   202c4: d50323bf     	autiasp
   202c8: d65f03c0     	ret
   202cc: 90000000     	adrp	x0, 0x20000 <syna_tcm_get_app_info+0x230>
		00000000000202cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcda2
   202d0: 91000000     	add	x0, x0, #0x0
		00000000000202d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcda2
   202d4: 90000001     	adrp	x1, 0x20000 <syna_tcm_get_app_info+0x230>
		00000000000202d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb074
   202d8: 91000021     	add	x1, x1, #0x0
		00000000000202d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb074
   202dc: 94000000     	bl	0x202dc <syna_tcm_set_dynamic_config+0xdc>
		00000000000202dc:  R_AARCH64_CALL26	_printk
   202e0: 12801e00     	mov	w0, #-0xf1              // =-241
   202e4: 17ffffef     	b	0x202a0 <syna_tcm_set_dynamic_config+0xa0>
   202e8: 90000000     	adrp	x0, 0x20000 <syna_tcm_get_app_info+0x230>
		00000000000202e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd59a
   202ec: 91000000     	add	x0, x0, #0x0
		00000000000202ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd59a
   202f0: 90000001     	adrp	x1, 0x20000 <syna_tcm_get_app_info+0x230>
		00000000000202f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb074
   202f4: 91000021     	add	x1, x1, #0x0
		00000000000202f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb074
   202f8: 94000000     	bl	0x202f8 <syna_tcm_set_dynamic_config+0xf8>
		00000000000202f8:  R_AARCH64_CALL26	_printk
   202fc: 12801e00     	mov	w0, #-0xf1              // =-241
   20300: 17ffffe8     	b	0x202a0 <syna_tcm_set_dynamic_config+0xa0>
   20304: 90000008     	adrp	x8, 0x20000 <syna_tcm_get_app_info+0x230>
		0000000000020304:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16c48
   20308: 91000108     	add	x8, x8, #0x0
		0000000000020308:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16c48
   2030c: 90000001     	adrp	x1, 0x20000 <syna_tcm_get_app_info+0x230>
		000000000002030c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb074
   20310: 91000021     	add	x1, x1, #0x0
		0000000000020310:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb074
   20314: 12003e83     	and	w3, w20, #0xffff
   20318: 12001e64     	and	w4, w19, #0xff
   2031c: 2a0003f3     	mov	w19, w0
   20320: aa0803e0     	mov	x0, x8
   20324: 52800482     	mov	w2, #0x24               // =36
   20328: 94000000     	bl	0x20328 <syna_tcm_set_dynamic_config+0x128>
		0000000000020328:  R_AARCH64_CALL26	_printk
   2032c: 2a1303e0     	mov	w0, w19
   20330: 17ffffdc     	b	0x202a0 <syna_tcm_set_dynamic_config+0xa0>
   20334: 90000008     	adrp	x8, 0x20000 <syna_tcm_get_app_info+0x230>
		0000000000020334:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15814
   20338: 91000108     	add	x8, x8, #0x0
		0000000000020338:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15814
   2033c: b9420c15     	ldr	w21, [x0, #0x20c]
   20340: 90000001     	adrp	x1, 0x20000 <syna_tcm_get_app_info+0x230>
		0000000000020340:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb074
   20344: 91000021     	add	x1, x1, #0x0
		0000000000020344:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb074
   20348: aa0003f6     	mov	x22, x0
   2034c: aa0803e0     	mov	x0, x8
   20350: 94000000     	bl	0x20350 <syna_tcm_set_dynamic_config+0x150>
		0000000000020350:  R_AARCH64_CALL26	_printk
   20354: aa1603e0     	mov	x0, x22
   20358: 17ffffbf     	b	0x20254 <syna_tcm_set_dynamic_config+0x54>
   2035c: 94000000     	bl	0x2035c <syna_tcm_set_dynamic_config+0x15c>
		000000000002035c:  R_AARCH64_CALL26	__stack_chk_fail
