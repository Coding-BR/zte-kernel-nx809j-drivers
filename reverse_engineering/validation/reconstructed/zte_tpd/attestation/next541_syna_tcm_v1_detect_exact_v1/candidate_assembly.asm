
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001fe40 <syna_tcm_v1_detect>:
   1fe40: d503233f     	paciasp
   1fe44: d10103ff     	sub	sp, sp, #0x40
   1fe48: a9017bfd     	stp	x29, x30, [sp, #0x10]
   1fe4c: a90257f6     	stp	x22, x21, [sp, #0x20]
   1fe50: a9034ff4     	stp	x20, x19, [sp, #0x30]
   1fe54: 910043fd     	add	x29, sp, #0x10
   1fe58: d5384108     	mrs	x8, SP_EL0
   1fe5c: f9438908     	ldr	x8, [x8, #0x710]
   1fe60: f90007e8     	str	x8, [sp, #0x8]
   1fe64: 390013ff     	strb	wzr, [sp, #0x4]
   1fe68: b4000c00     	cbz	x0, 0x1ffe8 <syna_tcm_v1_detect+0x1a8>
   1fe6c: aa0003f3     	mov	x19, x0
   1fe70: 360002a1     	tbz	w1, #0x0, 0x1fec4 <syna_tcm_v1_detect+0x84>
   1fe74: 90000008     	adrp	x8, 0x1f000 <syna_dev_resume+0x498>
		000000000001fe74:  R_AARCH64_ADR_PREL_PG_HI21	syna_tcm_v1_read_message
   1fe78: 91000108     	add	x8, x8, #0x0
		000000000001fe78:  R_AARCH64_ADD_ABS_LO12_NC	syna_tcm_v1_read_message
   1fe7c: 2a1f03e0     	mov	w0, wzr
   1fe80: f901ca68     	str	x8, [x19, #0x390]
   1fe84: 90000008     	adrp	x8, 0x1f000 <syna_dev_resume+0x498>
		000000000001fe84:  R_AARCH64_ADR_PREL_PG_HI21	syna_tcm_v1_write_message
   1fe88: 91000108     	add	x8, x8, #0x0
		000000000001fe88:  R_AARCH64_ADD_ABS_LO12_NC	syna_tcm_v1_write_message
   1fe8c: f901ce68     	str	x8, [x19, #0x398]
   1fe90: 90000008     	adrp	x8, 0x1f000 <syna_dev_resume+0x498>
		000000000001fe90:  R_AARCH64_ADR_PREL_PG_HI21	syna_tcm_v1_set_up_max_rw_size
   1fe94: 91000108     	add	x8, x8, #0x0
		000000000001fe94:  R_AARCH64_ADD_ABS_LO12_NC	syna_tcm_v1_set_up_max_rw_size
   1fe98: f901d668     	str	x8, [x19, #0x3a8]
   1fe9c: 90000008     	adrp	x8, 0x1f000 <syna_dev_resume+0x498>
		000000000001fe9c:  R_AARCH64_ADR_PREL_PG_HI21	syna_tcm_v1_check_max_rw_size
   1fea0: 91000108     	add	x8, x8, #0x0
		000000000001fea0:  R_AARCH64_ADD_ABS_LO12_NC	syna_tcm_v1_check_max_rw_size
   1fea4: f901da68     	str	x8, [x19, #0x3b0]
   1fea8: 90000008     	adrp	x8, 0x1f000 <syna_dev_resume+0x498>
		000000000001fea8:  R_AARCH64_ADR_PREL_PG_HI21	syna_tcm_v1_terminate
   1feac: 91000108     	add	x8, x8, #0x0
		000000000001feac:  R_AARCH64_ADD_ABS_LO12_NC	syna_tcm_v1_terminate
   1feb0: f901d268     	str	x8, [x19, #0x3a0]
   1feb4: 52800028     	mov	w8, #0x1                // =1
   1feb8: b9037e7f     	str	wzr, [x19, #0x37c]
   1febc: 39002268     	strb	w8, [x19, #0x8]
   1fec0: 1400003f     	b	0x1ffbc <syna_tcm_v1_detect+0x17c>
   1fec4: 910d2260     	add	x0, x19, #0x348
   1fec8: 2a0203f6     	mov	w22, w2
   1fecc: 94000000     	bl	0x1fecc <syna_tcm_v1_detect+0x8c>
		000000000001fecc:  R_AARCH64_CALL26	mutex_lock
   1fed0: 394a0262     	ldrb	w2, [x19, #0x280]
   1fed4: 35000982     	cbnz	w2, 0x20004 <syna_tcm_v1_detect+0x1c4>
   1fed8: 91094260     	add	x0, x19, #0x250
   1fedc: 91090274     	add	x20, x19, #0x240
   1fee0: 94000000     	bl	0x1fee0 <syna_tcm_v1_detect+0xa0>
		000000000001fee0:  R_AARCH64_CALL26	mutex_lock
   1fee4: 394a0268     	ldrb	w8, [x19, #0x280]
   1fee8: b9424a75     	ldr	w21, [x19, #0x248]
   1feec: f9412260     	ldr	x0, [x19, #0x240]
   1fef0: 11000508     	add	w8, w8, #0x1
   1fef4: 7100d6bf     	cmp	w21, #0x35
   1fef8: 390a0268     	strb	w8, [x19, #0x280]
   1fefc: 54000208     	b.hi	0x1ff3c <syna_tcm_v1_detect+0xfc>
   1ff00: b40000c0     	cbz	x0, 0x1ff18 <syna_tcm_v1_detect+0xd8>
   1ff04: aa0003f5     	mov	x21, x0
   1ff08: 94000000     	bl	0x1ff08 <syna_tcm_v1_detect+0xc8>
		000000000001ff08:  R_AARCH64_CALL26	syna_request_managed_device
   1ff0c: b40016a0     	cbz	x0, 0x201e0 <syna_tcm_v1_detect+0x3a0>
   1ff10: aa1503e1     	mov	x1, x21
   1ff14: 94000000     	bl	0x1ff14 <syna_tcm_v1_detect+0xd4>
		000000000001ff14:  R_AARCH64_CALL26	devm_kfree
   1ff18: 94000000     	bl	0x1ff18 <syna_tcm_v1_detect+0xd8>
		000000000001ff18:  R_AARCH64_CALL26	syna_request_managed_device
   1ff1c: b4001700     	cbz	x0, 0x201fc <syna_tcm_v1_detect+0x3bc>
   1ff20: 528006c1     	mov	w1, #0x36               // =54
   1ff24: 5281b802     	mov	w2, #0xdc0              // =3520
   1ff28: 528006d5     	mov	w21, #0x36              // =54
   1ff2c: 94000000     	bl	0x1ff2c <syna_tcm_v1_detect+0xec>
		000000000001ff2c:  R_AARCH64_CALL26	devm_kmalloc
   1ff30: f9000280     	str	x0, [x20]
   1ff34: b4001700     	cbz	x0, 0x20214 <syna_tcm_v1_detect+0x3d4>
   1ff38: b9024a75     	str	w21, [x19, #0x248]
   1ff3c: 2a1503e2     	mov	w2, w21
   1ff40: 2a1f03e1     	mov	w1, wzr
   1ff44: 94000000     	bl	0x1ff44 <syna_tcm_v1_detect+0x104>
		000000000001ff44:  R_AARCH64_CALL26	memset
   1ff48: f9402660     	ldr	x0, [x19, #0x48]
   1ff4c: b9024e7f     	str	wzr, [x19, #0x24c]
   1ff50: b4000660     	cbz	x0, 0x2001c <syna_tcm_v1_detect+0x1dc>
   1ff54: f9401008     	ldr	x8, [x0, #0x20]
   1ff58: b40006a8     	cbz	x8, 0x2002c <syna_tcm_v1_detect+0x1ec>
   1ff5c: f9412275     	ldr	x21, [x19, #0x240]
   1ff60: 528006c2     	mov	w2, #0x36               // =54
   1ff64: aa1503e1     	mov	x1, x21
   1ff68: b85fc110     	ldur	w16, [x8, #-0x4]
   1ff6c: 728403f1     	movk	w17, #0x201f
   1ff70: 72a51491     	movk	w17, #0x28a4, lsl #16
   1ff74: 6b11021f     	cmp	w16, w17
   1ff78: 54000040     	b.eq	0x1ff80 <syna_tcm_v1_detect+0x140>
   1ff7c: d4304500     	brk	#0x8228
   1ff80: d63f0100     	blr	x8
   1ff84: 37f80620     	tbnz	w0, #0x1f, 0x20048 <syna_tcm_v1_detect+0x208>
   1ff88: 394a0262     	ldrb	w2, [x19, #0x280]
   1ff8c: 7100045f     	cmp	w2, #0x1
   1ff90: 540007e1     	b.ne	0x2008c <syna_tcm_v1_detect+0x24c>
   1ff94: 2a1f03e8     	mov	w8, wzr
   1ff98: 91094260     	add	x0, x19, #0x250
   1ff9c: 390a0268     	strb	w8, [x19, #0x280]
   1ffa0: 94000000     	bl	0x1ffa0 <syna_tcm_v1_detect+0x160>
		000000000001ffa0:  R_AARCH64_CALL26	mutex_unlock
   1ffa4: 910d2260     	add	x0, x19, #0x348
   1ffa8: 94000000     	bl	0x1ffa8 <syna_tcm_v1_detect+0x168>
		000000000001ffa8:  R_AARCH64_CALL26	mutex_unlock
   1ffac: 394002a8     	ldrb	w8, [x21]
   1ffb0: 7102951f     	cmp	w8, #0xa5
   1ffb4: 540007c0     	b.eq	0x200ac <syna_tcm_v1_detect+0x26c>
   1ffb8: 12801e80     	mov	w0, #-0xf5              // =-245
   1ffbc: d5384108     	mrs	x8, SP_EL0
   1ffc0: f9438908     	ldr	x8, [x8, #0x710]
   1ffc4: f94007e9     	ldr	x9, [sp, #0x8]
   1ffc8: eb09011f     	cmp	x8, x9
   1ffcc: 54001a21     	b.ne	0x20310 <syna_tcm_v1_detect+0x4d0>
   1ffd0: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   1ffd4: a94257f6     	ldp	x22, x21, [sp, #0x20]
   1ffd8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   1ffdc: 910103ff     	add	sp, sp, #0x40
   1ffe0: d50323bf     	autiasp
   1ffe4: d65f03c0     	ret
   1ffe8: 90000000     	adrp	x0, 0x1f000 <syna_dev_resume+0x498>
		000000000001ffe8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcda2
   1ffec: 91000000     	add	x0, x0, #0x0
		000000000001ffec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcda2
   1fff0: 90000001     	adrp	x1, 0x1f000 <syna_dev_resume+0x498>
		000000000001fff0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe226
   1fff4: 91000021     	add	x1, x1, #0x0
		000000000001fff4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe226
   1fff8: 94000000     	bl	0x1fff8 <syna_tcm_v1_detect+0x1b8>
		000000000001fff8:  R_AARCH64_CALL26	_printk
   1fffc: 12801e00     	mov	w0, #-0xf1              // =-241
   20000: 17ffffef     	b	0x1ffbc <syna_tcm_v1_detect+0x17c>
   20004: 90000000     	adrp	x0, 0x20000 <syna_tcm_v1_detect+0x1c0>
		0000000000020004:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   20008: 91000000     	add	x0, x0, #0x0
		0000000000020008:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   2000c: 90000001     	adrp	x1, 0x20000 <syna_tcm_v1_detect+0x1c0>
		000000000002000c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d70
   20010: 91000021     	add	x1, x1, #0x0
		0000000000020010:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d70
   20014: 94000000     	bl	0x20014 <syna_tcm_v1_detect+0x1d4>
		0000000000020014:  R_AARCH64_CALL26	_printk
   20018: 17ffffb0     	b	0x1fed8 <syna_tcm_v1_detect+0x98>
   2001c: 12801e14     	mov	w20, #-0xf1             // =-241
   20020: 90000000     	adrp	x0, 0x20000 <syna_tcm_v1_detect+0x1c0>
		0000000000020020:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x118b2
   20024: 91000000     	add	x0, x0, #0x0
		0000000000020024:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x118b2
   20028: 14000004     	b	0x20038 <syna_tcm_v1_detect+0x1f8>
   2002c: 12801e94     	mov	w20, #-0xf5             // =-245
   20030: 90000000     	adrp	x0, 0x20000 <syna_tcm_v1_detect+0x1c0>
		0000000000020030:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfad2
   20034: 91000000     	add	x0, x0, #0x0
		0000000000020034:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfad2
   20038: 90000001     	adrp	x1, 0x20000 <syna_tcm_v1_detect+0x1c0>
		0000000000020038:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfac4
   2003c: 91000021     	add	x1, x1, #0x0
		000000000002003c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfac4
   20040: 94000000     	bl	0x20040 <syna_tcm_v1_detect+0x200>
		0000000000020040:  R_AARCH64_CALL26	_printk
   20044: 14000002     	b	0x2004c <syna_tcm_v1_detect+0x20c>
   20048: 2a0003f4     	mov	w20, w0
   2004c: 90000000     	adrp	x0, 0x20000 <syna_tcm_v1_detect+0x1c0>
		000000000002004c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12b3c
   20050: 91000000     	add	x0, x0, #0x0
		0000000000020050:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12b3c
   20054: 90000001     	adrp	x1, 0x20000 <syna_tcm_v1_detect+0x1c0>
		0000000000020054:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe226
   20058: 91000021     	add	x1, x1, #0x0
		0000000000020058:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe226
   2005c: 94000000     	bl	0x2005c <syna_tcm_v1_detect+0x21c>
		000000000002005c:  R_AARCH64_CALL26	_printk
   20060: 394a0262     	ldrb	w2, [x19, #0x280]
   20064: 7100045f     	cmp	w2, #0x1
   20068: 54001341     	b.ne	0x202d0 <syna_tcm_v1_detect+0x490>
   2006c: 2a1f03e8     	mov	w8, wzr
   20070: 91094260     	add	x0, x19, #0x250
   20074: 390a0268     	strb	w8, [x19, #0x280]
   20078: 94000000     	bl	0x20078 <syna_tcm_v1_detect+0x238>
		0000000000020078:  R_AARCH64_CALL26	mutex_unlock
   2007c: 910d2260     	add	x0, x19, #0x348
   20080: 94000000     	bl	0x20080 <syna_tcm_v1_detect+0x240>
		0000000000020080:  R_AARCH64_CALL26	mutex_unlock
   20084: 2a1403e0     	mov	w0, w20
   20088: 17ffffcd     	b	0x1ffbc <syna_tcm_v1_detect+0x17c>
   2008c: 90000000     	adrp	x0, 0x20000 <syna_tcm_v1_detect+0x1c0>
		000000000002008c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   20090: 91000000     	add	x0, x0, #0x0
		0000000000020090:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   20094: 90000001     	adrp	x1, 0x20000 <syna_tcm_v1_detect+0x1c0>
		0000000000020094:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16aa8
   20098: 91000021     	add	x1, x1, #0x0
		0000000000020098:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16aa8
   2009c: 94000000     	bl	0x2009c <syna_tcm_v1_detect+0x25c>
		000000000002009c:  R_AARCH64_CALL26	_printk
   200a0: 394a0268     	ldrb	w8, [x19, #0x280]
   200a4: 51000508     	sub	w8, w8, #0x1
   200a8: 17ffffbc     	b	0x1ff98 <syna_tcm_v1_detect+0x158>
   200ac: 394e0268     	ldrb	w8, [x19, #0x380]
   200b0: 7100051f     	cmp	w8, #0x1
   200b4: 540002e1     	b.ne	0x20110 <syna_tcm_v1_detect+0x2d0>
   200b8: b9420268     	ldr	w8, [x19, #0x200]
   200bc: 340002a8     	cbz	w8, 0x20110 <syna_tcm_v1_detect+0x2d0>
   200c0: aa1403e0     	mov	x0, x20
   200c4: 94000000     	bl	0x200c4 <syna_tcm_v1_detect+0x284>
		00000000000200c4:  R_AARCH64_CALL26	syna_tcm_buf_lock
   200c8: b9420268     	ldr	w8, [x19, #0x200]
   200cc: b9424a69     	ldr	w9, [x19, #0x248]
   200d0: 1100150b     	add	w11, w8, #0x5
   200d4: 6b0b013f     	cmp	w9, w11
   200d8: 540001c9     	b.ls	0x20110 <syna_tcm_v1_detect+0x2d0>
   200dc: f941226a     	ldr	x10, [x19, #0x240]
   200e0: 394e126c     	ldrb	w12, [x19, #0x384]
   200e4: 786b494b     	ldrh	w11, [x10, w11, uxtw]
   200e8: 7100059f     	cmp	w12, #0x1
   200ec: 7907066b     	strh	w11, [x19, #0x382]
   200f0: 540000c1     	b.ne	0x20108 <syna_tcm_v1_detect+0x2c8>
   200f4: 11001d08     	add	w8, w8, #0x7
   200f8: 6b08013f     	cmp	w9, w8
   200fc: 54000063     	b.lo	0x20108 <syna_tcm_v1_detect+0x2c8>
   20100: 38684948     	ldrb	w8, [x10, w8, uxtw]
   20104: 390e1668     	strb	w8, [x19, #0x385]
   20108: aa1403e0     	mov	x0, x20
   2010c: 94000000     	bl	0x2010c <syna_tcm_v1_detect+0x2cc>
		000000000002010c:  R_AARCH64_CALL26	syna_tcm_buf_unlock
   20110: 79470668     	ldrh	w8, [x19, #0x382]
   20114: 528b4b49     	mov	w9, #0x5a5a             // =23130
   20118: 6b09011f     	cmp	w8, w9
   2011c: 54000041     	b.ne	0x20124 <syna_tcm_v1_detect+0x2e4>
   20120: 390e027f     	strb	wzr, [x19, #0x380]
   20124: 394e1668     	ldrb	w8, [x19, #0x385]
   20128: 7101691f     	cmp	w8, #0x5a
   2012c: 54000041     	b.ne	0x20134 <syna_tcm_v1_detect+0x2f4>
   20130: 390e127f     	strb	wzr, [x19, #0x384]
   20134: 394006a8     	ldrb	w8, [x21, #0x1]
   20138: 7100411f     	cmp	w8, #0x10
   2013c: 540001e0     	b.eq	0x20178 <syna_tcm_v1_detect+0x338>
   20140: b941ee65     	ldr	w5, [x19, #0x1ec]
   20144: 720002df     	tst	w22, #0x1
   20148: 52800048     	mov	w8, #0x2                // =2
   2014c: 52800089     	mov	w9, #0x4                // =4
   20150: 910013e4     	add	x4, sp, #0x4
   20154: aa1303e0     	mov	x0, x19
   20158: 1a881121     	csel	w1, w9, w8, ne
   2015c: aa1f03e2     	mov	x2, xzr
   20160: 2a1f03e3     	mov	w3, wzr
   20164: 94000000     	bl	0x20164 <syna_tcm_v1_detect+0x324>
		0000000000020164:  R_AARCH64_CALL26	syna_tcm_v1_write_message
   20168: 36f80080     	tbz	w0, #0x1f, 0x20178 <syna_tcm_v1_detect+0x338>
   2016c: 90000000     	adrp	x0, 0x20000 <syna_tcm_v1_detect+0x1c0>
		000000000002016c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x119f0
   20170: 91000000     	add	x0, x0, #0x0
		0000000000020170:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x119f0
   20174: 14000016     	b	0x201cc <syna_tcm_v1_detect+0x38c>
   20178: 39402668     	ldrb	w8, [x19, #0x9]
   2017c: 350001e8     	cbnz	w8, 0x201b8 <syna_tcm_v1_detect+0x378>
   20180: aa1403e0     	mov	x0, x20
   20184: 94000000     	bl	0x20184 <syna_tcm_v1_detect+0x344>
		0000000000020184:  R_AARCH64_CALL26	syna_tcm_buf_lock
   20188: 910012a1     	add	x1, x21, #0x4
   2018c: aa1303e0     	mov	x0, x19
   20190: 52800682     	mov	w2, #0x34               // =52
   20194: 52800603     	mov	w3, #0x30               // =48
   20198: 94000000     	bl	0x20198 <syna_tcm_v1_detect+0x358>
		0000000000020198:  R_AARCH64_CALL26	syna_tcm_v1_parse_idinfo
   2019c: 2a0003f5     	mov	w21, w0
   201a0: aa1403e0     	mov	x0, x20
   201a4: 94000000     	bl	0x201a4 <syna_tcm_v1_detect+0x364>
		00000000000201a4:  R_AARCH64_CALL26	syna_tcm_buf_unlock
   201a8: 36f80095     	tbz	w21, #0x1f, 0x201b8 <syna_tcm_v1_detect+0x378>
   201ac: 90000000     	adrp	x0, 0x20000 <syna_tcm_v1_detect+0x1c0>
		00000000000201ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11f32
   201b0: 91000000     	add	x0, x0, #0x0
		00000000000201b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11f32
   201b4: 14000006     	b	0x201cc <syna_tcm_v1_detect+0x38c>
   201b8: aa1303e0     	mov	x0, x19
   201bc: 94000000     	bl	0x201bc <syna_tcm_v1_detect+0x37c>
		00000000000201bc:  R_AARCH64_CALL26	syna_tcm_v1_check_max_rw_size
   201c0: 36f80580     	tbz	w0, #0x1f, 0x20270 <syna_tcm_v1_detect+0x430>
   201c4: 90000000     	adrp	x0, 0x20000 <syna_tcm_v1_detect+0x1c0>
		00000000000201c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x164e6
   201c8: 91000000     	add	x0, x0, #0x0
		00000000000201c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x164e6
   201cc: 90000001     	adrp	x1, 0x20000 <syna_tcm_v1_detect+0x1c0>
		00000000000201cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe226
   201d0: 91000021     	add	x1, x1, #0x0
		00000000000201d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe226
   201d4: 94000000     	bl	0x201d4 <syna_tcm_v1_detect+0x394>
		00000000000201d4:  R_AARCH64_CALL26	_printk
   201d8: 12801e20     	mov	w0, #-0xf2              // =-242
   201dc: 17ffff78     	b	0x1ffbc <syna_tcm_v1_detect+0x17c>
   201e0: 90000000     	adrp	x0, 0x20000 <syna_tcm_v1_detect+0x1c0>
		00000000000201e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15a80
   201e4: 91000000     	add	x0, x0, #0x0
		00000000000201e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15a80
   201e8: 90000001     	adrp	x1, 0x20000 <syna_tcm_v1_detect+0x1c0>
		00000000000201e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14c56
   201ec: 91000021     	add	x1, x1, #0x0
		00000000000201ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14c56
   201f0: 94000000     	bl	0x201f0 <syna_tcm_v1_detect+0x3b0>
		00000000000201f0:  R_AARCH64_CALL26	_printk
   201f4: 94000000     	bl	0x201f4 <syna_tcm_v1_detect+0x3b4>
		00000000000201f4:  R_AARCH64_CALL26	syna_request_managed_device
   201f8: b5ffe940     	cbnz	x0, 0x1ff20 <syna_tcm_v1_detect+0xe0>
   201fc: 90000000     	adrp	x0, 0x20000 <syna_tcm_v1_detect+0x1c0>
		00000000000201fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15a80
   20200: 91000000     	add	x0, x0, #0x0
		0000000000020200:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15a80
   20204: 90000001     	adrp	x1, 0x20000 <syna_tcm_v1_detect+0x1c0>
		0000000000020204:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf952
   20208: 91000021     	add	x1, x1, #0x0
		0000000000020208:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf952
   2020c: 94000000     	bl	0x2020c <syna_tcm_v1_detect+0x3cc>
		000000000002020c:  R_AARCH64_CALL26	_printk
   20210: f900029f     	str	xzr, [x20]
   20214: 90000000     	adrp	x0, 0x20000 <syna_tcm_v1_detect+0x1c0>
		0000000000020214:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10a46
   20218: 91000000     	add	x0, x0, #0x0
		0000000000020218:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10a46
   2021c: 90000001     	adrp	x1, 0x20000 <syna_tcm_v1_detect+0x1c0>
		000000000002021c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x124ae
   20220: 91000021     	add	x1, x1, #0x0
		0000000000020220:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x124ae
   20224: 528006c2     	mov	w2, #0x36               // =54
   20228: 94000000     	bl	0x20228 <syna_tcm_v1_detect+0x3e8>
		0000000000020228:  R_AARCH64_CALL26	_printk
   2022c: 90000000     	adrp	x0, 0x20000 <syna_tcm_v1_detect+0x1c0>
		000000000002022c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdb6c
   20230: 91000000     	add	x0, x0, #0x0
		0000000000020230:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdb6c
   20234: 90000001     	adrp	x1, 0x20000 <syna_tcm_v1_detect+0x1c0>
		0000000000020234:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe226
   20238: 91000021     	add	x1, x1, #0x0
		0000000000020238:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe226
   2023c: f901267f     	str	xzr, [x19, #0x248]
   20240: 94000000     	bl	0x20240 <syna_tcm_v1_detect+0x400>
		0000000000020240:  R_AARCH64_CALL26	_printk
   20244: 394a0262     	ldrb	w2, [x19, #0x280]
   20248: 7100045f     	cmp	w2, #0x1
   2024c: 54000521     	b.ne	0x202f0 <syna_tcm_v1_detect+0x4b0>
   20250: 2a1f03e8     	mov	w8, wzr
   20254: 91094260     	add	x0, x19, #0x250
   20258: 390a0268     	strb	w8, [x19, #0x280]
   2025c: 94000000     	bl	0x2025c <syna_tcm_v1_detect+0x41c>
		000000000002025c:  R_AARCH64_CALL26	mutex_unlock
   20260: 910d2260     	add	x0, x19, #0x348
   20264: 94000000     	bl	0x20264 <syna_tcm_v1_detect+0x424>
		0000000000020264:  R_AARCH64_CALL26	mutex_unlock
   20268: 12801e40     	mov	w0, #-0xf3              // =-243
   2026c: 17ffff54     	b	0x1ffbc <syna_tcm_v1_detect+0x17c>
   20270: 90000000     	adrp	x0, 0x20000 <syna_tcm_v1_detect+0x1c0>
		0000000000020270:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaf66
   20274: 91000000     	add	x0, x0, #0x0
		0000000000020274:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaf66
   20278: 90000001     	adrp	x1, 0x20000 <syna_tcm_v1_detect+0x1c0>
		0000000000020278:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe226
   2027c: 91000021     	add	x1, x1, #0x0
		000000000002027c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe226
   20280: 94000000     	bl	0x20280 <syna_tcm_v1_detect+0x440>
		0000000000020280:  R_AARCH64_CALL26	_printk
   20284: 394e0268     	ldrb	w8, [x19, #0x380]
   20288: 394e1269     	ldrb	w9, [x19, #0x384]
   2028c: 37000048     	tbnz	w8, #0x0, 0x20294 <syna_tcm_v1_detect+0x454>
   20290: 3607df29     	tbz	w9, #0x0, 0x1fe74 <syna_tcm_v1_detect+0x34>
   20294: 9000000a     	adrp	x10, 0x20000 <syna_tcm_v1_detect+0x1c0>
		0000000000020294:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13532
   20298: 9100014a     	add	x10, x10, #0x0
		0000000000020298:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13532
   2029c: 9000000b     	adrp	x11, 0x20000 <syna_tcm_v1_detect+0x1c0>
		000000000002029c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf35e
   202a0: 9100016b     	add	x11, x11, #0x0
		00000000000202a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf35e
   202a4: 7100011f     	cmp	w8, #0x0
   202a8: 2a280128     	orn	w8, w9, w8
   202ac: 9a8a1162     	csel	x2, x11, x10, ne
   202b0: 7200011f     	tst	w8, #0x1
   202b4: 90000000     	adrp	x0, 0x20000 <syna_tcm_v1_detect+0x1c0>
		00000000000202b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd528
   202b8: 91000000     	add	x0, x0, #0x0
		00000000000202b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd528
   202bc: 9a8a1163     	csel	x3, x11, x10, ne
   202c0: 90000001     	adrp	x1, 0x20000 <syna_tcm_v1_detect+0x1c0>
		00000000000202c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe226
   202c4: 91000021     	add	x1, x1, #0x0
		00000000000202c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe226
   202c8: 94000000     	bl	0x202c8 <syna_tcm_v1_detect+0x488>
		00000000000202c8:  R_AARCH64_CALL26	_printk
   202cc: 17fffeea     	b	0x1fe74 <syna_tcm_v1_detect+0x34>
   202d0: 90000000     	adrp	x0, 0x20000 <syna_tcm_v1_detect+0x1c0>
		00000000000202d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   202d4: 91000000     	add	x0, x0, #0x0
		00000000000202d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   202d8: 90000001     	adrp	x1, 0x20000 <syna_tcm_v1_detect+0x1c0>
		00000000000202d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16aa8
   202dc: 91000021     	add	x1, x1, #0x0
		00000000000202dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16aa8
   202e0: 94000000     	bl	0x202e0 <syna_tcm_v1_detect+0x4a0>
		00000000000202e0:  R_AARCH64_CALL26	_printk
   202e4: 394a0268     	ldrb	w8, [x19, #0x280]
   202e8: 51000508     	sub	w8, w8, #0x1
   202ec: 17ffff61     	b	0x20070 <syna_tcm_v1_detect+0x230>
   202f0: 90000000     	adrp	x0, 0x20000 <syna_tcm_v1_detect+0x1c0>
		00000000000202f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   202f4: 91000000     	add	x0, x0, #0x0
		00000000000202f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   202f8: 90000001     	adrp	x1, 0x20000 <syna_tcm_v1_detect+0x1c0>
		00000000000202f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16aa8
   202fc: 91000021     	add	x1, x1, #0x0
		00000000000202fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16aa8
   20300: 94000000     	bl	0x20300 <syna_tcm_v1_detect+0x4c0>
		0000000000020300:  R_AARCH64_CALL26	_printk
   20304: 394a0268     	ldrb	w8, [x19, #0x280]
   20308: 51000508     	sub	w8, w8, #0x1
   2030c: 17ffffd2     	b	0x20254 <syna_tcm_v1_detect+0x414>
   20310: 94000000     	bl	0x20310 <syna_tcm_v1_detect+0x4d0>
		0000000000020310:  R_AARCH64_CALL26	__stack_chk_fail
