
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000200dc <syna_tcm_buf_copy_0>:
   200dc: d503233f     	paciasp
   200e0: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
   200e4: f9000bf7     	str	x23, [sp, #0x10]
   200e8: a90257f6     	stp	x22, x21, [sp, #0x20]
   200ec: a9034ff4     	stp	x20, x19, [sp, #0x30]
   200f0: 910003fd     	mov	x29, sp
   200f4: 39410002     	ldrb	w2, [x0, #0x40]
   200f8: aa0003f3     	mov	x19, x0
   200fc: aa0103f4     	mov	x20, x1
   20100: 350009e2     	cbnz	w2, 0x2023c <syna_tcm_buf_copy_0+0x160>
   20104: 91004260     	add	x0, x19, #0x10
   20108: 94000000     	bl	0x20108 <syna_tcm_buf_copy_0+0x2c>
		0000000000020108:  R_AARCH64_CALL26	mutex_lock
   2010c: 39410268     	ldrb	w8, [x19, #0x40]
   20110: 11000508     	add	w8, w8, #0x1
   20114: 39010268     	strb	w8, [x19, #0x40]
   20118: 39410282     	ldrb	w2, [x20, #0x40]
   2011c: 350009c2     	cbnz	w2, 0x20254 <syna_tcm_buf_copy_0+0x178>
   20120: 91004280     	add	x0, x20, #0x10
   20124: 94000000     	bl	0x20124 <syna_tcm_buf_copy_0+0x48>
		0000000000020124:  R_AARCH64_CALL26	mutex_lock
   20128: 39410288     	ldrb	w8, [x20, #0x40]
   2012c: b9400e95     	ldr	w21, [x20, #0xc]
   20130: 11000508     	add	w8, w8, #0x1
   20134: 39010288     	strb	w8, [x20, #0x40]
   20138: b9400a63     	ldr	w3, [x19, #0x8]
   2013c: 6b15007f     	cmp	w3, w21
   20140: 540003c2     	b.hs	0x201b8 <syna_tcm_buf_copy_0+0xdc>
   20144: 110006b6     	add	w22, w21, #0x1
   20148: f9400260     	ldr	x0, [x19]
   2014c: 6b16007f     	cmp	w3, w22
   20150: 54000262     	b.hs	0x2019c <syna_tcm_buf_copy_0+0xc0>
   20154: b40000c0     	cbz	x0, 0x2016c <syna_tcm_buf_copy_0+0x90>
   20158: aa0003f7     	mov	x23, x0
   2015c: 94000000     	bl	0x2015c <syna_tcm_buf_copy_0+0x80>
		000000000002015c:  R_AARCH64_CALL26	syna_request_managed_device
   20160: b4000c60     	cbz	x0, 0x202ec <syna_tcm_buf_copy_0+0x210>
   20164: aa1703e1     	mov	x1, x23
   20168: 94000000     	bl	0x20168 <syna_tcm_buf_copy_0+0x8c>
		0000000000020168:  R_AARCH64_CALL26	devm_kfree
   2016c: 94000000     	bl	0x2016c <syna_tcm_buf_copy_0+0x90>
		000000000002016c:  R_AARCH64_CALL26	syna_request_managed_device
   20170: b4000cc0     	cbz	x0, 0x20308 <syna_tcm_buf_copy_0+0x22c>
   20174: 12b00008     	mov	w8, #0x7fffffff         // =2147483647
   20178: 6b0802bf     	cmp	w21, w8
   2017c: 54000b22     	b.hs	0x202e0 <syna_tcm_buf_copy_0+0x204>
   20180: aa1603e1     	mov	x1, x22
   20184: 5281b802     	mov	w2, #0xdc0              // =3520
   20188: 94000000     	bl	0x20188 <syna_tcm_buf_copy_0+0xac>
		0000000000020188:  R_AARCH64_CALL26	devm_kmalloc
   2018c: f9000260     	str	x0, [x19]
   20190: b4000c80     	cbz	x0, 0x20320 <syna_tcm_buf_copy_0+0x244>
   20194: b9000a76     	str	w22, [x19, #0x8]
   20198: 14000002     	b	0x201a0 <syna_tcm_buf_copy_0+0xc4>
   2019c: aa0303f6     	mov	x22, x3
   201a0: 2a1f03e1     	mov	w1, wzr
   201a4: aa1603e2     	mov	x2, x22
   201a8: 94000000     	bl	0x201a8 <syna_tcm_buf_copy_0+0xcc>
		00000000000201a8:  R_AARCH64_CALL26	memset
   201ac: b9000e7f     	str	wzr, [x19, #0xc]
   201b0: b9400a63     	ldr	w3, [x19, #0x8]
   201b4: b9400e95     	ldr	w21, [x20, #0xc]
   201b8: f9400260     	ldr	x0, [x19]
   201bc: b4000860     	cbz	x0, 0x202c8 <syna_tcm_buf_copy_0+0x1ec>
   201c0: f9400281     	ldr	x1, [x20]
   201c4: b4000821     	cbz	x1, 0x202c8 <syna_tcm_buf_copy_0+0x1ec>
   201c8: b9400a82     	ldr	w2, [x20, #0x8]
   201cc: 6b0302bf     	cmp	w21, w3
   201d0: 540006e8     	b.hi	0x202ac <syna_tcm_buf_copy_0+0x1d0>
   201d4: 6b0202bf     	cmp	w21, w2
   201d8: 540006a8     	b.hi	0x202ac <syna_tcm_buf_copy_0+0x1d0>
   201dc: 2a1503e2     	mov	w2, w21
   201e0: 94000000     	bl	0x201e0 <syna_tcm_buf_copy_0+0x104>
		00000000000201e0:  R_AARCH64_CALL26	memcpy
   201e4: b9400e88     	ldr	w8, [x20, #0xc]
   201e8: b9000e68     	str	w8, [x19, #0xc]
   201ec: 39410282     	ldrb	w2, [x20, #0x40]
   201f0: 7100045f     	cmp	w2, #0x1
   201f4: 540004c1     	b.ne	0x2028c <syna_tcm_buf_copy_0+0x1b0>
   201f8: 2a1f03e8     	mov	w8, wzr
   201fc: 91004280     	add	x0, x20, #0x10
   20200: 39010288     	strb	w8, [x20, #0x40]
   20204: 94000000     	bl	0x20204 <syna_tcm_buf_copy_0+0x128>
		0000000000020204:  R_AARCH64_CALL26	mutex_unlock
   20208: 39410262     	ldrb	w2, [x19, #0x40]
   2020c: 7100045f     	cmp	w2, #0x1
   20210: 540002e1     	b.ne	0x2026c <syna_tcm_buf_copy_0+0x190>
   20214: 2a1f03e8     	mov	w8, wzr
   20218: 91004260     	add	x0, x19, #0x10
   2021c: 39010268     	strb	w8, [x19, #0x40]
   20220: 94000000     	bl	0x20220 <syna_tcm_buf_copy_0+0x144>
		0000000000020220:  R_AARCH64_CALL26	mutex_unlock
   20224: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   20228: f9400bf7     	ldr	x23, [sp, #0x10]
   2022c: a94257f6     	ldp	x22, x21, [sp, #0x20]
   20230: a8c47bfd     	ldp	x29, x30, [sp], #0x40
   20234: d50323bf     	autiasp
   20238: d65f03c0     	ret
   2023c: 90000000     	adrp	x0, 0x20000 <syna_tcm_buf_alloc_0+0x78>
		000000000002023c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   20240: 91000000     	add	x0, x0, #0x0
		0000000000020240:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   20244: 90000001     	adrp	x1, 0x20000 <syna_tcm_buf_alloc_0+0x78>
		0000000000020244:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d70
   20248: 91000021     	add	x1, x1, #0x0
		0000000000020248:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d70
   2024c: 94000000     	bl	0x2024c <syna_tcm_buf_copy_0+0x170>
		000000000002024c:  R_AARCH64_CALL26	_printk
   20250: 17ffffad     	b	0x20104 <syna_tcm_buf_copy_0+0x28>
   20254: 90000000     	adrp	x0, 0x20000 <syna_tcm_buf_alloc_0+0x78>
		0000000000020254:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   20258: 91000000     	add	x0, x0, #0x0
		0000000000020258:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   2025c: 90000001     	adrp	x1, 0x20000 <syna_tcm_buf_alloc_0+0x78>
		000000000002025c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d70
   20260: 91000021     	add	x1, x1, #0x0
		0000000000020260:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d70
   20264: 94000000     	bl	0x20264 <syna_tcm_buf_copy_0+0x188>
		0000000000020264:  R_AARCH64_CALL26	_printk
   20268: 17ffffae     	b	0x20120 <syna_tcm_buf_copy_0+0x44>
   2026c: 90000000     	adrp	x0, 0x20000 <syna_tcm_buf_alloc_0+0x78>
		000000000002026c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   20270: 91000000     	add	x0, x0, #0x0
		0000000000020270:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   20274: 90000001     	adrp	x1, 0x20000 <syna_tcm_buf_alloc_0+0x78>
		0000000000020274:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16aa8
   20278: 91000021     	add	x1, x1, #0x0
		0000000000020278:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16aa8
   2027c: 94000000     	bl	0x2027c <syna_tcm_buf_copy_0+0x1a0>
		000000000002027c:  R_AARCH64_CALL26	_printk
   20280: 39410268     	ldrb	w8, [x19, #0x40]
   20284: 51000508     	sub	w8, w8, #0x1
   20288: 17ffffe4     	b	0x20218 <syna_tcm_buf_copy_0+0x13c>
   2028c: 90000000     	adrp	x0, 0x20000 <syna_tcm_buf_alloc_0+0x78>
		000000000002028c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   20290: 91000000     	add	x0, x0, #0x0
		0000000000020290:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   20294: 90000001     	adrp	x1, 0x20000 <syna_tcm_buf_alloc_0+0x78>
		0000000000020294:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16aa8
   20298: 91000021     	add	x1, x1, #0x0
		0000000000020298:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16aa8
   2029c: 94000000     	bl	0x2029c <syna_tcm_buf_copy_0+0x1c0>
		000000000002029c:  R_AARCH64_CALL26	_printk
   202a0: 39410288     	ldrb	w8, [x20, #0x40]
   202a4: 51000508     	sub	w8, w8, #0x1
   202a8: 17ffffd5     	b	0x201fc <syna_tcm_buf_copy_0+0x120>
   202ac: 90000000     	adrp	x0, 0x20000 <syna_tcm_buf_alloc_0+0x78>
		00000000000202ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x130d2
   202b0: 91000000     	add	x0, x0, #0x0
		00000000000202b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x130d2
   202b4: 90000001     	adrp	x1, 0x20000 <syna_tcm_buf_alloc_0+0x78>
		00000000000202b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc770
   202b8: 91000021     	add	x1, x1, #0x0
		00000000000202b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc770
   202bc: 2a1503e4     	mov	w4, w21
   202c0: 94000000     	bl	0x202c0 <syna_tcm_buf_copy_0+0x1e4>
		00000000000202c0:  R_AARCH64_CALL26	_printk
   202c4: b9400e95     	ldr	w21, [x20, #0xc]
   202c8: 90000000     	adrp	x0, 0x20000 <syna_tcm_buf_alloc_0+0x78>
		00000000000202c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe7f2
   202cc: 91000000     	add	x0, x0, #0x0
		00000000000202cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe7f2
   202d0: 90000001     	adrp	x1, 0x20000 <syna_tcm_buf_alloc_0+0x78>
		00000000000202d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc0de
   202d4: 91000021     	add	x1, x1, #0x0
		00000000000202d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc0de
   202d8: 2a1503e2     	mov	w2, w21
   202dc: 1400001e     	b	0x20354 <syna_tcm_buf_copy_0+0x278>
   202e0: 90000000     	adrp	x0, 0x20000 <syna_tcm_buf_alloc_0+0x78>
		00000000000202e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d82
   202e4: 91000000     	add	x0, x0, #0x0
		00000000000202e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d82
   202e8: 1400000a     	b	0x20310 <syna_tcm_buf_copy_0+0x234>
   202ec: 90000000     	adrp	x0, 0x20000 <syna_tcm_buf_alloc_0+0x78>
		00000000000202ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15a80
   202f0: 91000000     	add	x0, x0, #0x0
		00000000000202f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15a80
   202f4: 90000001     	adrp	x1, 0x20000 <syna_tcm_buf_alloc_0+0x78>
		00000000000202f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14c56
   202f8: 91000021     	add	x1, x1, #0x0
		00000000000202f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14c56
   202fc: 94000000     	bl	0x202fc <syna_tcm_buf_copy_0+0x220>
		00000000000202fc:  R_AARCH64_CALL26	_printk
   20300: 94000000     	bl	0x20300 <syna_tcm_buf_copy_0+0x224>
		0000000000020300:  R_AARCH64_CALL26	syna_request_managed_device
   20304: b5fff380     	cbnz	x0, 0x20174 <syna_tcm_buf_copy_0+0x98>
   20308: 90000000     	adrp	x0, 0x20000 <syna_tcm_buf_alloc_0+0x78>
		0000000000020308:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15a80
   2030c: 91000000     	add	x0, x0, #0x0
		000000000002030c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15a80
   20310: 90000001     	adrp	x1, 0x20000 <syna_tcm_buf_alloc_0+0x78>
		0000000000020310:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf952
   20314: 91000021     	add	x1, x1, #0x0
		0000000000020314:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf952
   20318: 94000000     	bl	0x20318 <syna_tcm_buf_copy_0+0x23c>
		0000000000020318:  R_AARCH64_CALL26	_printk
   2031c: f900027f     	str	xzr, [x19]
   20320: 90000000     	adrp	x0, 0x20000 <syna_tcm_buf_alloc_0+0x78>
		0000000000020320:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10a46
   20324: 91000000     	add	x0, x0, #0x0
		0000000000020324:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10a46
   20328: 90000001     	adrp	x1, 0x20000 <syna_tcm_buf_alloc_0+0x78>
		0000000000020328:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x124ae
   2032c: 91000021     	add	x1, x1, #0x0
		000000000002032c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x124ae
   20330: 2a1603e2     	mov	w2, w22
   20334: 94000000     	bl	0x20334 <syna_tcm_buf_copy_0+0x258>
		0000000000020334:  R_AARCH64_CALL26	_printk
   20338: f900067f     	str	xzr, [x19, #0x8]
   2033c: 90000000     	adrp	x0, 0x20000 <syna_tcm_buf_alloc_0+0x78>
		000000000002033c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11328
   20340: 91000000     	add	x0, x0, #0x0
		0000000000020340:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11328
   20344: b9400e88     	ldr	w8, [x20, #0xc]
   20348: 90000001     	adrp	x1, 0x20000 <syna_tcm_buf_alloc_0+0x78>
		0000000000020348:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc0de
   2034c: 91000021     	add	x1, x1, #0x0
		000000000002034c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc0de
   20350: 11000502     	add	w2, w8, #0x1
   20354: 94000000     	bl	0x20354 <syna_tcm_buf_copy_0+0x278>
		0000000000020354:  R_AARCH64_CALL26	_printk
   20358: 17ffffa5     	b	0x201ec <syna_tcm_buf_copy_0+0x110>
