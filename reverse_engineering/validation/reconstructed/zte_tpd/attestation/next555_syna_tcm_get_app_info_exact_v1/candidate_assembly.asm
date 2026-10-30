
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000200c0 <syna_tcm_get_app_info>:
   200c0: d503233f     	paciasp
   200c4: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   200c8: f9000bf5     	str	x21, [sp, #0x10]
   200cc: a9024ff4     	stp	x20, x19, [sp, #0x20]
   200d0: 910003fd     	mov	x29, sp
   200d4: b4000a40     	cbz	x0, 0x2021c <syna_tcm_get_app_info+0x15c>
   200d8: 2a0203f5     	mov	w21, w2
   200dc: 39402402     	ldrb	w2, [x0, #0x9]
   200e0: aa0003f3     	mov	x19, x0
   200e4: 7100045f     	cmp	w2, #0x1
   200e8: 54000a81     	b.ne	0x20238 <syna_tcm_get_app_info+0x178>
   200ec: aa0103f4     	mov	x20, x1
   200f0: 350000b5     	cbnz	w21, 0x20104 <syna_tcm_get_app_info+0x44>
   200f4: f9402668     	ldr	x8, [x19, #0x48]
   200f8: 39405108     	ldrb	w8, [x8, #0x14]
   200fc: 36001148     	tbz	w8, #0x0, 0x20324 <syna_tcm_get_app_info+0x264>
   20100: 2a1f03f5     	mov	w21, wzr
   20104: f941ce68     	ldr	x8, [x19, #0x398]
   20108: aa1303e0     	mov	x0, x19
   2010c: 52800401     	mov	w1, #0x20               // =32
   20110: aa1f03e2     	mov	x2, xzr
   20114: 2a1f03e3     	mov	w3, wzr
   20118: aa1f03e4     	mov	x4, xzr
   2011c: 2a1503e5     	mov	w5, w21
   20120: b85fc110     	ldur	w16, [x8, #-0x4]
   20124: 728751d1     	movk	w17, #0x3a8e
   20128: 72a48411     	movk	w17, #0x2420, lsl #16
   2012c: 6b11021f     	cmp	w16, w17
   20130: 54000040     	b.eq	0x20138 <syna_tcm_get_app_info+0x78>
   20134: d4304500     	brk	#0x8228
   20138: d63f0100     	blr	x8
   2013c: 37f808c0     	tbnz	w0, #0x1f, 0x20254 <syna_tcm_get_app_info+0x194>
   20140: b9415668     	ldr	w8, [x19, #0x154]
   20144: 39462262     	ldrb	w2, [x19, #0x188]
   20148: 52800609     	mov	w9, #0x30               // =48
   2014c: 7100c11f     	cmp	w8, #0x30
   20150: 1a893115     	csel	w21, w8, w9, lo
   20154: 35000942     	cbnz	w2, 0x2027c <syna_tcm_get_app_info+0x1bc>
   20158: 91056260     	add	x0, x19, #0x158
   2015c: 94000000     	bl	0x2015c <syna_tcm_get_app_info+0x9c>
		000000000002015c:  R_AARCH64_CALL26	mutex_lock
   20160: 39462268     	ldrb	w8, [x19, #0x188]
   20164: f940a661     	ldr	x1, [x19, #0x148]
   20168: 11000508     	add	w8, w8, #0x1
   2016c: 39062268     	strb	w8, [x19, #0x188]
   20170: b4000a01     	cbz	x1, 0x202b0 <syna_tcm_get_app_info+0x1f0>
   20174: b9415262     	ldr	w2, [x19, #0x150]
   20178: 6b0202bf     	cmp	w21, w2
   2017c: 540008c8     	b.hi	0x20294 <syna_tcm_get_app_info+0x1d4>
   20180: 9102c260     	add	x0, x19, #0xb0
   20184: aa1503e2     	mov	x2, x21
   20188: 94000000     	bl	0x20188 <syna_tcm_get_app_info+0xc8>
		0000000000020188:  R_AARCH64_CALL26	memcpy
   2018c: 39462262     	ldrb	w2, [x19, #0x188]
   20190: 7100045f     	cmp	w2, #0x1
   20194: 54000aa1     	b.ne	0x202e8 <syna_tcm_get_app_info+0x228>
   20198: 2a1f03e8     	mov	w8, wzr
   2019c: 91056260     	add	x0, x19, #0x158
   201a0: 39062268     	strb	w8, [x19, #0x188]
   201a4: 94000000     	bl	0x201a4 <syna_tcm_get_app_info+0xe4>
		00000000000201a4:  R_AARCH64_CALL26	mutex_unlock
   201a8: b40000b4     	cbz	x20, 0x201bc <syna_tcm_get_app_info+0xfc>
   201ac: 9102c261     	add	x1, x19, #0xb0
   201b0: aa1403e0     	mov	x0, x20
   201b4: aa1503e2     	mov	x2, x21
   201b8: 94000000     	bl	0x201b8 <syna_tcm_get_app_info+0xf8>
		00000000000201b8:  R_AARCH64_CALL26	memcpy
   201bc: 79416662     	ldrh	w2, [x19, #0xb2]
   201c0: 35000242     	cbnz	w2, 0x20208 <syna_tcm_get_app_info+0x148>
   201c4: 7941a268     	ldrh	w8, [x19, #0xd0]
   201c8: 7941a669     	ldrh	w9, [x19, #0xd2]
   201cc: 2a1f03e0     	mov	w0, wzr
   201d0: 7941b66b     	ldrh	w11, [x19, #0xda]
   201d4: 29022668     	stp	w8, w9, [x19, #0x10]
   201d8: 7941aa68     	ldrh	w8, [x19, #0xd4]
   201dc: 7941b269     	ldrh	w9, [x19, #0xd8]
   201e0: b9001a68     	str	w8, [x19, #0x18]
   201e4: a94c2a68     	ldp	x8, x10, [x19, #0xc0]
   201e8: 2903ae69     	stp	w9, w11, [x19, #0x1c]
   201ec: f802c26a     	stur	x10, [x19, #0x2c]
   201f0: f8024268     	stur	x8, [x19, #0x24]
   201f4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   201f8: f9400bf5     	ldr	x21, [sp, #0x10]
   201fc: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   20200: d50323bf     	autiasp
   20204: d65f03c0     	ret
   20208: 7103fc5f     	cmp	w2, #0xff
   2020c: 540007e1     	b.ne	0x20308 <syna_tcm_get_app_info+0x248>
   20210: 90000000     	adrp	x0, 0x20000 <syna_tcm_get_boot_info+0x180>
		0000000000020210:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x141e2
   20214: 91000000     	add	x0, x0, #0x0
		0000000000020214:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x141e2
   20218: 1400003e     	b	0x20310 <syna_tcm_get_app_info+0x250>
   2021c: 90000000     	adrp	x0, 0x20000 <syna_tcm_get_boot_info+0x180>
		000000000002021c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcda2
   20220: 91000000     	add	x0, x0, #0x0
		0000000000020220:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcda2
   20224: 90000001     	adrp	x1, 0x20000 <syna_tcm_get_boot_info+0x180>
		0000000000020224:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc1f4
   20228: 91000021     	add	x1, x1, #0x0
		0000000000020228:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc1f4
   2022c: 94000000     	bl	0x2022c <syna_tcm_get_app_info+0x16c>
		000000000002022c:  R_AARCH64_CALL26	_printk
   20230: 12801e00     	mov	w0, #-0xf1              // =-241
   20234: 17fffff0     	b	0x201f4 <syna_tcm_get_app_info+0x134>
   20238: 90000000     	adrp	x0, 0x20000 <syna_tcm_get_boot_info+0x180>
		0000000000020238:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd59a
   2023c: 91000000     	add	x0, x0, #0x0
		000000000002023c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd59a
   20240: 90000001     	adrp	x1, 0x20000 <syna_tcm_get_boot_info+0x180>
		0000000000020240:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc1f4
   20244: 91000021     	add	x1, x1, #0x0
		0000000000020244:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc1f4
   20248: 94000000     	bl	0x20248 <syna_tcm_get_app_info+0x188>
		0000000000020248:  R_AARCH64_CALL26	_printk
   2024c: 12801e00     	mov	w0, #-0xf1              // =-241
   20250: 17ffffe9     	b	0x201f4 <syna_tcm_get_app_info+0x134>
   20254: 90000008     	adrp	x8, 0x20000 <syna_tcm_get_boot_info+0x180>
		0000000000020254:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13732
   20258: 91000108     	add	x8, x8, #0x0
		0000000000020258:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13732
   2025c: 90000001     	adrp	x1, 0x20000 <syna_tcm_get_boot_info+0x180>
		000000000002025c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc1f4
   20260: 91000021     	add	x1, x1, #0x0
		0000000000020260:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc1f4
   20264: 2a0003f3     	mov	w19, w0
   20268: aa0803e0     	mov	x0, x8
   2026c: 52800402     	mov	w2, #0x20               // =32
   20270: 94000000     	bl	0x20270 <syna_tcm_get_app_info+0x1b0>
		0000000000020270:  R_AARCH64_CALL26	_printk
   20274: 2a1303e0     	mov	w0, w19
   20278: 17ffffdf     	b	0x201f4 <syna_tcm_get_app_info+0x134>
   2027c: 90000000     	adrp	x0, 0x20000 <syna_tcm_get_boot_info+0x180>
		000000000002027c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   20280: 91000000     	add	x0, x0, #0x0
		0000000000020280:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   20284: 90000001     	adrp	x1, 0x20000 <syna_tcm_get_boot_info+0x180>
		0000000000020284:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d70
   20288: 91000021     	add	x1, x1, #0x0
		0000000000020288:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d70
   2028c: 94000000     	bl	0x2028c <syna_tcm_get_app_info+0x1cc>
		000000000002028c:  R_AARCH64_CALL26	_printk
   20290: 17ffffb2     	b	0x20158 <syna_tcm_get_app_info+0x98>
   20294: 90000000     	adrp	x0, 0x20000 <syna_tcm_get_boot_info+0x180>
		0000000000020294:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x130d2
   20298: 91000000     	add	x0, x0, #0x0
		0000000000020298:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x130d2
   2029c: 90000001     	adrp	x1, 0x20000 <syna_tcm_get_boot_info+0x180>
		000000000002029c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc770
   202a0: 91000021     	add	x1, x1, #0x0
		00000000000202a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc770
   202a4: 52800603     	mov	w3, #0x30               // =48
   202a8: 2a1503e4     	mov	w4, w21
   202ac: 94000000     	bl	0x202ac <syna_tcm_get_app_info+0x1ec>
		00000000000202ac:  R_AARCH64_CALL26	_printk
   202b0: 90000000     	adrp	x0, 0x20000 <syna_tcm_get_boot_info+0x180>
		00000000000202b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11432
   202b4: 91000000     	add	x0, x0, #0x0
		00000000000202b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11432
   202b8: 90000001     	adrp	x1, 0x20000 <syna_tcm_get_boot_info+0x180>
		00000000000202b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc1f4
   202bc: 91000021     	add	x1, x1, #0x0
		00000000000202bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc1f4
   202c0: 94000000     	bl	0x202c0 <syna_tcm_get_app_info+0x200>
		00000000000202c0:  R_AARCH64_CALL26	_printk
   202c4: 39462262     	ldrb	w2, [x19, #0x188]
   202c8: 7100045f     	cmp	w2, #0x1
   202cc: 540003a1     	b.ne	0x20340 <syna_tcm_get_app_info+0x280>
   202d0: 2a1f03e8     	mov	w8, wzr
   202d4: 91056260     	add	x0, x19, #0x158
   202d8: 39062268     	strb	w8, [x19, #0x188]
   202dc: 94000000     	bl	0x202dc <syna_tcm_get_app_info+0x21c>
		00000000000202dc:  R_AARCH64_CALL26	mutex_unlock
   202e0: 128002a0     	mov	w0, #-0x16              // =-22
   202e4: 17ffffc4     	b	0x201f4 <syna_tcm_get_app_info+0x134>
   202e8: 90000000     	adrp	x0, 0x20000 <syna_tcm_get_boot_info+0x180>
		00000000000202e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   202ec: 91000000     	add	x0, x0, #0x0
		00000000000202ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   202f0: 90000001     	adrp	x1, 0x20000 <syna_tcm_get_boot_info+0x180>
		00000000000202f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16aa8
   202f4: 91000021     	add	x1, x1, #0x0
		00000000000202f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16aa8
   202f8: 94000000     	bl	0x202f8 <syna_tcm_get_app_info+0x238>
		00000000000202f8:  R_AARCH64_CALL26	_printk
   202fc: 39462268     	ldrb	w8, [x19, #0x188]
   20300: 51000508     	sub	w8, w8, #0x1
   20304: 17ffffa6     	b	0x2019c <syna_tcm_get_app_info+0xdc>
   20308: 90000000     	adrp	x0, 0x20000 <syna_tcm_get_boot_info+0x180>
		0000000000020308:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xef74
   2030c: 91000000     	add	x0, x0, #0x0
		000000000002030c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xef74
   20310: 90000001     	adrp	x1, 0x20000 <syna_tcm_get_boot_info+0x180>
		0000000000020310:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc1f4
   20314: 91000021     	add	x1, x1, #0x0
		0000000000020314:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc1f4
   20318: 94000000     	bl	0x20318 <syna_tcm_get_app_info+0x258>
		0000000000020318:  R_AARCH64_CALL26	_printk
   2031c: 12801e20     	mov	w0, #-0xf2              // =-242
   20320: 17ffffb5     	b	0x201f4 <syna_tcm_get_app_info+0x134>
   20324: b9420e75     	ldr	w21, [x19, #0x20c]
   20328: 90000000     	adrp	x0, 0x20000 <syna_tcm_get_boot_info+0x180>
		0000000000020328:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15814
   2032c: 91000000     	add	x0, x0, #0x0
		000000000002032c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15814
   20330: 90000001     	adrp	x1, 0x20000 <syna_tcm_get_boot_info+0x180>
		0000000000020330:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc1f4
   20334: 91000021     	add	x1, x1, #0x0
		0000000000020334:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc1f4
   20338: 94000000     	bl	0x20338 <syna_tcm_get_app_info+0x278>
		0000000000020338:  R_AARCH64_CALL26	_printk
   2033c: 17ffff72     	b	0x20104 <syna_tcm_get_app_info+0x44>
   20340: 90000000     	adrp	x0, 0x20000 <syna_tcm_get_boot_info+0x180>
		0000000000020340:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   20344: 91000000     	add	x0, x0, #0x0
		0000000000020344:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   20348: 90000001     	adrp	x1, 0x20000 <syna_tcm_get_boot_info+0x180>
		0000000000020348:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16aa8
   2034c: 91000021     	add	x1, x1, #0x0
		000000000002034c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16aa8
   20350: 94000000     	bl	0x20350 <syna_tcm_get_app_info+0x290>
		0000000000020350:  R_AARCH64_CALL26	_printk
   20354: 39462268     	ldrb	w8, [x19, #0x188]
   20358: 51000508     	sub	w8, w8, #0x1
   2035c: 17ffffde     	b	0x202d4 <syna_tcm_get_app_info+0x214>
