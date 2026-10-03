
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000100e8 <syna_tcm_v1_write_message>:
   100e8: d503233f     	paciasp
   100ec: d10283ff     	sub	sp, sp, #0xa0
   100f0: a9047bfd     	stp	x29, x30, [sp, #0x40]
   100f4: a9056ffc     	stp	x28, x27, [sp, #0x50]
   100f8: a90667fa     	stp	x26, x25, [sp, #0x60]
   100fc: a9075ff8     	stp	x24, x23, [sp, #0x70]
   10100: a90857f6     	stp	x22, x21, [sp, #0x80]
   10104: a9094ff4     	stp	x20, x19, [sp, #0x90]
   10108: 910103fd     	add	x29, sp, #0x40
   1010c: f81e83a2     	stur	x2, [x29, #-0x18]
   10110: b9001fe1     	str	w1, [sp, #0x1c]
   10114: b4002360     	cbz	x0, 0x10580 <syna_tcm_v1_write_message+0x498>
   10118: f9402408     	ldr	x8, [x0, #0x48]
   1011c: aa0003f3     	mov	x19, x0
   10120: b4002368     	cbz	x8, 0x1058c <syna_tcm_v1_write_message+0x4a4>
   10124: 2a0503f7     	mov	w23, w5
   10128: aa0403f6     	mov	x22, x4
   1012c: 2a0303f8     	mov	w24, w3
   10130: b4000064     	cbz	x4, 0x1013c <syna_tcm_v1_write_message+0x54>
   10134: 52801fe8     	mov	w8, #0xff               // =255
   10138: 390002c8     	strb	w8, [x22]
   1013c: 910c6260     	add	x0, x19, #0x318
   10140: 94000000     	bl	0x10140 <syna_tcm_v1_write_message+0x58>
		0000000000010140:  R_AARCH64_CALL26	mutex_lock
   10144: 910d2260     	add	x0, x19, #0x348
   10148: 94000000     	bl	0x10148 <syna_tcm_v1_write_message+0x60>
		0000000000010148:  R_AARCH64_CALL26	mutex_lock
   1014c: 52800028     	mov	w8, #0x1                // =1
   10150: b901f668     	str	w8, [x19, #0x1f4]
   10154: b901fa68     	str	w8, [x19, #0x1f8]
   10158: b9401fe8     	ldr	w8, [sp, #0x1c]
   1015c: b902227f     	str	wzr, [x19, #0x220]
   10160: 3907f268     	strb	w8, [x19, #0x1fc]
   10164: 340002b7     	cbz	w23, 0x101b8 <syna_tcm_v1_write_message+0xd0>
   10168: f9402674     	ldr	x20, [x19, #0x48]
   1016c: b40024d4     	cbz	x20, 0x10604 <syna_tcm_v1_write_message+0x51c>
   10170: f9401e88     	ldr	x8, [x20, #0x38]
   10174: b4000268     	cbz	x8, 0x101c0 <syna_tcm_v1_write_message+0xd8>
   10178: 91014260     	add	x0, x19, #0x50
   1017c: 94000000     	bl	0x1017c <syna_tcm_v1_write_message+0x94>
		000000000001017c:  R_AARCH64_CALL26	mutex_lock
   10180: f9401e88     	ldr	x8, [x20, #0x38]
   10184: aa1403e0     	mov	x0, x20
   10188: 2a1f03e1     	mov	w1, wzr
   1018c: b85fc110     	ldur	w16, [x8, #-0x4]
   10190: 728c3631     	movk	w17, #0x61b1
   10194: 72a685d1     	movk	w17, #0x342e, lsl #16
   10198: 6b11021f     	cmp	w16, w17
   1019c: 54000040     	b.eq	0x101a4 <syna_tcm_v1_write_message+0xbc>
   101a0: d4304500     	brk	#0x8228
   101a4: d63f0100     	blr	x8
   101a8: 2a0003f4     	mov	w20, w0
   101ac: 91014260     	add	x0, x19, #0x50
   101b0: 94000000     	bl	0x101b0 <syna_tcm_v1_write_message+0xc8>
		00000000000101b0:  R_AARCH64_CALL26	mutex_unlock
   101b4: 14000004     	b	0x101c4 <syna_tcm_v1_write_message+0xdc>
   101b8: 2a1f03ee     	mov	w14, wzr
   101bc: 14000004     	b	0x101cc <syna_tcm_v1_write_message+0xe4>
   101c0: 2a1f03f4     	mov	w20, wzr
   101c4: 7100029f     	cmp	w20, #0x0
   101c8: 1a9fd7ee     	cset	w14, gt
   101cc: 394e0268     	ldrb	w8, [x19, #0x380]
   101d0: 7100051f     	cmp	w8, #0x1
   101d4: 540003c1     	b.ne	0x1024c <syna_tcm_v1_write_message+0x164>
   101d8: b9401fe8     	ldr	w8, [sp, #0x1c]
   101dc: 529fe00a     	mov	w10, #0xff00            // =65280
   101e0: 12001f0b     	and	w11, w24, #0xff
   101e4: 2a2803e8     	mvn	w8, w8
   101e8: 92401d09     	and	x9, x8, #0xff
   101ec: 90000008     	adrp	x8, 0x10000 <syna_tcm_v1_detect+0x3f0>
		00000000000101ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0xd3d0
   101f0: 91000108     	add	x8, x8, #0x0
		00000000000101f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0xd3d0
   101f4: 78697909     	ldrh	w9, [x8, x9, lsl #1]
   101f8: 0a29014a     	bic	w10, w10, w9
   101fc: 4a092309     	eor	w9, w24, w9, lsl #8
   10200: 4a4a216a     	eor	w10, w11, w10, lsr #8
   10204: 786a590a     	ldrh	w10, [x8, w10, uxtw #1]
   10208: 4a0a0129     	eor	w9, w9, w10
   1020c: 53083d29     	ubfx	w9, w9, #8, #8
   10210: 78695914     	ldrh	w20, [x8, w9, uxtw #1]
   10214: 4a0a2289     	eor	w9, w20, w10, lsl #8
   10218: 34000158     	cbz	w24, 0x10240 <syna_tcm_v1_write_message+0x158>
   1021c: f85e83ab     	ldur	x11, [x29, #-0x18]
   10220: 2a1803ea     	mov	w10, w24
   10224: 3840156c     	ldrb	w12, [x11], #0x1
   10228: 12181d2d     	and	w13, w9, #0xff00
   1022c: 7100054a     	subs	w10, w10, #0x1
   10230: 4a4d218c     	eor	w12, w12, w13, lsr #8
   10234: 786c5914     	ldrh	w20, [x8, w12, uxtw #1]
   10238: 4a092289     	eor	w9, w20, w9, lsl #8
   1023c: 54ffff41     	b.ne	0x10224 <syna_tcm_v1_write_message+0x13c>
   10240: 53083d35     	ubfx	w21, w9, #8, #8
   10244: 11001708     	add	w8, w24, #0x5
   10248: 14000004     	b	0x10258 <syna_tcm_v1_write_message+0x170>
   1024c: 2a1f03f5     	mov	w21, wzr
   10250: 2a1f03f4     	mov	w20, wzr
   10254: 11000f08     	add	w8, w24, #0x3
   10258: f9402669     	ldr	x9, [x19, #0x48]
   1025c: b9403a6a     	ldr	w10, [x19, #0x38]
   10260: 3940552b     	ldrb	w11, [x9, #0x15]
   10264: 7100015f     	cmp	w10, #0x0
   10268: 1a8a010a     	csel	w10, w8, w10, eq
   1026c: 7100057f     	cmp	w11, #0x1
   10270: 54000161     	b.ne	0x1029c <syna_tcm_v1_write_message+0x1b4>
   10274: 2a1f03f9     	mov	w25, wzr
   10278: 340001ea     	cbz	w10, 0x102b4 <syna_tcm_v1_write_message+0x1cc>
   1027c: b940192b     	ldr	w11, [x9, #0x18]
   10280: 2a1903e9     	mov	w9, w25
   10284: 340001ab     	cbz	w11, 0x102b8 <syna_tcm_v1_write_message+0x1d0>
   10288: 1acb0949     	udiv	w9, w10, w11
   1028c: 1b0b7d39     	mul	w25, w9, w11
   10290: 350000b9     	cbnz	w25, 0x102a4 <syna_tcm_v1_write_message+0x1bc>
   10294: 2a1f03e9     	mov	w9, wzr
   10298: 14000008     	b	0x102b8 <syna_tcm_v1_write_message+0x1d0>
   1029c: 2a0a03f9     	mov	w25, w10
   102a0: 34ffffb9     	cbz	w25, 0x10294 <syna_tcm_v1_write_message+0x1ac>
   102a4: 0b190108     	add	w8, w8, w25
   102a8: 51000508     	sub	w8, w8, #0x1
   102ac: 1ad90909     	udiv	w9, w8, w25
   102b0: 14000002     	b	0x102b8 <syna_tcm_v1_write_message+0x1d0>
   102b4: 2a1903e9     	mov	w9, w25
   102b8: 394b2262     	ldrb	w2, [x19, #0x2c8]
   102bc: 7100053f     	cmp	w9, #0x1
   102c0: 29013bf7     	stp	w23, w14, [sp, #0x8]
   102c4: 1a9f853a     	csinc	w26, w9, wzr, hi
   102c8: f9000bf6     	str	x22, [sp, #0x10]
   102cc: 350016e2     	cbnz	w2, 0x105a8 <syna_tcm_v1_write_message+0x4c0>
   102d0: 910a6260     	add	x0, x19, #0x298
   102d4: 94000000     	bl	0x102d4 <syna_tcm_v1_write_message+0x1ec>
		00000000000102d4:  R_AARCH64_CALL26	mutex_lock
   102d8: 394b2268     	ldrb	w8, [x19, #0x2c8]
   102dc: 12001e89     	and	w9, w20, #0xff
   102e0: 2a1903ea     	mov	w10, w25
   102e4: 2a1f03f6     	mov	w22, wzr
   102e8: 2a1f03fb     	mov	w27, wzr
   102ec: aa0a03f4     	mov	x20, x10
   102f0: 11000508     	add	w8, w8, #0x1
   102f4: 2a1803f7     	mov	w23, w24
   102f8: 2a1a03ea     	mov	w10, w26
   102fc: 390b2268     	strb	w8, [x19, #0x2c8]
   10300: 2a152128     	orr	w8, w9, w21, lsl #8
   10304: b81e43b8     	stur	w24, [x29, #-0x1c]
   10308: b90023e8     	str	w8, [sp, #0x20]
   1030c: f81f03b4     	stur	x20, [x29, #-0x10]
   10310: 14000008     	b	0x10330 <syna_tcm_v1_write_message+0x248>
   10314: b85fc3aa     	ldur	w10, [x29, #-0x4]
   10318: f85f03b4     	ldur	x20, [x29, #-0x10]
   1031c: 0b1c02d6     	add	w22, w22, w28
   10320: 4b1c02f7     	sub	w23, w23, w28
   10324: 2a1503fb     	mov	w27, w21
   10328: 6b0a02bf     	cmp	w21, w10
   1032c: 54001e22     	b.hs	0x106f0 <syna_tcm_v1_write_message+0x608>
   10330: 7100037f     	cmp	w27, #0x0
   10334: 12800048     	mov	w8, #-0x3               // =-3
   10338: 11000775     	add	w21, w27, #0x1
   1033c: 5a9f0108     	csinv	w8, w8, wzr, eq
   10340: 6b1902ff     	cmp	w23, w25
   10344: 0b190108     	add	w8, w8, w25
   10348: 1a97811c     	csel	w28, w8, w23, hi
   1034c: 6b0a02bf     	cmp	w21, w10
   10350: 1a9f17f8     	cset	w24, eq
   10354: 54000221     	b.ne	0x10398 <syna_tcm_v1_write_message+0x2b0>
   10358: f9402668     	ldr	x8, [x19, #0x48]
   1035c: 39405509     	ldrb	w9, [x8, #0x15]
   10360: 360001c9     	tbz	w9, #0x0, 0x10398 <syna_tcm_v1_write_message+0x2b0>
   10364: b9401d09     	ldr	w9, [x8, #0x1c]
   10368: 6b09039f     	cmp	w28, w9
   1036c: 54000149     	b.ls	0x10394 <syna_tcm_v1_write_message+0x2ac>
   10370: b9401908     	ldr	w8, [x8, #0x18]
   10374: 34000068     	cbz	w8, 0x10380 <syna_tcm_v1_write_message+0x298>
   10378: 1ac80b89     	udiv	w9, w28, w8
   1037c: 1b087d28     	mul	w8, w9, w8
   10380: 5100051c     	sub	w28, w8, #0x1
   10384: 6b17039f     	cmp	w28, w23
   10388: 1a9f17f8     	cset	w24, eq
   1038c: 1a8a054a     	cinc	w10, w10, ne
   10390: 14000002     	b	0x10398 <syna_tcm_v1_write_message+0x2b0>
   10394: 52800038     	mov	w24, #0x1               // =1
   10398: b9429262     	ldr	w2, [x19, #0x290]
   1039c: f9414660     	ldr	x0, [x19, #0x288]
   103a0: b81fc3aa     	stur	w10, [x29, #-0x4]
   103a4: 6b19005f     	cmp	w2, w25
   103a8: 540002a2     	b.hs	0x103fc <syna_tcm_v1_write_message+0x314>
   103ac: b85e43ba     	ldur	w26, [x29, #-0x1c]
   103b0: b40000e0     	cbz	x0, 0x103cc <syna_tcm_v1_write_message+0x2e4>
   103b4: aa0003f4     	mov	x20, x0
   103b8: 94000000     	bl	0x103b8 <syna_tcm_v1_write_message+0x2d0>
		00000000000103b8:  R_AARCH64_CALL26	syna_request_managed_device
   103bc: b4000d60     	cbz	x0, 0x10568 <syna_tcm_v1_write_message+0x480>
   103c0: aa1403e1     	mov	x1, x20
   103c4: 94000000     	bl	0x103c4 <syna_tcm_v1_write_message+0x2dc>
		00000000000103c4:  R_AARCH64_CALL26	devm_kfree
   103c8: f85f03b4     	ldur	x20, [x29, #-0x10]
   103cc: 94000000     	bl	0x103cc <syna_tcm_v1_write_message+0x2e4>
		00000000000103cc:  R_AARCH64_CALL26	syna_request_managed_device
   103d0: 7100073f     	cmp	w25, #0x1
   103d4: 5400130b     	b.lt	0x10634 <syna_tcm_v1_write_message+0x54c>
   103d8: b40012e0     	cbz	x0, 0x10634 <syna_tcm_v1_write_message+0x54c>
   103dc: aa1403e1     	mov	x1, x20
   103e0: 5281b802     	mov	w2, #0xdc0              // =3520
   103e4: 94000000     	bl	0x103e4 <syna_tcm_v1_write_message+0x2fc>
		00000000000103e4:  R_AARCH64_CALL26	devm_kmalloc
   103e8: f9014660     	str	x0, [x19, #0x288]
   103ec: b4001380     	cbz	x0, 0x1065c <syna_tcm_v1_write_message+0x574>
   103f0: aa1403e2     	mov	x2, x20
   103f4: b9029279     	str	w25, [x19, #0x290]
   103f8: 14000002     	b	0x10400 <syna_tcm_v1_write_message+0x318>
   103fc: b85e43ba     	ldur	w26, [x29, #-0x1c]
   10400: 2a1f03e1     	mov	w1, wzr
   10404: 94000000     	bl	0x10404 <syna_tcm_v1_write_message+0x31c>
		0000000000010404:  R_AARCH64_CALL26	memset
   10408: f9414668     	ldr	x8, [x19, #0x288]
   1040c: b902967f     	str	wzr, [x19, #0x294]
   10410: 3400029b     	cbz	w27, 0x10460 <syna_tcm_v1_write_message+0x378>
   10414: f85e83a9     	ldur	x9, [x29, #-0x18]
   10418: ab364121     	adds	x1, x9, w22, uxtw
   1041c: 52800029     	mov	w9, #0x1                // =1
   10420: 39000109     	strb	w9, [x8]
   10424: 540015a0     	b.eq	0x106d8 <syna_tcm_v1_write_message+0x5f0>
   10428: f9414668     	ldr	x8, [x19, #0x288]
   1042c: 91000500     	add	x0, x8, #0x1
   10430: b4001540     	cbz	x0, 0x106d8 <syna_tcm_v1_write_message+0x5f0>
   10434: b9429268     	ldr	w8, [x19, #0x290]
   10438: 4b160342     	sub	w2, w26, w22
   1043c: 6b02039f     	cmp	w28, w2
   10440: 51000503     	sub	w3, w8, #0x1
   10444: 54000ee8     	b.hi	0x10620 <syna_tcm_v1_write_message+0x538>
   10448: 6b03039f     	cmp	w28, w3
   1044c: 54000ea8     	b.hi	0x10620 <syna_tcm_v1_write_message+0x538>
   10450: 2a1c03e2     	mov	w2, w28
   10454: 94000000     	bl	0x10454 <syna_tcm_v1_write_message+0x36c>
		0000000000010454:  R_AARCH64_CALL26	memcpy
   10458: 52800028     	mov	w8, #0x1                // =1
   1045c: 14000018     	b	0x104bc <syna_tcm_v1_write_message+0x3d4>
   10460: b9401fe9     	ldr	w9, [sp, #0x1c]
   10464: 39000109     	strb	w9, [x8]
   10468: f9414668     	ldr	x8, [x19, #0x288]
   1046c: 3900051a     	strb	w26, [x8, #0x1]
   10470: 53087f48     	lsr	w8, w26, #8
   10474: f9414669     	ldr	x9, [x19, #0x288]
   10478: 39000928     	strb	w8, [x9, #0x2]
   1047c: 340001fa     	cbz	w26, 0x104b8 <syna_tcm_v1_write_message+0x3d0>
   10480: f85e83a8     	ldur	x8, [x29, #-0x18]
   10484: b40012a8     	cbz	x8, 0x106d8 <syna_tcm_v1_write_message+0x5f0>
   10488: f9414668     	ldr	x8, [x19, #0x288]
   1048c: 91000d00     	add	x0, x8, #0x3
   10490: b4001240     	cbz	x0, 0x106d8 <syna_tcm_v1_write_message+0x5f0>
   10494: b9429268     	ldr	w8, [x19, #0x290]
   10498: 6b1a039f     	cmp	w28, w26
   1049c: 51000d03     	sub	w3, w8, #0x3
   104a0: 540010e8     	b.hi	0x106bc <syna_tcm_v1_write_message+0x5d4>
   104a4: 6b03039f     	cmp	w28, w3
   104a8: 540010a8     	b.hi	0x106bc <syna_tcm_v1_write_message+0x5d4>
   104ac: f85e83a1     	ldur	x1, [x29, #-0x18]
   104b0: 2a1c03e2     	mov	w2, w28
   104b4: 94000000     	bl	0x104b4 <syna_tcm_v1_write_message+0x3cc>
		00000000000104b4:  R_AARCH64_CALL26	memcpy
   104b8: 52800068     	mov	w8, #0x3                // =3
   104bc: 394e0269     	ldrb	w9, [x19, #0x380]
   104c0: f9414661     	ldr	x1, [x19, #0x288]
   104c4: 0b1c0114     	add	w20, w8, w28
   104c8: 0a090309     	and	w9, w24, w9
   104cc: 7100053f     	cmp	w9, #0x1
   104d0: 54000181     	b.ne	0x10500 <syna_tcm_v1_write_message+0x418>
   104d4: ab364028     	adds	x8, x1, w22, uxtw
   104d8: 54000ec0     	b.eq	0x106b0 <syna_tcm_v1_write_message+0x5c8>
   104dc: b9429269     	ldr	w9, [x19, #0x290]
   104e0: 4b160123     	sub	w3, w9, w22
   104e4: 7100047f     	cmp	w3, #0x1
   104e8: 54000d69     	b.ls	0x10694 <syna_tcm_v1_write_message+0x5ac>
   104ec: b94023e9     	ldr	w9, [sp, #0x20]
   104f0: 11000ad6     	add	w22, w22, #0x2
   104f4: 11000a94     	add	w20, w20, #0x2
   104f8: 79000109     	strh	w9, [x8]
   104fc: f9414661     	ldr	x1, [x19, #0x288]
   10500: f9402660     	ldr	x0, [x19, #0x48]
   10504: b40005e0     	cbz	x0, 0x105c0 <syna_tcm_v1_write_message+0x4d8>
   10508: f9401408     	ldr	x8, [x0, #0x28]
   1050c: b4000628     	cbz	x8, 0x105d0 <syna_tcm_v1_write_message+0x4e8>
   10510: 2a1403e2     	mov	w2, w20
   10514: b85fc110     	ldur	w16, [x8, #-0x4]
   10518: 728403f1     	movk	w17, #0x201f
   1051c: 72a51491     	movk	w17, #0x28a4, lsl #16
   10520: 6b11021f     	cmp	w16, w17
   10524: 54000040     	b.eq	0x1052c <syna_tcm_v1_write_message+0x444>
   10528: d4304500     	brk	#0x8228
   1052c: d63f0100     	blr	x8
   10530: 2a0003fa     	mov	w26, w0
   10534: 37f805a0     	tbnz	w0, #0x1f, 0x105e8 <syna_tcm_v1_write_message+0x500>
   10538: 3707eef8     	tbnz	w24, #0x0, 0x10314 <syna_tcm_v1_write_message+0x22c>
   1053c: b9421260     	ldr	w0, [x19, #0x210]
   10540: 7100041f     	cmp	w0, #0x1
   10544: 54ffee8b     	b.lt	0x10314 <syna_tcm_v1_write_message+0x22c>
   10548: b9421668     	ldr	w8, [x19, #0x214]
   1054c: 7100051f     	cmp	w8, #0x1
   10550: 54ffee2b     	b.lt	0x10314 <syna_tcm_v1_write_message+0x22c>
   10554: 6b00011f     	cmp	w8, w0
   10558: 52800042     	mov	w2, #0x2                // =2
   1055c: 1a808101     	csel	w1, w8, w0, hi
   10560: 94000000     	bl	0x10560 <syna_tcm_v1_write_message+0x478>
		0000000000010560:  R_AARCH64_CALL26	usleep_range_state
   10564: 17ffff6c     	b	0x10314 <syna_tcm_v1_write_message+0x22c>
   10568: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x3f0>
		0000000000010568:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   1056c: 91000000     	add	x0, x0, #0x0
		000000000001056c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   10570: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x3f0>
		0000000000010570:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   10574: 91000021     	add	x1, x1, #0x0
		0000000000010574:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   10578: 94000000     	bl	0x10578 <syna_tcm_v1_write_message+0x490>
		0000000000010578:  R_AARCH64_CALL26	_printk
   1057c: 17ffff93     	b	0x103c8 <syna_tcm_v1_write_message+0x2e0>
   10580: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x3f0>
		0000000000010580:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c8
   10584: 91000000     	add	x0, x0, #0x0
		0000000000010584:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c8
   10588: 14000003     	b	0x10594 <syna_tcm_v1_write_message+0x4ac>
   1058c: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x3f0>
		000000000001058c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb874
   10590: 91000000     	add	x0, x0, #0x0
		0000000000010590:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb874
   10594: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x3f0>
		0000000000010594:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5414
   10598: 91000021     	add	x1, x1, #0x0
		0000000000010598:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5414
   1059c: 94000000     	bl	0x1059c <syna_tcm_v1_write_message+0x4b4>
		000000000001059c:  R_AARCH64_CALL26	_printk
   105a0: 12801e1a     	mov	w26, #-0xf1             // =-241
   105a4: 140000ac     	b	0x10854 <syna_tcm_v1_write_message+0x76c>
   105a8: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x3f0>
		00000000000105a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   105ac: 91000000     	add	x0, x0, #0x0
		00000000000105ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   105b0: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x3f0>
		00000000000105b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70c4
   105b4: 91000021     	add	x1, x1, #0x0
		00000000000105b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70c4
   105b8: 94000000     	bl	0x105b8 <syna_tcm_v1_write_message+0x4d0>
		00000000000105b8:  R_AARCH64_CALL26	_printk
   105bc: 17ffff45     	b	0x102d0 <syna_tcm_v1_write_message+0x1e8>
   105c0: 12801e1a     	mov	w26, #-0xf1             // =-241
   105c4: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x3f0>
		00000000000105c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c06
   105c8: 91000000     	add	x0, x0, #0x0
		00000000000105c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c06
   105cc: 14000004     	b	0x105dc <syna_tcm_v1_write_message+0x4f4>
   105d0: 12801e9a     	mov	w26, #-0xf5             // =-245
   105d4: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x3f0>
		00000000000105d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c3a
   105d8: 91000000     	add	x0, x0, #0x0
		00000000000105d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c3a
   105dc: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x3f0>
		00000000000105dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7d06
   105e0: 91000021     	add	x1, x1, #0x0
		00000000000105e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7d06
   105e4: 94000000     	bl	0x105e4 <syna_tcm_v1_write_message+0x4fc>
		00000000000105e4:  R_AARCH64_CALL26	_printk
   105e8: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x3f0>
		00000000000105e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b68
   105ec: 91000000     	add	x0, x0, #0x0
		00000000000105ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b68
   105f0: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x3f0>
		00000000000105f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x58e2
   105f4: 91000021     	add	x1, x1, #0x0
		00000000000105f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x58e2
   105f8: 2a1403e2     	mov	w2, w20
   105fc: 94000000     	bl	0x105fc <syna_tcm_v1_write_message+0x514>
		00000000000105fc:  R_AARCH64_CALL26	_printk
   10600: 1400003c     	b	0x106f0 <syna_tcm_v1_write_message+0x608>
   10604: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x3f0>
		0000000000010604:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c06
   10608: 91000000     	add	x0, x0, #0x0
		0000000000010608:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c06
   1060c: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x3f0>
		000000000001060c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb1ce
   10610: 91000021     	add	x1, x1, #0x0
		0000000000010610:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb1ce
   10614: 94000000     	bl	0x10614 <syna_tcm_v1_write_message+0x52c>
		0000000000010614:  R_AARCH64_CALL26	_printk
   10618: 12801e14     	mov	w20, #-0xf1             // =-241
   1061c: 17fffeea     	b	0x101c4 <syna_tcm_v1_write_message+0xdc>
   10620: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x3f0>
		0000000000010620:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8406
   10624: 91000000     	add	x0, x0, #0x0
		0000000000010624:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8406
   10628: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x3f0>
		0000000000010628:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a80
   1062c: 91000021     	add	x1, x1, #0x0
		000000000001062c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a80
   10630: 14000028     	b	0x106d0 <syna_tcm_v1_write_message+0x5e8>
   10634: f100001f     	cmp	x0, #0x0
   10638: 90000008     	adrp	x8, 0x10000 <syna_tcm_v1_detect+0x3f0>
		0000000000010638:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70d6
   1063c: 91000108     	add	x8, x8, #0x0
		000000000001063c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70d6
   10640: 90000009     	adrp	x9, 0x10000 <syna_tcm_v1_detect+0x3f0>
		0000000000010640:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   10644: 91000129     	add	x9, x9, #0x0
		0000000000010644:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   10648: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x3f0>
		0000000000010648:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bfa
   1064c: 91000021     	add	x1, x1, #0x0
		000000000001064c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bfa
   10650: 9a880120     	csel	x0, x9, x8, eq
   10654: 94000000     	bl	0x10654 <syna_tcm_v1_write_message+0x56c>
		0000000000010654:  R_AARCH64_CALL26	_printk
   10658: f901467f     	str	xzr, [x19, #0x288]
   1065c: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x3f0>
		000000000001065c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d74
   10660: 91000000     	add	x0, x0, #0x0
		0000000000010660:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d74
   10664: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x3f0>
		0000000000010664:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x77fc
   10668: 91000021     	add	x1, x1, #0x0
		0000000000010668:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x77fc
   1066c: 2a1903e2     	mov	w2, w25
   10670: 94000000     	bl	0x10670 <syna_tcm_v1_write_message+0x588>
		0000000000010670:  R_AARCH64_CALL26	_printk
   10674: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x3f0>
		0000000000010674:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x141c
   10678: 91000000     	add	x0, x0, #0x0
		0000000000010678:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x141c
   1067c: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x3f0>
		000000000001067c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x58e2
   10680: 91000021     	add	x1, x1, #0x0
		0000000000010680:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x58e2
   10684: f9014a7f     	str	xzr, [x19, #0x290]
   10688: 94000000     	bl	0x10688 <syna_tcm_v1_write_message+0x5a0>
		0000000000010688:  R_AARCH64_CALL26	_printk
   1068c: 12801e5a     	mov	w26, #-0xf3             // =-243
   10690: 14000018     	b	0x106f0 <syna_tcm_v1_write_message+0x608>
   10694: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x3f0>
		0000000000010694:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8406
   10698: 91000000     	add	x0, x0, #0x0
		0000000000010698:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8406
   1069c: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x3f0>
		000000000001069c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a80
   106a0: 91000021     	add	x1, x1, #0x0
		00000000000106a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a80
   106a4: 52800042     	mov	w2, #0x2                // =2
   106a8: 52800044     	mov	w4, #0x2                // =2
   106ac: 94000000     	bl	0x106ac <syna_tcm_v1_write_message+0x5c4>
		00000000000106ac:  R_AARCH64_CALL26	_printk
   106b0: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x3f0>
		00000000000106b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc5e6
   106b4: 91000000     	add	x0, x0, #0x0
		00000000000106b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc5e6
   106b8: 1400000a     	b	0x106e0 <syna_tcm_v1_write_message+0x5f8>
   106bc: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x3f0>
		00000000000106bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8406
   106c0: 91000000     	add	x0, x0, #0x0
		00000000000106c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8406
   106c4: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x3f0>
		00000000000106c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a80
   106c8: 91000021     	add	x1, x1, #0x0
		00000000000106c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a80
   106cc: 2a1a03e2     	mov	w2, w26
   106d0: 2a1c03e4     	mov	w4, w28
   106d4: 94000000     	bl	0x106d4 <syna_tcm_v1_write_message+0x5ec>
		00000000000106d4:  R_AARCH64_CALL26	_printk
   106d8: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x3f0>
		00000000000106d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc5a8
   106dc: 91000000     	add	x0, x0, #0x0
		00000000000106dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc5a8
   106e0: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x3f0>
		00000000000106e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x58e2
   106e4: 91000021     	add	x1, x1, #0x0
		00000000000106e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x58e2
   106e8: 94000000     	bl	0x106e8 <syna_tcm_v1_write_message+0x600>
		00000000000106e8:  R_AARCH64_CALL26	_printk
   106ec: 128002ba     	mov	w26, #-0x16             // =-22
   106f0: 394b2262     	ldrb	w2, [x19, #0x2c8]
   106f4: 7100045f     	cmp	w2, #0x1
   106f8: 54000c21     	b.ne	0x1087c <syna_tcm_v1_write_message+0x794>
   106fc: 2a1f03e8     	mov	w8, wzr
   10700: f9400bf6     	ldr	x22, [sp, #0x10]
   10704: b9400ff8     	ldr	w24, [sp, #0xc]
   10708: 910a6260     	add	x0, x19, #0x298
   1070c: 390b2268     	strb	w8, [x19, #0x2c8]
   10710: 94000000     	bl	0x10710 <syna_tcm_v1_write_message+0x628>
		0000000000010710:  R_AARCH64_CALL26	mutex_unlock
   10714: 910d2260     	add	x0, x19, #0x348
   10718: 94000000     	bl	0x10718 <syna_tcm_v1_write_message+0x630>
		0000000000010718:  R_AARCH64_CALL26	mutex_unlock
   1071c: 37f8067a     	tbnz	w26, #0x1f, 0x107e8 <syna_tcm_v1_write_message+0x700>
   10720: b9400bf7     	ldr	w23, [sp, #0x8]
   10724: 2a1f03f4     	mov	w20, wzr
   10728: 14000007     	b	0x10744 <syna_tcm_v1_write_message+0x65c>
   1072c: b941fa68     	ldr	w8, [x19, #0x1f8]
   10730: 7100051f     	cmp	w8, #0x1
   10734: 54000541     	b.ne	0x107dc <syna_tcm_v1_write_message+0x6f4>
   10738: b9420a68     	ldr	w8, [x19, #0x208]
   1073c: 6b08029f     	cmp	w20, w8
   10740: 540004e2     	b.hs	0x107dc <syna_tcm_v1_write_message+0x6f4>
   10744: 34000117     	cbz	w23, 0x10764 <syna_tcm_v1_write_message+0x67c>
   10748: 710006ff     	cmp	w23, #0x1
   1074c: 2a1703f5     	mov	w21, w23
   10750: 540002eb     	b.lt	0x107ac <syna_tcm_v1_write_message+0x6c4>
   10754: 2a1703e0     	mov	w0, w23
   10758: 94000000     	bl	0x10758 <syna_tcm_v1_write_message+0x670>
		0000000000010758:  R_AARCH64_CALL26	msleep
   1075c: 2a1703f5     	mov	w21, w23
   10760: 14000013     	b	0x107ac <syna_tcm_v1_write_message+0x6c4>
   10764: f9402660     	ldr	x0, [x19, #0x48]
   10768: b9420a61     	ldr	w1, [x19, #0x208]
   1076c: f9401808     	ldr	x8, [x0, #0x30]
   10770: 53027c35     	lsr	w21, w1, #2
   10774: b4000128     	cbz	x8, 0x10798 <syna_tcm_v1_write_message+0x6b0>
   10778: b85fc110     	ldur	w16, [x8, #-0x4]
   1077c: 72934f71     	movk	w17, #0x9a7b
   10780: 72a1f311     	movk	w17, #0xf98, lsl #16
   10784: 6b11021f     	cmp	w16, w17
   10788: 54000040     	b.eq	0x10790 <syna_tcm_v1_write_message+0x6a8>
   1078c: d4304500     	brk	#0x8228
   10790: d63f0100     	blr	x8
   10794: 14000006     	b	0x107ac <syna_tcm_v1_write_message+0x6c4>
   10798: 2a0103e0     	mov	w0, w1
   1079c: 94000000     	bl	0x1079c <syna_tcm_v1_write_message+0x6b4>
		000000000001079c:  R_AARCH64_CALL26	__msecs_to_jiffies
   107a0: aa0003e1     	mov	x1, x0
   107a4: 91088260     	add	x0, x19, #0x220
   107a8: 94000000     	bl	0x107a8 <syna_tcm_v1_write_message+0x6c0>
		00000000000107a8:  R_AARCH64_CALL26	wait_for_completion_timeout
   107ac: b941fa68     	ldr	w8, [x19, #0x1f8]
   107b0: 7100091f     	cmp	w8, #0x2
   107b4: 54000180     	b.eq	0x107e4 <syna_tcm_v1_write_message+0x6fc>
   107b8: b941fa68     	ldr	w8, [x19, #0x1f8]
   107bc: 0b1402b4     	add	w20, w21, w20
   107c0: 7100051f     	cmp	w8, #0x1
   107c4: 54fffb41     	b.ne	0x1072c <syna_tcm_v1_write_message+0x644>
   107c8: aa1303e0     	mov	x0, x19
   107cc: aa1f03e1     	mov	x1, xzr
   107d0: 940000a9     	bl	0x10a74 <syna_tcm_v1_read_message+0xa8>
		00000000000107d0:  R_AARCH64_CALL26	syna_tcm_v1_read_message
   107d4: 36fffac0     	tbz	w0, #0x1f, 0x1072c <syna_tcm_v1_write_message+0x644>
   107d8: 17ffffd8     	b	0x10738 <syna_tcm_v1_write_message+0x650>
   107dc: b941fa68     	ldr	w8, [x19, #0x1f8]
   107e0: 350006a8     	cbnz	w8, 0x108b4 <syna_tcm_v1_write_message+0x7cc>
   107e4: 2a1f03fa     	mov	w26, wzr
   107e8: b4000076     	cbz	x22, 0x107f4 <syna_tcm_v1_write_message+0x70c>
   107ec: 3947fa68     	ldrb	w8, [x19, #0x1fe]
   107f0: 390002c8     	strb	w8, [x22]
   107f4: 3907f27f     	strb	wzr, [x19, #0x1fc]
   107f8: 34000278     	cbz	w24, 0x10844 <syna_tcm_v1_write_message+0x75c>
   107fc: f9402674     	ldr	x20, [x19, #0x48]
   10800: b40004f4     	cbz	x20, 0x1089c <syna_tcm_v1_write_message+0x7b4>
   10804: f9401e88     	ldr	x8, [x20, #0x38]
   10808: b40001e8     	cbz	x8, 0x10844 <syna_tcm_v1_write_message+0x75c>
   1080c: 91014260     	add	x0, x19, #0x50
   10810: 94000000     	bl	0x10810 <syna_tcm_v1_write_message+0x728>
		0000000000010810:  R_AARCH64_CALL26	mutex_lock
   10814: f9401e88     	ldr	x8, [x20, #0x38]
   10818: aa1403e0     	mov	x0, x20
   1081c: 52800021     	mov	w1, #0x1                // =1
   10820: b85fc110     	ldur	w16, [x8, #-0x4]
   10824: 728c3631     	movk	w17, #0x61b1
   10828: 72a685d1     	movk	w17, #0x342e, lsl #16
   1082c: 6b11021f     	cmp	w16, w17
   10830: 54000040     	b.eq	0x10838 <syna_tcm_v1_write_message+0x750>
   10834: d4304500     	brk	#0x8228
   10838: d63f0100     	blr	x8
   1083c: 91014260     	add	x0, x19, #0x50
   10840: 94000000     	bl	0x10840 <syna_tcm_v1_write_message+0x758>
		0000000000010840:  R_AARCH64_CALL26	mutex_unlock
   10844: 910c6260     	add	x0, x19, #0x318
   10848: b901fa7f     	str	wzr, [x19, #0x1f8]
   1084c: b901f67f     	str	wzr, [x19, #0x1f4]
   10850: 94000000     	bl	0x10850 <syna_tcm_v1_write_message+0x768>
		0000000000010850:  R_AARCH64_CALL26	mutex_unlock
   10854: 2a1a03e0     	mov	w0, w26
   10858: a9494ff4     	ldp	x20, x19, [sp, #0x90]
   1085c: a94857f6     	ldp	x22, x21, [sp, #0x80]
   10860: a9475ff8     	ldp	x24, x23, [sp, #0x70]
   10864: a94667fa     	ldp	x26, x25, [sp, #0x60]
   10868: a9456ffc     	ldp	x28, x27, [sp, #0x50]
   1086c: a9447bfd     	ldp	x29, x30, [sp, #0x40]
   10870: 910283ff     	add	sp, sp, #0xa0
   10874: d50323bf     	autiasp
   10878: d65f03c0     	ret
   1087c: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x3f0>
		000000000001087c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   10880: 91000000     	add	x0, x0, #0x0
		0000000000010880:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   10884: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x3f0>
		0000000000010884:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   10888: 91000021     	add	x1, x1, #0x0
		0000000000010888:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   1088c: 94000000     	bl	0x1088c <syna_tcm_v1_write_message+0x7a4>
		000000000001088c:  R_AARCH64_CALL26	_printk
   10890: 394b2268     	ldrb	w8, [x19, #0x2c8]
   10894: 51000508     	sub	w8, w8, #0x1
   10898: 17ffff9a     	b	0x10700 <syna_tcm_v1_write_message+0x618>
   1089c: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x3f0>
		000000000001089c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c06
   108a0: 91000000     	add	x0, x0, #0x0
		00000000000108a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c06
   108a4: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x3f0>
		00000000000108a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb1ce
   108a8: 91000021     	add	x1, x1, #0x0
		00000000000108a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb1ce
   108ac: 94000000     	bl	0x108ac <syna_tcm_v1_write_message+0x7c4>
		00000000000108ac:  R_AARCH64_CALL26	_printk
   108b0: 17ffffe5     	b	0x10844 <syna_tcm_v1_write_message+0x75c>
   108b4: b9420a63     	ldr	w3, [x19, #0x208]
   108b8: 6b03029f     	cmp	w20, w3
   108bc: 54000162     	b.hs	0x108e8 <syna_tcm_v1_write_message+0x800>
   108c0: b9401fe8     	ldr	w8, [sp, #0x1c]
   108c4: 3947f662     	ldrb	w2, [x19, #0x1fd]
   108c8: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x3f0>
		00000000000108c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x589e
   108cc: 91000000     	add	x0, x0, #0x0
		00000000000108cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x589e
   108d0: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x3f0>
		00000000000108d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5414
   108d4: 91000021     	add	x1, x1, #0x0
		00000000000108d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5414
   108d8: 12001d03     	and	w3, w8, #0xff
   108dc: 94000000     	bl	0x108dc <syna_tcm_v1_write_message+0x7f4>
		00000000000108dc:  R_AARCH64_CALL26	_printk
   108e0: 12801e3a     	mov	w26, #-0xf2             // =-242
   108e4: 17ffffc1     	b	0x107e8 <syna_tcm_v1_write_message+0x700>
   108e8: b9401fe8     	ldr	w8, [sp, #0x1c]
   108ec: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x3f0>
		00000000000108ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x542e
   108f0: 91000000     	add	x0, x0, #0x0
		00000000000108f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x542e
   108f4: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x3f0>
		00000000000108f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5414
   108f8: 91000021     	add	x1, x1, #0x0
		00000000000108f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5414
   108fc: 12001d02     	and	w2, w8, #0xff
   10900: 94000000     	bl	0x10900 <syna_tcm_v1_write_message+0x818>
		0000000000010900:  R_AARCH64_CALL26	_printk
   10904: 12801e7a     	mov	w26, #-0xf4             // =-244
   10908: 17ffffb8     	b	0x107e8 <syna_tcm_v1_write_message+0x700>
