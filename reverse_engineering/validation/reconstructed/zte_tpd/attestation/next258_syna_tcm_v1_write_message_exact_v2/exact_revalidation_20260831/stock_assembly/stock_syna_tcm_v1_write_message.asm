
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000018624 <syna_tcm_v1_write_message>:
   18624: d503233f     	paciasp
   18628: d10283ff     	sub	sp, sp, #0xa0
   1862c: a9047bfd     	stp	x29, x30, [sp, #0x40]
   18630: a9056ffc     	stp	x28, x27, [sp, #0x50]
   18634: a90667fa     	stp	x26, x25, [sp, #0x60]
   18638: a9075ff8     	stp	x24, x23, [sp, #0x70]
   1863c: a90857f6     	stp	x22, x21, [sp, #0x80]
   18640: a9094ff4     	stp	x20, x19, [sp, #0x90]
   18644: 910103fd     	add	x29, sp, #0x40
   18648: f81e83a2     	stur	x2, [x29, #-0x18]
   1864c: b9001fe1     	str	w1, [sp, #0x1c]
   18650: b4002360     	cbz	x0, 0x18abc <syna_tcm_v1_write_message+0x498>
   18654: f9402408     	ldr	x8, [x0, #0x48]
   18658: aa0003f3     	mov	x19, x0
   1865c: b4002368     	cbz	x8, 0x18ac8 <syna_tcm_v1_write_message+0x4a4>
   18660: 2a0503f7     	mov	w23, w5
   18664: aa0403f6     	mov	x22, x4
   18668: 2a0303f8     	mov	w24, w3
   1866c: b4000064     	cbz	x4, 0x18678 <syna_tcm_v1_write_message+0x54>
   18670: 52801fe8     	mov	w8, #0xff               // =255
   18674: 390002c8     	strb	w8, [x22]
   18678: 910c6260     	add	x0, x19, #0x318
   1867c: 94000000     	bl	0x1867c <syna_tcm_v1_write_message+0x58>
		000000000001867c:  R_AARCH64_CALL26	mutex_lock
   18680: 910d2260     	add	x0, x19, #0x348
   18684: 94000000     	bl	0x18684 <syna_tcm_v1_write_message+0x60>
		0000000000018684:  R_AARCH64_CALL26	mutex_lock
   18688: 52800028     	mov	w8, #0x1                // =1
   1868c: b901f668     	str	w8, [x19, #0x1f4]
   18690: b901fa68     	str	w8, [x19, #0x1f8]
   18694: b9401fe8     	ldr	w8, [sp, #0x1c]
   18698: b902227f     	str	wzr, [x19, #0x220]
   1869c: 3907f268     	strb	w8, [x19, #0x1fc]
   186a0: 340002b7     	cbz	w23, 0x186f4 <syna_tcm_v1_write_message+0xd0>
   186a4: f9402674     	ldr	x20, [x19, #0x48]
   186a8: b40024d4     	cbz	x20, 0x18b40 <syna_tcm_v1_write_message+0x51c>
   186ac: f9401e88     	ldr	x8, [x20, #0x38]
   186b0: b4000268     	cbz	x8, 0x186fc <syna_tcm_v1_write_message+0xd8>
   186b4: 91014260     	add	x0, x19, #0x50
   186b8: 94000000     	bl	0x186b8 <syna_tcm_v1_write_message+0x94>
		00000000000186b8:  R_AARCH64_CALL26	mutex_lock
   186bc: f9401e88     	ldr	x8, [x20, #0x38]
   186c0: aa1403e0     	mov	x0, x20
   186c4: 2a1f03e1     	mov	w1, wzr
   186c8: b85fc110     	ldur	w16, [x8, #-0x4]
   186cc: 728c3631     	movk	w17, #0x61b1
   186d0: 72a685d1     	movk	w17, #0x342e, lsl #16
   186d4: 6b11021f     	cmp	w16, w17
   186d8: 54000040     	b.eq	0x186e0 <syna_tcm_v1_write_message+0xbc>
   186dc: d4304500     	brk	#0x8228
   186e0: d63f0100     	blr	x8
   186e4: 2a0003f4     	mov	w20, w0
   186e8: 91014260     	add	x0, x19, #0x50
   186ec: 94000000     	bl	0x186ec <syna_tcm_v1_write_message+0xc8>
		00000000000186ec:  R_AARCH64_CALL26	mutex_unlock
   186f0: 14000004     	b	0x18700 <syna_tcm_v1_write_message+0xdc>
   186f4: 2a1f03ee     	mov	w14, wzr
   186f8: 14000004     	b	0x18708 <syna_tcm_v1_write_message+0xe4>
   186fc: 2a1f03f4     	mov	w20, wzr
   18700: 7100029f     	cmp	w20, #0x0
   18704: 1a9fd7ee     	cset	w14, gt
   18708: 394e0268     	ldrb	w8, [x19, #0x380]
   1870c: 7100051f     	cmp	w8, #0x1
   18710: 540003c1     	b.ne	0x18788 <syna_tcm_v1_write_message+0x164>
   18714: b9401fe8     	ldr	w8, [sp, #0x1c]
   18718: 529fe00a     	mov	w10, #0xff00            // =65280
   1871c: 12001f0b     	and	w11, w24, #0xff
   18720: 2a2803e8     	mvn	w8, w8
   18724: 92401d09     	and	x9, x8, #0xff
   18728: 90000008     	adrp	x8, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018728:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x4618
   1872c: 91000108     	add	x8, x8, #0x0
		000000000001872c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x4618
   18730: 78697909     	ldrh	w9, [x8, x9, lsl #1]
   18734: 0a29014a     	bic	w10, w10, w9
   18738: 4a092309     	eor	w9, w24, w9, lsl #8
   1873c: 4a4a216a     	eor	w10, w11, w10, lsr #8
   18740: 786a590a     	ldrh	w10, [x8, w10, uxtw #1]
   18744: 4a0a0129     	eor	w9, w9, w10
   18748: 53083d29     	ubfx	w9, w9, #8, #8
   1874c: 78695914     	ldrh	w20, [x8, w9, uxtw #1]
   18750: 4a0a2289     	eor	w9, w20, w10, lsl #8
   18754: 34000158     	cbz	w24, 0x1877c <syna_tcm_v1_write_message+0x158>
   18758: f85e83ab     	ldur	x11, [x29, #-0x18]
   1875c: 2a1803ea     	mov	w10, w24
   18760: 3840156c     	ldrb	w12, [x11], #0x1
   18764: 12181d2d     	and	w13, w9, #0xff00
   18768: 7100054a     	subs	w10, w10, #0x1
   1876c: 4a4d218c     	eor	w12, w12, w13, lsr #8
   18770: 786c5914     	ldrh	w20, [x8, w12, uxtw #1]
   18774: 4a092289     	eor	w9, w20, w9, lsl #8
   18778: 54ffff41     	b.ne	0x18760 <syna_tcm_v1_write_message+0x13c>
   1877c: 53083d35     	ubfx	w21, w9, #8, #8
   18780: 11001708     	add	w8, w24, #0x5
   18784: 14000004     	b	0x18794 <syna_tcm_v1_write_message+0x170>
   18788: 2a1f03f5     	mov	w21, wzr
   1878c: 2a1f03f4     	mov	w20, wzr
   18790: 11000f08     	add	w8, w24, #0x3
   18794: f9402669     	ldr	x9, [x19, #0x48]
   18798: b9403a6a     	ldr	w10, [x19, #0x38]
   1879c: 3940552b     	ldrb	w11, [x9, #0x15]
   187a0: 7100015f     	cmp	w10, #0x0
   187a4: 1a8a010a     	csel	w10, w8, w10, eq
   187a8: 7100057f     	cmp	w11, #0x1
   187ac: 54000161     	b.ne	0x187d8 <syna_tcm_v1_write_message+0x1b4>
   187b0: 2a1f03f9     	mov	w25, wzr
   187b4: 340001ea     	cbz	w10, 0x187f0 <syna_tcm_v1_write_message+0x1cc>
   187b8: b940192b     	ldr	w11, [x9, #0x18]
   187bc: 2a1903e9     	mov	w9, w25
   187c0: 340001ab     	cbz	w11, 0x187f4 <syna_tcm_v1_write_message+0x1d0>
   187c4: 1acb0949     	udiv	w9, w10, w11
   187c8: 1b0b7d39     	mul	w25, w9, w11
   187cc: 350000b9     	cbnz	w25, 0x187e0 <syna_tcm_v1_write_message+0x1bc>
   187d0: 2a1f03e9     	mov	w9, wzr
   187d4: 14000008     	b	0x187f4 <syna_tcm_v1_write_message+0x1d0>
   187d8: 2a0a03f9     	mov	w25, w10
   187dc: 34ffffb9     	cbz	w25, 0x187d0 <syna_tcm_v1_write_message+0x1ac>
   187e0: 0b190108     	add	w8, w8, w25
   187e4: 51000508     	sub	w8, w8, #0x1
   187e8: 1ad90909     	udiv	w9, w8, w25
   187ec: 14000002     	b	0x187f4 <syna_tcm_v1_write_message+0x1d0>
   187f0: 2a1903e9     	mov	w9, w25
   187f4: 394b2262     	ldrb	w2, [x19, #0x2c8]
   187f8: 7100053f     	cmp	w9, #0x1
   187fc: 29013bf7     	stp	w23, w14, [sp, #0x8]
   18800: 1a9f853a     	csinc	w26, w9, wzr, hi
   18804: f9000bf6     	str	x22, [sp, #0x10]
   18808: 350016e2     	cbnz	w2, 0x18ae4 <syna_tcm_v1_write_message+0x4c0>
   1880c: 910a6260     	add	x0, x19, #0x298
   18810: 94000000     	bl	0x18810 <syna_tcm_v1_write_message+0x1ec>
		0000000000018810:  R_AARCH64_CALL26	mutex_lock
   18814: 394b2268     	ldrb	w8, [x19, #0x2c8]
   18818: 12001e89     	and	w9, w20, #0xff
   1881c: 2a1903ea     	mov	w10, w25
   18820: 2a1f03f6     	mov	w22, wzr
   18824: 2a1f03fb     	mov	w27, wzr
   18828: aa0a03f4     	mov	x20, x10
   1882c: 11000508     	add	w8, w8, #0x1
   18830: 2a1803f7     	mov	w23, w24
   18834: 2a1a03ea     	mov	w10, w26
   18838: 390b2268     	strb	w8, [x19, #0x2c8]
   1883c: 2a152128     	orr	w8, w9, w21, lsl #8
   18840: b81e43b8     	stur	w24, [x29, #-0x1c]
   18844: b90023e8     	str	w8, [sp, #0x20]
   18848: f81f03b4     	stur	x20, [x29, #-0x10]
   1884c: 14000008     	b	0x1886c <syna_tcm_v1_write_message+0x248>
   18850: b85fc3aa     	ldur	w10, [x29, #-0x4]
   18854: f85f03b4     	ldur	x20, [x29, #-0x10]
   18858: 0b1c02d6     	add	w22, w22, w28
   1885c: 4b1c02f7     	sub	w23, w23, w28
   18860: 2a1503fb     	mov	w27, w21
   18864: 6b0a02bf     	cmp	w21, w10
   18868: 54001e22     	b.hs	0x18c2c <syna_tcm_v1_write_message+0x608>
   1886c: 7100037f     	cmp	w27, #0x0
   18870: 12800048     	mov	w8, #-0x3               // =-3
   18874: 11000775     	add	w21, w27, #0x1
   18878: 5a9f0108     	csinv	w8, w8, wzr, eq
   1887c: 6b1902ff     	cmp	w23, w25
   18880: 0b190108     	add	w8, w8, w25
   18884: 1a97811c     	csel	w28, w8, w23, hi
   18888: 6b0a02bf     	cmp	w21, w10
   1888c: 1a9f17f8     	cset	w24, eq
   18890: 54000221     	b.ne	0x188d4 <syna_tcm_v1_write_message+0x2b0>
   18894: f9402668     	ldr	x8, [x19, #0x48]
   18898: 39405509     	ldrb	w9, [x8, #0x15]
   1889c: 360001c9     	tbz	w9, #0x0, 0x188d4 <syna_tcm_v1_write_message+0x2b0>
   188a0: b9401d09     	ldr	w9, [x8, #0x1c]
   188a4: 6b09039f     	cmp	w28, w9
   188a8: 54000149     	b.ls	0x188d0 <syna_tcm_v1_write_message+0x2ac>
   188ac: b9401908     	ldr	w8, [x8, #0x18]
   188b0: 34000068     	cbz	w8, 0x188bc <syna_tcm_v1_write_message+0x298>
   188b4: 1ac80b89     	udiv	w9, w28, w8
   188b8: 1b087d28     	mul	w8, w9, w8
   188bc: 5100051c     	sub	w28, w8, #0x1
   188c0: 6b17039f     	cmp	w28, w23
   188c4: 1a9f17f8     	cset	w24, eq
   188c8: 1a8a054a     	cinc	w10, w10, ne
   188cc: 14000002     	b	0x188d4 <syna_tcm_v1_write_message+0x2b0>
   188d0: 52800038     	mov	w24, #0x1               // =1
   188d4: b9429262     	ldr	w2, [x19, #0x290]
   188d8: f9414660     	ldr	x0, [x19, #0x288]
   188dc: b81fc3aa     	stur	w10, [x29, #-0x4]
   188e0: 6b19005f     	cmp	w2, w25
   188e4: 540002a2     	b.hs	0x18938 <syna_tcm_v1_write_message+0x314>
   188e8: b85e43ba     	ldur	w26, [x29, #-0x1c]
   188ec: b40000e0     	cbz	x0, 0x18908 <syna_tcm_v1_write_message+0x2e4>
   188f0: aa0003f4     	mov	x20, x0
   188f4: 94000000     	bl	0x188f4 <syna_tcm_v1_write_message+0x2d0>
		00000000000188f4:  R_AARCH64_CALL26	syna_request_managed_device
   188f8: b4000d60     	cbz	x0, 0x18aa4 <syna_tcm_v1_write_message+0x480>
   188fc: aa1403e1     	mov	x1, x20
   18900: 94000000     	bl	0x18900 <syna_tcm_v1_write_message+0x2dc>
		0000000000018900:  R_AARCH64_CALL26	devm_kfree
   18904: f85f03b4     	ldur	x20, [x29, #-0x10]
   18908: 94000000     	bl	0x18908 <syna_tcm_v1_write_message+0x2e4>
		0000000000018908:  R_AARCH64_CALL26	syna_request_managed_device
   1890c: 7100073f     	cmp	w25, #0x1
   18910: 5400130b     	b.lt	0x18b70 <syna_tcm_v1_write_message+0x54c>
   18914: b40012e0     	cbz	x0, 0x18b70 <syna_tcm_v1_write_message+0x54c>
   18918: aa1403e1     	mov	x1, x20
   1891c: 5281b802     	mov	w2, #0xdc0              // =3520
   18920: 94000000     	bl	0x18920 <syna_tcm_v1_write_message+0x2fc>
		0000000000018920:  R_AARCH64_CALL26	devm_kmalloc
   18924: f9014660     	str	x0, [x19, #0x288]
   18928: b4001380     	cbz	x0, 0x18b98 <syna_tcm_v1_write_message+0x574>
   1892c: aa1403e2     	mov	x2, x20
   18930: b9029279     	str	w25, [x19, #0x290]
   18934: 14000002     	b	0x1893c <syna_tcm_v1_write_message+0x318>
   18938: b85e43ba     	ldur	w26, [x29, #-0x1c]
   1893c: 2a1f03e1     	mov	w1, wzr
   18940: 94000000     	bl	0x18940 <syna_tcm_v1_write_message+0x31c>
		0000000000018940:  R_AARCH64_CALL26	memset
   18944: f9414668     	ldr	x8, [x19, #0x288]
   18948: b902967f     	str	wzr, [x19, #0x294]
   1894c: 3400029b     	cbz	w27, 0x1899c <syna_tcm_v1_write_message+0x378>
   18950: f85e83a9     	ldur	x9, [x29, #-0x18]
   18954: ab364121     	adds	x1, x9, w22, uxtw
   18958: 52800029     	mov	w9, #0x1                // =1
   1895c: 39000109     	strb	w9, [x8]
   18960: 540015a0     	b.eq	0x18c14 <syna_tcm_v1_write_message+0x5f0>
   18964: f9414668     	ldr	x8, [x19, #0x288]
   18968: 91000500     	add	x0, x8, #0x1
   1896c: b4001540     	cbz	x0, 0x18c14 <syna_tcm_v1_write_message+0x5f0>
   18970: b9429268     	ldr	w8, [x19, #0x290]
   18974: 4b160342     	sub	w2, w26, w22
   18978: 6b02039f     	cmp	w28, w2
   1897c: 51000503     	sub	w3, w8, #0x1
   18980: 54000ee8     	b.hi	0x18b5c <syna_tcm_v1_write_message+0x538>
   18984: 6b03039f     	cmp	w28, w3
   18988: 54000ea8     	b.hi	0x18b5c <syna_tcm_v1_write_message+0x538>
   1898c: 2a1c03e2     	mov	w2, w28
   18990: 94000000     	bl	0x18990 <syna_tcm_v1_write_message+0x36c>
		0000000000018990:  R_AARCH64_CALL26	memcpy
   18994: 52800028     	mov	w8, #0x1                // =1
   18998: 14000018     	b	0x189f8 <syna_tcm_v1_write_message+0x3d4>
   1899c: b9401fe9     	ldr	w9, [sp, #0x1c]
   189a0: 39000109     	strb	w9, [x8]
   189a4: f9414668     	ldr	x8, [x19, #0x288]
   189a8: 3900051a     	strb	w26, [x8, #0x1]
   189ac: 53087f48     	lsr	w8, w26, #8
   189b0: f9414669     	ldr	x9, [x19, #0x288]
   189b4: 39000928     	strb	w8, [x9, #0x2]
   189b8: 340001fa     	cbz	w26, 0x189f4 <syna_tcm_v1_write_message+0x3d0>
   189bc: f85e83a8     	ldur	x8, [x29, #-0x18]
   189c0: b40012a8     	cbz	x8, 0x18c14 <syna_tcm_v1_write_message+0x5f0>
   189c4: f9414668     	ldr	x8, [x19, #0x288]
   189c8: 91000d00     	add	x0, x8, #0x3
   189cc: b4001240     	cbz	x0, 0x18c14 <syna_tcm_v1_write_message+0x5f0>
   189d0: b9429268     	ldr	w8, [x19, #0x290]
   189d4: 6b1a039f     	cmp	w28, w26
   189d8: 51000d03     	sub	w3, w8, #0x3
   189dc: 540010e8     	b.hi	0x18bf8 <syna_tcm_v1_write_message+0x5d4>
   189e0: 6b03039f     	cmp	w28, w3
   189e4: 540010a8     	b.hi	0x18bf8 <syna_tcm_v1_write_message+0x5d4>
   189e8: f85e83a1     	ldur	x1, [x29, #-0x18]
   189ec: 2a1c03e2     	mov	w2, w28
   189f0: 94000000     	bl	0x189f0 <syna_tcm_v1_write_message+0x3cc>
		00000000000189f0:  R_AARCH64_CALL26	memcpy
   189f4: 52800068     	mov	w8, #0x3                // =3
   189f8: 394e0269     	ldrb	w9, [x19, #0x380]
   189fc: f9414661     	ldr	x1, [x19, #0x288]
   18a00: 0b1c0114     	add	w20, w8, w28
   18a04: 0a090309     	and	w9, w24, w9
   18a08: 7100053f     	cmp	w9, #0x1
   18a0c: 54000181     	b.ne	0x18a3c <syna_tcm_v1_write_message+0x418>
   18a10: ab364028     	adds	x8, x1, w22, uxtw
   18a14: 54000ec0     	b.eq	0x18bec <syna_tcm_v1_write_message+0x5c8>
   18a18: b9429269     	ldr	w9, [x19, #0x290]
   18a1c: 4b160123     	sub	w3, w9, w22
   18a20: 7100047f     	cmp	w3, #0x1
   18a24: 54000d69     	b.ls	0x18bd0 <syna_tcm_v1_write_message+0x5ac>
   18a28: b94023e9     	ldr	w9, [sp, #0x20]
   18a2c: 11000ad6     	add	w22, w22, #0x2
   18a30: 11000a94     	add	w20, w20, #0x2
   18a34: 79000109     	strh	w9, [x8]
   18a38: f9414661     	ldr	x1, [x19, #0x288]
   18a3c: f9402660     	ldr	x0, [x19, #0x48]
   18a40: b40005e0     	cbz	x0, 0x18afc <syna_tcm_v1_write_message+0x4d8>
   18a44: f9401408     	ldr	x8, [x0, #0x28]
   18a48: b4000628     	cbz	x8, 0x18b0c <syna_tcm_v1_write_message+0x4e8>
   18a4c: 2a1403e2     	mov	w2, w20
   18a50: b85fc110     	ldur	w16, [x8, #-0x4]
   18a54: 728403f1     	movk	w17, #0x201f
   18a58: 72a51491     	movk	w17, #0x28a4, lsl #16
   18a5c: 6b11021f     	cmp	w16, w17
   18a60: 54000040     	b.eq	0x18a68 <syna_tcm_v1_write_message+0x444>
   18a64: d4304500     	brk	#0x8228
   18a68: d63f0100     	blr	x8
   18a6c: 2a0003fa     	mov	w26, w0
   18a70: 37f805a0     	tbnz	w0, #0x1f, 0x18b24 <syna_tcm_v1_write_message+0x500>
   18a74: 3707eef8     	tbnz	w24, #0x0, 0x18850 <syna_tcm_v1_write_message+0x22c>
   18a78: b9421260     	ldr	w0, [x19, #0x210]
   18a7c: 7100041f     	cmp	w0, #0x1
   18a80: 54ffee8b     	b.lt	0x18850 <syna_tcm_v1_write_message+0x22c>
   18a84: b9421668     	ldr	w8, [x19, #0x214]
   18a88: 7100051f     	cmp	w8, #0x1
   18a8c: 54ffee2b     	b.lt	0x18850 <syna_tcm_v1_write_message+0x22c>
   18a90: 6b00011f     	cmp	w8, w0
   18a94: 52800042     	mov	w2, #0x2                // =2
   18a98: 1a808101     	csel	w1, w8, w0, hi
   18a9c: 94000000     	bl	0x18a9c <syna_tcm_v1_write_message+0x478>
		0000000000018a9c:  R_AARCH64_CALL26	usleep_range_state
   18aa0: 17ffff6c     	b	0x18850 <syna_tcm_v1_write_message+0x22c>
   18aa4: 90000000     	adrp	x0, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018aa4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   18aa8: 91000000     	add	x0, x0, #0x0
		0000000000018aa8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   18aac: 90000001     	adrp	x1, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018aac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   18ab0: 91000021     	add	x1, x1, #0x0
		0000000000018ab0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   18ab4: 94000000     	bl	0x18ab4 <syna_tcm_v1_write_message+0x490>
		0000000000018ab4:  R_AARCH64_CALL26	_printk
   18ab8: 17ffff93     	b	0x18904 <syna_tcm_v1_write_message+0x2e0>
   18abc: 90000000     	adrp	x0, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018abc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2055
   18ac0: 91000000     	add	x0, x0, #0x0
		0000000000018ac0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2055
   18ac4: 14000003     	b	0x18ad0 <syna_tcm_v1_write_message+0x4ac>
   18ac8: 90000000     	adrp	x0, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018ac8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb5b3
   18acc: 91000000     	add	x0, x0, #0x0
		0000000000018acc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb5b3
   18ad0: 90000001     	adrp	x1, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018ad0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x52e6
   18ad4: 91000021     	add	x1, x1, #0x0
		0000000000018ad4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x52e6
   18ad8: 94000000     	bl	0x18ad8 <syna_tcm_v1_write_message+0x4b4>
		0000000000018ad8:  R_AARCH64_CALL26	_printk
   18adc: 12801e1a     	mov	w26, #-0xf1             // =-241
   18ae0: 140000ac     	b	0x18d90 <syna_tcm_v1_write_message+0x76c>
   18ae4: 90000000     	adrp	x0, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018ae4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   18ae8: 91000000     	add	x0, x0, #0x0
		0000000000018ae8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   18aec: 90000001     	adrp	x1, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018aec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f05
   18af0: 91000021     	add	x1, x1, #0x0
		0000000000018af0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f05
   18af4: 94000000     	bl	0x18af4 <syna_tcm_v1_write_message+0x4d0>
		0000000000018af4:  R_AARCH64_CALL26	_printk
   18af8: 17ffff45     	b	0x1880c <syna_tcm_v1_write_message+0x1e8>
   18afc: 12801e1a     	mov	w26, #-0xf1             // =-241
   18b00: 90000000     	adrp	x0, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018b00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a5a
   18b04: 91000000     	add	x0, x0, #0x0
		0000000000018b04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a5a
   18b08: 14000004     	b	0x18b18 <syna_tcm_v1_write_message+0x4f4>
   18b0c: 12801e9a     	mov	w26, #-0xf5             // =-245
   18b10: 90000000     	adrp	x0, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018b10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a8d
   18b14: 91000000     	add	x0, x0, #0x0
		0000000000018b14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a8d
   18b18: 90000001     	adrp	x1, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018b18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7b15
   18b1c: 91000021     	add	x1, x1, #0x0
		0000000000018b1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7b15
   18b20: 94000000     	bl	0x18b20 <syna_tcm_v1_write_message+0x4fc>
		0000000000018b20:  R_AARCH64_CALL26	_printk
   18b24: 90000000     	adrp	x0, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018b24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a90
   18b28: 91000000     	add	x0, x0, #0x0
		0000000000018b28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a90
   18b2c: 90000001     	adrp	x1, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018b2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x57a7
   18b30: 91000021     	add	x1, x1, #0x0
		0000000000018b30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x57a7
   18b34: 2a1403e2     	mov	w2, w20
   18b38: 94000000     	bl	0x18b38 <syna_tcm_v1_write_message+0x514>
		0000000000018b38:  R_AARCH64_CALL26	_printk
   18b3c: 1400003c     	b	0x18c2c <syna_tcm_v1_write_message+0x608>
   18b40: 90000000     	adrp	x0, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018b40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a5a
   18b44: 91000000     	add	x0, x0, #0x0
		0000000000018b44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a5a
   18b48: 90000001     	adrp	x1, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018b48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaf20
   18b4c: 91000021     	add	x1, x1, #0x0
		0000000000018b4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaf20
   18b50: 94000000     	bl	0x18b50 <syna_tcm_v1_write_message+0x52c>
		0000000000018b50:  R_AARCH64_CALL26	_printk
   18b54: 12801e14     	mov	w20, #-0xf1             // =-241
   18b58: 17fffeea     	b	0x18700 <syna_tcm_v1_write_message+0xdc>
   18b5c: 90000000     	adrp	x0, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018b5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81f1
   18b60: 91000000     	add	x0, x0, #0x0
		0000000000018b60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81f1
   18b64: 90000001     	adrp	x1, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018b64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a25
   18b68: 91000021     	add	x1, x1, #0x0
		0000000000018b68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a25
   18b6c: 14000028     	b	0x18c0c <syna_tcm_v1_write_message+0x5e8>
   18b70: f100001f     	cmp	x0, #0x0
   18b74: 90000008     	adrp	x8, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018b74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f17
   18b78: 91000108     	add	x8, x8, #0x0
		0000000000018b78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f17
   18b7c: 90000009     	adrp	x9, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018b7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   18b80: 91000129     	add	x9, x9, #0x0
		0000000000018b80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   18b84: 90000001     	adrp	x1, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018b84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ae7
   18b88: 91000021     	add	x1, x1, #0x0
		0000000000018b88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ae7
   18b8c: 9a880120     	csel	x0, x9, x8, eq
   18b90: 94000000     	bl	0x18b90 <syna_tcm_v1_write_message+0x56c>
		0000000000018b90:  R_AARCH64_CALL26	_printk
   18b94: f901467f     	str	xzr, [x19, #0x288]
   18b98: 90000000     	adrp	x0, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018b98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5c25
   18b9c: 91000000     	add	x0, x0, #0x0
		0000000000018b9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5c25
   18ba0: 90000001     	adrp	x1, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018ba0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7620
   18ba4: 91000021     	add	x1, x1, #0x0
		0000000000018ba4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7620
   18ba8: 2a1903e2     	mov	w2, w25
   18bac: 94000000     	bl	0x18bac <syna_tcm_v1_write_message+0x588>
		0000000000018bac:  R_AARCH64_CALL26	_printk
   18bb0: 90000000     	adrp	x0, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018bb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13d1
   18bb4: 91000000     	add	x0, x0, #0x0
		0000000000018bb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13d1
   18bb8: 90000001     	adrp	x1, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018bb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x57a7
   18bbc: 91000021     	add	x1, x1, #0x0
		0000000000018bbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x57a7
   18bc0: f9014a7f     	str	xzr, [x19, #0x290]
   18bc4: 94000000     	bl	0x18bc4 <syna_tcm_v1_write_message+0x5a0>
		0000000000018bc4:  R_AARCH64_CALL26	_printk
   18bc8: 12801e5a     	mov	w26, #-0xf3             // =-243
   18bcc: 14000018     	b	0x18c2c <syna_tcm_v1_write_message+0x608>
   18bd0: 90000000     	adrp	x0, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018bd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81f1
   18bd4: 91000000     	add	x0, x0, #0x0
		0000000000018bd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81f1
   18bd8: 90000001     	adrp	x1, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018bd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a25
   18bdc: 91000021     	add	x1, x1, #0x0
		0000000000018bdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a25
   18be0: 52800042     	mov	w2, #0x2                // =2
   18be4: 52800044     	mov	w4, #0x2                // =2
   18be8: 94000000     	bl	0x18be8 <syna_tcm_v1_write_message+0x5c4>
		0000000000018be8:  R_AARCH64_CALL26	_printk
   18bec: 90000000     	adrp	x0, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018bec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc2f2
   18bf0: 91000000     	add	x0, x0, #0x0
		0000000000018bf0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc2f2
   18bf4: 1400000a     	b	0x18c1c <syna_tcm_v1_write_message+0x5f8>
   18bf8: 90000000     	adrp	x0, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018bf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81f1
   18bfc: 91000000     	add	x0, x0, #0x0
		0000000000018bfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81f1
   18c00: 90000001     	adrp	x1, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018c00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a25
   18c04: 91000021     	add	x1, x1, #0x0
		0000000000018c04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a25
   18c08: 2a1a03e2     	mov	w2, w26
   18c0c: 2a1c03e4     	mov	w4, w28
   18c10: 94000000     	bl	0x18c10 <syna_tcm_v1_write_message+0x5ec>
		0000000000018c10:  R_AARCH64_CALL26	_printk
   18c14: 90000000     	adrp	x0, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018c14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc2b5
   18c18: 91000000     	add	x0, x0, #0x0
		0000000000018c18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc2b5
   18c1c: 90000001     	adrp	x1, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018c1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x57a7
   18c20: 91000021     	add	x1, x1, #0x0
		0000000000018c20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x57a7
   18c24: 94000000     	bl	0x18c24 <syna_tcm_v1_write_message+0x600>
		0000000000018c24:  R_AARCH64_CALL26	_printk
   18c28: 128002ba     	mov	w26, #-0x16             // =-22
   18c2c: 394b2262     	ldrb	w2, [x19, #0x2c8]
   18c30: 7100045f     	cmp	w2, #0x1
   18c34: 54000c21     	b.ne	0x18db8 <syna_tcm_v1_write_message+0x794>
   18c38: 2a1f03e8     	mov	w8, wzr
   18c3c: f9400bf6     	ldr	x22, [sp, #0x10]
   18c40: b9400ff8     	ldr	w24, [sp, #0xc]
   18c44: 910a6260     	add	x0, x19, #0x298
   18c48: 390b2268     	strb	w8, [x19, #0x2c8]
   18c4c: 94000000     	bl	0x18c4c <syna_tcm_v1_write_message+0x628>
		0000000000018c4c:  R_AARCH64_CALL26	mutex_unlock
   18c50: 910d2260     	add	x0, x19, #0x348
   18c54: 94000000     	bl	0x18c54 <syna_tcm_v1_write_message+0x630>
		0000000000018c54:  R_AARCH64_CALL26	mutex_unlock
   18c58: 37f8067a     	tbnz	w26, #0x1f, 0x18d24 <syna_tcm_v1_write_message+0x700>
   18c5c: b9400bf7     	ldr	w23, [sp, #0x8]
   18c60: 2a1f03f4     	mov	w20, wzr
   18c64: 14000007     	b	0x18c80 <syna_tcm_v1_write_message+0x65c>
   18c68: b941fa68     	ldr	w8, [x19, #0x1f8]
   18c6c: 7100051f     	cmp	w8, #0x1
   18c70: 54000541     	b.ne	0x18d18 <syna_tcm_v1_write_message+0x6f4>
   18c74: b9420a68     	ldr	w8, [x19, #0x208]
   18c78: 6b08029f     	cmp	w20, w8
   18c7c: 540004e2     	b.hs	0x18d18 <syna_tcm_v1_write_message+0x6f4>
   18c80: 34000117     	cbz	w23, 0x18ca0 <syna_tcm_v1_write_message+0x67c>
   18c84: 710006ff     	cmp	w23, #0x1
   18c88: 2a1703f5     	mov	w21, w23
   18c8c: 540002eb     	b.lt	0x18ce8 <syna_tcm_v1_write_message+0x6c4>
   18c90: 2a1703e0     	mov	w0, w23
   18c94: 94000000     	bl	0x18c94 <syna_tcm_v1_write_message+0x670>
		0000000000018c94:  R_AARCH64_CALL26	msleep
   18c98: 2a1703f5     	mov	w21, w23
   18c9c: 14000013     	b	0x18ce8 <syna_tcm_v1_write_message+0x6c4>
   18ca0: f9402660     	ldr	x0, [x19, #0x48]
   18ca4: b9420a61     	ldr	w1, [x19, #0x208]
   18ca8: f9401808     	ldr	x8, [x0, #0x30]
   18cac: 53027c35     	lsr	w21, w1, #2
   18cb0: b4000128     	cbz	x8, 0x18cd4 <syna_tcm_v1_write_message+0x6b0>
   18cb4: b85fc110     	ldur	w16, [x8, #-0x4]
   18cb8: 72934f71     	movk	w17, #0x9a7b
   18cbc: 72a1f311     	movk	w17, #0xf98, lsl #16
   18cc0: 6b11021f     	cmp	w16, w17
   18cc4: 54000040     	b.eq	0x18ccc <syna_tcm_v1_write_message+0x6a8>
   18cc8: d4304500     	brk	#0x8228
   18ccc: d63f0100     	blr	x8
   18cd0: 14000006     	b	0x18ce8 <syna_tcm_v1_write_message+0x6c4>
   18cd4: 2a0103e0     	mov	w0, w1
   18cd8: 94000000     	bl	0x18cd8 <syna_tcm_v1_write_message+0x6b4>
		0000000000018cd8:  R_AARCH64_CALL26	__msecs_to_jiffies
   18cdc: aa0003e1     	mov	x1, x0
   18ce0: 91088260     	add	x0, x19, #0x220
   18ce4: 94000000     	bl	0x18ce4 <syna_tcm_v1_write_message+0x6c0>
		0000000000018ce4:  R_AARCH64_CALL26	wait_for_completion_timeout
   18ce8: b941fa68     	ldr	w8, [x19, #0x1f8]
   18cec: 7100091f     	cmp	w8, #0x2
   18cf0: 54000180     	b.eq	0x18d20 <syna_tcm_v1_write_message+0x6fc>
   18cf4: b941fa68     	ldr	w8, [x19, #0x1f8]
   18cf8: 0b1402b4     	add	w20, w21, w20
   18cfc: 7100051f     	cmp	w8, #0x1
   18d00: 54fffb41     	b.ne	0x18c68 <syna_tcm_v1_write_message+0x644>
   18d04: aa1303e0     	mov	x0, x19
   18d08: aa1f03e1     	mov	x1, xzr
   18d0c: 940000a9     	bl	0x18fb0 <syna_tcm_v1_read_message>
   18d10: 36fffac0     	tbz	w0, #0x1f, 0x18c68 <syna_tcm_v1_write_message+0x644>
   18d14: 17ffffd8     	b	0x18c74 <syna_tcm_v1_write_message+0x650>
   18d18: b941fa68     	ldr	w8, [x19, #0x1f8]
   18d1c: 350006a8     	cbnz	w8, 0x18df0 <syna_tcm_v1_write_message+0x7cc>
   18d20: 2a1f03fa     	mov	w26, wzr
   18d24: b4000076     	cbz	x22, 0x18d30 <syna_tcm_v1_write_message+0x70c>
   18d28: 3947fa68     	ldrb	w8, [x19, #0x1fe]
   18d2c: 390002c8     	strb	w8, [x22]
   18d30: 3907f27f     	strb	wzr, [x19, #0x1fc]
   18d34: 34000278     	cbz	w24, 0x18d80 <syna_tcm_v1_write_message+0x75c>
   18d38: f9402674     	ldr	x20, [x19, #0x48]
   18d3c: b40004f4     	cbz	x20, 0x18dd8 <syna_tcm_v1_write_message+0x7b4>
   18d40: f9401e88     	ldr	x8, [x20, #0x38]
   18d44: b40001e8     	cbz	x8, 0x18d80 <syna_tcm_v1_write_message+0x75c>
   18d48: 91014260     	add	x0, x19, #0x50
   18d4c: 94000000     	bl	0x18d4c <syna_tcm_v1_write_message+0x728>
		0000000000018d4c:  R_AARCH64_CALL26	mutex_lock
   18d50: f9401e88     	ldr	x8, [x20, #0x38]
   18d54: aa1403e0     	mov	x0, x20
   18d58: 52800021     	mov	w1, #0x1                // =1
   18d5c: b85fc110     	ldur	w16, [x8, #-0x4]
   18d60: 728c3631     	movk	w17, #0x61b1
   18d64: 72a685d1     	movk	w17, #0x342e, lsl #16
   18d68: 6b11021f     	cmp	w16, w17
   18d6c: 54000040     	b.eq	0x18d74 <syna_tcm_v1_write_message+0x750>
   18d70: d4304500     	brk	#0x8228
   18d74: d63f0100     	blr	x8
   18d78: 91014260     	add	x0, x19, #0x50
   18d7c: 94000000     	bl	0x18d7c <syna_tcm_v1_write_message+0x758>
		0000000000018d7c:  R_AARCH64_CALL26	mutex_unlock
   18d80: 910c6260     	add	x0, x19, #0x318
   18d84: b901fa7f     	str	wzr, [x19, #0x1f8]
   18d88: b901f67f     	str	wzr, [x19, #0x1f4]
   18d8c: 94000000     	bl	0x18d8c <syna_tcm_v1_write_message+0x768>
		0000000000018d8c:  R_AARCH64_CALL26	mutex_unlock
   18d90: 2a1a03e0     	mov	w0, w26
   18d94: a9494ff4     	ldp	x20, x19, [sp, #0x90]
   18d98: a94857f6     	ldp	x22, x21, [sp, #0x80]
   18d9c: a9475ff8     	ldp	x24, x23, [sp, #0x70]
   18da0: a94667fa     	ldp	x26, x25, [sp, #0x60]
   18da4: a9456ffc     	ldp	x28, x27, [sp, #0x50]
   18da8: a9447bfd     	ldp	x29, x30, [sp, #0x40]
   18dac: 910283ff     	add	sp, sp, #0xa0
   18db0: d50323bf     	autiasp
   18db4: d65f03c0     	ret
   18db8: 90000000     	adrp	x0, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018db8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   18dbc: 91000000     	add	x0, x0, #0x0
		0000000000018dbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   18dc0: 90000001     	adrp	x1, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018dc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
   18dc4: 91000021     	add	x1, x1, #0x0
		0000000000018dc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
   18dc8: 94000000     	bl	0x18dc8 <syna_tcm_v1_write_message+0x7a4>
		0000000000018dc8:  R_AARCH64_CALL26	_printk
   18dcc: 394b2268     	ldrb	w8, [x19, #0x2c8]
   18dd0: 51000508     	sub	w8, w8, #0x1
   18dd4: 17ffff9a     	b	0x18c3c <syna_tcm_v1_write_message+0x618>
   18dd8: 90000000     	adrp	x0, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018dd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a5a
   18ddc: 91000000     	add	x0, x0, #0x0
		0000000000018ddc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a5a
   18de0: 90000001     	adrp	x1, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018de0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaf20
   18de4: 91000021     	add	x1, x1, #0x0
		0000000000018de4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaf20
   18de8: 94000000     	bl	0x18de8 <syna_tcm_v1_write_message+0x7c4>
		0000000000018de8:  R_AARCH64_CALL26	_printk
   18dec: 17ffffe5     	b	0x18d80 <syna_tcm_v1_write_message+0x75c>
   18df0: b9420a63     	ldr	w3, [x19, #0x208]
   18df4: 6b03029f     	cmp	w20, w3
   18df8: 54000162     	b.hs	0x18e24 <syna_tcm_v1_write_message+0x800>
   18dfc: b9401fe8     	ldr	w8, [sp, #0x1c]
   18e00: 3947f662     	ldrb	w2, [x19, #0x1fd]
   18e04: 90000000     	adrp	x0, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018e04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5764
   18e08: 91000000     	add	x0, x0, #0x0
		0000000000018e08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5764
   18e0c: 90000001     	adrp	x1, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018e0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x52e6
   18e10: 91000021     	add	x1, x1, #0x0
		0000000000018e10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x52e6
   18e14: 12001d03     	and	w3, w8, #0xff
   18e18: 94000000     	bl	0x18e18 <syna_tcm_v1_write_message+0x7f4>
		0000000000018e18:  R_AARCH64_CALL26	_printk
   18e1c: 12801e3a     	mov	w26, #-0xf2             // =-242
   18e20: 17ffffc1     	b	0x18d24 <syna_tcm_v1_write_message+0x700>
   18e24: b9401fe8     	ldr	w8, [sp, #0x1c]
   18e28: 90000000     	adrp	x0, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018e28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5300
   18e2c: 91000000     	add	x0, x0, #0x0
		0000000000018e2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5300
   18e30: 90000001     	adrp	x1, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018e30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x52e6
   18e34: 91000021     	add	x1, x1, #0x0
		0000000000018e34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x52e6
   18e38: 12001d02     	and	w2, w8, #0xff
   18e3c: 94000000     	bl	0x18e3c <syna_tcm_v1_write_message+0x818>
		0000000000018e3c:  R_AARCH64_CALL26	_printk
   18e40: 12801e7a     	mov	w26, #-0xf4             // =-244
   18e44: 17ffffb8     	b	0x18d24 <syna_tcm_v1_write_message+0x700>
