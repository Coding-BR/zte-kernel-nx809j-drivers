
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000010144 <syna_tcm_v1_write_message>:
   10144: d503233f     	paciasp
   10148: d10283ff     	sub	sp, sp, #0xa0
   1014c: a9047bfd     	stp	x29, x30, [sp, #0x40]
   10150: a9056ffc     	stp	x28, x27, [sp, #0x50]
   10154: a90667fa     	stp	x26, x25, [sp, #0x60]
   10158: a9075ff8     	stp	x24, x23, [sp, #0x70]
   1015c: a90857f6     	stp	x22, x21, [sp, #0x80]
   10160: a9094ff4     	stp	x20, x19, [sp, #0x90]
   10164: 910103fd     	add	x29, sp, #0x40
   10168: f81e83a2     	stur	x2, [x29, #-0x18]
   1016c: b9001fe1     	str	w1, [sp, #0x1c]
   10170: b4002360     	cbz	x0, 0x105dc <syna_tcm_v1_write_message+0x498>
   10174: f9402408     	ldr	x8, [x0, #0x48]
   10178: aa0003f3     	mov	x19, x0
   1017c: b4002368     	cbz	x8, 0x105e8 <syna_tcm_v1_write_message+0x4a4>
   10180: 2a0503f7     	mov	w23, w5
   10184: aa0403f6     	mov	x22, x4
   10188: 2a0303f8     	mov	w24, w3
   1018c: b4000064     	cbz	x4, 0x10198 <syna_tcm_v1_write_message+0x54>
   10190: 52801fe8     	mov	w8, #0xff               // =255
   10194: 390002c8     	strb	w8, [x22]
   10198: 910c6260     	add	x0, x19, #0x318
   1019c: 94000000     	bl	0x1019c <syna_tcm_v1_write_message+0x58>
		000000000001019c:  R_AARCH64_CALL26	mutex_lock
   101a0: 910d2260     	add	x0, x19, #0x348
   101a4: 94000000     	bl	0x101a4 <syna_tcm_v1_write_message+0x60>
		00000000000101a4:  R_AARCH64_CALL26	mutex_lock
   101a8: 52800028     	mov	w8, #0x1                // =1
   101ac: b901f668     	str	w8, [x19, #0x1f4]
   101b0: b901fa68     	str	w8, [x19, #0x1f8]
   101b4: b9401fe8     	ldr	w8, [sp, #0x1c]
   101b8: b902227f     	str	wzr, [x19, #0x220]
   101bc: 3907f268     	strb	w8, [x19, #0x1fc]
   101c0: 340002b7     	cbz	w23, 0x10214 <syna_tcm_v1_write_message+0xd0>
   101c4: f9402674     	ldr	x20, [x19, #0x48]
   101c8: b40024d4     	cbz	x20, 0x10660 <syna_tcm_v1_write_message+0x51c>
   101cc: f9401e88     	ldr	x8, [x20, #0x38]
   101d0: b4000268     	cbz	x8, 0x1021c <syna_tcm_v1_write_message+0xd8>
   101d4: 91014260     	add	x0, x19, #0x50
   101d8: 94000000     	bl	0x101d8 <syna_tcm_v1_write_message+0x94>
		00000000000101d8:  R_AARCH64_CALL26	mutex_lock
   101dc: f9401e88     	ldr	x8, [x20, #0x38]
   101e0: aa1403e0     	mov	x0, x20
   101e4: 2a1f03e1     	mov	w1, wzr
   101e8: b85fc110     	ldur	w16, [x8, #-0x4]
   101ec: 728c3631     	movk	w17, #0x61b1
   101f0: 72a685d1     	movk	w17, #0x342e, lsl #16
   101f4: 6b11021f     	cmp	w16, w17
   101f8: 54000040     	b.eq	0x10200 <syna_tcm_v1_write_message+0xbc>
   101fc: d4304500     	brk	#0x8228
   10200: d63f0100     	blr	x8
   10204: 2a0003f4     	mov	w20, w0
   10208: 91014260     	add	x0, x19, #0x50
   1020c: 94000000     	bl	0x1020c <syna_tcm_v1_write_message+0xc8>
		000000000001020c:  R_AARCH64_CALL26	mutex_unlock
   10210: 14000004     	b	0x10220 <syna_tcm_v1_write_message+0xdc>
   10214: 2a1f03ee     	mov	w14, wzr
   10218: 14000004     	b	0x10228 <syna_tcm_v1_write_message+0xe4>
   1021c: 2a1f03f4     	mov	w20, wzr
   10220: 7100029f     	cmp	w20, #0x0
   10224: 1a9fd7ee     	cset	w14, gt
   10228: 394e0268     	ldrb	w8, [x19, #0x380]
   1022c: 7100051f     	cmp	w8, #0x1
   10230: 540003c1     	b.ne	0x102a8 <syna_tcm_v1_write_message+0x164>
   10234: b9401fe8     	ldr	w8, [sp, #0x1c]
   10238: 529fe00a     	mov	w10, #0xff00            // =65280
   1023c: 12001f0b     	and	w11, w24, #0xff
   10240: 2a2803e8     	mvn	w8, w8
   10244: 92401d09     	and	x9, x8, #0xff
   10248: 90000008     	adrp	x8, 0x10000 <syna_tcm_v1_detect+0x394>
		0000000000010248:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0xd3d0
   1024c: 91000108     	add	x8, x8, #0x0
		000000000001024c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0xd3d0
   10250: 78697909     	ldrh	w9, [x8, x9, lsl #1]
   10254: 0a29014a     	bic	w10, w10, w9
   10258: 4a092309     	eor	w9, w24, w9, lsl #8
   1025c: 4a4a216a     	eor	w10, w11, w10, lsr #8
   10260: 786a590a     	ldrh	w10, [x8, w10, uxtw #1]
   10264: 4a0a0129     	eor	w9, w9, w10
   10268: 53083d29     	ubfx	w9, w9, #8, #8
   1026c: 78695914     	ldrh	w20, [x8, w9, uxtw #1]
   10270: 4a0a2289     	eor	w9, w20, w10, lsl #8
   10274: 34000158     	cbz	w24, 0x1029c <syna_tcm_v1_write_message+0x158>
   10278: f85e83ab     	ldur	x11, [x29, #-0x18]
   1027c: 2a1803ea     	mov	w10, w24
   10280: 3840156c     	ldrb	w12, [x11], #0x1
   10284: 12181d2d     	and	w13, w9, #0xff00
   10288: 7100054a     	subs	w10, w10, #0x1
   1028c: 4a4d218c     	eor	w12, w12, w13, lsr #8
   10290: 786c5914     	ldrh	w20, [x8, w12, uxtw #1]
   10294: 4a092289     	eor	w9, w20, w9, lsl #8
   10298: 54ffff41     	b.ne	0x10280 <syna_tcm_v1_write_message+0x13c>
   1029c: 53083d35     	ubfx	w21, w9, #8, #8
   102a0: 11001708     	add	w8, w24, #0x5
   102a4: 14000004     	b	0x102b4 <syna_tcm_v1_write_message+0x170>
   102a8: 2a1f03f5     	mov	w21, wzr
   102ac: 2a1f03f4     	mov	w20, wzr
   102b0: 11000f08     	add	w8, w24, #0x3
   102b4: f9402669     	ldr	x9, [x19, #0x48]
   102b8: b9403a6a     	ldr	w10, [x19, #0x38]
   102bc: 3940552b     	ldrb	w11, [x9, #0x15]
   102c0: 7100015f     	cmp	w10, #0x0
   102c4: 1a8a010a     	csel	w10, w8, w10, eq
   102c8: 7100057f     	cmp	w11, #0x1
   102cc: 54000161     	b.ne	0x102f8 <syna_tcm_v1_write_message+0x1b4>
   102d0: 2a1f03f9     	mov	w25, wzr
   102d4: 340001ea     	cbz	w10, 0x10310 <syna_tcm_v1_write_message+0x1cc>
   102d8: b940192b     	ldr	w11, [x9, #0x18]
   102dc: 2a1903e9     	mov	w9, w25
   102e0: 340001ab     	cbz	w11, 0x10314 <syna_tcm_v1_write_message+0x1d0>
   102e4: 1acb0949     	udiv	w9, w10, w11
   102e8: 1b0b7d39     	mul	w25, w9, w11
   102ec: 350000b9     	cbnz	w25, 0x10300 <syna_tcm_v1_write_message+0x1bc>
   102f0: 2a1f03e9     	mov	w9, wzr
   102f4: 14000008     	b	0x10314 <syna_tcm_v1_write_message+0x1d0>
   102f8: 2a0a03f9     	mov	w25, w10
   102fc: 34ffffb9     	cbz	w25, 0x102f0 <syna_tcm_v1_write_message+0x1ac>
   10300: 0b190108     	add	w8, w8, w25
   10304: 51000508     	sub	w8, w8, #0x1
   10308: 1ad90909     	udiv	w9, w8, w25
   1030c: 14000002     	b	0x10314 <syna_tcm_v1_write_message+0x1d0>
   10310: 2a1903e9     	mov	w9, w25
   10314: 394b2262     	ldrb	w2, [x19, #0x2c8]
   10318: 7100053f     	cmp	w9, #0x1
   1031c: 29013bf7     	stp	w23, w14, [sp, #0x8]
   10320: 1a9f853a     	csinc	w26, w9, wzr, hi
   10324: f9000bf6     	str	x22, [sp, #0x10]
   10328: 350016e2     	cbnz	w2, 0x10604 <syna_tcm_v1_write_message+0x4c0>
   1032c: 910a6260     	add	x0, x19, #0x298
   10330: 94000000     	bl	0x10330 <syna_tcm_v1_write_message+0x1ec>
		0000000000010330:  R_AARCH64_CALL26	mutex_lock
   10334: 394b2268     	ldrb	w8, [x19, #0x2c8]
   10338: 12001e89     	and	w9, w20, #0xff
   1033c: 2a1903ea     	mov	w10, w25
   10340: 2a1f03f6     	mov	w22, wzr
   10344: 2a1f03fb     	mov	w27, wzr
   10348: aa0a03f4     	mov	x20, x10
   1034c: 11000508     	add	w8, w8, #0x1
   10350: 2a1803f7     	mov	w23, w24
   10354: 2a1a03ea     	mov	w10, w26
   10358: 390b2268     	strb	w8, [x19, #0x2c8]
   1035c: 2a152128     	orr	w8, w9, w21, lsl #8
   10360: b81e43b8     	stur	w24, [x29, #-0x1c]
   10364: b90023e8     	str	w8, [sp, #0x20]
   10368: f81f03b4     	stur	x20, [x29, #-0x10]
   1036c: 14000008     	b	0x1038c <syna_tcm_v1_write_message+0x248>
   10370: b85fc3aa     	ldur	w10, [x29, #-0x4]
   10374: f85f03b4     	ldur	x20, [x29, #-0x10]
   10378: 0b1c02d6     	add	w22, w22, w28
   1037c: 4b1c02f7     	sub	w23, w23, w28
   10380: 2a1503fb     	mov	w27, w21
   10384: 6b0a02bf     	cmp	w21, w10
   10388: 54001e22     	b.hs	0x1074c <syna_tcm_v1_write_message+0x608>
   1038c: 7100037f     	cmp	w27, #0x0
   10390: 12800048     	mov	w8, #-0x3               // =-3
   10394: 11000775     	add	w21, w27, #0x1
   10398: 5a9f0108     	csinv	w8, w8, wzr, eq
   1039c: 6b1902ff     	cmp	w23, w25
   103a0: 0b190108     	add	w8, w8, w25
   103a4: 1a97811c     	csel	w28, w8, w23, hi
   103a8: 6b0a02bf     	cmp	w21, w10
   103ac: 1a9f17f8     	cset	w24, eq
   103b0: 54000221     	b.ne	0x103f4 <syna_tcm_v1_write_message+0x2b0>
   103b4: f9402668     	ldr	x8, [x19, #0x48]
   103b8: 39405509     	ldrb	w9, [x8, #0x15]
   103bc: 360001c9     	tbz	w9, #0x0, 0x103f4 <syna_tcm_v1_write_message+0x2b0>
   103c0: b9401d09     	ldr	w9, [x8, #0x1c]
   103c4: 6b09039f     	cmp	w28, w9
   103c8: 54000149     	b.ls	0x103f0 <syna_tcm_v1_write_message+0x2ac>
   103cc: b9401908     	ldr	w8, [x8, #0x18]
   103d0: 34000068     	cbz	w8, 0x103dc <syna_tcm_v1_write_message+0x298>
   103d4: 1ac80b89     	udiv	w9, w28, w8
   103d8: 1b087d28     	mul	w8, w9, w8
   103dc: 5100051c     	sub	w28, w8, #0x1
   103e0: 6b17039f     	cmp	w28, w23
   103e4: 1a9f17f8     	cset	w24, eq
   103e8: 1a8a054a     	cinc	w10, w10, ne
   103ec: 14000002     	b	0x103f4 <syna_tcm_v1_write_message+0x2b0>
   103f0: 52800038     	mov	w24, #0x1               // =1
   103f4: b9429262     	ldr	w2, [x19, #0x290]
   103f8: f9414660     	ldr	x0, [x19, #0x288]
   103fc: b81fc3aa     	stur	w10, [x29, #-0x4]
   10400: 6b19005f     	cmp	w2, w25
   10404: 540002a2     	b.hs	0x10458 <syna_tcm_v1_write_message+0x314>
   10408: b85e43ba     	ldur	w26, [x29, #-0x1c]
   1040c: b40000e0     	cbz	x0, 0x10428 <syna_tcm_v1_write_message+0x2e4>
   10410: aa0003f4     	mov	x20, x0
   10414: 94000000     	bl	0x10414 <syna_tcm_v1_write_message+0x2d0>
		0000000000010414:  R_AARCH64_CALL26	syna_request_managed_device
   10418: b4000d60     	cbz	x0, 0x105c4 <syna_tcm_v1_write_message+0x480>
   1041c: aa1403e1     	mov	x1, x20
   10420: 94000000     	bl	0x10420 <syna_tcm_v1_write_message+0x2dc>
		0000000000010420:  R_AARCH64_CALL26	devm_kfree
   10424: f85f03b4     	ldur	x20, [x29, #-0x10]
   10428: 94000000     	bl	0x10428 <syna_tcm_v1_write_message+0x2e4>
		0000000000010428:  R_AARCH64_CALL26	syna_request_managed_device
   1042c: 7100073f     	cmp	w25, #0x1
   10430: 5400130b     	b.lt	0x10690 <syna_tcm_v1_write_message+0x54c>
   10434: b40012e0     	cbz	x0, 0x10690 <syna_tcm_v1_write_message+0x54c>
   10438: aa1403e1     	mov	x1, x20
   1043c: 5281b802     	mov	w2, #0xdc0              // =3520
   10440: 94000000     	bl	0x10440 <syna_tcm_v1_write_message+0x2fc>
		0000000000010440:  R_AARCH64_CALL26	devm_kmalloc
   10444: f9014660     	str	x0, [x19, #0x288]
   10448: b4001380     	cbz	x0, 0x106b8 <syna_tcm_v1_write_message+0x574>
   1044c: aa1403e2     	mov	x2, x20
   10450: b9029279     	str	w25, [x19, #0x290]
   10454: 14000002     	b	0x1045c <syna_tcm_v1_write_message+0x318>
   10458: b85e43ba     	ldur	w26, [x29, #-0x1c]
   1045c: 2a1f03e1     	mov	w1, wzr
   10460: 94000000     	bl	0x10460 <syna_tcm_v1_write_message+0x31c>
		0000000000010460:  R_AARCH64_CALL26	memset
   10464: f9414668     	ldr	x8, [x19, #0x288]
   10468: b902967f     	str	wzr, [x19, #0x294]
   1046c: 3400029b     	cbz	w27, 0x104bc <syna_tcm_v1_write_message+0x378>
   10470: f85e83a9     	ldur	x9, [x29, #-0x18]
   10474: ab364121     	adds	x1, x9, w22, uxtw
   10478: 52800029     	mov	w9, #0x1                // =1
   1047c: 39000109     	strb	w9, [x8]
   10480: 540015a0     	b.eq	0x10734 <syna_tcm_v1_write_message+0x5f0>
   10484: f9414668     	ldr	x8, [x19, #0x288]
   10488: 91000500     	add	x0, x8, #0x1
   1048c: b4001540     	cbz	x0, 0x10734 <syna_tcm_v1_write_message+0x5f0>
   10490: b9429268     	ldr	w8, [x19, #0x290]
   10494: 4b160342     	sub	w2, w26, w22
   10498: 6b02039f     	cmp	w28, w2
   1049c: 51000503     	sub	w3, w8, #0x1
   104a0: 54000ee8     	b.hi	0x1067c <syna_tcm_v1_write_message+0x538>
   104a4: 6b03039f     	cmp	w28, w3
   104a8: 54000ea8     	b.hi	0x1067c <syna_tcm_v1_write_message+0x538>
   104ac: 2a1c03e2     	mov	w2, w28
   104b0: 94000000     	bl	0x104b0 <syna_tcm_v1_write_message+0x36c>
		00000000000104b0:  R_AARCH64_CALL26	memcpy
   104b4: 52800028     	mov	w8, #0x1                // =1
   104b8: 14000018     	b	0x10518 <syna_tcm_v1_write_message+0x3d4>
   104bc: b9401fe9     	ldr	w9, [sp, #0x1c]
   104c0: 39000109     	strb	w9, [x8]
   104c4: f9414668     	ldr	x8, [x19, #0x288]
   104c8: 3900051a     	strb	w26, [x8, #0x1]
   104cc: 53087f48     	lsr	w8, w26, #8
   104d0: f9414669     	ldr	x9, [x19, #0x288]
   104d4: 39000928     	strb	w8, [x9, #0x2]
   104d8: 340001fa     	cbz	w26, 0x10514 <syna_tcm_v1_write_message+0x3d0>
   104dc: f85e83a8     	ldur	x8, [x29, #-0x18]
   104e0: b40012a8     	cbz	x8, 0x10734 <syna_tcm_v1_write_message+0x5f0>
   104e4: f9414668     	ldr	x8, [x19, #0x288]
   104e8: 91000d00     	add	x0, x8, #0x3
   104ec: b4001240     	cbz	x0, 0x10734 <syna_tcm_v1_write_message+0x5f0>
   104f0: b9429268     	ldr	w8, [x19, #0x290]
   104f4: 6b1a039f     	cmp	w28, w26
   104f8: 51000d03     	sub	w3, w8, #0x3
   104fc: 540010e8     	b.hi	0x10718 <syna_tcm_v1_write_message+0x5d4>
   10500: 6b03039f     	cmp	w28, w3
   10504: 540010a8     	b.hi	0x10718 <syna_tcm_v1_write_message+0x5d4>
   10508: f85e83a1     	ldur	x1, [x29, #-0x18]
   1050c: 2a1c03e2     	mov	w2, w28
   10510: 94000000     	bl	0x10510 <syna_tcm_v1_write_message+0x3cc>
		0000000000010510:  R_AARCH64_CALL26	memcpy
   10514: 52800068     	mov	w8, #0x3                // =3
   10518: 394e0269     	ldrb	w9, [x19, #0x380]
   1051c: f9414661     	ldr	x1, [x19, #0x288]
   10520: 0b1c0114     	add	w20, w8, w28
   10524: 0a090309     	and	w9, w24, w9
   10528: 7100053f     	cmp	w9, #0x1
   1052c: 54000181     	b.ne	0x1055c <syna_tcm_v1_write_message+0x418>
   10530: ab364028     	adds	x8, x1, w22, uxtw
   10534: 54000ec0     	b.eq	0x1070c <syna_tcm_v1_write_message+0x5c8>
   10538: b9429269     	ldr	w9, [x19, #0x290]
   1053c: 4b160123     	sub	w3, w9, w22
   10540: 7100047f     	cmp	w3, #0x1
   10544: 54000d69     	b.ls	0x106f0 <syna_tcm_v1_write_message+0x5ac>
   10548: b94023e9     	ldr	w9, [sp, #0x20]
   1054c: 11000ad6     	add	w22, w22, #0x2
   10550: 11000a94     	add	w20, w20, #0x2
   10554: 79000109     	strh	w9, [x8]
   10558: f9414661     	ldr	x1, [x19, #0x288]
   1055c: f9402660     	ldr	x0, [x19, #0x48]
   10560: b40005e0     	cbz	x0, 0x1061c <syna_tcm_v1_write_message+0x4d8>
   10564: f9401408     	ldr	x8, [x0, #0x28]
   10568: b4000628     	cbz	x8, 0x1062c <syna_tcm_v1_write_message+0x4e8>
   1056c: 2a1403e2     	mov	w2, w20
   10570: b85fc110     	ldur	w16, [x8, #-0x4]
   10574: 728403f1     	movk	w17, #0x201f
   10578: 72a51491     	movk	w17, #0x28a4, lsl #16
   1057c: 6b11021f     	cmp	w16, w17
   10580: 54000040     	b.eq	0x10588 <syna_tcm_v1_write_message+0x444>
   10584: d4304500     	brk	#0x8228
   10588: d63f0100     	blr	x8
   1058c: 2a0003fa     	mov	w26, w0
   10590: 37f805a0     	tbnz	w0, #0x1f, 0x10644 <syna_tcm_v1_write_message+0x500>
   10594: 3707eef8     	tbnz	w24, #0x0, 0x10370 <syna_tcm_v1_write_message+0x22c>
   10598: b9421260     	ldr	w0, [x19, #0x210]
   1059c: 7100041f     	cmp	w0, #0x1
   105a0: 54ffee8b     	b.lt	0x10370 <syna_tcm_v1_write_message+0x22c>
   105a4: b9421668     	ldr	w8, [x19, #0x214]
   105a8: 7100051f     	cmp	w8, #0x1
   105ac: 54ffee2b     	b.lt	0x10370 <syna_tcm_v1_write_message+0x22c>
   105b0: 6b00011f     	cmp	w8, w0
   105b4: 52800042     	mov	w2, #0x2                // =2
   105b8: 1a808101     	csel	w1, w8, w0, hi
   105bc: 94000000     	bl	0x105bc <syna_tcm_v1_write_message+0x478>
		00000000000105bc:  R_AARCH64_CALL26	usleep_range_state
   105c0: 17ffff6c     	b	0x10370 <syna_tcm_v1_write_message+0x22c>
   105c4: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x394>
		00000000000105c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   105c8: 91000000     	add	x0, x0, #0x0
		00000000000105c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   105cc: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x394>
		00000000000105cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   105d0: 91000021     	add	x1, x1, #0x0
		00000000000105d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   105d4: 94000000     	bl	0x105d4 <syna_tcm_v1_write_message+0x490>
		00000000000105d4:  R_AARCH64_CALL26	_printk
   105d8: 17ffff93     	b	0x10424 <syna_tcm_v1_write_message+0x2e0>
   105dc: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x394>
		00000000000105dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c8
   105e0: 91000000     	add	x0, x0, #0x0
		00000000000105e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c8
   105e4: 14000003     	b	0x105f0 <syna_tcm_v1_write_message+0x4ac>
   105e8: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x394>
		00000000000105e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb874
   105ec: 91000000     	add	x0, x0, #0x0
		00000000000105ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb874
   105f0: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x394>
		00000000000105f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5414
   105f4: 91000021     	add	x1, x1, #0x0
		00000000000105f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5414
   105f8: 94000000     	bl	0x105f8 <syna_tcm_v1_write_message+0x4b4>
		00000000000105f8:  R_AARCH64_CALL26	_printk
   105fc: 12801e1a     	mov	w26, #-0xf1             // =-241
   10600: 140000ac     	b	0x108b0 <syna_tcm_v1_write_message+0x76c>
   10604: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x394>
		0000000000010604:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   10608: 91000000     	add	x0, x0, #0x0
		0000000000010608:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   1060c: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x394>
		000000000001060c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70c4
   10610: 91000021     	add	x1, x1, #0x0
		0000000000010610:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70c4
   10614: 94000000     	bl	0x10614 <syna_tcm_v1_write_message+0x4d0>
		0000000000010614:  R_AARCH64_CALL26	_printk
   10618: 17ffff45     	b	0x1032c <syna_tcm_v1_write_message+0x1e8>
   1061c: 12801e1a     	mov	w26, #-0xf1             // =-241
   10620: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x394>
		0000000000010620:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c06
   10624: 91000000     	add	x0, x0, #0x0
		0000000000010624:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c06
   10628: 14000004     	b	0x10638 <syna_tcm_v1_write_message+0x4f4>
   1062c: 12801e9a     	mov	w26, #-0xf5             // =-245
   10630: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x394>
		0000000000010630:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c3a
   10634: 91000000     	add	x0, x0, #0x0
		0000000000010634:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c3a
   10638: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x394>
		0000000000010638:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7d06
   1063c: 91000021     	add	x1, x1, #0x0
		000000000001063c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7d06
   10640: 94000000     	bl	0x10640 <syna_tcm_v1_write_message+0x4fc>
		0000000000010640:  R_AARCH64_CALL26	_printk
   10644: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x394>
		0000000000010644:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b68
   10648: 91000000     	add	x0, x0, #0x0
		0000000000010648:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b68
   1064c: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x394>
		000000000001064c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x58e2
   10650: 91000021     	add	x1, x1, #0x0
		0000000000010650:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x58e2
   10654: 2a1403e2     	mov	w2, w20
   10658: 94000000     	bl	0x10658 <syna_tcm_v1_write_message+0x514>
		0000000000010658:  R_AARCH64_CALL26	_printk
   1065c: 1400003c     	b	0x1074c <syna_tcm_v1_write_message+0x608>
   10660: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x394>
		0000000000010660:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c06
   10664: 91000000     	add	x0, x0, #0x0
		0000000000010664:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c06
   10668: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x394>
		0000000000010668:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb1ce
   1066c: 91000021     	add	x1, x1, #0x0
		000000000001066c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb1ce
   10670: 94000000     	bl	0x10670 <syna_tcm_v1_write_message+0x52c>
		0000000000010670:  R_AARCH64_CALL26	_printk
   10674: 12801e14     	mov	w20, #-0xf1             // =-241
   10678: 17fffeea     	b	0x10220 <syna_tcm_v1_write_message+0xdc>
   1067c: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x394>
		000000000001067c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8406
   10680: 91000000     	add	x0, x0, #0x0
		0000000000010680:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8406
   10684: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x394>
		0000000000010684:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a80
   10688: 91000021     	add	x1, x1, #0x0
		0000000000010688:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a80
   1068c: 14000028     	b	0x1072c <syna_tcm_v1_write_message+0x5e8>
   10690: f100001f     	cmp	x0, #0x0
   10694: 90000008     	adrp	x8, 0x10000 <syna_tcm_v1_detect+0x394>
		0000000000010694:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70d6
   10698: 91000108     	add	x8, x8, #0x0
		0000000000010698:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70d6
   1069c: 90000009     	adrp	x9, 0x10000 <syna_tcm_v1_detect+0x394>
		000000000001069c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   106a0: 91000129     	add	x9, x9, #0x0
		00000000000106a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   106a4: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x394>
		00000000000106a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bfa
   106a8: 91000021     	add	x1, x1, #0x0
		00000000000106a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bfa
   106ac: 9a880120     	csel	x0, x9, x8, eq
   106b0: 94000000     	bl	0x106b0 <syna_tcm_v1_write_message+0x56c>
		00000000000106b0:  R_AARCH64_CALL26	_printk
   106b4: f901467f     	str	xzr, [x19, #0x288]
   106b8: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x394>
		00000000000106b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d74
   106bc: 91000000     	add	x0, x0, #0x0
		00000000000106bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d74
   106c0: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x394>
		00000000000106c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x77fc
   106c4: 91000021     	add	x1, x1, #0x0
		00000000000106c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x77fc
   106c8: 2a1903e2     	mov	w2, w25
   106cc: 94000000     	bl	0x106cc <syna_tcm_v1_write_message+0x588>
		00000000000106cc:  R_AARCH64_CALL26	_printk
   106d0: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x394>
		00000000000106d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x141c
   106d4: 91000000     	add	x0, x0, #0x0
		00000000000106d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x141c
   106d8: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x394>
		00000000000106d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x58e2
   106dc: 91000021     	add	x1, x1, #0x0
		00000000000106dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x58e2
   106e0: f9014a7f     	str	xzr, [x19, #0x290]
   106e4: 94000000     	bl	0x106e4 <syna_tcm_v1_write_message+0x5a0>
		00000000000106e4:  R_AARCH64_CALL26	_printk
   106e8: 12801e5a     	mov	w26, #-0xf3             // =-243
   106ec: 14000018     	b	0x1074c <syna_tcm_v1_write_message+0x608>
   106f0: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x394>
		00000000000106f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8406
   106f4: 91000000     	add	x0, x0, #0x0
		00000000000106f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8406
   106f8: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x394>
		00000000000106f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a80
   106fc: 91000021     	add	x1, x1, #0x0
		00000000000106fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a80
   10700: 52800042     	mov	w2, #0x2                // =2
   10704: 52800044     	mov	w4, #0x2                // =2
   10708: 94000000     	bl	0x10708 <syna_tcm_v1_write_message+0x5c4>
		0000000000010708:  R_AARCH64_CALL26	_printk
   1070c: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x394>
		000000000001070c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc5e6
   10710: 91000000     	add	x0, x0, #0x0
		0000000000010710:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc5e6
   10714: 1400000a     	b	0x1073c <syna_tcm_v1_write_message+0x5f8>
   10718: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x394>
		0000000000010718:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8406
   1071c: 91000000     	add	x0, x0, #0x0
		000000000001071c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8406
   10720: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x394>
		0000000000010720:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a80
   10724: 91000021     	add	x1, x1, #0x0
		0000000000010724:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a80
   10728: 2a1a03e2     	mov	w2, w26
   1072c: 2a1c03e4     	mov	w4, w28
   10730: 94000000     	bl	0x10730 <syna_tcm_v1_write_message+0x5ec>
		0000000000010730:  R_AARCH64_CALL26	_printk
   10734: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x394>
		0000000000010734:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc5a8
   10738: 91000000     	add	x0, x0, #0x0
		0000000000010738:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc5a8
   1073c: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x394>
		000000000001073c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x58e2
   10740: 91000021     	add	x1, x1, #0x0
		0000000000010740:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x58e2
   10744: 94000000     	bl	0x10744 <syna_tcm_v1_write_message+0x600>
		0000000000010744:  R_AARCH64_CALL26	_printk
   10748: 128002ba     	mov	w26, #-0x16             // =-22
   1074c: 394b2262     	ldrb	w2, [x19, #0x2c8]
   10750: 7100045f     	cmp	w2, #0x1
   10754: 54000c21     	b.ne	0x108d8 <syna_tcm_v1_write_message+0x794>
   10758: 2a1f03e8     	mov	w8, wzr
   1075c: f9400bf6     	ldr	x22, [sp, #0x10]
   10760: b9400ff8     	ldr	w24, [sp, #0xc]
   10764: 910a6260     	add	x0, x19, #0x298
   10768: 390b2268     	strb	w8, [x19, #0x2c8]
   1076c: 94000000     	bl	0x1076c <syna_tcm_v1_write_message+0x628>
		000000000001076c:  R_AARCH64_CALL26	mutex_unlock
   10770: 910d2260     	add	x0, x19, #0x348
   10774: 94000000     	bl	0x10774 <syna_tcm_v1_write_message+0x630>
		0000000000010774:  R_AARCH64_CALL26	mutex_unlock
   10778: 37f8067a     	tbnz	w26, #0x1f, 0x10844 <syna_tcm_v1_write_message+0x700>
   1077c: b9400bf7     	ldr	w23, [sp, #0x8]
   10780: 2a1f03f4     	mov	w20, wzr
   10784: 14000007     	b	0x107a0 <syna_tcm_v1_write_message+0x65c>
   10788: b941fa68     	ldr	w8, [x19, #0x1f8]
   1078c: 7100051f     	cmp	w8, #0x1
   10790: 54000541     	b.ne	0x10838 <syna_tcm_v1_write_message+0x6f4>
   10794: b9420a68     	ldr	w8, [x19, #0x208]
   10798: 6b08029f     	cmp	w20, w8
   1079c: 540004e2     	b.hs	0x10838 <syna_tcm_v1_write_message+0x6f4>
   107a0: 34000117     	cbz	w23, 0x107c0 <syna_tcm_v1_write_message+0x67c>
   107a4: 710006ff     	cmp	w23, #0x1
   107a8: 2a1703f5     	mov	w21, w23
   107ac: 540002eb     	b.lt	0x10808 <syna_tcm_v1_write_message+0x6c4>
   107b0: 2a1703e0     	mov	w0, w23
   107b4: 94000000     	bl	0x107b4 <syna_tcm_v1_write_message+0x670>
		00000000000107b4:  R_AARCH64_CALL26	msleep
   107b8: 2a1703f5     	mov	w21, w23
   107bc: 14000013     	b	0x10808 <syna_tcm_v1_write_message+0x6c4>
   107c0: f9402660     	ldr	x0, [x19, #0x48]
   107c4: b9420a61     	ldr	w1, [x19, #0x208]
   107c8: f9401808     	ldr	x8, [x0, #0x30]
   107cc: 53027c35     	lsr	w21, w1, #2
   107d0: b4000128     	cbz	x8, 0x107f4 <syna_tcm_v1_write_message+0x6b0>
   107d4: b85fc110     	ldur	w16, [x8, #-0x4]
   107d8: 72934f71     	movk	w17, #0x9a7b
   107dc: 72a1f311     	movk	w17, #0xf98, lsl #16
   107e0: 6b11021f     	cmp	w16, w17
   107e4: 54000040     	b.eq	0x107ec <syna_tcm_v1_write_message+0x6a8>
   107e8: d4304500     	brk	#0x8228
   107ec: d63f0100     	blr	x8
   107f0: 14000006     	b	0x10808 <syna_tcm_v1_write_message+0x6c4>
   107f4: 2a0103e0     	mov	w0, w1
   107f8: 94000000     	bl	0x107f8 <syna_tcm_v1_write_message+0x6b4>
		00000000000107f8:  R_AARCH64_CALL26	__msecs_to_jiffies
   107fc: aa0003e1     	mov	x1, x0
   10800: 91088260     	add	x0, x19, #0x220
   10804: 94000000     	bl	0x10804 <syna_tcm_v1_write_message+0x6c0>
		0000000000010804:  R_AARCH64_CALL26	wait_for_completion_timeout
   10808: b941fa68     	ldr	w8, [x19, #0x1f8]
   1080c: 7100091f     	cmp	w8, #0x2
   10810: 54000180     	b.eq	0x10840 <syna_tcm_v1_write_message+0x6fc>
   10814: b941fa68     	ldr	w8, [x19, #0x1f8]
   10818: 0b1402b4     	add	w20, w21, w20
   1081c: 7100051f     	cmp	w8, #0x1
   10820: 54fffb41     	b.ne	0x10788 <syna_tcm_v1_write_message+0x644>
   10824: aa1303e0     	mov	x0, x19
   10828: aa1f03e1     	mov	x1, xzr
   1082c: 940000a9     	bl	0x10ad0 <syna_tcm_v1_read_message+0xa8>
		000000000001082c:  R_AARCH64_CALL26	syna_tcm_v1_read_message
   10830: 36fffac0     	tbz	w0, #0x1f, 0x10788 <syna_tcm_v1_write_message+0x644>
   10834: 17ffffd8     	b	0x10794 <syna_tcm_v1_write_message+0x650>
   10838: b941fa68     	ldr	w8, [x19, #0x1f8]
   1083c: 350006a8     	cbnz	w8, 0x10910 <syna_tcm_v1_write_message+0x7cc>
   10840: 2a1f03fa     	mov	w26, wzr
   10844: b4000076     	cbz	x22, 0x10850 <syna_tcm_v1_write_message+0x70c>
   10848: 3947fa68     	ldrb	w8, [x19, #0x1fe]
   1084c: 390002c8     	strb	w8, [x22]
   10850: 3907f27f     	strb	wzr, [x19, #0x1fc]
   10854: 34000278     	cbz	w24, 0x108a0 <syna_tcm_v1_write_message+0x75c>
   10858: f9402674     	ldr	x20, [x19, #0x48]
   1085c: b40004f4     	cbz	x20, 0x108f8 <syna_tcm_v1_write_message+0x7b4>
   10860: f9401e88     	ldr	x8, [x20, #0x38]
   10864: b40001e8     	cbz	x8, 0x108a0 <syna_tcm_v1_write_message+0x75c>
   10868: 91014260     	add	x0, x19, #0x50
   1086c: 94000000     	bl	0x1086c <syna_tcm_v1_write_message+0x728>
		000000000001086c:  R_AARCH64_CALL26	mutex_lock
   10870: f9401e88     	ldr	x8, [x20, #0x38]
   10874: aa1403e0     	mov	x0, x20
   10878: 52800021     	mov	w1, #0x1                // =1
   1087c: b85fc110     	ldur	w16, [x8, #-0x4]
   10880: 728c3631     	movk	w17, #0x61b1
   10884: 72a685d1     	movk	w17, #0x342e, lsl #16
   10888: 6b11021f     	cmp	w16, w17
   1088c: 54000040     	b.eq	0x10894 <syna_tcm_v1_write_message+0x750>
   10890: d4304500     	brk	#0x8228
   10894: d63f0100     	blr	x8
   10898: 91014260     	add	x0, x19, #0x50
   1089c: 94000000     	bl	0x1089c <syna_tcm_v1_write_message+0x758>
		000000000001089c:  R_AARCH64_CALL26	mutex_unlock
   108a0: 910c6260     	add	x0, x19, #0x318
   108a4: b901fa7f     	str	wzr, [x19, #0x1f8]
   108a8: b901f67f     	str	wzr, [x19, #0x1f4]
   108ac: 94000000     	bl	0x108ac <syna_tcm_v1_write_message+0x768>
		00000000000108ac:  R_AARCH64_CALL26	mutex_unlock
   108b0: 2a1a03e0     	mov	w0, w26
   108b4: a9494ff4     	ldp	x20, x19, [sp, #0x90]
   108b8: a94857f6     	ldp	x22, x21, [sp, #0x80]
   108bc: a9475ff8     	ldp	x24, x23, [sp, #0x70]
   108c0: a94667fa     	ldp	x26, x25, [sp, #0x60]
   108c4: a9456ffc     	ldp	x28, x27, [sp, #0x50]
   108c8: a9447bfd     	ldp	x29, x30, [sp, #0x40]
   108cc: 910283ff     	add	sp, sp, #0xa0
   108d0: d50323bf     	autiasp
   108d4: d65f03c0     	ret
   108d8: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x394>
		00000000000108d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   108dc: 91000000     	add	x0, x0, #0x0
		00000000000108dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   108e0: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x394>
		00000000000108e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   108e4: 91000021     	add	x1, x1, #0x0
		00000000000108e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   108e8: 94000000     	bl	0x108e8 <syna_tcm_v1_write_message+0x7a4>
		00000000000108e8:  R_AARCH64_CALL26	_printk
   108ec: 394b2268     	ldrb	w8, [x19, #0x2c8]
   108f0: 51000508     	sub	w8, w8, #0x1
   108f4: 17ffff9a     	b	0x1075c <syna_tcm_v1_write_message+0x618>
   108f8: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x394>
		00000000000108f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c06
   108fc: 91000000     	add	x0, x0, #0x0
		00000000000108fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c06
   10900: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x394>
		0000000000010900:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb1ce
   10904: 91000021     	add	x1, x1, #0x0
		0000000000010904:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb1ce
   10908: 94000000     	bl	0x10908 <syna_tcm_v1_write_message+0x7c4>
		0000000000010908:  R_AARCH64_CALL26	_printk
   1090c: 17ffffe5     	b	0x108a0 <syna_tcm_v1_write_message+0x75c>
   10910: b9420a63     	ldr	w3, [x19, #0x208]
   10914: 6b03029f     	cmp	w20, w3
   10918: 54000162     	b.hs	0x10944 <syna_tcm_v1_write_message+0x800>
   1091c: b9401fe8     	ldr	w8, [sp, #0x1c]
   10920: 3947f662     	ldrb	w2, [x19, #0x1fd]
   10924: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x394>
		0000000000010924:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x589e
   10928: 91000000     	add	x0, x0, #0x0
		0000000000010928:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x589e
   1092c: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x394>
		000000000001092c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5414
   10930: 91000021     	add	x1, x1, #0x0
		0000000000010930:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5414
   10934: 12001d03     	and	w3, w8, #0xff
   10938: 94000000     	bl	0x10938 <syna_tcm_v1_write_message+0x7f4>
		0000000000010938:  R_AARCH64_CALL26	_printk
   1093c: 12801e3a     	mov	w26, #-0xf2             // =-242
   10940: 17ffffc1     	b	0x10844 <syna_tcm_v1_write_message+0x700>
   10944: b9401fe8     	ldr	w8, [sp, #0x1c]
   10948: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x394>
		0000000000010948:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x542e
   1094c: 91000000     	add	x0, x0, #0x0
		000000000001094c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x542e
   10950: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x394>
		0000000000010950:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5414
   10954: 91000021     	add	x1, x1, #0x0
		0000000000010954:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5414
   10958: 12001d02     	and	w2, w8, #0xff
   1095c: 94000000     	bl	0x1095c <syna_tcm_v1_write_message+0x818>
		000000000001095c:  R_AARCH64_CALL26	_printk
   10960: 12801e7a     	mov	w26, #-0xf4             // =-244
   10964: 17ffffb8     	b	0x10844 <syna_tcm_v1_write_message+0x700>
