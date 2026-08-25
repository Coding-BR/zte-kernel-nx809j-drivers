
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001fd9c <syna_dev_resume>:
   1fd9c: d503233f     	paciasp
   1fda0: d10103ff     	sub	sp, sp, #0x40
   1fda4: a9017bfd     	stp	x29, x30, [sp, #0x10]
   1fda8: a90257f6     	stp	x22, x21, [sp, #0x20]
   1fdac: a9034ff4     	stp	x20, x19, [sp, #0x30]
   1fdb0: 910043fd     	add	x29, sp, #0x10
   1fdb4: d5384108     	mrs	x8, SP_EL0
   1fdb8: f9438908     	ldr	x8, [x8, #0x710]
   1fdbc: f90007e8     	str	x8, [sp, #0x8]
   1fdc0: f9404c13     	ldr	x19, [x0, #0x98]
   1fdc4: b4000233     	cbz	x19, 0x1fe08 <syna_dev_resume+0x6c>
   1fdc8: f9413a75     	ldr	x21, [x19, #0x270]
   1fdcc: f9400268     	ldr	x8, [x19]
   1fdd0: b102a2bf     	cmn	x21, #0xa8
   1fdd4: 540000e0     	b.eq	0x1fdf0 <syna_dev_resume+0x54>
   1fdd8: b940baa9     	ldr	w9, [x21, #0xb8]
   1fddc: 340000a9     	cbz	w9, 0x1fdf0 <syna_dev_resume+0x54>
   1fde0: 3942f2a9     	ldrb	w9, [x21, #0xbc]
   1fde4: 36000069     	tbz	w9, #0x0, 0x1fdf0 <syna_dev_resume+0x54>
   1fde8: 2a1f03f4     	mov	w20, wzr
   1fdec: 14000002     	b	0x1fdf4 <syna_dev_resume+0x58>
   1fdf0: b9420d14     	ldr	w20, [x8, #0x20c]
   1fdf4: b9457e68     	ldr	w8, [x19, #0x57c]
   1fdf8: 7100051f     	cmp	w8, #0x1
   1fdfc: 540001e1     	b.ne	0x1fe38 <syna_dev_resume+0x9c>
   1fe00: 2a1f03e0     	mov	w0, wzr
   1fe04: 14000002     	b	0x1fe0c <syna_dev_resume+0x70>
   1fe08: 128002a0     	mov	w0, #-0x16              // =-22
   1fe0c: d5384108     	mrs	x8, SP_EL0
   1fe10: f9438908     	ldr	x8, [x8, #0x710]
   1fe14: f94007e9     	ldr	x9, [sp, #0x8]
   1fe18: eb09011f     	cmp	x8, x9
   1fe1c: 54002c41     	b.ne	0x203a4 <syna_dev_resume+0x608>
   1fe20: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   1fe24: a94257f6     	ldp	x22, x21, [sp, #0x20]
   1fe28: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   1fe2c: 910103ff     	add	sp, sp, #0x40
   1fe30: d50323bf     	autiasp
   1fe34: d65f03c0     	ret
   1fe38: 90000016     	adrp	x22, 0x1f000 <zte_touch_probe+0x498>
		000000000001fe38:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0xa0
   1fe3c: 390013ff     	strb	wzr, [sp, #0x4]
   1fe40: 394002c8     	ldrb	w8, [x22]
		000000000001fe40:  R_AARCH64_LDST8_ABS_LO12_NC	ufp_tp_ops+0xa0
   1fe44: 7100051f     	cmp	w8, #0x1
   1fe48: 54000361     	b.ne	0x1feb4 <syna_dev_resume+0x118>
   1fe4c: b945d668     	ldr	w8, [x19, #0x5d4]
   1fe50: 35000288     	cbnz	w8, 0x1fea0 <syna_dev_resume+0x104>
   1fe54: 90000000     	adrp	x0, 0x1f000 <zte_touch_probe+0x498>
		000000000001fe54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1812a
   1fe58: 91000000     	add	x0, x0, #0x0
		000000000001fe58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1812a
   1fe5c: 90000001     	adrp	x1, 0x1f000 <zte_touch_probe+0x498>
		000000000001fe5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1dfda
   1fe60: 91000021     	add	x1, x1, #0x0
		000000000001fe60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1dfda
   1fe64: 94000000     	bl	0x1fe64 <syna_dev_resume+0xc8>
		000000000001fe64:  R_AARCH64_CALL26	_printk
   1fe68: 90000000     	adrp	x0, 0x1f000 <zte_touch_probe+0x498>
		000000000001fe68:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0x80
   1fe6c: 91000000     	add	x0, x0, #0x0
		000000000001fe6c:  R_AARCH64_ADD_ABS_LO12_NC	ufp_tp_ops+0x80
   1fe70: 52804e21     	mov	w1, #0x271              // =625
   1fe74: 94000000     	bl	0x1fe74 <syna_dev_resume+0xd8>
		000000000001fe74:  R_AARCH64_CALL26	wait_for_completion_timeout
   1fe78: b50000c0     	cbnz	x0, 0x1fe90 <syna_dev_resume+0xf4>
   1fe7c: 90000000     	adrp	x0, 0x1f000 <zte_touch_probe+0x498>
		000000000001fe7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1afb0
   1fe80: 91000000     	add	x0, x0, #0x0
		000000000001fe80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1afb0
   1fe84: 90000001     	adrp	x1, 0x1f000 <zte_touch_probe+0x498>
		000000000001fe84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1dfda
   1fe88: 91000021     	add	x1, x1, #0x0
		000000000001fe88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1dfda
   1fe8c: 94000000     	bl	0x1fe8c <syna_dev_resume+0xf0>
		000000000001fe8c:  R_AARCH64_CALL26	_printk
   1fe90: 2a1f03e0     	mov	w0, wzr
   1fe94: 390002df     	strb	wzr, [x22]
		000000000001fe94:  R_AARCH64_LDST8_ABS_LO12_NC	ufp_tp_ops+0xa0
   1fe98: 94000000     	bl	0x1fe98 <syna_dev_resume+0xfc>
		000000000001fe98:  R_AARCH64_CALL26	report_ufp_uevent
   1fe9c: 14000006     	b	0x1feb4 <syna_dev_resume+0x118>
   1fea0: 90000000     	adrp	x0, 0x1f000 <zte_touch_probe+0x498>
		000000000001fea0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13666
   1fea4: 91000000     	add	x0, x0, #0x0
		000000000001fea4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13666
   1fea8: 90000001     	adrp	x1, 0x1f000 <zte_touch_probe+0x498>
		000000000001fea8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1dfda
   1feac: 91000021     	add	x1, x1, #0x0
		000000000001feac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1dfda
   1feb0: 94000000     	bl	0x1feb0 <syna_dev_resume+0x114>
		000000000001feb0:  R_AARCH64_CALL26	_printk
   1feb4: 90000000     	adrp	x0, 0x1f000 <zte_touch_probe+0x498>
		000000000001feb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11f1a
   1feb8: 91000000     	add	x0, x0, #0x0
		000000000001feb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11f1a
   1febc: 90000001     	adrp	x1, 0x1f000 <zte_touch_probe+0x498>
		000000000001febc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1dfda
   1fec0: 91000021     	add	x1, x1, #0x0
		000000000001fec0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1dfda
   1fec4: 94000000     	bl	0x1fec4 <syna_dev_resume+0x128>
		000000000001fec4:  R_AARCH64_CALL26	_printk
   1fec8: 39560668     	ldrb	w8, [x19, #0x581]
   1fecc: 52800029     	mov	w9, #0x1                // =1
   1fed0: b9057e69     	str	w9, [x19, #0x57c]
   1fed4: 90000009     	adrp	x9, 0x1f000 <zte_touch_probe+0x498>
		000000000001fed4:  R_AARCH64_ADR_PREL_PG_HI21	large_area_uevent_count
   1fed8: 7100051f     	cmp	w8, #0x1
   1fedc: b900013f     	str	wzr, [x9]
		000000000001fedc:  R_AARCH64_LDST32_ABS_LO12_NC	large_area_uevent_count
   1fee0: 54000181     	b.ne	0x1ff10 <syna_dev_resume+0x174>
   1fee4: f94022a8     	ldr	x8, [x21, #0x40]
   1fee8: b4000148     	cbz	x8, 0x1ff10 <syna_dev_resume+0x174>
   1feec: 910022a0     	add	x0, x21, #0x8
   1fef0: 2a1f03e1     	mov	w1, wzr
   1fef4: b85fc110     	ldur	w16, [x8, #-0x4]
   1fef8: 728c3631     	movk	w17, #0x61b1
   1fefc: 72a685d1     	movk	w17, #0x342e, lsl #16
   1ff00: 6b11021f     	cmp	w16, w17
   1ff04: 54000040     	b.eq	0x1ff0c <syna_dev_resume+0x170>
   1ff08: d4304500     	brk	#0x8228
   1ff0c: d63f0100     	blr	x8
   1ff10: b945d668     	ldr	w8, [x19, #0x5d4]
   1ff14: 340000e8     	cbz	w8, 0x1ff30 <syna_dev_resume+0x194>
   1ff18: 90000008     	adrp	x8, 0x1f000 <zte_touch_probe+0x498>
		000000000001ff18:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0xa0
   1ff1c: 91000108     	add	x8, x8, #0x0
		000000000001ff1c:  R_AARCH64_ADD_ABS_LO12_NC	ufp_tp_ops+0xa0
   1ff20: 39400109     	ldrb	w9, [x8]
   1ff24: 39400508     	ldrb	w8, [x8, #0x1]
   1ff28: 2a090108     	orr	w8, w8, w9
   1ff2c: 35000428     	cbnz	w8, 0x1ffb0 <syna_dev_resume+0x214>
   1ff30: 90000000     	adrp	x0, 0x1f000 <zte_touch_probe+0x498>
		000000000001ff30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14400
   1ff34: 91000000     	add	x0, x0, #0x0
		000000000001ff34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14400
   1ff38: 90000001     	adrp	x1, 0x1f000 <zte_touch_probe+0x498>
		000000000001ff38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1dfda
   1ff3c: 91000021     	add	x1, x1, #0x0
		000000000001ff3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1dfda
   1ff40: 94000000     	bl	0x1ff40 <syna_dev_resume+0x1a4>
		000000000001ff40:  R_AARCH64_CALL26	_printk
   1ff44: f940c6a8     	ldr	x8, [x21, #0x188]
   1ff48: b5000108     	cbnz	x8, 0x1ff68 <syna_dev_resume+0x1cc>
   1ff4c: f9400260     	ldr	x0, [x19]
   1ff50: 2a1403e1     	mov	w1, w20
   1ff54: 94000000     	bl	0x1ff54 <syna_dev_resume+0x1b8>
		000000000001ff54:  R_AARCH64_CALL26	syna_tcm_reset
   1ff58: 36f80480     	tbz	w0, #0x1f, 0x1ffe8 <syna_dev_resume+0x24c>
   1ff5c: 90000000     	adrp	x0, 0x1f000 <zte_touch_probe+0x498>
		000000000001ff5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b610
   1ff60: 91000000     	add	x0, x0, #0x0
		000000000001ff60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b610
   1ff64: 1400002b     	b	0x20010 <syna_dev_resume+0x274>
   1ff68: aa1503e0     	mov	x0, x21
   1ff6c: b85fc110     	ldur	w16, [x8, #-0x4]
   1ff70: 72974371     	movk	w17, #0xba1b
   1ff74: 72a56791     	movk	w17, #0x2b3c, lsl #16
   1ff78: 6b11021f     	cmp	w16, w17
   1ff7c: 54000040     	b.eq	0x1ff84 <syna_dev_resume+0x1e8>
   1ff80: d4304500     	brk	#0x8228
   1ff84: d63f0100     	blr	x8
   1ff88: 3942f2a8     	ldrb	w8, [x21, #0xbc]
   1ff8c: 370002e8     	tbnz	w8, #0x0, 0x1ffe8 <syna_dev_resume+0x24c>
   1ff90: f9400260     	ldr	x0, [x19]
   1ff94: 910013e1     	add	x1, sp, #0x4
   1ff98: aa1f03e2     	mov	x2, xzr
   1ff9c: 94000000     	bl	0x1ff9c <syna_dev_resume+0x200>
		000000000001ff9c:  R_AARCH64_CALL26	syna_tcm_get_event_data
   1ffa0: 36f801e0     	tbz	w0, #0x1f, 0x1ffdc <syna_dev_resume+0x240>
   1ffa4: 90000000     	adrp	x0, 0x1f000 <zte_touch_probe+0x498>
		000000000001ffa4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x130da
   1ffa8: 91000000     	add	x0, x0, #0x0
		000000000001ffa8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x130da
   1ffac: 14000019     	b	0x20010 <syna_dev_resume+0x274>
   1ffb0: 90000000     	adrp	x0, 0x1f000 <zte_touch_probe+0x498>
		000000000001ffb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x169ea
   1ffb4: 91000000     	add	x0, x0, #0x0
		000000000001ffb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x169ea
   1ffb8: 90000001     	adrp	x1, 0x1f000 <zte_touch_probe+0x498>
		000000000001ffb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1dfda
   1ffbc: 91000021     	add	x1, x1, #0x0
		000000000001ffbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1dfda
   1ffc0: 94000000     	bl	0x1ffc0 <syna_dev_resume+0x224>
		000000000001ffc0:  R_AARCH64_CALL26	_printk
   1ffc4: aa1303e0     	mov	x0, x19
   1ffc8: 940004bf     	bl	0x212c4 <get_follow_hand_level+0xdc>
   1ffcc: 36f800e0     	tbz	w0, #0x1f, 0x1ffe8 <syna_dev_resume+0x24c>
   1ffd0: 90000000     	adrp	x0, 0x1f000 <zte_touch_probe+0x498>
		000000000001ffd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ccdc
   1ffd4: 91000000     	add	x0, x0, #0x0
		000000000001ffd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ccdc
   1ffd8: 1400000e     	b	0x20010 <syna_dev_resume+0x274>
   1ffdc: 394013e8     	ldrb	w8, [sp, #0x4]
   1ffe0: 7100411f     	cmp	w8, #0x10
   1ffe4: 54001261     	b.ne	0x20230 <syna_dev_resume+0x494>
   1ffe8: 90000000     	adrp	x0, 0x1f000 <zte_touch_probe+0x498>
		000000000001ffe8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x124de
   1ffec: 91000000     	add	x0, x0, #0x0
		000000000001ffec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x124de
   1fff0: 90000001     	adrp	x1, 0x1f000 <zte_touch_probe+0x498>
		000000000001fff0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1dfda
   1fff4: 91000021     	add	x1, x1, #0x0
		000000000001fff4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1dfda
   1fff8: 94000000     	bl	0x1fff8 <syna_dev_resume+0x25c>
		000000000001fff8:  R_AARCH64_CALL26	_printk
   1fffc: aa1303e0     	mov	x0, x19
   20000: 97ffff30     	bl	0x1fcc0 <syna_dev_suspend+0xb0>
   20004: 36f80120     	tbz	w0, #0x1f, 0x20028 <syna_dev_resume+0x28c>
   20008: 90000000     	adrp	x0, 0x20000 <syna_dev_resume+0x264>
		0000000000020008:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17a56
   2000c: 91000000     	add	x0, x0, #0x0
		000000000002000c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17a56
   20010: 90000001     	adrp	x1, 0x20000 <syna_dev_resume+0x264>
		0000000000020010:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1dfda
   20014: 91000021     	add	x1, x1, #0x0
		0000000000020014:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1dfda
   20018: 94000000     	bl	0x20018 <syna_dev_resume+0x27c>
		0000000000020018:  R_AARCH64_CALL26	_printk
   2001c: 3942f2a8     	ldrb	w8, [x21, #0xbc]
   20020: 360001c8     	tbz	w8, #0x0, 0x20058 <syna_dev_resume+0x2bc>
   20024: 14000018     	b	0x20084 <syna_dev_resume+0x2e8>
   20028: b9457e62     	ldr	w2, [x19, #0x57c]
   2002c: 90000008     	adrp	x8, 0x20000 <syna_dev_resume+0x264>
		000000000002002c:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0xa0
   20030: 91000108     	add	x8, x8, #0x0
		0000000000020030:  R_AARCH64_ADD_ABS_LO12_NC	ufp_tp_ops+0xa0
   20034: 90000000     	adrp	x0, 0x20000 <syna_dev_resume+0x264>
		0000000000020034:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ab5c
   20038: 91000000     	add	x0, x0, #0x0
		0000000000020038:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ab5c
   2003c: 90000001     	adrp	x1, 0x20000 <syna_dev_resume+0x264>
		000000000002003c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1dfda
   20040: 91000021     	add	x1, x1, #0x0
		0000000000020040:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1dfda
   20044: 3900091f     	strb	wzr, [x8, #0x2]
   20048: 7900011f     	strh	wzr, [x8]
   2004c: 94000000     	bl	0x2004c <syna_dev_resume+0x2b0>
		000000000002004c:  R_AARCH64_CALL26	_printk
   20050: 3942f2a8     	ldrb	w8, [x21, #0xbc]
   20054: 37000188     	tbnz	w8, #0x0, 0x20084 <syna_dev_resume+0x2e8>
   20058: f94022a8     	ldr	x8, [x21, #0x40]
   2005c: b4000148     	cbz	x8, 0x20084 <syna_dev_resume+0x2e8>
   20060: 910022a0     	add	x0, x21, #0x8
   20064: 52800021     	mov	w1, #0x1                // =1
   20068: b85fc110     	ldur	w16, [x8, #-0x4]
   2006c: 728c3631     	movk	w17, #0x61b1
   20070: 72a685d1     	movk	w17, #0x342e, lsl #16
   20074: 6b11021f     	cmp	w16, w17
   20078: 54000040     	b.eq	0x20080 <syna_dev_resume+0x2e4>
   2007c: d4304500     	brk	#0x8228
   20080: d63f0100     	blr	x8
   20084: 90000000     	adrp	x0, 0x20000 <syna_dev_resume+0x264>
		0000000000020084:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17550
   20088: 91000000     	add	x0, x0, #0x0
		0000000000020088:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17550
   2008c: 90000001     	adrp	x1, 0x20000 <syna_dev_resume+0x264>
		000000000002008c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x143e0
   20090: 91000021     	add	x1, x1, #0x0
		0000000000020090:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x143e0
   20094: 3916027f     	strb	wzr, [x19, #0x580]
   20098: 94000000     	bl	0x20098 <syna_dev_resume+0x2fc>
		0000000000020098:  R_AARCH64_CALL26	_printk
   2009c: f9400260     	ldr	x0, [x19]
   200a0: 52801a81     	mov	w1, #0xd4               // =212
   200a4: 52800062     	mov	w2, #0x3                // =3
   200a8: 2a1403e3     	mov	w3, w20
   200ac: 94000000     	bl	0x200ac <syna_dev_resume+0x310>
		00000000000200ac:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
   200b0: 36f80160     	tbz	w0, #0x1f, 0x200dc <syna_dev_resume+0x340>
   200b4: 90000000     	adrp	x0, 0x20000 <syna_dev_resume+0x264>
		00000000000200b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1be76
   200b8: 91000000     	add	x0, x0, #0x0
		00000000000200b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1be76
   200bc: 90000001     	adrp	x1, 0x20000 <syna_dev_resume+0x264>
		00000000000200bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x143e0
   200c0: 91000021     	add	x1, x1, #0x0
		00000000000200c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x143e0
   200c4: 94000000     	bl	0x200c4 <syna_dev_resume+0x328>
		00000000000200c4:  R_AARCH64_CALL26	_printk
   200c8: 90000000     	adrp	x0, 0x20000 <syna_dev_resume+0x264>
		00000000000200c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15da2
   200cc: 91000000     	add	x0, x0, #0x0
		00000000000200cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15da2
   200d0: 90000001     	adrp	x1, 0x20000 <syna_dev_resume+0x264>
		00000000000200d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1dfda
   200d4: 91000021     	add	x1, x1, #0x0
		00000000000200d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1dfda
   200d8: 94000000     	bl	0x200d8 <syna_dev_resume+0x33c>
		00000000000200d8:  R_AARCH64_CALL26	_printk
   200dc: 90000008     	adrp	x8, 0x20000 <syna_dev_resume+0x264>
		00000000000200dc:  R_AARCH64_ADR_PREL_PG_HI21	syna_usb_detect_flag
   200e0: 39400108     	ldrb	w8, [x8]
		00000000000200e0:  R_AARCH64_LDST8_ABS_LO12_NC	syna_usb_detect_flag
   200e4: 7100051f     	cmp	w8, #0x1
   200e8: 54000161     	b.ne	0x20114 <syna_dev_resume+0x378>
   200ec: aa1303e0     	mov	x0, x19
   200f0: 52800021     	mov	w1, #0x1                // =1
   200f4: 2a1403e2     	mov	w2, w20
   200f8: 94000000     	bl	0x200f8 <syna_dev_resume+0x35c>
		00000000000200f8:  R_AARCH64_CALL26	syna_dev_set_charger_mode
   200fc: 340000c0     	cbz	w0, 0x20114 <syna_dev_resume+0x378>
   20100: 90000000     	adrp	x0, 0x20000 <syna_dev_resume+0x264>
		0000000000020100:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1dfea
   20104: 91000000     	add	x0, x0, #0x0
		0000000000020104:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1dfea
   20108: 90000001     	adrp	x1, 0x20000 <syna_dev_resume+0x264>
		0000000000020108:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1dfda
   2010c: 91000021     	add	x1, x1, #0x0
		000000000002010c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1dfda
   20110: 94000000     	bl	0x20110 <syna_dev_resume+0x374>
		0000000000020110:  R_AARCH64_CALL26	_printk
   20114: b9460a61     	ldr	w1, [x19, #0x608]
   20118: aa1303e0     	mov	x0, x19
   2011c: 2a1403e2     	mov	w2, w20
   20120: 94000000     	bl	0x20120 <syna_dev_resume+0x384>
		0000000000020120:  R_AARCH64_CALL26	syna_dev_set_display_rotation
   20124: b945de68     	ldr	w8, [x19, #0x5dc]
   20128: 350000c8     	cbnz	w8, 0x20140 <syna_dev_resume+0x3a4>
   2012c: b945fa61     	ldr	w1, [x19, #0x5f8]
   20130: aa1303e0     	mov	x0, x19
   20134: 2a1403e2     	mov	w2, w20
   20138: 94000000     	bl	0x20138 <syna_dev_resume+0x39c>
		0000000000020138:  R_AARCH64_CALL26	syna_dev_set_tp_report_rate
   2013c: 1400001b     	b	0x201a8 <syna_dev_resume+0x40c>
   20140: aa1303e0     	mov	x0, x19
   20144: 52800021     	mov	w1, #0x1                // =1
   20148: 2a1403e2     	mov	w2, w20
   2014c: 94000000     	bl	0x2014c <syna_dev_resume+0x3b0>
		000000000002014c:  R_AARCH64_CALL26	syna_dev_set_play_game
   20150: 340000c0     	cbz	w0, 0x20168 <syna_dev_resume+0x3cc>
   20154: 90000000     	adrp	x0, 0x20000 <syna_dev_resume+0x264>
		0000000000020154:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1500a
   20158: 91000000     	add	x0, x0, #0x0
		0000000000020158:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1500a
   2015c: 90000001     	adrp	x1, 0x20000 <syna_dev_resume+0x264>
		000000000002015c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1dfda
   20160: 91000021     	add	x1, x1, #0x0
		0000000000020160:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1dfda
   20164: 94000000     	bl	0x20164 <syna_dev_resume+0x3c8>
		0000000000020164:  R_AARCH64_CALL26	_printk
   20168: b945fa61     	ldr	w1, [x19, #0x5f8]
   2016c: aa1303e0     	mov	x0, x19
   20170: 2a1403e2     	mov	w2, w20
   20174: 94000000     	bl	0x20174 <syna_dev_resume+0x3d8>
		0000000000020174:  R_AARCH64_CALL26	syna_dev_set_tp_report_rate
   20178: b945fe61     	ldr	w1, [x19, #0x5fc]
   2017c: aa1303e0     	mov	x0, x19
   20180: 2a1403e2     	mov	w2, w20
   20184: 94000000     	bl	0x20184 <syna_dev_resume+0x3e8>
		0000000000020184:  R_AARCH64_CALL26	syna_dev_set_sensibility_level
   20188: b9460261     	ldr	w1, [x19, #0x600]
   2018c: aa1303e0     	mov	x0, x19
   20190: 2a1403e2     	mov	w2, w20
   20194: 94000000     	bl	0x20194 <syna_dev_resume+0x3f8>
		0000000000020194:  R_AARCH64_CALL26	syna_dev_set_follow_hand_level
   20198: b9460661     	ldr	w1, [x19, #0x604]
   2019c: aa1303e0     	mov	x0, x19
   201a0: 2a1403e2     	mov	w2, w20
   201a4: 94000000     	bl	0x201a4 <syna_dev_resume+0x408>
		00000000000201a4:  R_AARCH64_CALL26	syna_dev_set_stability_level
   201a8: b945ee68     	ldr	w8, [x19, #0x5ec]
   201ac: b945f669     	ldr	w9, [x19, #0x5f4]
   201b0: 90000015     	adrp	x21, 0x20000 <syna_dev_resume+0x264>
		00000000000201b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1dfda
   201b4: 910002b5     	add	x21, x21, #0x0
		00000000000201b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1dfda
   201b8: b945b262     	ldr	w2, [x19, #0x5b0]
   201bc: 2a0003f4     	mov	w20, w0
   201c0: 90000000     	adrp	x0, 0x20000 <syna_dev_resume+0x264>
		00000000000201c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1beaa
   201c4: 91000000     	add	x0, x0, #0x0
		00000000000201c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1beaa
   201c8: aa1503e1     	mov	x1, x21
   201cc: b905ea68     	str	w8, [x19, #0x5e8]
   201d0: b905f269     	str	w9, [x19, #0x5f0]
   201d4: 94000000     	bl	0x201d4 <syna_dev_resume+0x438>
		00000000000201d4:  R_AARCH64_CALL26	_printk
   201d8: b945c662     	ldr	w2, [x19, #0x5c4]
   201dc: 90000000     	adrp	x0, 0x20000 <syna_dev_resume+0x264>
		00000000000201dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c5c0
   201e0: 91000000     	add	x0, x0, #0x0
		00000000000201e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c5c0
   201e4: aa1503e1     	mov	x1, x21
   201e8: 94000000     	bl	0x201e8 <syna_dev_resume+0x44c>
		00000000000201e8:  R_AARCH64_CALL26	_printk
   201ec: b945d662     	ldr	w2, [x19, #0x5d4]
   201f0: 90000000     	adrp	x0, 0x20000 <syna_dev_resume+0x264>
		00000000000201f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18838
   201f4: 91000000     	add	x0, x0, #0x0
		00000000000201f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18838
   201f8: aa1503e1     	mov	x1, x21
   201fc: 94000000     	bl	0x201fc <syna_dev_resume+0x460>
		00000000000201fc:  R_AARCH64_CALL26	_printk
   20200: b945ea62     	ldr	w2, [x19, #0x5e8]
   20204: 90000000     	adrp	x0, 0x20000 <syna_dev_resume+0x264>
		0000000000020204:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13d0c
   20208: 91000000     	add	x0, x0, #0x0
		0000000000020208:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13d0c
   2020c: aa1503e1     	mov	x1, x21
   20210: 94000000     	bl	0x20210 <syna_dev_resume+0x474>
		0000000000020210:  R_AARCH64_CALL26	_printk
   20214: b945f262     	ldr	w2, [x19, #0x5f0]
   20218: 90000000     	adrp	x0, 0x20000 <syna_dev_resume+0x264>
		0000000000020218:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19f68
   2021c: 91000000     	add	x0, x0, #0x0
		000000000002021c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19f68
   20220: aa1503e1     	mov	x1, x21
   20224: 94000000     	bl	0x20224 <syna_dev_resume+0x488>
		0000000000020224:  R_AARCH64_CALL26	_printk
   20228: 2a1403e0     	mov	w0, w20
   2022c: 17fffef8     	b	0x1fe0c <syna_dev_resume+0x70>
   20230: 52800640     	mov	w0, #0x32               // =50
   20234: 94000000     	bl	0x20234 <syna_dev_resume+0x498>
		0000000000020234:  R_AARCH64_CALL26	msleep
   20238: f9400260     	ldr	x0, [x19]
   2023c: 910013e1     	add	x1, sp, #0x4
   20240: aa1f03e2     	mov	x2, xzr
   20244: 94000000     	bl	0x20244 <syna_dev_resume+0x4a8>
		0000000000020244:  R_AARCH64_CALL26	syna_tcm_get_event_data
   20248: 37ffeae0     	tbnz	w0, #0x1f, 0x1ffa4 <syna_dev_resume+0x208>
   2024c: 394013e8     	ldrb	w8, [sp, #0x4]
   20250: 7100411f     	cmp	w8, #0x10
   20254: 54ffeca0     	b.eq	0x1ffe8 <syna_dev_resume+0x24c>
   20258: 52800640     	mov	w0, #0x32               // =50
   2025c: 94000000     	bl	0x2025c <syna_dev_resume+0x4c0>
		000000000002025c:  R_AARCH64_CALL26	msleep
   20260: f9400260     	ldr	x0, [x19]
   20264: 910013e1     	add	x1, sp, #0x4
   20268: aa1f03e2     	mov	x2, xzr
   2026c: 94000000     	bl	0x2026c <syna_dev_resume+0x4d0>
		000000000002026c:  R_AARCH64_CALL26	syna_tcm_get_event_data
   20270: 37ffe9a0     	tbnz	w0, #0x1f, 0x1ffa4 <syna_dev_resume+0x208>
   20274: 394013e8     	ldrb	w8, [sp, #0x4]
   20278: 7100411f     	cmp	w8, #0x10
   2027c: 54ffeb60     	b.eq	0x1ffe8 <syna_dev_resume+0x24c>
   20280: 52800640     	mov	w0, #0x32               // =50
   20284: 94000000     	bl	0x20284 <syna_dev_resume+0x4e8>
		0000000000020284:  R_AARCH64_CALL26	msleep
   20288: f9400260     	ldr	x0, [x19]
   2028c: 910013e1     	add	x1, sp, #0x4
   20290: aa1f03e2     	mov	x2, xzr
   20294: 94000000     	bl	0x20294 <syna_dev_resume+0x4f8>
		0000000000020294:  R_AARCH64_CALL26	syna_tcm_get_event_data
   20298: 37ffe860     	tbnz	w0, #0x1f, 0x1ffa4 <syna_dev_resume+0x208>
   2029c: 394013e8     	ldrb	w8, [sp, #0x4]
   202a0: 7100411f     	cmp	w8, #0x10
   202a4: 54ffea20     	b.eq	0x1ffe8 <syna_dev_resume+0x24c>
   202a8: 52800640     	mov	w0, #0x32               // =50
   202ac: 94000000     	bl	0x202ac <syna_dev_resume+0x510>
		00000000000202ac:  R_AARCH64_CALL26	msleep
   202b0: f9400260     	ldr	x0, [x19]
   202b4: 910013e1     	add	x1, sp, #0x4
   202b8: aa1f03e2     	mov	x2, xzr
   202bc: 94000000     	bl	0x202bc <syna_dev_resume+0x520>
		00000000000202bc:  R_AARCH64_CALL26	syna_tcm_get_event_data
   202c0: 37ffe720     	tbnz	w0, #0x1f, 0x1ffa4 <syna_dev_resume+0x208>
   202c4: 394013e8     	ldrb	w8, [sp, #0x4]
   202c8: 7100411f     	cmp	w8, #0x10
   202cc: 54ffe8e0     	b.eq	0x1ffe8 <syna_dev_resume+0x24c>
   202d0: 52800640     	mov	w0, #0x32               // =50
   202d4: 94000000     	bl	0x202d4 <syna_dev_resume+0x538>
		00000000000202d4:  R_AARCH64_CALL26	msleep
   202d8: f9400260     	ldr	x0, [x19]
   202dc: 910013e1     	add	x1, sp, #0x4
   202e0: aa1f03e2     	mov	x2, xzr
   202e4: 94000000     	bl	0x202e4 <syna_dev_resume+0x548>
		00000000000202e4:  R_AARCH64_CALL26	syna_tcm_get_event_data
   202e8: 37ffe5e0     	tbnz	w0, #0x1f, 0x1ffa4 <syna_dev_resume+0x208>
   202ec: 394013e8     	ldrb	w8, [sp, #0x4]
   202f0: 7100411f     	cmp	w8, #0x10
   202f4: 54ffe7a0     	b.eq	0x1ffe8 <syna_dev_resume+0x24c>
   202f8: 52800640     	mov	w0, #0x32               // =50
   202fc: 94000000     	bl	0x202fc <syna_dev_resume+0x560>
		00000000000202fc:  R_AARCH64_CALL26	msleep
   20300: f9400260     	ldr	x0, [x19]
   20304: 910013e1     	add	x1, sp, #0x4
   20308: aa1f03e2     	mov	x2, xzr
   2030c: 94000000     	bl	0x2030c <syna_dev_resume+0x570>
		000000000002030c:  R_AARCH64_CALL26	syna_tcm_get_event_data
   20310: 37ffe4a0     	tbnz	w0, #0x1f, 0x1ffa4 <syna_dev_resume+0x208>
   20314: 394013e8     	ldrb	w8, [sp, #0x4]
   20318: 7100411f     	cmp	w8, #0x10
   2031c: 54ffe660     	b.eq	0x1ffe8 <syna_dev_resume+0x24c>
   20320: 52800640     	mov	w0, #0x32               // =50
   20324: 94000000     	bl	0x20324 <syna_dev_resume+0x588>
		0000000000020324:  R_AARCH64_CALL26	msleep
   20328: f9400260     	ldr	x0, [x19]
   2032c: 910013e1     	add	x1, sp, #0x4
   20330: aa1f03e2     	mov	x2, xzr
   20334: 94000000     	bl	0x20334 <syna_dev_resume+0x598>
		0000000000020334:  R_AARCH64_CALL26	syna_tcm_get_event_data
   20338: 37ffe360     	tbnz	w0, #0x1f, 0x1ffa4 <syna_dev_resume+0x208>
   2033c: 394013e8     	ldrb	w8, [sp, #0x4]
   20340: 7100411f     	cmp	w8, #0x10
   20344: 54ffe520     	b.eq	0x1ffe8 <syna_dev_resume+0x24c>
   20348: 52800640     	mov	w0, #0x32               // =50
   2034c: 94000000     	bl	0x2034c <syna_dev_resume+0x5b0>
		000000000002034c:  R_AARCH64_CALL26	msleep
   20350: f9400260     	ldr	x0, [x19]
   20354: 910013e1     	add	x1, sp, #0x4
   20358: aa1f03e2     	mov	x2, xzr
   2035c: 94000000     	bl	0x2035c <syna_dev_resume+0x5c0>
		000000000002035c:  R_AARCH64_CALL26	syna_tcm_get_event_data
   20360: 37ffe220     	tbnz	w0, #0x1f, 0x1ffa4 <syna_dev_resume+0x208>
   20364: 394013e8     	ldrb	w8, [sp, #0x4]
   20368: 7100411f     	cmp	w8, #0x10
   2036c: 54ffe3e0     	b.eq	0x1ffe8 <syna_dev_resume+0x24c>
   20370: 52800640     	mov	w0, #0x32               // =50
   20374: 94000000     	bl	0x20374 <syna_dev_resume+0x5d8>
		0000000000020374:  R_AARCH64_CALL26	msleep
   20378: f9400260     	ldr	x0, [x19]
   2037c: 910013e1     	add	x1, sp, #0x4
   20380: aa1f03e2     	mov	x2, xzr
   20384: 94000000     	bl	0x20384 <syna_dev_resume+0x5e8>
		0000000000020384:  R_AARCH64_CALL26	syna_tcm_get_event_data
   20388: 37ffe0e0     	tbnz	w0, #0x1f, 0x1ffa4 <syna_dev_resume+0x208>
   2038c: 394013e8     	ldrb	w8, [sp, #0x4]
   20390: 7100411f     	cmp	w8, #0x10
   20394: 54ffe2a0     	b.eq	0x1ffe8 <syna_dev_resume+0x24c>
   20398: 52800640     	mov	w0, #0x32               // =50
   2039c: 94000000     	bl	0x2039c <syna_dev_resume+0x600>
		000000000002039c:  R_AARCH64_CALL26	msleep
   203a0: 17ffff12     	b	0x1ffe8 <syna_dev_resume+0x24c>
   203a4: 94000000     	bl	0x203a4 <syna_dev_resume+0x608>
		00000000000203a4:  R_AARCH64_CALL26	__stack_chk_fail
