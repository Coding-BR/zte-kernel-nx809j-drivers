
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000020104 <syna_tcm_wait_for_report>:
   20104: d503233f     	paciasp
   20108: d10183ff     	sub	sp, sp, #0x60
   2010c: a9017bfd     	stp	x29, x30, [sp, #0x10]
   20110: f90013f9     	str	x25, [sp, #0x20]
   20114: a9035ff8     	stp	x24, x23, [sp, #0x30]
   20118: a90457f6     	stp	x22, x21, [sp, #0x40]
   2011c: a9054ff4     	stp	x20, x19, [sp, #0x50]
   20120: 910043fd     	add	x29, sp, #0x10
   20124: d5384108     	mrs	x8, SP_EL0
   20128: f9438908     	ldr	x8, [x8, #0x710]
   2012c: f90007e8     	str	x8, [sp, #0x8]
   20130: 390013ff     	strb	wzr, [sp, #0x4]
   20134: b4000480     	cbz	x0, 0x201c4 <syna_tcm_wait_for_report+0xc0>
   20138: aa0203f3     	mov	x19, x2
   2013c: b40004a2     	cbz	x2, 0x201d0 <syna_tcm_wait_for_report+0xcc>
   20140: 39402402     	ldrb	w2, [x0, #0x9]
   20144: aa0003f5     	mov	x21, x0
   20148: 7100045f     	cmp	w2, #0x1
   2014c: 540004e1     	b.ne	0x201e8 <syna_tcm_wait_for_report+0xe4>
   20150: f94026b7     	ldr	x23, [x21, #0x48]
   20154: 2a0403f4     	mov	w20, w4
   20158: 2a0303f6     	mov	w22, w3
   2015c: 394052e8     	ldrb	w8, [x23, #0x14]
   20160: 7100051f     	cmp	w8, #0x1
   20164: 54000601     	b.ne	0x20224 <syna_tcm_wait_for_report+0x120>
   20168: b40004f7     	cbz	x23, 0x20204 <syna_tcm_wait_for_report+0x100>
   2016c: f9401ee8     	ldr	x8, [x23, #0x38]
   20170: b40005a8     	cbz	x8, 0x20224 <syna_tcm_wait_for_report+0x120>
   20174: 910142a0     	add	x0, x21, #0x50
   20178: 2a0103f8     	mov	w24, w1
   2017c: 94000000     	bl	0x2017c <syna_tcm_wait_for_report+0x78>
		000000000002017c:  R_AARCH64_CALL26	mutex_lock
   20180: f9401ee8     	ldr	x8, [x23, #0x38]
   20184: aa1703e0     	mov	x0, x23
   20188: 2a1f03e1     	mov	w1, wzr
   2018c: b85fc110     	ldur	w16, [x8, #-0x4]
   20190: 728c3631     	movk	w17, #0x61b1
   20194: 72a685d1     	movk	w17, #0x342e, lsl #16
   20198: 6b11021f     	cmp	w16, w17
   2019c: 54000040     	b.eq	0x201a4 <syna_tcm_wait_for_report+0xa0>
   201a0: d4304500     	brk	#0x8228
   201a4: d63f0100     	blr	x8
   201a8: 2a0003f7     	mov	w23, w0
   201ac: 910142a0     	add	x0, x21, #0x50
   201b0: 94000000     	bl	0x201b0 <syna_tcm_wait_for_report+0xac>
		00000000000201b0:  R_AARCH64_CALL26	mutex_unlock
   201b4: 710006ff     	cmp	w23, #0x1
   201b8: 2a1803e1     	mov	w1, w24
   201bc: 1a9fa7f9     	cset	w25, lt
   201c0: 1400001a     	b	0x20228 <syna_tcm_wait_for_report+0x124>
   201c4: 90000000     	adrp	x0, 0x20000 <syna_tcm_identify+0x154>
		00000000000201c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcda2
   201c8: 91000000     	add	x0, x0, #0x0
		00000000000201c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcda2
   201cc: 14000003     	b	0x201d8 <syna_tcm_wait_for_report+0xd4>
   201d0: 90000000     	adrp	x0, 0x20000 <syna_tcm_identify+0x154>
		00000000000201d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1419a
   201d4: 91000000     	add	x0, x0, #0x0
		00000000000201d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1419a
   201d8: 90000001     	adrp	x1, 0x20000 <syna_tcm_identify+0x154>
		00000000000201d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfc6e
   201dc: 91000021     	add	x1, x1, #0x0
		00000000000201dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfc6e
   201e0: 94000000     	bl	0x201e0 <syna_tcm_wait_for_report+0xdc>
		00000000000201e0:  R_AARCH64_CALL26	_printk
   201e4: 14000006     	b	0x201fc <syna_tcm_wait_for_report+0xf8>
   201e8: 90000000     	adrp	x0, 0x20000 <syna_tcm_identify+0x154>
		00000000000201e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd59a
   201ec: 91000000     	add	x0, x0, #0x0
		00000000000201ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd59a
   201f0: 90000001     	adrp	x1, 0x20000 <syna_tcm_identify+0x154>
		00000000000201f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfc6e
   201f4: 91000021     	add	x1, x1, #0x0
		00000000000201f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfc6e
   201f8: 94000000     	bl	0x201f8 <syna_tcm_wait_for_report+0xf4>
		00000000000201f8:  R_AARCH64_CALL26	_printk
   201fc: 12801e00     	mov	w0, #-0xf1              // =-241
   20200: 1400003f     	b	0x202fc <syna_tcm_wait_for_report+0x1f8>
   20204: 90000008     	adrp	x8, 0x20000 <syna_tcm_identify+0x154>
		0000000000020204:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15e7a
   20208: 91000108     	add	x8, x8, #0x0
		0000000000020208:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15e7a
   2020c: 90000000     	adrp	x0, 0x20000 <syna_tcm_identify+0x154>
		000000000002020c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x118b2
   20210: 91000000     	add	x0, x0, #0x0
		0000000000020210:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x118b2
   20214: 2a0103f7     	mov	w23, w1
   20218: aa0803e1     	mov	x1, x8
   2021c: 94000000     	bl	0x2021c <syna_tcm_wait_for_report+0x118>
		000000000002021c:  R_AARCH64_CALL26	_printk
   20220: 2a1703e1     	mov	w1, w23
   20224: 52800039     	mov	w25, #0x1               // =1
   20228: 12001c37     	and	w23, w1, #0xff
   2022c: 2a1603f8     	mov	w24, w22
   20230: 710006df     	cmp	w22, #0x1
   20234: 540000aa     	b.ge	0x20248 <syna_tcm_wait_for_report+0x144>
   20238: 14000006     	b	0x20250 <syna_tcm_wait_for_report+0x14c>
   2023c: 0b160318     	add	w24, w24, w22
   20240: 710006df     	cmp	w22, #0x1
   20244: 5400006b     	b.lt	0x20250 <syna_tcm_wait_for_report+0x14c>
   20248: 2a1603e0     	mov	w0, w22
   2024c: 94000000     	bl	0x2024c <syna_tcm_wait_for_report+0x148>
		000000000002024c:  R_AARCH64_CALL26	msleep
   20250: 910013e1     	add	x1, sp, #0x4
   20254: aa1503e0     	mov	x0, x21
   20258: aa1303e2     	mov	x2, x19
   2025c: 94000000     	bl	0x2025c <syna_tcm_wait_for_report+0x158>
		000000000002025c:  R_AARCH64_CALL26	syna_tcm_get_event_data
   20260: 37f800c0     	tbnz	w0, #0x1f, 0x20278 <syna_tcm_wait_for_report+0x174>
   20264: 394013e8     	ldrb	w8, [sp, #0x4]
   20268: 6b17011f     	cmp	w8, w23
   2026c: 54000061     	b.ne	0x20278 <syna_tcm_wait_for_report+0x174>
   20270: b9400e68     	ldr	w8, [x19, #0xc]
   20274: 35000068     	cbnz	w8, 0x20280 <syna_tcm_wait_for_report+0x17c>
   20278: 6b14031f     	cmp	w24, w20
   2027c: 54fffe03     	b.lo	0x2023c <syna_tcm_wait_for_report+0x138>
   20280: f94026b6     	ldr	x22, [x21, #0x48]
   20284: 394052c8     	ldrb	w8, [x22, #0x14]
   20288: 2a280328     	orn	w8, w25, w8
   2028c: 37000288     	tbnz	w8, #0x0, 0x202dc <syna_tcm_wait_for_report+0x1d8>
   20290: b4000516     	cbz	x22, 0x20330 <syna_tcm_wait_for_report+0x22c>
   20294: f9401ec8     	ldr	x8, [x22, #0x38]
   20298: b4000228     	cbz	x8, 0x202dc <syna_tcm_wait_for_report+0x1d8>
   2029c: 2a0003f9     	mov	w25, w0
   202a0: 910142a0     	add	x0, x21, #0x50
   202a4: 94000000     	bl	0x202a4 <syna_tcm_wait_for_report+0x1a0>
		00000000000202a4:  R_AARCH64_CALL26	mutex_lock
   202a8: f9401ec8     	ldr	x8, [x22, #0x38]
   202ac: aa1603e0     	mov	x0, x22
   202b0: 52800021     	mov	w1, #0x1                // =1
   202b4: b85fc110     	ldur	w16, [x8, #-0x4]
   202b8: 728c3631     	movk	w17, #0x61b1
   202bc: 72a685d1     	movk	w17, #0x342e, lsl #16
   202c0: 6b11021f     	cmp	w16, w17
   202c4: 54000040     	b.eq	0x202cc <syna_tcm_wait_for_report+0x1c8>
   202c8: d4304500     	brk	#0x8228
   202cc: d63f0100     	blr	x8
   202d0: 910142a0     	add	x0, x21, #0x50
   202d4: 94000000     	bl	0x202d4 <syna_tcm_wait_for_report+0x1d0>
		00000000000202d4:  R_AARCH64_CALL26	mutex_unlock
   202d8: 2a1903e0     	mov	w0, w25
   202dc: 6b14031f     	cmp	w24, w20
   202e0: 540000e3     	b.lo	0x202fc <syna_tcm_wait_for_report+0x1f8>
   202e4: 394013e8     	ldrb	w8, [sp, #0x4]
   202e8: 6b17011f     	cmp	w8, w23
   202ec: 54000061     	b.ne	0x202f8 <syna_tcm_wait_for_report+0x1f4>
   202f0: b9400e68     	ldr	w8, [x19, #0xc]
   202f4: 35000048     	cbnz	w8, 0x202fc <syna_tcm_wait_for_report+0x1f8>
   202f8: 12801e60     	mov	w0, #-0xf4              // =-244
   202fc: d5384108     	mrs	x8, SP_EL0
   20300: f9438908     	ldr	x8, [x8, #0x710]
   20304: f94007e9     	ldr	x9, [sp, #0x8]
   20308: eb09011f     	cmp	x8, x9
   2030c: 54000281     	b.ne	0x2035c <syna_tcm_wait_for_report+0x258>
   20310: a9454ff4     	ldp	x20, x19, [sp, #0x50]
   20314: f94013f9     	ldr	x25, [sp, #0x20]
   20318: a94457f6     	ldp	x22, x21, [sp, #0x40]
   2031c: a9435ff8     	ldp	x24, x23, [sp, #0x30]
   20320: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   20324: 910183ff     	add	sp, sp, #0x60
   20328: d50323bf     	autiasp
   2032c: d65f03c0     	ret
   20330: 90000008     	adrp	x8, 0x20000 <syna_tcm_identify+0x154>
		0000000000020330:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x118b2
   20334: 91000108     	add	x8, x8, #0x0
		0000000000020334:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x118b2
   20338: 90000001     	adrp	x1, 0x20000 <syna_tcm_identify+0x154>
		0000000000020338:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15e7a
   2033c: 91000021     	add	x1, x1, #0x0
		000000000002033c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15e7a
   20340: 2a0003f5     	mov	w21, w0
   20344: aa0803e0     	mov	x0, x8
   20348: 94000000     	bl	0x20348 <syna_tcm_wait_for_report+0x244>
		0000000000020348:  R_AARCH64_CALL26	_printk
   2034c: 2a1503e0     	mov	w0, w21
   20350: 6b14031f     	cmp	w24, w20
   20354: 54fffc82     	b.hs	0x202e4 <syna_tcm_wait_for_report+0x1e0>
   20358: 17ffffe9     	b	0x202fc <syna_tcm_wait_for_report+0x1f8>
   2035c: 94000000     	bl	0x2035c <syna_tcm_wait_for_report+0x258>
		000000000002035c:  R_AARCH64_CALL26	__stack_chk_fail
