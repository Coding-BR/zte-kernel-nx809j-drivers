
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001ffc8 <syna_tcm_buf_copy>:
   1ffc8: d503233f     	paciasp
   1ffcc: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
   1ffd0: f9000bf7     	str	x23, [sp, #0x10]
   1ffd4: a90257f6     	stp	x22, x21, [sp, #0x20]
   1ffd8: a9034ff4     	stp	x20, x19, [sp, #0x30]
   1ffdc: 910003fd     	mov	x29, sp
   1ffe0: 39410002     	ldrb	w2, [x0, #0x40]
   1ffe4: aa0003f3     	mov	x19, x0
   1ffe8: aa0103f4     	mov	x20, x1
   1ffec: 35000a42     	cbnz	w2, 0x20134 <syna_tcm_buf_copy+0x16c>
   1fff0: 91004260     	add	x0, x19, #0x10
   1fff4: 94000000     	bl	0x1fff4 <syna_tcm_buf_copy+0x2c>
		000000000001fff4:  R_AARCH64_CALL26	mutex_lock
   1fff8: 39410268     	ldrb	w8, [x19, #0x40]
   1fffc: 11000508     	add	w8, w8, #0x1
   20000: 39010268     	strb	w8, [x19, #0x40]
   20004: 39410282     	ldrb	w2, [x20, #0x40]
   20008: 35000a22     	cbnz	w2, 0x2014c <syna_tcm_buf_copy+0x184>
   2000c: 91004280     	add	x0, x20, #0x10
   20010: 94000000     	bl	0x20010 <syna_tcm_buf_copy+0x48>
		0000000000020010:  R_AARCH64_CALL26	mutex_lock
   20014: 39410288     	ldrb	w8, [x20, #0x40]
   20018: b9400e95     	ldr	w21, [x20, #0xc]
   2001c: 11000508     	add	w8, w8, #0x1
   20020: 39010288     	strb	w8, [x20, #0x40]
   20024: b9400a63     	ldr	w3, [x19, #0x8]
   20028: 6b15007f     	cmp	w3, w21
   2002c: 540003e2     	b.hs	0x200a8 <syna_tcm_buf_copy+0xe0>
   20030: b4000df3     	cbz	x19, 0x201ec <syna_tcm_buf_copy+0x224>
   20034: 110006b6     	add	w22, w21, #0x1
   20038: f9400260     	ldr	x0, [x19]
   2003c: 6b16007f     	cmp	w3, w22
   20040: 54000262     	b.hs	0x2008c <syna_tcm_buf_copy+0xc4>
   20044: b40000c0     	cbz	x0, 0x2005c <syna_tcm_buf_copy+0x94>
   20048: aa0003f7     	mov	x23, x0
   2004c: 94000000     	bl	0x2004c <syna_tcm_buf_copy+0x84>
		000000000002004c:  R_AARCH64_CALL26	syna_request_managed_device
   20050: b4000e00     	cbz	x0, 0x20210 <syna_tcm_buf_copy+0x248>
   20054: aa1703e1     	mov	x1, x23
   20058: 94000000     	bl	0x20058 <syna_tcm_buf_copy+0x90>
		0000000000020058:  R_AARCH64_CALL26	devm_kfree
   2005c: 94000000     	bl	0x2005c <syna_tcm_buf_copy+0x94>
		000000000002005c:  R_AARCH64_CALL26	syna_request_managed_device
   20060: b4000e60     	cbz	x0, 0x2022c <syna_tcm_buf_copy+0x264>
   20064: 12b00008     	mov	w8, #0x7fffffff         // =2147483647
   20068: 6b0802bf     	cmp	w21, w8
   2006c: 54000cc2     	b.hs	0x20204 <syna_tcm_buf_copy+0x23c>
   20070: aa1603e1     	mov	x1, x22
   20074: 5281b802     	mov	w2, #0xdc0              // =3520
   20078: 94000000     	bl	0x20078 <syna_tcm_buf_copy+0xb0>
		0000000000020078:  R_AARCH64_CALL26	devm_kmalloc
   2007c: f9000260     	str	x0, [x19]
   20080: b4000e20     	cbz	x0, 0x20244 <syna_tcm_buf_copy+0x27c>
   20084: b9000a76     	str	w22, [x19, #0x8]
   20088: 14000002     	b	0x20090 <syna_tcm_buf_copy+0xc8>
   2008c: aa0303f6     	mov	x22, x3
   20090: 2a1f03e1     	mov	w1, wzr
   20094: aa1603e2     	mov	x2, x22
   20098: 94000000     	bl	0x20098 <syna_tcm_buf_copy+0xd0>
		0000000000020098:  R_AARCH64_CALL26	memset
   2009c: b9000e7f     	str	wzr, [x19, #0xc]
   200a0: b9400a63     	ldr	w3, [x19, #0x8]
   200a4: b9400e95     	ldr	w21, [x20, #0xc]
   200a8: f9400260     	ldr	x0, [x19]
   200ac: b40006a0     	cbz	x0, 0x20180 <syna_tcm_buf_copy+0x1b8>
   200b0: f9400281     	ldr	x1, [x20]
   200b4: b4000661     	cbz	x1, 0x20180 <syna_tcm_buf_copy+0x1b8>
   200b8: b9400a82     	ldr	w2, [x20, #0x8]
   200bc: 6b0302bf     	cmp	w21, w3
   200c0: 54000528     	b.hi	0x20164 <syna_tcm_buf_copy+0x19c>
   200c4: 6b0202bf     	cmp	w21, w2
   200c8: 540004e8     	b.hi	0x20164 <syna_tcm_buf_copy+0x19c>
   200cc: 2a1503e2     	mov	w2, w21
   200d0: 94000000     	bl	0x200d0 <syna_tcm_buf_copy+0x108>
		00000000000200d0:  R_AARCH64_CALL26	memcpy
   200d4: b9400e88     	ldr	w8, [x20, #0xc]
   200d8: b9000e68     	str	w8, [x19, #0xc]
   200dc: 39410282     	ldrb	w2, [x20, #0x40]
   200e0: 7100045f     	cmp	w2, #0x1
   200e4: 54000741     	b.ne	0x201cc <syna_tcm_buf_copy+0x204>
   200e8: 2a1f03e8     	mov	w8, wzr
   200ec: 91004280     	add	x0, x20, #0x10
   200f0: 39010288     	strb	w8, [x20, #0x40]
   200f4: 94000000     	bl	0x200f4 <syna_tcm_buf_copy+0x12c>
		00000000000200f4:  R_AARCH64_CALL26	mutex_unlock
   200f8: 39410262     	ldrb	w2, [x19, #0x40]
   200fc: 2a1f03f4     	mov	w20, wzr
   20100: 7100045f     	cmp	w2, #0x1
   20104: 54000d21     	b.ne	0x202a8 <syna_tcm_buf_copy+0x2e0>
   20108: 2a1403e8     	mov	w8, w20
   2010c: 91004260     	add	x0, x19, #0x10
   20110: 39010268     	strb	w8, [x19, #0x40]
   20114: 94000000     	bl	0x20114 <syna_tcm_buf_copy+0x14c>
		0000000000020114:  R_AARCH64_CALL26	mutex_unlock
   20118: 2a1403e0     	mov	w0, w20
   2011c: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   20120: f9400bf7     	ldr	x23, [sp, #0x10]
   20124: a94257f6     	ldp	x22, x21, [sp, #0x20]
   20128: a8c47bfd     	ldp	x29, x30, [sp], #0x40
   2012c: d50323bf     	autiasp
   20130: d65f03c0     	ret
   20134: 90000000     	adrp	x0, 0x20000 <syna_tcm_buf_copy+0x38>
		0000000000020134:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   20138: 91000000     	add	x0, x0, #0x0
		0000000000020138:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   2013c: 90000001     	adrp	x1, 0x20000 <syna_tcm_buf_copy+0x38>
		000000000002013c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d70
   20140: 91000021     	add	x1, x1, #0x0
		0000000000020140:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d70
   20144: 94000000     	bl	0x20144 <syna_tcm_buf_copy+0x17c>
		0000000000020144:  R_AARCH64_CALL26	_printk
   20148: 17ffffaa     	b	0x1fff0 <syna_tcm_buf_copy+0x28>
   2014c: 90000000     	adrp	x0, 0x20000 <syna_tcm_buf_copy+0x38>
		000000000002014c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   20150: 91000000     	add	x0, x0, #0x0
		0000000000020150:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   20154: 90000001     	adrp	x1, 0x20000 <syna_tcm_buf_copy+0x38>
		0000000000020154:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d70
   20158: 91000021     	add	x1, x1, #0x0
		0000000000020158:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d70
   2015c: 94000000     	bl	0x2015c <syna_tcm_buf_copy+0x194>
		000000000002015c:  R_AARCH64_CALL26	_printk
   20160: 17ffffab     	b	0x2000c <syna_tcm_buf_copy+0x44>
   20164: 90000000     	adrp	x0, 0x20000 <syna_tcm_buf_copy+0x38>
		0000000000020164:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x130d2
   20168: 91000000     	add	x0, x0, #0x0
		0000000000020168:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x130d2
   2016c: 90000001     	adrp	x1, 0x20000 <syna_tcm_buf_copy+0x38>
		000000000002016c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc770
   20170: 91000021     	add	x1, x1, #0x0
		0000000000020170:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc770
   20174: 2a1503e4     	mov	w4, w21
   20178: 94000000     	bl	0x20178 <syna_tcm_buf_copy+0x1b0>
		0000000000020178:  R_AARCH64_CALL26	_printk
   2017c: b9400e95     	ldr	w21, [x20, #0xc]
   20180: 90000000     	adrp	x0, 0x20000 <syna_tcm_buf_copy+0x38>
		0000000000020180:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe7f2
   20184: 91000000     	add	x0, x0, #0x0
		0000000000020184:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe7f2
   20188: 90000001     	adrp	x1, 0x20000 <syna_tcm_buf_copy+0x38>
		0000000000020188:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc0de
   2018c: 91000021     	add	x1, x1, #0x0
		000000000002018c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc0de
   20190: 2a1503e2     	mov	w2, w21
   20194: 94000000     	bl	0x20194 <syna_tcm_buf_copy+0x1cc>
		0000000000020194:  R_AARCH64_CALL26	_printk
   20198: 39410282     	ldrb	w2, [x20, #0x40]
   2019c: 7100045f     	cmp	w2, #0x1
   201a0: 54000941     	b.ne	0x202c8 <syna_tcm_buf_copy+0x300>
   201a4: 2a1f03e8     	mov	w8, wzr
   201a8: 91004280     	add	x0, x20, #0x10
   201ac: 39010288     	strb	w8, [x20, #0x40]
   201b0: 94000000     	bl	0x201b0 <syna_tcm_buf_copy+0x1e8>
		00000000000201b0:  R_AARCH64_CALL26	mutex_unlock
   201b4: 39410262     	ldrb	w2, [x19, #0x40]
   201b8: 128002b4     	mov	w20, #-0x16             // =-22
   201bc: 7100045f     	cmp	w2, #0x1
   201c0: 54000741     	b.ne	0x202a8 <syna_tcm_buf_copy+0x2e0>
   201c4: 2a1f03e8     	mov	w8, wzr
   201c8: 17ffffd1     	b	0x2010c <syna_tcm_buf_copy+0x144>
   201cc: 90000000     	adrp	x0, 0x20000 <syna_tcm_buf_copy+0x38>
		00000000000201cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   201d0: 91000000     	add	x0, x0, #0x0
		00000000000201d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   201d4: 90000001     	adrp	x1, 0x20000 <syna_tcm_buf_copy+0x38>
		00000000000201d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16aa8
   201d8: 91000021     	add	x1, x1, #0x0
		00000000000201d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16aa8
   201dc: 94000000     	bl	0x201dc <syna_tcm_buf_copy+0x214>
		00000000000201dc:  R_AARCH64_CALL26	_printk
   201e0: 39410288     	ldrb	w8, [x20, #0x40]
   201e4: 51000508     	sub	w8, w8, #0x1
   201e8: 17ffffc1     	b	0x200ec <syna_tcm_buf_copy+0x124>
   201ec: 90000000     	adrp	x0, 0x20000 <syna_tcm_buf_copy+0x38>
		00000000000201ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15858
   201f0: 91000000     	add	x0, x0, #0x0
		00000000000201f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15858
   201f4: 90000001     	adrp	x1, 0x20000 <syna_tcm_buf_copy+0x38>
		00000000000201f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x124ae
   201f8: 91000021     	add	x1, x1, #0x0
		00000000000201f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x124ae
   201fc: 94000000     	bl	0x201fc <syna_tcm_buf_copy+0x234>
		00000000000201fc:  R_AARCH64_CALL26	_printk
   20200: 14000018     	b	0x20260 <syna_tcm_buf_copy+0x298>
   20204: 90000000     	adrp	x0, 0x20000 <syna_tcm_buf_copy+0x38>
		0000000000020204:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d82
   20208: 91000000     	add	x0, x0, #0x0
		0000000000020208:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d82
   2020c: 1400000a     	b	0x20234 <syna_tcm_buf_copy+0x26c>
   20210: 90000000     	adrp	x0, 0x20000 <syna_tcm_buf_copy+0x38>
		0000000000020210:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15a80
   20214: 91000000     	add	x0, x0, #0x0
		0000000000020214:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15a80
   20218: 90000001     	adrp	x1, 0x20000 <syna_tcm_buf_copy+0x38>
		0000000000020218:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14c56
   2021c: 91000021     	add	x1, x1, #0x0
		000000000002021c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14c56
   20220: 94000000     	bl	0x20220 <syna_tcm_buf_copy+0x258>
		0000000000020220:  R_AARCH64_CALL26	_printk
   20224: 94000000     	bl	0x20224 <syna_tcm_buf_copy+0x25c>
		0000000000020224:  R_AARCH64_CALL26	syna_request_managed_device
   20228: b5fff1e0     	cbnz	x0, 0x20064 <syna_tcm_buf_copy+0x9c>
   2022c: 90000000     	adrp	x0, 0x20000 <syna_tcm_buf_copy+0x38>
		000000000002022c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15a80
   20230: 91000000     	add	x0, x0, #0x0
		0000000000020230:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15a80
   20234: 90000001     	adrp	x1, 0x20000 <syna_tcm_buf_copy+0x38>
		0000000000020234:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf952
   20238: 91000021     	add	x1, x1, #0x0
		0000000000020238:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf952
   2023c: 94000000     	bl	0x2023c <syna_tcm_buf_copy+0x274>
		000000000002023c:  R_AARCH64_CALL26	_printk
   20240: f900027f     	str	xzr, [x19]
   20244: 90000000     	adrp	x0, 0x20000 <syna_tcm_buf_copy+0x38>
		0000000000020244:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10a46
   20248: 91000000     	add	x0, x0, #0x0
		0000000000020248:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10a46
   2024c: 90000001     	adrp	x1, 0x20000 <syna_tcm_buf_copy+0x38>
		000000000002024c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x124ae
   20250: 91000021     	add	x1, x1, #0x0
		0000000000020250:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x124ae
   20254: 2a1603e2     	mov	w2, w22
   20258: 94000000     	bl	0x20258 <syna_tcm_buf_copy+0x290>
		0000000000020258:  R_AARCH64_CALL26	_printk
   2025c: f900067f     	str	xzr, [x19, #0x8]
   20260: b9400e88     	ldr	w8, [x20, #0xc]
   20264: 90000000     	adrp	x0, 0x20000 <syna_tcm_buf_copy+0x38>
		0000000000020264:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11342
   20268: 91000000     	add	x0, x0, #0x0
		0000000000020268:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11342
   2026c: 90000001     	adrp	x1, 0x20000 <syna_tcm_buf_copy+0x38>
		000000000002026c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc0de
   20270: 91000021     	add	x1, x1, #0x0
		0000000000020270:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc0de
   20274: 11000502     	add	w2, w8, #0x1
   20278: 94000000     	bl	0x20278 <syna_tcm_buf_copy+0x2b0>
		0000000000020278:  R_AARCH64_CALL26	_printk
   2027c: 39410282     	ldrb	w2, [x20, #0x40]
   20280: 7100045f     	cmp	w2, #0x1
   20284: 54000321     	b.ne	0x202e8 <syna_tcm_buf_copy+0x320>
   20288: 2a1f03e8     	mov	w8, wzr
   2028c: 91004280     	add	x0, x20, #0x10
   20290: 39010288     	strb	w8, [x20, #0x40]
   20294: 94000000     	bl	0x20294 <syna_tcm_buf_copy+0x2cc>
		0000000000020294:  R_AARCH64_CALL26	mutex_unlock
   20298: 39410262     	ldrb	w2, [x19, #0x40]
   2029c: 12801e54     	mov	w20, #-0xf3             // =-243
   202a0: 7100045f     	cmp	w2, #0x1
   202a4: 54fff900     	b.eq	0x201c4 <syna_tcm_buf_copy+0x1fc>
   202a8: 90000000     	adrp	x0, 0x20000 <syna_tcm_buf_copy+0x38>
		00000000000202a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   202ac: 91000000     	add	x0, x0, #0x0
		00000000000202ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   202b0: 90000001     	adrp	x1, 0x20000 <syna_tcm_buf_copy+0x38>
		00000000000202b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16aa8
   202b4: 91000021     	add	x1, x1, #0x0
		00000000000202b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16aa8
   202b8: 94000000     	bl	0x202b8 <syna_tcm_buf_copy+0x2f0>
		00000000000202b8:  R_AARCH64_CALL26	_printk
   202bc: 39410268     	ldrb	w8, [x19, #0x40]
   202c0: 51000508     	sub	w8, w8, #0x1
   202c4: 17ffff92     	b	0x2010c <syna_tcm_buf_copy+0x144>
   202c8: 90000000     	adrp	x0, 0x20000 <syna_tcm_buf_copy+0x38>
		00000000000202c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   202cc: 91000000     	add	x0, x0, #0x0
		00000000000202cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   202d0: 90000001     	adrp	x1, 0x20000 <syna_tcm_buf_copy+0x38>
		00000000000202d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16aa8
   202d4: 91000021     	add	x1, x1, #0x0
		00000000000202d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16aa8
   202d8: 94000000     	bl	0x202d8 <syna_tcm_buf_copy+0x310>
		00000000000202d8:  R_AARCH64_CALL26	_printk
   202dc: 39410288     	ldrb	w8, [x20, #0x40]
   202e0: 51000508     	sub	w8, w8, #0x1
   202e4: 17ffffb1     	b	0x201a8 <syna_tcm_buf_copy+0x1e0>
   202e8: 90000000     	adrp	x0, 0x20000 <syna_tcm_buf_copy+0x38>
		00000000000202e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   202ec: 91000000     	add	x0, x0, #0x0
		00000000000202ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   202f0: 90000001     	adrp	x1, 0x20000 <syna_tcm_buf_copy+0x38>
		00000000000202f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16aa8
   202f4: 91000021     	add	x1, x1, #0x0
		00000000000202f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16aa8
   202f8: 94000000     	bl	0x202f8 <syna_tcm_buf_copy+0x330>
		00000000000202f8:  R_AARCH64_CALL26	_printk
   202fc: 39410288     	ldrb	w8, [x20, #0x40]
   20300: 51000508     	sub	w8, w8, #0x1
   20304: 17ffffe2     	b	0x2028c <syna_tcm_buf_copy+0x2c4>
