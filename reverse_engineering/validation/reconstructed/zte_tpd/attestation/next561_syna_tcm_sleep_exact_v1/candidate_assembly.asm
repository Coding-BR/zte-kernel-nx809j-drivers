
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000020258 <syna_tcm_sleep>:
   20258: d503233f     	paciasp
   2025c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   20260: f9000bf5     	str	x21, [sp, #0x10]
   20264: a9024ff4     	stp	x20, x19, [sp, #0x20]
   20268: 910003fd     	mov	x29, sp
   2026c: b40003e0     	cbz	x0, 0x202e8 <syna_tcm_sleep+0x90>
   20270: 2a0203f3     	mov	w19, w2
   20274: 350000a2     	cbnz	w2, 0x20288 <syna_tcm_sleep+0x30>
   20278: f9402408     	ldr	x8, [x0, #0x48]
   2027c: 39405108     	ldrb	w8, [x8, #0x14]
   20280: 36000568     	tbz	w8, #0x0, 0x2032c <syna_tcm_sleep+0xd4>
   20284: 2a1f03f3     	mov	w19, wzr
   20288: 7200003f     	tst	w1, #0x1
   2028c: 52800588     	mov	w8, #0x2c               // =44
   20290: f941cc09     	ldr	x9, [x0, #0x398]
   20294: 1a881514     	cinc	w20, w8, eq
   20298: aa1f03e2     	mov	x2, xzr
   2029c: 2a1f03e3     	mov	w3, wzr
   202a0: 2a1403e1     	mov	w1, w20
   202a4: aa1f03e4     	mov	x4, xzr
   202a8: 2a1303e5     	mov	w5, w19
   202ac: b85fc130     	ldur	w16, [x9, #-0x4]
   202b0: 728751d1     	movk	w17, #0x3a8e
   202b4: 72a48411     	movk	w17, #0x2420, lsl #16
   202b8: 6b11021f     	cmp	w16, w17
   202bc: 54000040     	b.eq	0x202c4 <syna_tcm_sleep+0x6c>
   202c0: d4304520     	brk	#0x8229
   202c4: d63f0120     	blr	x9
   202c8: 2a1f03e8     	mov	w8, wzr
   202cc: 37f801c0     	tbnz	w0, #0x1f, 0x20304 <syna_tcm_sleep+0xac>
   202d0: 2a0803e0     	mov	w0, w8
   202d4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   202d8: f9400bf5     	ldr	x21, [sp, #0x10]
   202dc: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   202e0: d50323bf     	autiasp
   202e4: d65f03c0     	ret
   202e8: 90000000     	adrp	x0, 0x20000 <syna_tcm_get_dynamic_config+0x98>
		00000000000202e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcda2
   202ec: 91000000     	add	x0, x0, #0x0
		00000000000202ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcda2
   202f0: 90000001     	adrp	x1, 0x20000 <syna_tcm_get_dynamic_config+0x98>
		00000000000202f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbcaa
   202f4: 91000021     	add	x1, x1, #0x0
		00000000000202f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbcaa
   202f8: 94000000     	bl	0x202f8 <syna_tcm_sleep+0xa0>
		00000000000202f8:  R_AARCH64_CALL26	_printk
   202fc: 12801e08     	mov	w8, #-0xf1              // =-241
   20300: 17fffff4     	b	0x202d0 <syna_tcm_sleep+0x78>
   20304: 90000008     	adrp	x8, 0x20000 <syna_tcm_get_dynamic_config+0x98>
		0000000000020304:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15fbc
   20308: 91000108     	add	x8, x8, #0x0
		0000000000020308:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15fbc
   2030c: 90000001     	adrp	x1, 0x20000 <syna_tcm_get_dynamic_config+0x98>
		000000000002030c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbcaa
   20310: 91000021     	add	x1, x1, #0x0
		0000000000020310:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbcaa
   20314: 12001e82     	and	w2, w20, #0xff
   20318: 2a0003f3     	mov	w19, w0
   2031c: aa0803e0     	mov	x0, x8
   20320: 94000000     	bl	0x20320 <syna_tcm_sleep+0xc8>
		0000000000020320:  R_AARCH64_CALL26	_printk
   20324: 2a1303e8     	mov	w8, w19
   20328: 17ffffea     	b	0x202d0 <syna_tcm_sleep+0x78>
   2032c: 90000008     	adrp	x8, 0x20000 <syna_tcm_get_dynamic_config+0x98>
		000000000002032c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15814
   20330: 91000108     	add	x8, x8, #0x0
		0000000000020330:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15814
   20334: 90000009     	adrp	x9, 0x20000 <syna_tcm_get_dynamic_config+0x98>
		0000000000020334:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbcaa
   20338: 91000129     	add	x9, x9, #0x0
		0000000000020338:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbcaa
   2033c: b9420c13     	ldr	w19, [x0, #0x20c]
   20340: aa0003f4     	mov	x20, x0
   20344: aa0803e0     	mov	x0, x8
   20348: 2a0103f5     	mov	w21, w1
   2034c: aa0903e1     	mov	x1, x9
   20350: 94000000     	bl	0x20350 <syna_tcm_sleep+0xf8>
		0000000000020350:  R_AARCH64_CALL26	_printk
   20354: 2a1503e1     	mov	w1, w21
   20358: aa1403e0     	mov	x0, x20
   2035c: 17ffffcb     	b	0x20288 <syna_tcm_sleep+0x30>
