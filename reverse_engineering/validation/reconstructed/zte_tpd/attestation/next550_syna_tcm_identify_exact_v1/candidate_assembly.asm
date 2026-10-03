
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000200b4 <syna_tcm_identify>:
   200b4: d503233f     	paciasp
   200b8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   200bc: f9000bf5     	str	x21, [sp, #0x10]
   200c0: a9024ff4     	stp	x20, x19, [sp, #0x20]
   200c4: 910003fd     	mov	x29, sp
   200c8: b5000100     	cbnz	x0, 0x200e8 <syna_tcm_identify+0x34>
   200cc: 90000000     	adrp	x0, 0x20000 <syna_tcm_buf_copy+0x290>
		00000000000200cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcda2
   200d0: 91000000     	add	x0, x0, #0x0
		00000000000200d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcda2
   200d4: 90000001     	adrp	x1, 0x20000 <syna_tcm_buf_copy+0x290>
		00000000000200d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdbc8
   200d8: 91000021     	add	x1, x1, #0x0
		00000000000200d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdbc8
   200dc: 94000000     	bl	0x200dc <syna_tcm_identify+0x28>
		00000000000200dc:  R_AARCH64_CALL26	_printk
   200e0: 12801e00     	mov	w0, #-0xf1              // =-241
   200e4: 1400004d     	b	0x20218 <syna_tcm_identify+0x164>
   200e8: 2a0203f5     	mov	w21, w2
   200ec: aa0003f3     	mov	x19, x0
   200f0: aa0103f4     	mov	x20, x1
   200f4: 35000182     	cbnz	w2, 0x20124 <syna_tcm_identify+0x70>
   200f8: f9402668     	ldr	x8, [x19, #0x48]
   200fc: 39405108     	ldrb	w8, [x8, #0x14]
   20100: 36000068     	tbz	w8, #0x0, 0x2010c <syna_tcm_identify+0x58>
   20104: 2a1f03f5     	mov	w21, wzr
   20108: 14000007     	b	0x20124 <syna_tcm_identify+0x70>
   2010c: b9420e75     	ldr	w21, [x19, #0x20c]
   20110: 90000000     	adrp	x0, 0x20000 <syna_tcm_buf_copy+0x290>
		0000000000020110:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15814
   20114: 91000000     	add	x0, x0, #0x0
		0000000000020114:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15814
   20118: 90000001     	adrp	x1, 0x20000 <syna_tcm_buf_copy+0x290>
		0000000000020118:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdbc8
   2011c: 91000021     	add	x1, x1, #0x0
		000000000002011c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdbc8
   20120: 94000000     	bl	0x20120 <syna_tcm_identify+0x6c>
		0000000000020120:  R_AARCH64_CALL26	_printk
   20124: f941ce68     	ldr	x8, [x19, #0x398]
   20128: aa1303e0     	mov	x0, x19
   2012c: 52800041     	mov	w1, #0x2                // =2
   20130: aa1f03e2     	mov	x2, xzr
   20134: 2a1f03e3     	mov	w3, wzr
   20138: aa1f03e4     	mov	x4, xzr
   2013c: 2a1503e5     	mov	w5, w21
   20140: b85fc110     	ldur	w16, [x8, #-0x4]
   20144: 728751d1     	movk	w17, #0x3a8e
   20148: 72a48411     	movk	w17, #0x2420, lsl #16
   2014c: 6b11021f     	cmp	w16, w17
   20150: 54000040     	b.eq	0x20158 <syna_tcm_identify+0xa4>
   20154: d4304500     	brk	#0x8228
   20158: d63f0100     	blr	x8
   2015c: 2a0003f5     	mov	w21, w0
   20160: 36f80120     	tbz	w0, #0x1f, 0x20184 <syna_tcm_identify+0xd0>
   20164: 90000000     	adrp	x0, 0x20000 <syna_tcm_buf_copy+0x290>
		0000000000020164:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13732
   20168: 91000000     	add	x0, x0, #0x0
		0000000000020168:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13732
   2016c: 90000001     	adrp	x1, 0x20000 <syna_tcm_buf_copy+0x290>
		000000000002016c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdbc8
   20170: 91000021     	add	x1, x1, #0x0
		0000000000020170:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdbc8
   20174: 52800042     	mov	w2, #0x2                // =2
   20178: 94000000     	bl	0x20178 <syna_tcm_identify+0xc4>
		0000000000020178:  R_AARCH64_CALL26	_printk
   2017c: 2a1503e0     	mov	w0, w21
   20180: 14000026     	b	0x20218 <syna_tcm_identify+0x164>
   20184: 39420662     	ldrb	w2, [x19, #0x81]
   20188: 39420263     	ldrb	w3, [x19, #0x80]
   2018c: 90000000     	adrp	x0, 0x20000 <syna_tcm_buf_copy+0x290>
		000000000002018c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15f34
   20190: 91000000     	add	x0, x0, #0x0
		0000000000020190:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15f34
   20194: 90000001     	adrp	x1, 0x20000 <syna_tcm_buf_copy+0x290>
		0000000000020194:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdbc8
   20198: 91000021     	add	x1, x1, #0x0
		0000000000020198:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdbc8
   2019c: 39002662     	strb	w2, [x19, #0x9]
   201a0: 94000000     	bl	0x201a0 <syna_tcm_identify+0xec>
		00000000000201a0:  R_AARCH64_CALL26	_printk
   201a4: 2a1503e0     	mov	w0, w21
   201a8: b4000394     	cbz	x20, 0x20218 <syna_tcm_identify+0x164>
   201ac: 39462262     	ldrb	w2, [x19, #0x188]
   201b0: 350003e2     	cbnz	w2, 0x2022c <syna_tcm_identify+0x178>
   201b4: 91056260     	add	x0, x19, #0x158
   201b8: 94000000     	bl	0x201b8 <syna_tcm_identify+0x104>
		00000000000201b8:  R_AARCH64_CALL26	mutex_lock
   201bc: b9415669     	ldr	w9, [x19, #0x154]
   201c0: 39462268     	ldrb	w8, [x19, #0x188]
   201c4: 5280060a     	mov	w10, #0x30              // =48
   201c8: f940a661     	ldr	x1, [x19, #0x148]
   201cc: 7100c13f     	cmp	w9, #0x30
   201d0: 11000508     	add	w8, w8, #0x1
   201d4: 1a8a3124     	csel	w4, w9, w10, lo
   201d8: 39062268     	strb	w8, [x19, #0x188]
   201dc: b4000401     	cbz	x1, 0x2025c <syna_tcm_identify+0x1a8>
   201e0: b9415262     	ldr	w2, [x19, #0x150]
   201e4: 6b02009f     	cmp	w4, w2
   201e8: 540002e8     	b.hi	0x20244 <syna_tcm_identify+0x190>
   201ec: aa1403e0     	mov	x0, x20
   201f0: aa0403e2     	mov	x2, x4
   201f4: 94000000     	bl	0x201f4 <syna_tcm_identify+0x140>
		00000000000201f4:  R_AARCH64_CALL26	memcpy
   201f8: 39462262     	ldrb	w2, [x19, #0x188]
   201fc: 7100045f     	cmp	w2, #0x1
   20200: 54000401     	b.ne	0x20280 <syna_tcm_identify+0x1cc>
   20204: 2a1f03e8     	mov	w8, wzr
   20208: 91056260     	add	x0, x19, #0x158
   2020c: 39062268     	strb	w8, [x19, #0x188]
   20210: 94000000     	bl	0x20210 <syna_tcm_identify+0x15c>
		0000000000020210:  R_AARCH64_CALL26	mutex_unlock
   20214: 2a1f03e0     	mov	w0, wzr
   20218: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   2021c: f9400bf5     	ldr	x21, [sp, #0x10]
   20220: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   20224: d50323bf     	autiasp
   20228: d65f03c0     	ret
   2022c: 90000000     	adrp	x0, 0x20000 <syna_tcm_buf_copy+0x290>
		000000000002022c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   20230: 91000000     	add	x0, x0, #0x0
		0000000000020230:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   20234: 90000001     	adrp	x1, 0x20000 <syna_tcm_buf_copy+0x290>
		0000000000020234:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d70
   20238: 91000021     	add	x1, x1, #0x0
		0000000000020238:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d70
   2023c: 94000000     	bl	0x2023c <syna_tcm_identify+0x188>
		000000000002023c:  R_AARCH64_CALL26	_printk
   20240: 17ffffdd     	b	0x201b4 <syna_tcm_identify+0x100>
   20244: 90000000     	adrp	x0, 0x20000 <syna_tcm_buf_copy+0x290>
		0000000000020244:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x130d2
   20248: 91000000     	add	x0, x0, #0x0
		0000000000020248:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x130d2
   2024c: 90000001     	adrp	x1, 0x20000 <syna_tcm_buf_copy+0x290>
		000000000002024c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc770
   20250: 91000021     	add	x1, x1, #0x0
		0000000000020250:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc770
   20254: 52800603     	mov	w3, #0x30               // =48
   20258: 94000000     	bl	0x20258 <syna_tcm_identify+0x1a4>
		0000000000020258:  R_AARCH64_CALL26	_printk
   2025c: 90000000     	adrp	x0, 0x20000 <syna_tcm_buf_copy+0x290>
		000000000002025c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14a06
   20260: 91000000     	add	x0, x0, #0x0
		0000000000020260:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14a06
   20264: 90000001     	adrp	x1, 0x20000 <syna_tcm_buf_copy+0x290>
		0000000000020264:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdbc8
   20268: 91000021     	add	x1, x1, #0x0
		0000000000020268:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdbc8
   2026c: 94000000     	bl	0x2026c <syna_tcm_identify+0x1b8>
		000000000002026c:  R_AARCH64_CALL26	_printk
   20270: 91052260     	add	x0, x19, #0x148
   20274: 9400000b     	bl	0x202a0 <syna_tcm_buf_unlock>
   20278: 128002a0     	mov	w0, #-0x16              // =-22
   2027c: 17ffffe7     	b	0x20218 <syna_tcm_identify+0x164>
   20280: 90000000     	adrp	x0, 0x20000 <syna_tcm_buf_copy+0x290>
		0000000000020280:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   20284: 91000000     	add	x0, x0, #0x0
		0000000000020284:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   20288: 90000001     	adrp	x1, 0x20000 <syna_tcm_buf_copy+0x290>
		0000000000020288:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16aa8
   2028c: 91000021     	add	x1, x1, #0x0
		000000000002028c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16aa8
   20290: 94000000     	bl	0x20290 <syna_tcm_identify+0x1dc>
		0000000000020290:  R_AARCH64_CALL26	_printk
   20294: 39462268     	ldrb	w8, [x19, #0x188]
   20298: 51000508     	sub	w8, w8, #0x1
   2029c: 17ffffdb     	b	0x20208 <syna_tcm_identify+0x154>
