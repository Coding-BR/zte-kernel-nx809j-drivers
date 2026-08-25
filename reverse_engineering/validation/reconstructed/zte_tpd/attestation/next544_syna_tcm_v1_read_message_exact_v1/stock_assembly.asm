
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000018fb0 <syna_tcm_v1_read_message>:
   18fb0: d503233f     	paciasp
   18fb4: d10243ff     	sub	sp, sp, #0x90
   18fb8: a9037bfd     	stp	x29, x30, [sp, #0x30]
   18fbc: a9046ffc     	stp	x28, x27, [sp, #0x40]
   18fc0: a90567fa     	stp	x26, x25, [sp, #0x50]
   18fc4: a9065ff8     	stp	x24, x23, [sp, #0x60]
   18fc8: a90757f6     	stp	x22, x21, [sp, #0x70]
   18fcc: a9084ff4     	stp	x20, x19, [sp, #0x80]
   18fd0: 9100c3fd     	add	x29, sp, #0x30
   18fd4: b4001de0     	cbz	x0, 0x19390 <syna_tcm_v1_read_message+0x3e0>
   18fd8: f9402408     	ldr	x8, [x0, #0x48]
   18fdc: aa0003f3     	mov	x19, x0
   18fe0: b4001de8     	cbz	x8, 0x1939c <syna_tcm_v1_read_message+0x3ec>
   18fe4: 394dea68     	ldrb	w8, [x19, #0x37a]
   18fe8: aa0103f9     	mov	x25, x1
   18fec: 7100051f     	cmp	w8, #0x1
   18ff0: 540000c1     	b.ne	0x19008 <syna_tcm_v1_read_message+0x58>
   18ff4: b941fa68     	ldr	w8, [x19, #0x1f8]
   18ff8: 7100011f     	cmp	w8, #0x0
   18ffc: 1a9f17fa     	cset	w26, eq
   19000: b5000099     	cbnz	x25, 0x19010 <syna_tcm_v1_read_message+0x60>
   19004: 14000005     	b	0x19018 <syna_tcm_v1_read_message+0x68>
   19008: 2a1f03fa     	mov	w26, wzr
   1900c: b4000079     	cbz	x25, 0x19018 <syna_tcm_v1_read_message+0x68>
   19010: 52801fe8     	mov	w8, #0xff               // =255
   19014: 39000328     	strb	w8, [x25]
   19018: 910d2260     	add	x0, x19, #0x348
   1901c: 3907f67f     	strb	wzr, [x19, #0x1fd]
   19020: 94000000     	bl	0x19020 <syna_tcm_v1_read_message+0x70>
		0000000000019020:  R_AARCH64_CALL26	mutex_lock
   19024: 394a0262     	ldrb	w2, [x19, #0x280]
   19028: 35001c82     	cbnz	w2, 0x193b8 <syna_tcm_v1_read_message+0x408>
   1902c: 91094260     	add	x0, x19, #0x250
   19030: 94000000     	bl	0x19030 <syna_tcm_v1_read_message+0x80>
		0000000000019030:  R_AARCH64_CALL26	mutex_lock
   19034: 394a0268     	ldrb	w8, [x19, #0x280]
   19038: 11000508     	add	w8, w8, #0x1
   1903c: 390a0268     	strb	w8, [x19, #0x280]
   19040: 340001ba     	cbz	w26, 0x19074 <syna_tcm_v1_read_message+0xc4>
   19044: b9437e68     	ldr	w8, [x19, #0x37c]
   19048: 52800096     	mov	w22, #0x4               // =4
   1904c: 34000168     	cbz	w8, 0x19078 <syna_tcm_v1_read_message+0xc8>
   19050: 394e0269     	ldrb	w9, [x19, #0x380]
   19054: 394e126a     	ldrb	w10, [x19, #0x384]
   19058: 7100013f     	cmp	w9, #0x0
   1905c: 528000c9     	mov	w9, #0x6                // =6
   19060: 0b0a0108     	add	w8, w8, w10
   19064: 1a961129     	csel	w9, w9, w22, ne
   19068: 0b090108     	add	w8, w8, w9
   1906c: 11000516     	add	w22, w8, #0x1
   19070: 14000002     	b	0x19078 <syna_tcm_v1_read_message+0xc8>
   19074: 52800096     	mov	w22, #0x4               // =4
   19078: f9402668     	ldr	x8, [x19, #0x48]
   1907c: 39405509     	ldrb	w9, [x8, #0x15]
   19080: 7100053f     	cmp	w9, #0x1
   19084: 91090269     	add	x9, x19, #0x240
   19088: f81f83a9     	stur	x9, [x29, #-0x8]
   1908c: 54000101     	b.ne	0x190ac <syna_tcm_v1_read_message+0xfc>
   19090: b9401d09     	ldr	w9, [x8, #0x1c]
   19094: 6b0902df     	cmp	w22, w9
   19098: 540000a9     	b.ls	0x190ac <syna_tcm_v1_read_message+0xfc>
   1909c: b9401908     	ldr	w8, [x8, #0x18]
   190a0: 34001648     	cbz	w8, 0x19368 <syna_tcm_v1_read_message+0x3b8>
   190a4: 1ac80ac9     	udiv	w9, w22, w8
   190a8: 1b087d36     	mul	w22, w9, w8
   190ac: b9424a68     	ldr	w8, [x19, #0x248]
   190b0: 91092275     	add	x21, x19, #0x248
   190b4: 6b0802df     	cmp	w22, w8
   190b8: 54000309     	b.ls	0x19118 <syna_tcm_v1_read_message+0x168>
   190bc: f85f83a8     	ldur	x8, [x29, #-0x8]
   190c0: f9400114     	ldr	x20, [x8]
   190c4: b40000b4     	cbz	x20, 0x190d8 <syna_tcm_v1_read_message+0x128>
   190c8: 94000000     	bl	0x190c8 <syna_tcm_v1_read_message+0x118>
		00000000000190c8:  R_AARCH64_CALL26	syna_request_managed_device
   190cc: b4005f60     	cbz	x0, 0x19cb8 <syna_tcm_v1_read_message+0xd08>
   190d0: aa1403e1     	mov	x1, x20
   190d4: 94000000     	bl	0x190d4 <syna_tcm_v1_read_message+0x124>
		00000000000190d4:  R_AARCH64_CALL26	devm_kfree
   190d8: 94000000     	bl	0x190d8 <syna_tcm_v1_read_message+0x128>
		00000000000190d8:  R_AARCH64_CALL26	syna_request_managed_device
   190dc: b4005fc0     	cbz	x0, 0x19cd4 <syna_tcm_v1_read_message+0xd24>
   190e0: 710002df     	cmp	w22, #0x0
   190e4: 54001aad     	b.le	0x19438 <syna_tcm_v1_read_message+0x488>
   190e8: 2a1603f4     	mov	w20, w22
   190ec: 5281b802     	mov	w2, #0xdc0              // =3520
   190f0: aa1403e1     	mov	x1, x20
   190f4: 94000000     	bl	0x190f4 <syna_tcm_v1_read_message+0x144>
		00000000000190f4:  R_AARCH64_CALL26	devm_kmalloc
   190f8: f85f83a8     	ldur	x8, [x29, #-0x8]
   190fc: f9000100     	str	x0, [x8]
   19100: b4005f80     	cbz	x0, 0x19cf0 <syna_tcm_v1_read_message+0xd40>
   19104: 2a1f03e1     	mov	w1, wzr
   19108: aa1403e2     	mov	x2, x20
   1910c: b9024a76     	str	w22, [x19, #0x248]
   19110: 94000000     	bl	0x19110 <syna_tcm_v1_read_message+0x160>
		0000000000019110:  R_AARCH64_CALL26	memset
   19114: b9024e7f     	str	wzr, [x19, #0x24c]
   19118: f9412262     	ldr	x2, [x19, #0x240]
   1911c: b9424a63     	ldr	w3, [x19, #0x248]
   19120: aa1303e0     	mov	x0, x19
   19124: 2a1603e1     	mov	w1, w22
   19128: 9400054f     	bl	0x1a664 <syna_tcm_v1_read>
   1912c: 37f81520     	tbnz	w0, #0x1f, 0x193d0 <syna_tcm_v1_read_message+0x420>
   19130: f9412278     	ldr	x24, [x19, #0x240]
   19134: 79400708     	ldrh	w8, [x24, #0x2]
   19138: b9020268     	str	w8, [x19, #0x200]
   1913c: 39400708     	ldrb	w8, [x24, #0x1]
   19140: 34000048     	cbz	w8, 0x19148 <syna_tcm_v1_read_message+0x198>
   19144: 3907f668     	strb	w8, [x19, #0x1fd]
   19148: 394a0262     	ldrb	w2, [x19, #0x280]
   1914c: 7100045f     	cmp	w2, #0x1
   19150: 54001641     	b.ne	0x19418 <syna_tcm_v1_read_message+0x468>
   19154: 2a1f03e8     	mov	w8, wzr
   19158: 91094260     	add	x0, x19, #0x250
   1915c: 390a0268     	strb	w8, [x19, #0x280]
   19160: 94000000     	bl	0x19160 <syna_tcm_v1_read_message+0x1b0>
		0000000000019160:  R_AARCH64_CALL26	mutex_unlock
   19164: b9420268     	ldr	w8, [x19, #0x200]
   19168: 34002cc8     	cbz	w8, 0x19700 <syna_tcm_v1_read_message+0x750>
   1916c: 39400709     	ldrb	w9, [x24, #0x1]
   19170: 71000d3f     	cmp	w9, #0x3
   19174: 54000601     	b.ne	0x19234 <syna_tcm_v1_read_message+0x284>
   19178: b9403e68     	ldr	w8, [x19, #0x3c]
   1917c: 52800809     	mov	w9, #0x40               // =64
   19180: 7100011f     	cmp	w8, #0x0
   19184: 1a880134     	csel	w20, w9, w8, eq
   19188: 94000000     	bl	0x19188 <syna_tcm_v1_read_message+0x1d8>
		0000000000019188:  R_AARCH64_CALL26	syna_request_managed_device
   1918c: b4005e20     	cbz	x0, 0x19d50 <syna_tcm_v1_read_message+0xda0>
   19190: 321f77e8     	mov	w8, #0x7ffffffe         // =2147483646
   19194: 6b08029f     	cmp	w20, w8
   19198: 54005e28     	b.hi	0x19d5c <syna_tcm_v1_read_message+0xdac>
   1919c: 11000681     	add	w1, w20, #0x1
   191a0: 5281b802     	mov	w2, #0xdc0              // =3520
   191a4: 94000000     	bl	0x191a4 <syna_tcm_v1_read_message+0x1f4>
		00000000000191a4:  R_AARCH64_CALL26	devm_kmalloc
   191a8: b4005e40     	cbz	x0, 0x19d70 <syna_tcm_v1_read_message+0xdc0>
   191ac: aa0003f5     	mov	x21, x0
   191b0: 90000016     	adrp	x22, 0x19000 <syna_tcm_v1_read_message+0x50>
		00000000000191b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a5a
   191b4: 910002d6     	add	x22, x22, #0x0
		00000000000191b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a5a
   191b8: 52800c98     	mov	w24, #0x64              // =100
   191bc: 90000017     	adrp	x23, 0x19000 <syna_tcm_v1_read_message+0x50>
		00000000000191bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ce6
   191c0: 910002f7     	add	x23, x23, #0x0
		00000000000191c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ce6
   191c4: f9402660     	ldr	x0, [x19, #0x48]
   191c8: b4006840     	cbz	x0, 0x19ed0 <syna_tcm_v1_read_message+0xf20>
   191cc: f9401008     	ldr	x8, [x0, #0x20]
   191d0: b40067e8     	cbz	x8, 0x19ecc <syna_tcm_v1_read_message+0xf1c>
   191d4: aa1503e1     	mov	x1, x21
   191d8: 2a1403e2     	mov	w2, w20
   191dc: b85fc110     	ldur	w16, [x8, #-0x4]
   191e0: 728403f1     	movk	w17, #0x201f
   191e4: 72a51491     	movk	w17, #0x28a4, lsl #16
   191e8: 6b11021f     	cmp	w16, w17
   191ec: 54000040     	b.eq	0x191f4 <syna_tcm_v1_read_message+0x244>
   191f0: d4304500     	brk	#0x8228
   191f4: d63f0100     	blr	x8
   191f8: 37f86740     	tbnz	w0, #0x1f, 0x19ee0 <syna_tcm_v1_read_message+0xf30>
   191fc: 394006a8     	ldrb	w8, [x21, #0x1]
   19200: 340000e8     	cbz	w8, 0x1921c <syna_tcm_v1_read_message+0x26c>
   19204: 52807d00     	mov	w0, #0x3e8              // =1000
   19208: 5280fa01     	mov	w1, #0x7d0              // =2000
   1920c: 52800042     	mov	w2, #0x2                // =2
   19210: 94000000     	bl	0x19210 <syna_tcm_v1_read_message+0x260>
		0000000000019210:  R_AARCH64_CALL26	usleep_range_state
   19214: 71000718     	subs	w24, w24, #0x1
   19218: 54fffd61     	b.ne	0x191c4 <syna_tcm_v1_read_message+0x214>
   1921c: 94000000     	bl	0x1921c <syna_tcm_v1_read_message+0x26c>
		000000000001921c:  R_AARCH64_CALL26	syna_request_managed_device
   19220: b4006700     	cbz	x0, 0x19f00 <syna_tcm_v1_read_message+0xf50>
   19224: aa1503e1     	mov	x1, x21
   19228: 94000000     	bl	0x19228 <syna_tcm_v1_read_message+0x278>
		0000000000019228:  R_AARCH64_CALL26	devm_kfree
   1922c: 12801e37     	mov	w23, #-0xf2             // =-242
   19230: 14000482     	b	0x1a438 <syna_tcm_v1_read_message+0x1488>
   19234: 710012c9     	subs	w9, w22, #0x4
   19238: 6b090109     	subs	w9, w8, w9
   1923c: 1a8933e9     	csel	w9, wzr, w9, lo
   19240: 710012df     	cmp	w22, #0x4
   19244: 1a88812d     	csel	w13, w9, w8, hi
   19248: 340025cd     	cbz	w13, 0x19700 <syna_tcm_v1_read_message+0x750>
   1924c: 529fffe9     	mov	w9, #0xffff             // =65535
   19250: 6a2d013f     	bics	wzr, w9, w13
   19254: 54005b00     	b.eq	0x19db4 <syna_tcm_v1_read_message+0xe04>
   19258: 394e0269     	ldrb	w9, [x19, #0x380]
   1925c: 394e126c     	ldrb	w12, [x19, #0x384]
   19260: 1100150a     	add	w10, w8, #0x5
   19264: 11001d08     	add	w8, w8, #0x7
   19268: 11000dab     	add	w11, w13, #0x3
   1926c: 394a0262     	ldrb	w2, [x19, #0x280]
   19270: 7100013f     	cmp	w9, #0x0
   19274: 2a0c0129     	orr	w9, w9, w12
   19278: 1100058c     	add	w12, w12, #0x1
   1927c: 1a8a1108     	csel	w8, w8, w10, ne
   19280: 1a8d156b     	csinc	w11, w11, w13, ne
   19284: 7200013f     	tst	w9, #0x1
   19288: 0b0c0108     	add	w8, w8, w12
   1928c: 0b0c016b     	add	w11, w11, w12
   19290: f9000bf8     	str	x24, [sp, #0x10]
   19294: 1a8a1114     	csel	w20, w8, w10, ne
   19298: 1a8d157b     	csinc	w27, w11, w13, ne
   1929c: b9001bed     	str	w13, [sp, #0x18]
   192a0: 350059a2     	cbnz	w2, 0x19dd4 <syna_tcm_v1_read_message+0xe24>
   192a4: 91094260     	add	x0, x19, #0x250
   192a8: 94000000     	bl	0x192a8 <syna_tcm_v1_read_message+0x2f8>
		00000000000192a8:  R_AARCH64_CALL26	mutex_lock
   192ac: 394a0268     	ldrb	w8, [x19, #0x280]
   192b0: b9424a78     	ldr	w24, [x19, #0x248]
   192b4: 11000696     	add	w22, w20, #0x1
   192b8: 11000508     	add	w8, w8, #0x1
   192bc: 6b16031f     	cmp	w24, w22
   192c0: 390a0268     	strb	w8, [x19, #0x280]
   192c4: 540002e2     	b.hs	0x19320 <syna_tcm_v1_read_message+0x370>
   192c8: f85f83a8     	ldur	x8, [x29, #-0x8]
   192cc: f9400117     	ldr	x23, [x8]
   192d0: 94000000     	bl	0x192d0 <syna_tcm_v1_read_message+0x320>
		00000000000192d0:  R_AARCH64_CALL26	syna_request_managed_device
   192d4: b4006540     	cbz	x0, 0x19f7c <syna_tcm_v1_read_message+0xfcc>
   192d8: 12b00008     	mov	w8, #0x7fffffff         // =2147483647
   192dc: 6b08029f     	cmp	w20, w8
   192e0: 540067e2     	b.hs	0x19fdc <syna_tcm_v1_read_message+0x102c>
   192e4: aa1603e1     	mov	x1, x22
   192e8: 5281b802     	mov	w2, #0xdc0              // =3520
   192ec: 94000000     	bl	0x192ec <syna_tcm_v1_read_message+0x33c>
		00000000000192ec:  R_AARCH64_CALL26	devm_kmalloc
   192f0: f85f83a8     	ldur	x8, [x29, #-0x8]
   192f4: f9000100     	str	x0, [x8]
   192f8: b4006800     	cbz	x0, 0x19ff8 <syna_tcm_v1_read_message+0x1048>
   192fc: b40071b7     	cbz	x23, 0x1a130 <syna_tcm_v1_read_message+0x1180>
   19300: aa1703e1     	mov	x1, x23
   19304: aa1803e2     	mov	x2, x24
   19308: 94000000     	bl	0x19308 <syna_tcm_v1_read_message+0x358>
		0000000000019308:  R_AARCH64_CALL26	memcpy
   1930c: 94000000     	bl	0x1930c <syna_tcm_v1_read_message+0x35c>
		000000000001930c:  R_AARCH64_CALL26	syna_request_managed_device
   19310: b40073e0     	cbz	x0, 0x1a18c <syna_tcm_v1_read_message+0x11dc>
   19314: aa1703e1     	mov	x1, x23
   19318: 94000000     	bl	0x19318 <syna_tcm_v1_read_message+0x368>
		0000000000019318:  R_AARCH64_CALL26	devm_kfree
   1931c: b90002b6     	str	w22, [x21]
   19320: f9402668     	ldr	x8, [x19, #0x48]
   19324: b9403e69     	ldr	w9, [x19, #0x3c]
   19328: 3940550a     	ldrb	w10, [x8, #0x15]
   1932c: 7100013f     	cmp	w9, #0x0
   19330: 1a890289     	csel	w9, w20, w9, eq
   19334: 7100055f     	cmp	w10, #0x1
   19338: 540001e1     	b.ne	0x19374 <syna_tcm_v1_read_message+0x3c4>
   1933c: b9401beb     	ldr	w11, [sp, #0x18]
   19340: 2a1f03f6     	mov	w22, wzr
   19344: 34000809     	cbz	w9, 0x19444 <syna_tcm_v1_read_message+0x494>
   19348: b940190a     	ldr	w10, [x8, #0x18]
   1934c: 2a1603e8     	mov	w8, w22
   19350: 340007ca     	cbz	w10, 0x19448 <syna_tcm_v1_read_message+0x498>
   19354: 1aca0928     	udiv	w8, w9, w10
   19358: 1b0a7d16     	mul	w22, w8, w10
   1935c: 35000136     	cbnz	w22, 0x19380 <syna_tcm_v1_read_message+0x3d0>
   19360: 2a1f03e8     	mov	w8, wzr
   19364: 14000039     	b	0x19448 <syna_tcm_v1_read_message+0x498>
   19368: 2a1f03f6     	mov	w22, wzr
   1936c: 91092275     	add	x21, x19, #0x248
   19370: 17ffff6a     	b	0x19118 <syna_tcm_v1_read_message+0x168>
   19374: b9401beb     	ldr	w11, [sp, #0x18]
   19378: 2a0903f6     	mov	w22, w9
   1937c: 34ffff36     	cbz	w22, 0x19360 <syna_tcm_v1_read_message+0x3b0>
   19380: 0b160288     	add	w8, w20, w22
   19384: 51000508     	sub	w8, w8, #0x1
   19388: 1ad60908     	udiv	w8, w8, w22
   1938c: 1400002f     	b	0x19448 <syna_tcm_v1_read_message+0x498>
   19390: 90000000     	adrp	x0, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019390:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2055
   19394: 91000000     	add	x0, x0, #0x0
		0000000000019394:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2055
   19398: 14000003     	b	0x193a4 <syna_tcm_v1_read_message+0x3f4>
   1939c: 90000000     	adrp	x0, 0x19000 <syna_tcm_v1_read_message+0x50>
		000000000001939c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb5b3
   193a0: 91000000     	add	x0, x0, #0x0
		00000000000193a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb5b3
   193a4: 90000001     	adrp	x1, 0x19000 <syna_tcm_v1_read_message+0x50>
		00000000000193a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbbf7
   193a8: 91000021     	add	x1, x1, #0x0
		00000000000193a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbbf7
   193ac: 94000000     	bl	0x193ac <syna_tcm_v1_read_message+0x3fc>
		00000000000193ac:  R_AARCH64_CALL26	_printk
   193b0: 12801e17     	mov	w23, #-0xf1             // =-241
   193b4: 1400042d     	b	0x1a468 <syna_tcm_v1_read_message+0x14b8>
   193b8: 90000000     	adrp	x0, 0x19000 <syna_tcm_v1_read_message+0x50>
		00000000000193b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   193bc: 91000000     	add	x0, x0, #0x0
		00000000000193bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   193c0: 90000001     	adrp	x1, 0x19000 <syna_tcm_v1_read_message+0x50>
		00000000000193c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f05
   193c4: 91000021     	add	x1, x1, #0x0
		00000000000193c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f05
   193c8: 94000000     	bl	0x193c8 <syna_tcm_v1_read_message+0x418>
		00000000000193c8:  R_AARCH64_CALL26	_printk
   193cc: 17ffff18     	b	0x1902c <syna_tcm_v1_read_message+0x7c>
   193d0: 2a0003f7     	mov	w23, w0
   193d4: 90000000     	adrp	x0, 0x19000 <syna_tcm_v1_read_message+0x50>
		00000000000193d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70f7
   193d8: 91000000     	add	x0, x0, #0x0
		00000000000193d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70f7
   193dc: 90000001     	adrp	x1, 0x19000 <syna_tcm_v1_read_message+0x50>
		00000000000193dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbbf7
   193e0: 91000021     	add	x1, x1, #0x0
		00000000000193e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbbf7
   193e4: 2a1603e2     	mov	w2, w22
   193e8: 94000000     	bl	0x193e8 <syna_tcm_v1_read_message+0x438>
		00000000000193e8:  R_AARCH64_CALL26	_printk
   193ec: 394a0262     	ldrb	w2, [x19, #0x280]
   193f0: 7100045f     	cmp	w2, #0x1
   193f4: 540072c1     	b.ne	0x1a24c <syna_tcm_v1_read_message+0x129c>
   193f8: 2a1f03e8     	mov	w8, wzr
   193fc: 91094260     	add	x0, x19, #0x250
   19400: 390a0268     	strb	w8, [x19, #0x280]
   19404: 94000000     	bl	0x19404 <syna_tcm_v1_read_message+0x454>
		0000000000019404:  R_AARCH64_CALL26	mutex_unlock
   19408: 52801fe8     	mov	w8, #0xff               // =255
   1940c: b902027f     	str	wzr, [x19, #0x200]
   19410: 3907f668     	strb	w8, [x19, #0x1fd]
   19414: 14000409     	b	0x1a438 <syna_tcm_v1_read_message+0x1488>
   19418: 90000000     	adrp	x0, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019418:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   1941c: 91000000     	add	x0, x0, #0x0
		000000000001941c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   19420: 90000001     	adrp	x1, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019420:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
   19424: 91000021     	add	x1, x1, #0x0
		0000000000019424:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
   19428: 94000000     	bl	0x19428 <syna_tcm_v1_read_message+0x478>
		0000000000019428:  R_AARCH64_CALL26	_printk
   1942c: 394a0268     	ldrb	w8, [x19, #0x280]
   19430: 51000508     	sub	w8, w8, #0x1
   19434: 17ffff49     	b	0x19158 <syna_tcm_v1_read_message+0x1a8>
   19438: 90000000     	adrp	x0, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019438:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f17
   1943c: 91000000     	add	x0, x0, #0x0
		000000000001943c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f17
   19440: 14000227     	b	0x19cdc <syna_tcm_v1_read_message+0xd2c>
   19444: 2a1603e8     	mov	w8, w22
   19448: b9420269     	ldr	w9, [x19, #0x200]
   1944c: 394c4262     	ldrb	w2, [x19, #0x310]
   19450: 7100051f     	cmp	w8, #0x1
   19454: b90007fa     	str	w26, [sp, #0x4]
   19458: 1a9f8514     	csinc	w20, w8, wzr, hi
   1945c: 4b0b0129     	sub	w9, w9, w11
   19460: f90007f9     	str	x25, [sp, #0x8]
   19464: 1100113a     	add	w26, w9, #0x4
   19468: 35005062     	cbnz	w2, 0x19e74 <syna_tcm_v1_read_message+0xec4>
   1946c: 910b8260     	add	x0, x19, #0x2e0
   19470: 94000000     	bl	0x19470 <syna_tcm_v1_read_message+0x4c0>
		0000000000019470:  R_AARCH64_CALL26	mutex_lock
   19474: 394c4268     	ldrb	w8, [x19, #0x310]
   19478: 2a1f03f9     	mov	w25, wzr
   1947c: 2a1f03f5     	mov	w21, wzr
   19480: 51000ac9     	sub	w9, w22, #0x2
   19484: 52801ffc     	mov	w28, #0xff              // =255
   19488: 11000508     	add	w8, w8, #0x1
   1948c: 293ddba9     	stp	w9, w22, [x29, #-0x14]
   19490: 390c4268     	strb	w8, [x19, #0x310]
   19494: 1400000a     	b	0x194bc <syna_tcm_v1_read_message+0x50c>
   19498: f85f83a8     	ldur	x8, [x29, #-0x8]
   1949c: 52800b4a     	mov	w10, #0x5a              // =90
   194a0: 5100077b     	sub	w27, w27, #0x1
   194a4: f9400108     	ldr	x8, [x8]
   194a8: 383a490a     	strb	w10, [x8, w26, uxtw]
   194ac: 1100075a     	add	w26, w26, #0x1
   194b0: 6b1402ff     	cmp	w23, w20
   194b4: 2a1703f9     	mov	w25, w23
   194b8: 54000fa2     	b.hs	0x196ac <syna_tcm_v1_read_message+0x6fc>
   194bc: 6b16037f     	cmp	w27, w22
   194c0: 11000737     	add	w23, w25, #0x1
   194c4: 1a9b8138     	csel	w24, w9, w27, hi
   194c8: 7100071f     	cmp	w24, #0x1
   194cc: 54fffe60     	b.eq	0x19498 <syna_tcm_v1_read_message+0x4e8>
   194d0: 6b1402ff     	cmp	w23, w20
   194d4: 540001c1     	b.ne	0x1950c <syna_tcm_v1_read_message+0x55c>
   194d8: f9402668     	ldr	x8, [x19, #0x48]
   194dc: 39405509     	ldrb	w9, [x8, #0x15]
   194e0: 36000169     	tbz	w9, #0x0, 0x1950c <syna_tcm_v1_read_message+0x55c>
   194e4: b9401d09     	ldr	w9, [x8, #0x1c]
   194e8: 6b09031f     	cmp	w24, w9
   194ec: 54000109     	b.ls	0x1950c <syna_tcm_v1_read_message+0x55c>
   194f0: b9401908     	ldr	w8, [x8, #0x18]
   194f4: 34000068     	cbz	w8, 0x19500 <syna_tcm_v1_read_message+0x550>
   194f8: 1ac80b09     	udiv	w9, w24, w8
   194fc: 1b087d28     	mul	w8, w9, w8
   19500: 51000918     	sub	w24, w8, #0x2
   19504: 6b1b031f     	cmp	w24, w27
   19508: 1a940694     	cinc	w20, w20, ne
   1950c: b942da62     	ldr	w2, [x19, #0x2d8]
   19510: b81f43b4     	stur	w20, [x29, #-0xc]
   19514: 11000b16     	add	w22, w24, #0x2
   19518: f9416a74     	ldr	x20, [x19, #0x2d0]
   1951c: 6b16005f     	cmp	w2, w22
   19520: 54000242     	b.hs	0x19568 <syna_tcm_v1_read_message+0x5b8>
   19524: b40000b4     	cbz	x20, 0x19538 <syna_tcm_v1_read_message+0x588>
   19528: 94000000     	bl	0x19528 <syna_tcm_v1_read_message+0x578>
		0000000000019528:  R_AARCH64_CALL26	syna_request_managed_device
   1952c: b4000ac0     	cbz	x0, 0x19684 <syna_tcm_v1_read_message+0x6d4>
   19530: aa1403e1     	mov	x1, x20
   19534: 94000000     	bl	0x19534 <syna_tcm_v1_read_message+0x584>
		0000000000019534:  R_AARCH64_CALL26	devm_kfree
   19538: 94000000     	bl	0x19538 <syna_tcm_v1_read_message+0x588>
		0000000000019538:  R_AARCH64_CALL26	syna_request_managed_device
   1953c: b4000b20     	cbz	x0, 0x196a0 <syna_tcm_v1_read_message+0x6f0>
   19540: 710002df     	cmp	w22, #0x0
   19544: 54006b6d     	b.le	0x1a2b0 <syna_tcm_v1_read_message+0x1300>
   19548: aa1603e1     	mov	x1, x22
   1954c: 5281b802     	mov	w2, #0xdc0              // =3520
   19550: 94000000     	bl	0x19550 <syna_tcm_v1_read_message+0x5a0>
		0000000000019550:  R_AARCH64_CALL26	devm_kmalloc
   19554: f9016a60     	str	x0, [x19, #0x2d0]
   19558: b4006b80     	cbz	x0, 0x1a2c8 <syna_tcm_v1_read_message+0x1318>
   1955c: aa0003f4     	mov	x20, x0
   19560: aa1603e2     	mov	x2, x22
   19564: b902da76     	str	w22, [x19, #0x2d8]
   19568: aa1403e0     	mov	x0, x20
   1956c: 2a1f03e1     	mov	w1, wzr
   19570: 94000000     	bl	0x19570 <syna_tcm_v1_read_message+0x5c0>
		0000000000019570:  R_AARCH64_CALL26	memset
   19574: 110006a8     	add	w8, w21, #0x1
   19578: b902de7f     	str	wzr, [x19, #0x2dc]
   1957c: 7100151f     	cmp	w8, #0x5
   19580: 528000a8     	mov	w8, #0x5                // =5
   19584: 1a95d514     	csinc	w20, w8, w21, le
   19588: b9421260     	ldr	w0, [x19, #0x210]
   1958c: 7100041f     	cmp	w0, #0x1
   19590: 5400010b     	b.lt	0x195b0 <syna_tcm_v1_read_message+0x600>
   19594: b9421668     	ldr	w8, [x19, #0x214]
   19598: 7100051f     	cmp	w8, #0x1
   1959c: 540000ab     	b.lt	0x195b0 <syna_tcm_v1_read_message+0x600>
   195a0: 6b00011f     	cmp	w8, w0
   195a4: 52800042     	mov	w2, #0x2                // =2
   195a8: 1a808101     	csel	w1, w8, w0, hi
   195ac: 94000000     	bl	0x195ac <syna_tcm_v1_read_message+0x5fc>
		00000000000195ac:  R_AARCH64_CALL26	usleep_range_state
   195b0: f9416a62     	ldr	x2, [x19, #0x2d0]
   195b4: b942da63     	ldr	w3, [x19, #0x2d8]
   195b8: aa1303e0     	mov	x0, x19
   195bc: 2a1603e1     	mov	w1, w22
   195c0: 94000429     	bl	0x1a664 <syna_tcm_v1_read>
   195c4: 37f80140     	tbnz	w0, #0x1f, 0x195ec <syna_tcm_v1_read_message+0x63c>
   195c8: f9416a68     	ldr	x8, [x19, #0x2d0]
   195cc: b902de76     	str	w22, [x19, #0x2dc]
   195d0: 3940051c     	ldrb	w28, [x8, #0x1]
   195d4: 71000f9f     	cmp	w28, #0x3
   195d8: 54000280     	b.eq	0x19628 <syna_tcm_v1_read_message+0x678>
   195dc: 110006b5     	add	w21, w21, #0x1
   195e0: 710016bf     	cmp	w21, #0x5
   195e4: 54fffd2b     	b.lt	0x19588 <syna_tcm_v1_read_message+0x5d8>
   195e8: 14000008     	b	0x19608 <syna_tcm_v1_read_message+0x658>
   195ec: 90000000     	adrp	x0, 0x19000 <syna_tcm_v1_read_message+0x50>
		00000000000195ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5def
   195f0: 91000000     	add	x0, x0, #0x0
		00000000000195f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5def
   195f4: 90000001     	adrp	x1, 0x19000 <syna_tcm_v1_read_message+0x50>
		00000000000195f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x229d
   195f8: 91000021     	add	x1, x1, #0x0
		00000000000195f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x229d
   195fc: 2a1603e2     	mov	w2, w22
   19600: 94000000     	bl	0x19600 <syna_tcm_v1_read_message+0x650>
		0000000000019600:  R_AARCH64_CALL26	_printk
   19604: 17fffff6     	b	0x195dc <syna_tcm_v1_read_message+0x62c>
   19608: b85f03b6     	ldur	w22, [x29, #-0x10]
   1960c: 71000f9f     	cmp	w28, #0x3
   19610: 540063a1     	b.ne	0x1a284 <syna_tcm_v1_read_message+0x12d4>
   19614: f9416a68     	ldr	x8, [x19, #0x2d0]
   19618: 2a1403f5     	mov	w21, w20
   1961c: b1000901     	adds	x1, x8, #0x2
   19620: 540000a1     	b.ne	0x19634 <syna_tcm_v1_read_message+0x684>
   19624: 140002b3     	b	0x1a0f0 <syna_tcm_v1_read_message+0x1140>
   19628: b85f03b6     	ldur	w22, [x29, #-0x10]
   1962c: b1000901     	adds	x1, x8, #0x2
   19630: 54005600     	b.eq	0x1a0f0 <syna_tcm_v1_read_message+0x1140>
   19634: f85f83a8     	ldur	x8, [x29, #-0x8]
   19638: f9400108     	ldr	x8, [x8]
   1963c: 8b3a4100     	add	x0, x8, w26, uxtw
   19640: b4005580     	cbz	x0, 0x1a0f0 <syna_tcm_v1_read_message+0x1140>
   19644: b942da68     	ldr	w8, [x19, #0x2d8]
   19648: 51000902     	sub	w2, w8, #0x2
   1964c: b9424a68     	ldr	w8, [x19, #0x248]
   19650: 6b02031f     	cmp	w24, w2
   19654: 4b1a0103     	sub	w3, w8, w26
   19658: 54005408     	b.hi	0x1a0d8 <syna_tcm_v1_read_message+0x1128>
   1965c: 6b03031f     	cmp	w24, w3
   19660: 540053c8     	b.hi	0x1a0d8 <syna_tcm_v1_read_message+0x1128>
   19664: 2a1803e2     	mov	w2, w24
   19668: 94000000     	bl	0x19668 <syna_tcm_v1_read_message+0x6b8>
		0000000000019668:  R_AARCH64_CALL26	memcpy
   1966c: b85f43b4     	ldur	w20, [x29, #-0xc]
   19670: b85ec3a9     	ldur	w9, [x29, #-0x14]
   19674: 0b1a031a     	add	w26, w24, w26
   19678: 4b18037b     	sub	w27, w27, w24
   1967c: 5280007c     	mov	w28, #0x3               // =3
   19680: 17ffff8c     	b	0x194b0 <syna_tcm_v1_read_message+0x500>
   19684: 90000000     	adrp	x0, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019684:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   19688: 91000000     	add	x0, x0, #0x0
		0000000000019688:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   1968c: 90000001     	adrp	x1, 0x19000 <syna_tcm_v1_read_message+0x50>
		000000000001968c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   19690: 91000021     	add	x1, x1, #0x0
		0000000000019690:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   19694: 94000000     	bl	0x19694 <syna_tcm_v1_read_message+0x6e4>
		0000000000019694:  R_AARCH64_CALL26	_printk
   19698: 94000000     	bl	0x19698 <syna_tcm_v1_read_message+0x6e8>
		0000000000019698:  R_AARCH64_CALL26	syna_request_managed_device
   1969c: b5fff520     	cbnz	x0, 0x19540 <syna_tcm_v1_read_message+0x590>
   196a0: 90000000     	adrp	x0, 0x19000 <syna_tcm_v1_read_message+0x50>
		00000000000196a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   196a4: 91000000     	add	x0, x0, #0x0
		00000000000196a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   196a8: 14000304     	b	0x1a2b8 <syna_tcm_v1_read_message+0x1308>
   196ac: 2a1f03f4     	mov	w20, wzr
   196b0: 2a1f03f7     	mov	w23, wzr
   196b4: b9024e7a     	str	w26, [x19, #0x24c]
   196b8: 394c4262     	ldrb	w2, [x19, #0x310]
   196bc: a940e3f9     	ldp	x25, x24, [sp, #0x8]
   196c0: b94007fa     	ldr	w26, [sp, #0x4]
   196c4: 7100045f     	cmp	w2, #0x1
   196c8: 54003e21     	b.ne	0x19e8c <syna_tcm_v1_read_message+0xedc>
   196cc: 2a1f03e8     	mov	w8, wzr
   196d0: 910b8260     	add	x0, x19, #0x2e0
   196d4: 390c4268     	strb	w8, [x19, #0x310]
   196d8: 94000000     	bl	0x196d8 <syna_tcm_v1_read_message+0x728>
		00000000000196d8:  R_AARCH64_CALL26	mutex_unlock
   196dc: 394a0262     	ldrb	w2, [x19, #0x280]
   196e0: 7100045f     	cmp	w2, #0x1
   196e4: 54003e41     	b.ne	0x19eac <syna_tcm_v1_read_message+0xefc>
   196e8: 2a1f03e8     	mov	w8, wzr
   196ec: 91094260     	add	x0, x19, #0x250
   196f0: 390a0268     	strb	w8, [x19, #0x280]
   196f4: 94000000     	bl	0x196f4 <syna_tcm_v1_read_message+0x744>
		00000000000196f4:  R_AARCH64_CALL26	mutex_unlock
   196f8: b9401bed     	ldr	w13, [sp, #0x18]
   196fc: 350061f4     	cbnz	w20, 0x1a338 <syna_tcm_v1_read_message+0x1388>
   19700: 394a0262     	ldrb	w2, [x19, #0x280]
   19704: 350025a2     	cbnz	w2, 0x19bb8 <syna_tcm_v1_read_message+0xc08>
   19708: 91094260     	add	x0, x19, #0x250
   1970c: 94000000     	bl	0x1970c <syna_tcm_v1_read_message+0x75c>
		000000000001970c:  R_AARCH64_CALL26	mutex_lock
   19710: 394a0268     	ldrb	w8, [x19, #0x280]
   19714: f9412269     	ldr	x9, [x19, #0x240]
   19718: 11000508     	add	w8, w8, #0x1
   1971c: 390a0268     	strb	w8, [x19, #0x280]
   19720: 528014a8     	mov	w8, #0xa5               // =165
   19724: 39000128     	strb	w8, [x9]
   19728: 3947f668     	ldrb	w8, [x19, #0x1fd]
   1972c: f9412269     	ldr	x9, [x19, #0x240]
   19730: 39000528     	strb	w8, [x9, #0x1]
   19734: b9420268     	ldr	w8, [x19, #0x200]
   19738: f9412269     	ldr	x9, [x19, #0x240]
   1973c: 39000928     	strb	w8, [x9, #0x2]
   19740: b9420268     	ldr	w8, [x19, #0x200]
   19744: f9412269     	ldr	x9, [x19, #0x240]
   19748: 53087d08     	lsr	w8, w8, #8
   1974c: 39000d28     	strb	w8, [x9, #0x3]
   19750: 394a0262     	ldrb	w2, [x19, #0x280]
   19754: 7100045f     	cmp	w2, #0x1
   19758: 540023c1     	b.ne	0x19bd0 <syna_tcm_v1_read_message+0xc20>
   1975c: 2a1f03e8     	mov	w8, wzr
   19760: 91094260     	add	x0, x19, #0x250
   19764: 390a0268     	strb	w8, [x19, #0x280]
   19768: 94000000     	bl	0x19768 <syna_tcm_v1_read_message+0x7b8>
		0000000000019768:  R_AARCH64_CALL26	mutex_unlock
   1976c: 394e0268     	ldrb	w8, [x19, #0x380]
   19770: 7100051f     	cmp	w8, #0x1
   19774: 540003e1     	b.ne	0x197f0 <syna_tcm_v1_read_message+0x840>
   19778: b9420268     	ldr	w8, [x19, #0x200]
   1977c: 340003a8     	cbz	w8, 0x197f0 <syna_tcm_v1_read_message+0x840>
   19780: 394a0262     	ldrb	w2, [x19, #0x280]
   19784: 35003002     	cbnz	w2, 0x19d84 <syna_tcm_v1_read_message+0xdd4>
   19788: 91094260     	add	x0, x19, #0x250
   1978c: 94000000     	bl	0x1978c <syna_tcm_v1_read_message+0x7dc>
		000000000001978c:  R_AARCH64_CALL26	mutex_lock
   19790: b942026a     	ldr	w10, [x19, #0x200]
   19794: 394a0269     	ldrb	w9, [x19, #0x280]
   19798: b9424a6b     	ldr	w11, [x19, #0x248]
   1979c: 1100154d     	add	w13, w10, #0x5
   197a0: 11000528     	add	w8, w9, #0x1
   197a4: 6b0d017f     	cmp	w11, w13
   197a8: 390a0268     	strb	w8, [x19, #0x280]
   197ac: 54000229     	b.ls	0x197f0 <syna_tcm_v1_read_message+0x840>
   197b0: f941226c     	ldr	x12, [x19, #0x240]
   197b4: 394e126e     	ldrb	w14, [x19, #0x384]
   197b8: 786d498d     	ldrh	w13, [x12, w13, uxtw]
   197bc: 710005df     	cmp	w14, #0x1
   197c0: 7907066d     	strh	w13, [x19, #0x382]
   197c4: 540000c1     	b.ne	0x197dc <syna_tcm_v1_read_message+0x82c>
   197c8: 11001d4a     	add	w10, w10, #0x7
   197cc: 6b0a017f     	cmp	w11, w10
   197d0: 54000063     	b.lo	0x197dc <syna_tcm_v1_read_message+0x82c>
   197d4: 386a498a     	ldrb	w10, [x12, w10, uxtw]
   197d8: 390e166a     	strb	w10, [x19, #0x385]
   197dc: 35003a09     	cbnz	w9, 0x19f1c <syna_tcm_v1_read_message+0xf6c>
   197e0: 2a1f03e8     	mov	w8, wzr
   197e4: 91094260     	add	x0, x19, #0x250
   197e8: 390a0268     	strb	w8, [x19, #0x280]
   197ec: 94000000     	bl	0x197ec <syna_tcm_v1_read_message+0x83c>
		00000000000197ec:  R_AARCH64_CALL26	mutex_unlock
   197f0: 52827b08     	mov	w8, #0x13d8             // =5080
   197f4: 3947f676     	ldrb	w22, [x19, #0x1fd]
   197f8: 8b080274     	add	x20, x19, x8
   197fc: 8b161288     	add	x8, x20, x22, lsl #4
   19800: f9400508     	ldr	x8, [x8, #0x8]
   19804: b40003a8     	cbz	x8, 0x19878 <syna_tcm_v1_read_message+0x8c8>
   19808: 394a0262     	ldrb	w2, [x19, #0x280]
   1980c: 35001f22     	cbnz	w2, 0x19bf0 <syna_tcm_v1_read_message+0xc40>
   19810: 91094260     	add	x0, x19, #0x250
   19814: 94000000     	bl	0x19814 <syna_tcm_v1_read_message+0x864>
		0000000000019814:  R_AARCH64_CALL26	mutex_lock
   19818: 3947f660     	ldrb	w0, [x19, #0x1fd]
   1981c: 394a0268     	ldrb	w8, [x19, #0x280]
   19820: f941226a     	ldr	x10, [x19, #0x240]
   19824: b9420262     	ldr	w2, [x19, #0x200]
   19828: 8b201289     	add	x9, x20, w0, uxtb #4
   1982c: 11000508     	add	w8, w8, #0x1
   19830: 91001141     	add	x1, x10, #0x4
   19834: 390a0268     	strb	w8, [x19, #0x280]
   19838: a9402d23     	ldp	x3, x11, [x9]
   1983c: b85fc170     	ldur	w16, [x11, #-0x4]
   19840: 72988151     	movk	w17, #0xc40a
   19844: 72b3f271     	movk	w17, #0x9f93, lsl #16
   19848: 6b11021f     	cmp	w16, w17
   1984c: 54000040     	b.eq	0x19854 <syna_tcm_v1_read_message+0x8a4>
   19850: d4304560     	brk	#0x822b
   19854: d63f0160     	blr	x11
   19858: 394a0262     	ldrb	w2, [x19, #0x280]
   1985c: 7100045f     	cmp	w2, #0x1
   19860: 54001d41     	b.ne	0x19c08 <syna_tcm_v1_read_message+0xc58>
   19864: 2a1f03e8     	mov	w8, wzr
   19868: 91094260     	add	x0, x19, #0x250
   1986c: 390a0268     	strb	w8, [x19, #0x280]
   19870: 94000000     	bl	0x19870 <syna_tcm_v1_read_message+0x8c0>
		0000000000019870:  R_AARCH64_CALL26	mutex_unlock
   19874: 3947f676     	ldrb	w22, [x19, #0x1fd]
   19878: 710042df     	cmp	w22, #0x10
   1987c: 54000403     	b.lo	0x198fc <syna_tcm_v1_read_message+0x94c>
   19880: b9420268     	ldr	w8, [x19, #0x200]
   19884: 34000828     	cbz	w8, 0x19988 <syna_tcm_v1_read_message+0x9d8>
   19888: 39450262     	ldrb	w2, [x19, #0x140]
   1988c: 35002882     	cbnz	w2, 0x19d9c <syna_tcm_v1_read_message+0xdec>
   19890: 91044260     	add	x0, x19, #0x110
   19894: 94000000     	bl	0x19894 <syna_tcm_v1_read_message+0x8e4>
		0000000000019894:  R_AARCH64_CALL26	mutex_lock
   19898: 39450269     	ldrb	w9, [x19, #0x140]
   1989c: b9420277     	ldr	w23, [x19, #0x200]
   198a0: b9410a68     	ldr	w8, [x19, #0x108]
   198a4: f9408260     	ldr	x0, [x19, #0x100]
   198a8: 11000529     	add	w9, w9, #0x1
   198ac: 6b17011f     	cmp	w8, w23
   198b0: 39050269     	strb	w9, [x19, #0x140]
   198b4: 54000702     	b.hs	0x19994 <syna_tcm_v1_read_message+0x9e4>
   198b8: b40000c0     	cbz	x0, 0x198d0 <syna_tcm_v1_read_message+0x920>
   198bc: aa0003f4     	mov	x20, x0
   198c0: 94000000     	bl	0x198c0 <syna_tcm_v1_read_message+0x910>
		00000000000198c0:  R_AARCH64_CALL26	syna_request_managed_device
   198c4: b4004700     	cbz	x0, 0x1a1a4 <syna_tcm_v1_read_message+0x11f4>
   198c8: aa1403e1     	mov	x1, x20
   198cc: 94000000     	bl	0x198cc <syna_tcm_v1_read_message+0x91c>
		00000000000198cc:  R_AARCH64_CALL26	devm_kfree
   198d0: 94000000     	bl	0x198d0 <syna_tcm_v1_read_message+0x920>
		00000000000198d0:  R_AARCH64_CALL26	syna_request_managed_device
   198d4: b4004760     	cbz	x0, 0x1a1c0 <syna_tcm_v1_read_message+0x1210>
   198d8: 710002ff     	cmp	w23, #0x0
   198dc: 540033ed     	b.le	0x19f58 <syna_tcm_v1_read_message+0xfa8>
   198e0: aa1703e1     	mov	x1, x23
   198e4: 5281b802     	mov	w2, #0xdc0              // =3520
   198e8: 94000000     	bl	0x198e8 <syna_tcm_v1_read_message+0x938>
		00000000000198e8:  R_AARCH64_CALL26	devm_kmalloc
   198ec: f9008260     	str	x0, [x19, #0x100]
   198f0: b4004740     	cbz	x0, 0x1a1d8 <syna_tcm_v1_read_message+0x1228>
   198f4: b9010a77     	str	w23, [x19, #0x108]
   198f8: 14000028     	b	0x19998 <syna_tcm_v1_read_message+0x9e8>
   198fc: b941fa68     	ldr	w8, [x19, #0x1f8]
   19900: 7100051f     	cmp	w8, #0x1
   19904: 540057a1     	b.ne	0x1a3f8 <syna_tcm_v1_read_message+0x1448>
   19908: b9420268     	ldr	w8, [x19, #0x200]
   1990c: 3907fa76     	strb	w22, [x19, #0x1fe]
   19910: 34000de8     	cbz	w8, 0x19acc <syna_tcm_v1_read_message+0xb1c>
   19914: 39462262     	ldrb	w2, [x19, #0x188]
   19918: 35003142     	cbnz	w2, 0x19f40 <syna_tcm_v1_read_message+0xf90>
   1991c: 91056260     	add	x0, x19, #0x158
   19920: 94000000     	bl	0x19920 <syna_tcm_v1_read_message+0x970>
		0000000000019920:  R_AARCH64_CALL26	mutex_lock
   19924: 39462269     	ldrb	w9, [x19, #0x188]
   19928: b9420276     	ldr	w22, [x19, #0x200]
   1992c: b9415268     	ldr	w8, [x19, #0x150]
   19930: f940a660     	ldr	x0, [x19, #0x148]
   19934: 11000529     	add	w9, w9, #0x1
   19938: 6b16011f     	cmp	w8, w22
   1993c: 39062269     	strb	w9, [x19, #0x188]
   19940: 54000ce2     	b.hs	0x19adc <syna_tcm_v1_read_message+0xb2c>
   19944: b40000c0     	cbz	x0, 0x1995c <syna_tcm_v1_read_message+0x9ac>
   19948: aa0003f4     	mov	x20, x0
   1994c: 94000000     	bl	0x1994c <syna_tcm_v1_read_message+0x99c>
		000000000001994c:  R_AARCH64_CALL26	syna_request_managed_device
   19950: b40050a0     	cbz	x0, 0x1a364 <syna_tcm_v1_read_message+0x13b4>
   19954: aa1403e1     	mov	x1, x20
   19958: 94000000     	bl	0x19958 <syna_tcm_v1_read_message+0x9a8>
		0000000000019958:  R_AARCH64_CALL26	devm_kfree
   1995c: 94000000     	bl	0x1995c <syna_tcm_v1_read_message+0x9ac>
		000000000001995c:  R_AARCH64_CALL26	syna_request_managed_device
   19960: b4005100     	cbz	x0, 0x1a380 <syna_tcm_v1_read_message+0x13d0>
   19964: 710002df     	cmp	w22, #0x0
   19968: 5400482d     	b.le	0x1a26c <syna_tcm_v1_read_message+0x12bc>
   1996c: aa1603e1     	mov	x1, x22
   19970: 5281b802     	mov	w2, #0xdc0              // =3520
   19974: 94000000     	bl	0x19974 <syna_tcm_v1_read_message+0x9c4>
		0000000000019974:  R_AARCH64_CALL26	devm_kmalloc
   19978: f900a660     	str	x0, [x19, #0x148]
   1997c: b40050e0     	cbz	x0, 0x1a398 <syna_tcm_v1_read_message+0x13e8>
   19980: b9015276     	str	w22, [x19, #0x150]
   19984: 14000057     	b	0x19ae0 <syna_tcm_v1_read_message+0xb30>
   19988: b9010e7f     	str	wzr, [x19, #0x10c]
   1998c: b5005399     	cbnz	x25, 0x1a3fc <syna_tcm_v1_read_message+0x144c>
   19990: 1400029d     	b	0x1a404 <syna_tcm_v1_read_message+0x1454>
   19994: aa0803f7     	mov	x23, x8
   19998: 2a1f03e1     	mov	w1, wzr
   1999c: aa1703e2     	mov	x2, x23
   199a0: 94000000     	bl	0x199a0 <syna_tcm_v1_read_message+0x9f0>
		00000000000199a0:  R_AARCH64_CALL26	memset
   199a4: 394a0262     	ldrb	w2, [x19, #0x280]
   199a8: b9010e7f     	str	wzr, [x19, #0x10c]
   199ac: 35002082     	cbnz	w2, 0x19dbc <syna_tcm_v1_read_message+0xe0c>
   199b0: 91094260     	add	x0, x19, #0x250
   199b4: 94000000     	bl	0x199b4 <syna_tcm_v1_read_message+0xa04>
		00000000000199b4:  R_AARCH64_CALL26	mutex_lock
   199b8: 394a0268     	ldrb	w8, [x19, #0x280]
   199bc: f9408260     	ldr	x0, [x19, #0x100]
   199c0: 11000508     	add	w8, w8, #0x1
   199c4: 390a0268     	strb	w8, [x19, #0x280]
   199c8: b40021c0     	cbz	x0, 0x19e00 <syna_tcm_v1_read_message+0xe50>
   199cc: f9412268     	ldr	x8, [x19, #0x240]
   199d0: 91001101     	add	x1, x8, #0x4
   199d4: b4002161     	cbz	x1, 0x19e00 <syna_tcm_v1_read_message+0xe50>
   199d8: b9410a63     	ldr	w3, [x19, #0x108]
   199dc: b9420264     	ldr	w4, [x19, #0x200]
   199e0: b9424a68     	ldr	w8, [x19, #0x248]
   199e4: 6b03009f     	cmp	w4, w3
   199e8: 51001102     	sub	w2, w8, #0x4
   199ec: 54002008     	b.hi	0x19dec <syna_tcm_v1_read_message+0xe3c>
   199f0: 6b02009f     	cmp	w4, w2
   199f4: 54001fc8     	b.hi	0x19dec <syna_tcm_v1_read_message+0xe3c>
   199f8: aa0403e2     	mov	x2, x4
   199fc: 94000000     	bl	0x199fc <syna_tcm_v1_read_message+0xa4c>
		00000000000199fc:  R_AARCH64_CALL26	memcpy
   19a00: 394a0262     	ldrb	w2, [x19, #0x280]
   19a04: b9420268     	ldr	w8, [x19, #0x200]
   19a08: 7100045f     	cmp	w2, #0x1
   19a0c: b9010e68     	str	w8, [x19, #0x10c]
   19a10: 54002121     	b.ne	0x19e34 <syna_tcm_v1_read_message+0xe84>
   19a14: 2a1f03e8     	mov	w8, wzr
   19a18: 91094260     	add	x0, x19, #0x250
   19a1c: 390a0268     	strb	w8, [x19, #0x280]
   19a20: 94000000     	bl	0x19a20 <syna_tcm_v1_read_message+0xa70>
		0000000000019a20:  R_AARCH64_CALL26	mutex_unlock
   19a24: 39450262     	ldrb	w2, [x19, #0x140]
   19a28: 7100045f     	cmp	w2, #0x1
   19a2c: 54002141     	b.ne	0x19e54 <syna_tcm_v1_read_message+0xea4>
   19a30: 2a1f03e8     	mov	w8, wzr
   19a34: 91044260     	add	x0, x19, #0x110
   19a38: 39050268     	strb	w8, [x19, #0x140]
   19a3c: 94000000     	bl	0x19a3c <syna_tcm_v1_read_message+0xa8c>
		0000000000019a3c:  R_AARCH64_CALL26	mutex_unlock
   19a40: 710042df     	cmp	w22, #0x10
   19a44: 540010c1     	b.ne	0x19c5c <syna_tcm_v1_read_message+0xcac>
   19a48: 394a0262     	ldrb	w2, [x19, #0x280]
   19a4c: 35002fc2     	cbnz	w2, 0x1a044 <syna_tcm_v1_read_message+0x1094>
   19a50: 91094260     	add	x0, x19, #0x250
   19a54: 94000000     	bl	0x19a54 <syna_tcm_v1_read_message+0xaa4>
		0000000000019a54:  R_AARCH64_CALL26	mutex_lock
   19a58: 394a0268     	ldrb	w8, [x19, #0x280]
   19a5c: b9424a69     	ldr	w9, [x19, #0x248]
   19a60: aa1303e0     	mov	x0, x19
   19a64: f941226a     	ldr	x10, [x19, #0x240]
   19a68: b9420263     	ldr	w3, [x19, #0x200]
   19a6c: 11000508     	add	w8, w8, #0x1
   19a70: 51001122     	sub	w2, w9, #0x4
   19a74: 91001141     	add	x1, x10, #0x4
   19a78: 390a0268     	strb	w8, [x19, #0x280]
   19a7c: 97fffcf3     	bl	0x18e48 <syna_tcm_v1_parse_idinfo>
   19a80: 37f82ee0     	tbnz	w0, #0x1f, 0x1a05c <syna_tcm_v1_read_message+0x10ac>
   19a84: 394a0262     	ldrb	w2, [x19, #0x280]
   19a88: 7100045f     	cmp	w2, #0x1
   19a8c: 54003421     	b.ne	0x1a110 <syna_tcm_v1_read_message+0x1160>
   19a90: 2a1f03e8     	mov	w8, wzr
   19a94: 91094260     	add	x0, x19, #0x250
   19a98: 390a0268     	strb	w8, [x19, #0x280]
   19a9c: 94000000     	bl	0x19a9c <syna_tcm_v1_read_message+0xaec>
		0000000000019a9c:  R_AARCH64_CALL26	mutex_unlock
   19aa0: b941fa68     	ldr	w8, [x19, #0x1f8]
   19aa4: 7100051f     	cmp	w8, #0x1
   19aa8: 54000da1     	b.ne	0x19c5c <syna_tcm_v1_read_message+0xcac>
   19aac: 3947f268     	ldrb	w8, [x19, #0x1fc]
   19ab0: 7100791f     	cmp	w8, #0x1e
   19ab4: 54000bac     	b.gt	0x19c28 <syna_tcm_v1_read_message+0xc78>
   19ab8: 7100111f     	cmp	w8, #0x4
   19abc: 54004920     	b.eq	0x1a3e0 <syna_tcm_v1_read_message+0x1430>
   19ac0: 7100511f     	cmp	w8, #0x14
   19ac4: 540048e0     	b.eq	0x1a3e0 <syna_tcm_v1_read_message+0x1430>
   19ac8: 1400005c     	b	0x19c38 <syna_tcm_v1_read_message+0xc88>
   19acc: b901567f     	str	wzr, [x19, #0x154]
   19ad0: 3947fa62     	ldrb	w2, [x19, #0x1fe]
   19ad4: 35004822     	cbnz	w2, 0x1a3d8 <syna_tcm_v1_read_message+0x1428>
   19ad8: 14000248     	b	0x1a3f8 <syna_tcm_v1_read_message+0x1448>
   19adc: aa0803f6     	mov	x22, x8
   19ae0: 2a1f03e1     	mov	w1, wzr
   19ae4: aa1603e2     	mov	x2, x22
   19ae8: 94000000     	bl	0x19ae8 <syna_tcm_v1_read_message+0xb38>
		0000000000019ae8:  R_AARCH64_CALL26	memset
   19aec: 394a0262     	ldrb	w2, [x19, #0x280]
   19af0: b901567f     	str	wzr, [x19, #0x154]
   19af4: 35002382     	cbnz	w2, 0x19f64 <syna_tcm_v1_read_message+0xfb4>
   19af8: 91094260     	add	x0, x19, #0x250
   19afc: 94000000     	bl	0x19afc <syna_tcm_v1_read_message+0xb4c>
		0000000000019afc:  R_AARCH64_CALL26	mutex_lock
   19b00: 394a0268     	ldrb	w8, [x19, #0x280]
   19b04: f940a660     	ldr	x0, [x19, #0x148]
   19b08: 11000508     	add	w8, w8, #0x1
   19b0c: 390a0268     	strb	w8, [x19, #0x280]
   19b10: b4002460     	cbz	x0, 0x19f9c <syna_tcm_v1_read_message+0xfec>
   19b14: f9412268     	ldr	x8, [x19, #0x240]
   19b18: 91001101     	add	x1, x8, #0x4
   19b1c: b4002401     	cbz	x1, 0x19f9c <syna_tcm_v1_read_message+0xfec>
   19b20: b9415263     	ldr	w3, [x19, #0x150]
   19b24: b9420264     	ldr	w4, [x19, #0x200]
   19b28: b9424a68     	ldr	w8, [x19, #0x248]
   19b2c: 6b03009f     	cmp	w4, w3
   19b30: 51001102     	sub	w2, w8, #0x4
   19b34: 540022a8     	b.hi	0x19f88 <syna_tcm_v1_read_message+0xfd8>
   19b38: 6b02009f     	cmp	w4, w2
   19b3c: 54002268     	b.hi	0x19f88 <syna_tcm_v1_read_message+0xfd8>
   19b40: aa0403e2     	mov	x2, x4
   19b44: 94000000     	bl	0x19b44 <syna_tcm_v1_read_message+0xb94>
		0000000000019b44:  R_AARCH64_CALL26	memcpy
   19b48: 394a0262     	ldrb	w2, [x19, #0x280]
   19b4c: b9420268     	ldr	w8, [x19, #0x200]
   19b50: 7100045f     	cmp	w2, #0x1
   19b54: b9015668     	str	w8, [x19, #0x154]
   19b58: 54002941     	b.ne	0x1a080 <syna_tcm_v1_read_message+0x10d0>
   19b5c: 2a1f03e8     	mov	w8, wzr
   19b60: 91094260     	add	x0, x19, #0x250
   19b64: 390a0268     	strb	w8, [x19, #0x280]
   19b68: 94000000     	bl	0x19b68 <syna_tcm_v1_read_message+0xbb8>
		0000000000019b68:  R_AARCH64_CALL26	mutex_unlock
   19b6c: 3947f268     	ldrb	w8, [x19, #0x1fc]
   19b70: 7100091f     	cmp	w8, #0x2
   19b74: 540000e1     	b.ne	0x19b90 <syna_tcm_v1_read_message+0xbe0>
   19b78: f940a661     	ldr	x1, [x19, #0x148]
   19b7c: b9415262     	ldr	w2, [x19, #0x150]
   19b80: aa1303e0     	mov	x0, x19
   19b84: b9415663     	ldr	w3, [x19, #0x154]
   19b88: 97fffcb0     	bl	0x18e48 <syna_tcm_v1_parse_idinfo>
   19b8c: 37f83760     	tbnz	w0, #0x1f, 0x1a278 <syna_tcm_v1_read_message+0x12c8>
   19b90: 39462262     	ldrb	w2, [x19, #0x188]
   19b94: 7100045f     	cmp	w2, #0x1
   19b98: 54002901     	b.ne	0x1a0b8 <syna_tcm_v1_read_message+0x1108>
   19b9c: 2a1f03e8     	mov	w8, wzr
   19ba0: 91056260     	add	x0, x19, #0x158
   19ba4: 39062268     	strb	w8, [x19, #0x188]
   19ba8: 94000000     	bl	0x19ba8 <syna_tcm_v1_read_message+0xbf8>
		0000000000019ba8:  R_AARCH64_CALL26	mutex_unlock
   19bac: 3947fa62     	ldrb	w2, [x19, #0x1fe]
   19bb0: 35004142     	cbnz	w2, 0x1a3d8 <syna_tcm_v1_read_message+0x1428>
   19bb4: 14000211     	b	0x1a3f8 <syna_tcm_v1_read_message+0x1448>
   19bb8: 90000000     	adrp	x0, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019bb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   19bbc: 91000000     	add	x0, x0, #0x0
		0000000000019bbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   19bc0: 90000001     	adrp	x1, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019bc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f05
   19bc4: 91000021     	add	x1, x1, #0x0
		0000000000019bc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f05
   19bc8: 94000000     	bl	0x19bc8 <syna_tcm_v1_read_message+0xc18>
		0000000000019bc8:  R_AARCH64_CALL26	_printk
   19bcc: 17fffecf     	b	0x19708 <syna_tcm_v1_read_message+0x758>
   19bd0: 90000000     	adrp	x0, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019bd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   19bd4: 91000000     	add	x0, x0, #0x0
		0000000000019bd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   19bd8: 90000001     	adrp	x1, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019bd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
   19bdc: 91000021     	add	x1, x1, #0x0
		0000000000019bdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
   19be0: 94000000     	bl	0x19be0 <syna_tcm_v1_read_message+0xc30>
		0000000000019be0:  R_AARCH64_CALL26	_printk
   19be4: 394a0268     	ldrb	w8, [x19, #0x280]
   19be8: 51000508     	sub	w8, w8, #0x1
   19bec: 17fffedd     	b	0x19760 <syna_tcm_v1_read_message+0x7b0>
   19bf0: 90000000     	adrp	x0, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019bf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   19bf4: 91000000     	add	x0, x0, #0x0
		0000000000019bf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   19bf8: 90000001     	adrp	x1, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019bf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f05
   19bfc: 91000021     	add	x1, x1, #0x0
		0000000000019bfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f05
   19c00: 94000000     	bl	0x19c00 <syna_tcm_v1_read_message+0xc50>
		0000000000019c00:  R_AARCH64_CALL26	_printk
   19c04: 17ffff03     	b	0x19810 <syna_tcm_v1_read_message+0x860>
   19c08: 90000000     	adrp	x0, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019c08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   19c0c: 91000000     	add	x0, x0, #0x0
		0000000000019c0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   19c10: 90000001     	adrp	x1, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019c10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
   19c14: 91000021     	add	x1, x1, #0x0
		0000000000019c14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
   19c18: 94000000     	bl	0x19c18 <syna_tcm_v1_read_message+0xc68>
		0000000000019c18:  R_AARCH64_CALL26	_printk
   19c1c: 394a0268     	ldrb	w8, [x19, #0x280]
   19c20: 51000508     	sub	w8, w8, #0x1
   19c24: 17ffff11     	b	0x19868 <syna_tcm_v1_read_message+0x8b8>
   19c28: 71007d1f     	cmp	w8, #0x1f
   19c2c: 54003da0     	b.eq	0x1a3e0 <syna_tcm_v1_read_message+0x1430>
   19c30: 7100c51f     	cmp	w8, #0x31
   19c34: 54003d60     	b.eq	0x1a3e0 <syna_tcm_v1_read_message+0x1430>
   19c38: 3947c268     	ldrb	w8, [x19, #0x1f0]
   19c3c: 7100051f     	cmp	w8, #0x1
   19c40: 540045c1     	b.ne	0x1a4f8 <syna_tcm_v1_read_message+0x1548>
   19c44: b901fa7f     	str	wzr, [x19, #0x1f8]
   19c48: 91088260     	add	x0, x19, #0x220
   19c4c: 94000000     	bl	0x19c4c <syna_tcm_v1_read_message+0xc9c>
		0000000000019c4c:  R_AARCH64_CALL26	completion_done
   19c50: 37000060     	tbnz	w0, #0x0, 0x19c5c <syna_tcm_v1_read_message+0xcac>
   19c54: 91088260     	add	x0, x19, #0x220
   19c58: 94000000     	bl	0x19c58 <syna_tcm_v1_read_message+0xca8>
		0000000000019c58:  R_AARCH64_CALL26	complete
   19c5c: 8b365268     	add	x8, x19, w22, uxtw #4
   19c60: f941f109     	ldr	x9, [x8, #0x3e0]
   19c64: b4003ca9     	cbz	x9, 0x1a3f8 <syna_tcm_v1_read_message+0x1448>
   19c68: 39450262     	ldrb	w2, [x19, #0x140]
   19c6c: 910f6114     	add	x20, x8, #0x3d8
   19c70: 35002182     	cbnz	w2, 0x1a0a0 <syna_tcm_v1_read_message+0x10f0>
   19c74: 91044260     	add	x0, x19, #0x110
   19c78: 94000000     	bl	0x19c78 <syna_tcm_v1_read_message+0xcc8>
		0000000000019c78:  R_AARCH64_CALL26	mutex_lock
   19c7c: 39450268     	ldrb	w8, [x19, #0x140]
   19c80: a9402683     	ldp	x3, x9, [x20]
   19c84: b9410e62     	ldr	w2, [x19, #0x10c]
   19c88: 2a1603e0     	mov	w0, w22
   19c8c: f9408261     	ldr	x1, [x19, #0x100]
   19c90: 11000508     	add	w8, w8, #0x1
   19c94: 39050268     	strb	w8, [x19, #0x140]
   19c98: b85fc130     	ldur	w16, [x9, #-0x4]
   19c9c: 72988151     	movk	w17, #0xc40a
   19ca0: 72b3f271     	movk	w17, #0x9f93, lsl #16
   19ca4: 6b11021f     	cmp	w16, w17
   19ca8: 54000040     	b.eq	0x19cb0 <syna_tcm_v1_read_message+0xd00>
   19cac: d4304520     	brk	#0x8229
   19cb0: d63f0120     	blr	x9
   19cb4: 14000155     	b	0x1a208 <syna_tcm_v1_read_message+0x1258>
   19cb8: 90000000     	adrp	x0, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019cb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   19cbc: 91000000     	add	x0, x0, #0x0
		0000000000019cbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   19cc0: 90000001     	adrp	x1, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019cc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   19cc4: 91000021     	add	x1, x1, #0x0
		0000000000019cc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   19cc8: 94000000     	bl	0x19cc8 <syna_tcm_v1_read_message+0xd18>
		0000000000019cc8:  R_AARCH64_CALL26	_printk
   19ccc: 94000000     	bl	0x19ccc <syna_tcm_v1_read_message+0xd1c>
		0000000000019ccc:  R_AARCH64_CALL26	syna_request_managed_device
   19cd0: b5ffa080     	cbnz	x0, 0x190e0 <syna_tcm_v1_read_message+0x130>
   19cd4: 90000000     	adrp	x0, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019cd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   19cd8: 91000000     	add	x0, x0, #0x0
		0000000000019cd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   19cdc: 90000001     	adrp	x1, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019cdc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ae7
   19ce0: 91000021     	add	x1, x1, #0x0
		0000000000019ce0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ae7
   19ce4: 94000000     	bl	0x19ce4 <syna_tcm_v1_read_message+0xd34>
		0000000000019ce4:  R_AARCH64_CALL26	_printk
   19ce8: f85f83a8     	ldur	x8, [x29, #-0x8]
   19cec: f900011f     	str	xzr, [x8]
   19cf0: 90000000     	adrp	x0, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019cf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5c25
   19cf4: 91000000     	add	x0, x0, #0x0
		0000000000019cf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5c25
   19cf8: 90000001     	adrp	x1, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019cf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7620
   19cfc: 91000021     	add	x1, x1, #0x0
		0000000000019cfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7620
   19d00: 2a1603e2     	mov	w2, w22
   19d04: 94000000     	bl	0x19d04 <syna_tcm_v1_read_message+0xd54>
		0000000000019d04:  R_AARCH64_CALL26	_printk
   19d08: 90000000     	adrp	x0, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019d08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2df0
   19d0c: 91000000     	add	x0, x0, #0x0
		0000000000019d0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2df0
   19d10: 90000001     	adrp	x1, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019d10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbbf7
   19d14: 91000021     	add	x1, x1, #0x0
		0000000000019d14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbbf7
   19d18: f901267f     	str	xzr, [x19, #0x248]
   19d1c: 94000000     	bl	0x19d1c <syna_tcm_v1_read_message+0xd6c>
		0000000000019d1c:  R_AARCH64_CALL26	_printk
   19d20: 394a0262     	ldrb	w2, [x19, #0x280]
   19d24: 7100045f     	cmp	w2, #0x1
   19d28: 540014a1     	b.ne	0x19fbc <syna_tcm_v1_read_message+0x100c>
   19d2c: 2a1f03e8     	mov	w8, wzr
   19d30: 91094260     	add	x0, x19, #0x250
   19d34: 390a0268     	strb	w8, [x19, #0x280]
   19d38: 94000000     	bl	0x19d38 <syna_tcm_v1_read_message+0xd88>
		0000000000019d38:  R_AARCH64_CALL26	mutex_unlock
   19d3c: 52801fe8     	mov	w8, #0xff               // =255
   19d40: b902027f     	str	wzr, [x19, #0x200]
   19d44: 12801e57     	mov	w23, #-0xf3             // =-243
   19d48: 3907f668     	strb	w8, [x19, #0x1fd]
   19d4c: 140001bb     	b	0x1a438 <syna_tcm_v1_read_message+0x1488>
   19d50: 90000000     	adrp	x0, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019d50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   19d54: 91000000     	add	x0, x0, #0x0
		0000000000019d54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   19d58: 14000003     	b	0x19d64 <syna_tcm_v1_read_message+0xdb4>
   19d5c: 90000000     	adrp	x0, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019d5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f17
   19d60: 91000000     	add	x0, x0, #0x0
		0000000000019d60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f17
   19d64: 90000001     	adrp	x1, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019d64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ae7
   19d68: 91000021     	add	x1, x1, #0x0
		0000000000019d68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ae7
   19d6c: 94000000     	bl	0x19d6c <syna_tcm_v1_read_message+0xdbc>
		0000000000019d6c:  R_AARCH64_CALL26	_printk
   19d70: 90000000     	adrp	x0, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019d70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bc0
   19d74: 91000000     	add	x0, x0, #0x0
		0000000000019d74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bc0
   19d78: 90000001     	adrp	x1, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019d78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6556
   19d7c: 91000021     	add	x1, x1, #0x0
		0000000000019d7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6556
   19d80: 14000064     	b	0x19f10 <syna_tcm_v1_read_message+0xf60>
   19d84: 90000000     	adrp	x0, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019d84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   19d88: 91000000     	add	x0, x0, #0x0
		0000000000019d88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   19d8c: 90000001     	adrp	x1, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019d8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f05
   19d90: 91000021     	add	x1, x1, #0x0
		0000000000019d90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f05
   19d94: 94000000     	bl	0x19d94 <syna_tcm_v1_read_message+0xde4>
		0000000000019d94:  R_AARCH64_CALL26	_printk
   19d98: 17fffe7c     	b	0x19788 <syna_tcm_v1_read_message+0x7d8>
   19d9c: 90000000     	adrp	x0, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019d9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   19da0: 91000000     	add	x0, x0, #0x0
		0000000000019da0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   19da4: 90000001     	adrp	x1, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019da4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f05
   19da8: 91000021     	add	x1, x1, #0x0
		0000000000019da8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f05
   19dac: 94000000     	bl	0x19dac <syna_tcm_v1_read_message+0xdfc>
		0000000000019dac:  R_AARCH64_CALL26	_printk
   19db0: 17fffeb8     	b	0x19890 <syna_tcm_v1_read_message+0x8e0>
   19db4: 12801e17     	mov	w23, #-0xf1             // =-241
   19db8: 14000160     	b	0x1a338 <syna_tcm_v1_read_message+0x1388>
   19dbc: 90000000     	adrp	x0, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019dbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   19dc0: 91000000     	add	x0, x0, #0x0
		0000000000019dc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   19dc4: 90000001     	adrp	x1, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019dc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f05
   19dc8: 91000021     	add	x1, x1, #0x0
		0000000000019dc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f05
   19dcc: 94000000     	bl	0x19dcc <syna_tcm_v1_read_message+0xe1c>
		0000000000019dcc:  R_AARCH64_CALL26	_printk
   19dd0: 17fffef8     	b	0x199b0 <syna_tcm_v1_read_message+0xa00>
   19dd4: 90000000     	adrp	x0, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019dd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   19dd8: 91000000     	add	x0, x0, #0x0
		0000000000019dd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   19ddc: 90000001     	adrp	x1, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019ddc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f05
   19de0: 91000021     	add	x1, x1, #0x0
		0000000000019de0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f05
   19de4: 94000000     	bl	0x19de4 <syna_tcm_v1_read_message+0xe34>
		0000000000019de4:  R_AARCH64_CALL26	_printk
   19de8: 17fffd2f     	b	0x192a4 <syna_tcm_v1_read_message+0x2f4>
   19dec: 90000000     	adrp	x0, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019dec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81f1
   19df0: 91000000     	add	x0, x0, #0x0
		0000000000019df0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81f1
   19df4: 90000001     	adrp	x1, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019df4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a25
   19df8: 91000021     	add	x1, x1, #0x0
		0000000000019df8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a25
   19dfc: 94000000     	bl	0x19dfc <syna_tcm_v1_read_message+0xe4c>
		0000000000019dfc:  R_AARCH64_CALL26	_printk
   19e00: 90000000     	adrp	x0, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019e00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x142b
   19e04: 91000000     	add	x0, x0, #0x0
		0000000000019e04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x142b
   19e08: 90000001     	adrp	x1, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019e08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x83b3
   19e0c: 91000021     	add	x1, x1, #0x0
		0000000000019e0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x83b3
   19e10: 94000000     	bl	0x19e10 <syna_tcm_v1_read_message+0xe60>
		0000000000019e10:  R_AARCH64_CALL26	_printk
   19e14: 394a0262     	ldrb	w2, [x19, #0x280]
   19e18: 7100045f     	cmp	w2, #0x1
   19e1c: 540035e1     	b.ne	0x1a4d8 <syna_tcm_v1_read_message+0x1528>
   19e20: 2a1f03e8     	mov	w8, wzr
   19e24: 91094260     	add	x0, x19, #0x250
   19e28: 390a0268     	strb	w8, [x19, #0x280]
   19e2c: 94000000     	bl	0x19e2c <syna_tcm_v1_read_message+0xe7c>
		0000000000019e2c:  R_AARCH64_CALL26	mutex_unlock
   19e30: 140000f6     	b	0x1a208 <syna_tcm_v1_read_message+0x1258>
   19e34: 90000000     	adrp	x0, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019e34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   19e38: 91000000     	add	x0, x0, #0x0
		0000000000019e38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   19e3c: 90000001     	adrp	x1, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019e3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
   19e40: 91000021     	add	x1, x1, #0x0
		0000000000019e40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
   19e44: 94000000     	bl	0x19e44 <syna_tcm_v1_read_message+0xe94>
		0000000000019e44:  R_AARCH64_CALL26	_printk
   19e48: 394a0268     	ldrb	w8, [x19, #0x280]
   19e4c: 51000508     	sub	w8, w8, #0x1
   19e50: 17fffef2     	b	0x19a18 <syna_tcm_v1_read_message+0xa68>
   19e54: 90000000     	adrp	x0, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019e54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   19e58: 91000000     	add	x0, x0, #0x0
		0000000000019e58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   19e5c: 90000001     	adrp	x1, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019e5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
   19e60: 91000021     	add	x1, x1, #0x0
		0000000000019e60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
   19e64: 94000000     	bl	0x19e64 <syna_tcm_v1_read_message+0xeb4>
		0000000000019e64:  R_AARCH64_CALL26	_printk
   19e68: 39450268     	ldrb	w8, [x19, #0x140]
   19e6c: 51000508     	sub	w8, w8, #0x1
   19e70: 17fffef1     	b	0x19a34 <syna_tcm_v1_read_message+0xa84>
   19e74: 90000000     	adrp	x0, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019e74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   19e78: 91000000     	add	x0, x0, #0x0
		0000000000019e78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   19e7c: 90000001     	adrp	x1, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019e7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f05
   19e80: 91000021     	add	x1, x1, #0x0
		0000000000019e80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f05
   19e84: 94000000     	bl	0x19e84 <syna_tcm_v1_read_message+0xed4>
		0000000000019e84:  R_AARCH64_CALL26	_printk
   19e88: 17fffd79     	b	0x1946c <syna_tcm_v1_read_message+0x4bc>
   19e8c: 90000000     	adrp	x0, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019e8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   19e90: 91000000     	add	x0, x0, #0x0
		0000000000019e90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   19e94: 90000001     	adrp	x1, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019e94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
   19e98: 91000021     	add	x1, x1, #0x0
		0000000000019e98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
   19e9c: 94000000     	bl	0x19e9c <syna_tcm_v1_read_message+0xeec>
		0000000000019e9c:  R_AARCH64_CALL26	_printk
   19ea0: 394c4268     	ldrb	w8, [x19, #0x310]
   19ea4: 51000508     	sub	w8, w8, #0x1
   19ea8: 17fffe0a     	b	0x196d0 <syna_tcm_v1_read_message+0x720>
   19eac: 90000000     	adrp	x0, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019eac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   19eb0: 91000000     	add	x0, x0, #0x0
		0000000000019eb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   19eb4: 90000001     	adrp	x1, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019eb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
   19eb8: 91000021     	add	x1, x1, #0x0
		0000000000019eb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
   19ebc: 94000000     	bl	0x19ebc <syna_tcm_v1_read_message+0xf0c>
		0000000000019ebc:  R_AARCH64_CALL26	_printk
   19ec0: 394a0268     	ldrb	w8, [x19, #0x280]
   19ec4: 51000508     	sub	w8, w8, #0x1
   19ec8: 17fffe09     	b	0x196ec <syna_tcm_v1_read_message+0x73c>
   19ecc: aa1703f6     	mov	x22, x23
   19ed0: 90000001     	adrp	x1, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019ed0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4cd8
   19ed4: 91000021     	add	x1, x1, #0x0
		0000000000019ed4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4cd8
   19ed8: aa1603e0     	mov	x0, x22
   19edc: 94000000     	bl	0x19edc <syna_tcm_v1_read_message+0xf2c>
		0000000000019edc:  R_AARCH64_CALL26	_printk
   19ee0: 90000000     	adrp	x0, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019ee0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2aa
   19ee4: 91000000     	add	x0, x0, #0x0
		0000000000019ee4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2aa
   19ee8: 90000001     	adrp	x1, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019ee8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6556
   19eec: 91000021     	add	x1, x1, #0x0
		0000000000019eec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6556
   19ef0: 2a1403e2     	mov	w2, w20
   19ef4: 94000000     	bl	0x19ef4 <syna_tcm_v1_read_message+0xf44>
		0000000000019ef4:  R_AARCH64_CALL26	_printk
   19ef8: 94000000     	bl	0x19ef8 <syna_tcm_v1_read_message+0xf48>
		0000000000019ef8:  R_AARCH64_CALL26	syna_request_managed_device
   19efc: b5ff9940     	cbnz	x0, 0x19224 <syna_tcm_v1_read_message+0x274>
   19f00: 90000000     	adrp	x0, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019f00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   19f04: 91000000     	add	x0, x0, #0x0
		0000000000019f04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   19f08: 90000001     	adrp	x1, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019f08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   19f0c: 91000021     	add	x1, x1, #0x0
		0000000000019f0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   19f10: 94000000     	bl	0x19f10 <syna_tcm_v1_read_message+0xf60>
		0000000000019f10:  R_AARCH64_CALL26	_printk
   19f14: 12801e37     	mov	w23, #-0xf2             // =-242
   19f18: 14000148     	b	0x1a438 <syna_tcm_v1_read_message+0x1488>
   19f1c: 90000000     	adrp	x0, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019f1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   19f20: 91000000     	add	x0, x0, #0x0
		0000000000019f20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   19f24: 90000001     	adrp	x1, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019f24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
   19f28: 91000021     	add	x1, x1, #0x0
		0000000000019f28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
   19f2c: 12001d02     	and	w2, w8, #0xff
   19f30: 94000000     	bl	0x19f30 <syna_tcm_v1_read_message+0xf80>
		0000000000019f30:  R_AARCH64_CALL26	_printk
   19f34: 394a0268     	ldrb	w8, [x19, #0x280]
   19f38: 51000508     	sub	w8, w8, #0x1
   19f3c: 17fffe2a     	b	0x197e4 <syna_tcm_v1_read_message+0x834>
   19f40: 90000000     	adrp	x0, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019f40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   19f44: 91000000     	add	x0, x0, #0x0
		0000000000019f44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   19f48: 90000001     	adrp	x1, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019f48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f05
   19f4c: 91000021     	add	x1, x1, #0x0
		0000000000019f4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f05
   19f50: 94000000     	bl	0x19f50 <syna_tcm_v1_read_message+0xfa0>
		0000000000019f50:  R_AARCH64_CALL26	_printk
   19f54: 17fffe72     	b	0x1991c <syna_tcm_v1_read_message+0x96c>
   19f58: 90000000     	adrp	x0, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019f58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f17
   19f5c: 91000000     	add	x0, x0, #0x0
		0000000000019f5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f17
   19f60: 1400009a     	b	0x1a1c8 <syna_tcm_v1_read_message+0x1218>
   19f64: 90000000     	adrp	x0, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019f64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   19f68: 91000000     	add	x0, x0, #0x0
		0000000000019f68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   19f6c: 90000001     	adrp	x1, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019f6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f05
   19f70: 91000021     	add	x1, x1, #0x0
		0000000000019f70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f05
   19f74: 94000000     	bl	0x19f74 <syna_tcm_v1_read_message+0xfc4>
		0000000000019f74:  R_AARCH64_CALL26	_printk
   19f78: 17fffee0     	b	0x19af8 <syna_tcm_v1_read_message+0xb48>
   19f7c: 90000000     	adrp	x0, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019f7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   19f80: 91000000     	add	x0, x0, #0x0
		0000000000019f80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   19f84: 14000018     	b	0x19fe4 <syna_tcm_v1_read_message+0x1034>
   19f88: 90000000     	adrp	x0, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019f88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81f1
   19f8c: 91000000     	add	x0, x0, #0x0
		0000000000019f8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81f1
   19f90: 90000001     	adrp	x1, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019f90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a25
   19f94: 91000021     	add	x1, x1, #0x0
		0000000000019f94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a25
   19f98: 94000000     	bl	0x19f98 <syna_tcm_v1_read_message+0xfe8>
		0000000000019f98:  R_AARCH64_CALL26	_printk
   19f9c: 90000000     	adrp	x0, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019f9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9a34
   19fa0: 91000000     	add	x0, x0, #0x0
		0000000000019fa0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9a34
   19fa4: 90000001     	adrp	x1, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019fa4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc353
   19fa8: 91000021     	add	x1, x1, #0x0
		0000000000019fa8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc353
   19fac: 94000000     	bl	0x19fac <syna_tcm_v1_read_message+0xffc>
		0000000000019fac:  R_AARCH64_CALL26	_printk
   19fb0: f85f83a0     	ldur	x0, [x29, #-0x8]
   19fb4: 97fff981     	bl	0x185b8 <syna_tcm_buf_unlock>
   19fb8: 14000104     	b	0x1a3c8 <syna_tcm_v1_read_message+0x1418>
   19fbc: 90000000     	adrp	x0, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019fbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   19fc0: 91000000     	add	x0, x0, #0x0
		0000000000019fc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   19fc4: 90000001     	adrp	x1, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019fc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
   19fc8: 91000021     	add	x1, x1, #0x0
		0000000000019fc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
   19fcc: 94000000     	bl	0x19fcc <syna_tcm_v1_read_message+0x101c>
		0000000000019fcc:  R_AARCH64_CALL26	_printk
   19fd0: 394a0268     	ldrb	w8, [x19, #0x280]
   19fd4: 51000508     	sub	w8, w8, #0x1
   19fd8: 17ffff56     	b	0x19d30 <syna_tcm_v1_read_message+0xd80>
   19fdc: 90000000     	adrp	x0, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019fdc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f17
   19fe0: 91000000     	add	x0, x0, #0x0
		0000000000019fe0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f17
   19fe4: 90000001     	adrp	x1, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019fe4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ae7
   19fe8: 91000021     	add	x1, x1, #0x0
		0000000000019fe8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ae7
   19fec: 94000000     	bl	0x19fec <syna_tcm_v1_read_message+0x103c>
		0000000000019fec:  R_AARCH64_CALL26	_printk
   19ff0: f85f83a8     	ldur	x8, [x29, #-0x8]
   19ff4: f900011f     	str	xzr, [x8]
   19ff8: 90000000     	adrp	x0, 0x19000 <syna_tcm_v1_read_message+0x50>
		0000000000019ff8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5c25
   19ffc: 91000000     	add	x0, x0, #0x0
		0000000000019ffc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5c25
   1a000: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a000:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x47bd
   1a004: 91000021     	add	x1, x1, #0x0
		000000000001a004:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x47bd
   1a008: 2a1603e2     	mov	w2, w22
   1a00c: 94000000     	bl	0x1a00c <syna_tcm_v1_read_message+0x105c>
		000000000001a00c:  R_AARCH64_CALL26	_printk
   1a010: 94000000     	bl	0x1a010 <syna_tcm_v1_read_message+0x1060>
		000000000001a010:  R_AARCH64_CALL26	syna_request_managed_device
   1a014: b5000100     	cbnz	x0, 0x1a034 <syna_tcm_v1_read_message+0x1084>
   1a018: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a018:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   1a01c: 91000000     	add	x0, x0, #0x0
		000000000001a01c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   1a020: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a020:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   1a024: 91000021     	add	x1, x1, #0x0
		000000000001a024:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   1a028: 94000000     	bl	0x1a028 <syna_tcm_v1_read_message+0x1078>
		000000000001a028:  R_AARCH64_CALL26	_printk
   1a02c: f9400bf8     	ldr	x24, [sp, #0x10]
   1a030: 140000b8     	b	0x1a310 <syna_tcm_v1_read_message+0x1360>
   1a034: f9400bf8     	ldr	x24, [sp, #0x10]
   1a038: b40016d7     	cbz	x23, 0x1a310 <syna_tcm_v1_read_message+0x1360>
   1a03c: aa1703e1     	mov	x1, x23
   1a040: 140000b3     	b	0x1a30c <syna_tcm_v1_read_message+0x135c>
   1a044: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a044:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   1a048: 91000000     	add	x0, x0, #0x0
		000000000001a048:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   1a04c: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a04c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f05
   1a050: 91000021     	add	x1, x1, #0x0
		000000000001a050:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f05
   1a054: 94000000     	bl	0x1a054 <syna_tcm_v1_read_message+0x10a4>
		000000000001a054:  R_AARCH64_CALL26	_printk
   1a058: 17fffe7e     	b	0x19a50 <syna_tcm_v1_read_message+0xaa0>
   1a05c: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a05c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8c4f
   1a060: 91000000     	add	x0, x0, #0x0
		000000000001a060:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8c4f
   1a064: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a064:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x83b3
   1a068: 91000021     	add	x1, x1, #0x0
		000000000001a068:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x83b3
   1a06c: 94000000     	bl	0x1a06c <syna_tcm_v1_read_message+0x10bc>
		000000000001a06c:  R_AARCH64_CALL26	_printk
   1a070: f85f83a0     	ldur	x0, [x29, #-0x8]
   1a074: 97fff951     	bl	0x185b8 <syna_tcm_buf_unlock>
   1a078: b5001c39     	cbnz	x25, 0x1a3fc <syna_tcm_v1_read_message+0x144c>
   1a07c: 140000e2     	b	0x1a404 <syna_tcm_v1_read_message+0x1454>
   1a080: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a080:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   1a084: 91000000     	add	x0, x0, #0x0
		000000000001a084:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   1a088: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a088:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
   1a08c: 91000021     	add	x1, x1, #0x0
		000000000001a08c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
   1a090: 94000000     	bl	0x1a090 <syna_tcm_v1_read_message+0x10e0>
		000000000001a090:  R_AARCH64_CALL26	_printk
   1a094: 394a0268     	ldrb	w8, [x19, #0x280]
   1a098: 51000508     	sub	w8, w8, #0x1
   1a09c: 17fffeb1     	b	0x19b60 <syna_tcm_v1_read_message+0xbb0>
   1a0a0: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a0a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   1a0a4: 91000000     	add	x0, x0, #0x0
		000000000001a0a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   1a0a8: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a0a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f05
   1a0ac: 91000021     	add	x1, x1, #0x0
		000000000001a0ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f05
   1a0b0: 94000000     	bl	0x1a0b0 <syna_tcm_v1_read_message+0x1100>
		000000000001a0b0:  R_AARCH64_CALL26	_printk
   1a0b4: 17fffef0     	b	0x19c74 <syna_tcm_v1_read_message+0xcc4>
   1a0b8: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a0b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   1a0bc: 91000000     	add	x0, x0, #0x0
		000000000001a0bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   1a0c0: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a0c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
   1a0c4: 91000021     	add	x1, x1, #0x0
		000000000001a0c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
   1a0c8: 94000000     	bl	0x1a0c8 <syna_tcm_v1_read_message+0x1118>
		000000000001a0c8:  R_AARCH64_CALL26	_printk
   1a0cc: 39462268     	ldrb	w8, [x19, #0x188]
   1a0d0: 51000508     	sub	w8, w8, #0x1
   1a0d4: 17fffeb3     	b	0x19ba0 <syna_tcm_v1_read_message+0xbf0>
   1a0d8: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a0d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81f1
   1a0dc: 91000000     	add	x0, x0, #0x0
		000000000001a0dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81f1
   1a0e0: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a0e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a25
   1a0e4: 91000021     	add	x1, x1, #0x0
		000000000001a0e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a25
   1a0e8: 2a1803e4     	mov	w4, w24
   1a0ec: 94000000     	bl	0x1a0ec <syna_tcm_v1_read_message+0x113c>
		000000000001a0ec:  R_AARCH64_CALL26	_printk
   1a0f0: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a0f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaf83
   1a0f4: 91000000     	add	x0, x0, #0x0
		000000000001a0f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaf83
   1a0f8: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a0f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x229d
   1a0fc: 91000021     	add	x1, x1, #0x0
		000000000001a0fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x229d
   1a100: 94000000     	bl	0x1a100 <syna_tcm_v1_read_message+0x1150>
		000000000001a100:  R_AARCH64_CALL26	_printk
   1a104: 128002b7     	mov	w23, #-0x16             // =-22
   1a108: 52800034     	mov	w20, #0x1               // =1
   1a10c: 17fffd6b     	b	0x196b8 <syna_tcm_v1_read_message+0x708>
   1a110: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a110:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   1a114: 91000000     	add	x0, x0, #0x0
		000000000001a114:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   1a118: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a118:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
   1a11c: 91000021     	add	x1, x1, #0x0
		000000000001a11c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
   1a120: 94000000     	bl	0x1a120 <syna_tcm_v1_read_message+0x1170>
		000000000001a120:  R_AARCH64_CALL26	_printk
   1a124: 394a0268     	ldrb	w8, [x19, #0x280]
   1a128: 51000508     	sub	w8, w8, #0x1
   1a12c: 17fffe5a     	b	0x19a94 <syna_tcm_v1_read_message+0xae4>
   1a130: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a130:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d9
   1a134: 91000000     	add	x0, x0, #0x0
		000000000001a134:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d9
   1a138: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a138:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x47bd
   1a13c: 91000021     	add	x1, x1, #0x0
		000000000001a13c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x47bd
   1a140: 94000000     	bl	0x1a140 <syna_tcm_v1_read_message+0x1190>
		000000000001a140:  R_AARCH64_CALL26	_printk
   1a144: 94000000     	bl	0x1a144 <syna_tcm_v1_read_message+0x1194>
		000000000001a144:  R_AARCH64_CALL26	syna_request_managed_device
   1a148: f9400bf8     	ldr	x24, [sp, #0x10]
   1a14c: b50000c0     	cbnz	x0, 0x1a164 <syna_tcm_v1_read_message+0x11b4>
   1a150: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a150:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   1a154: 91000000     	add	x0, x0, #0x0
		000000000001a154:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   1a158: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a158:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   1a15c: 91000021     	add	x1, x1, #0x0
		000000000001a15c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   1a160: 94000000     	bl	0x1a160 <syna_tcm_v1_read_message+0x11b0>
		000000000001a160:  R_AARCH64_CALL26	_printk
   1a164: f85f83a8     	ldur	x8, [x29, #-0x8]
   1a168: f9400114     	ldr	x20, [x8]
   1a16c: 94000000     	bl	0x1a16c <syna_tcm_v1_read_message+0x11bc>
		000000000001a16c:  R_AARCH64_CALL26	syna_request_managed_device
   1a170: b5000ca0     	cbnz	x0, 0x1a304 <syna_tcm_v1_read_message+0x1354>
   1a174: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a174:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   1a178: 91000000     	add	x0, x0, #0x0
		000000000001a178:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   1a17c: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a17c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   1a180: 91000021     	add	x1, x1, #0x0
		000000000001a180:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   1a184: 94000000     	bl	0x1a184 <syna_tcm_v1_read_message+0x11d4>
		000000000001a184:  R_AARCH64_CALL26	_printk
   1a188: 14000062     	b	0x1a310 <syna_tcm_v1_read_message+0x1360>
   1a18c: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a18c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   1a190: 91000000     	add	x0, x0, #0x0
		000000000001a190:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   1a194: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a194:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   1a198: 91000021     	add	x1, x1, #0x0
		000000000001a198:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   1a19c: 94000000     	bl	0x1a19c <syna_tcm_v1_read_message+0x11ec>
		000000000001a19c:  R_AARCH64_CALL26	_printk
   1a1a0: 17fffc5f     	b	0x1931c <syna_tcm_v1_read_message+0x36c>
   1a1a4: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a1a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   1a1a8: 91000000     	add	x0, x0, #0x0
		000000000001a1a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   1a1ac: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a1ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   1a1b0: 91000021     	add	x1, x1, #0x0
		000000000001a1b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   1a1b4: 94000000     	bl	0x1a1b4 <syna_tcm_v1_read_message+0x1204>
		000000000001a1b4:  R_AARCH64_CALL26	_printk
   1a1b8: 94000000     	bl	0x1a1b8 <syna_tcm_v1_read_message+0x1208>
		000000000001a1b8:  R_AARCH64_CALL26	syna_request_managed_device
   1a1bc: b5ffb8e0     	cbnz	x0, 0x198d8 <syna_tcm_v1_read_message+0x928>
   1a1c0: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a1c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   1a1c4: 91000000     	add	x0, x0, #0x0
		000000000001a1c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   1a1c8: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a1c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ae7
   1a1cc: 91000021     	add	x1, x1, #0x0
		000000000001a1cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ae7
   1a1d0: 94000000     	bl	0x1a1d0 <syna_tcm_v1_read_message+0x1220>
		000000000001a1d0:  R_AARCH64_CALL26	_printk
   1a1d4: f900827f     	str	xzr, [x19, #0x100]
   1a1d8: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a1d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5c25
   1a1dc: 91000000     	add	x0, x0, #0x0
		000000000001a1dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5c25
   1a1e0: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a1e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7620
   1a1e4: 91000021     	add	x1, x1, #0x0
		000000000001a1e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7620
   1a1e8: 2a1703e2     	mov	w2, w23
   1a1ec: 94000000     	bl	0x1a1ec <syna_tcm_v1_read_message+0x123c>
		000000000001a1ec:  R_AARCH64_CALL26	_printk
   1a1f0: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a1f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6572
   1a1f4: 91000000     	add	x0, x0, #0x0
		000000000001a1f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6572
   1a1f8: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a1f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x83b3
   1a1fc: 91000021     	add	x1, x1, #0x0
		000000000001a1fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x83b3
   1a200: f900867f     	str	xzr, [x19, #0x108]
   1a204: 94000000     	bl	0x1a204 <syna_tcm_v1_read_message+0x1254>
		000000000001a204:  R_AARCH64_CALL26	_printk
   1a208: 39450262     	ldrb	w2, [x19, #0x140]
   1a20c: 7100045f     	cmp	w2, #0x1
   1a210: 540000e1     	b.ne	0x1a22c <syna_tcm_v1_read_message+0x127c>
   1a214: 2a1f03e8     	mov	w8, wzr
   1a218: 91044260     	add	x0, x19, #0x110
   1a21c: 39050268     	strb	w8, [x19, #0x140]
   1a220: 94000000     	bl	0x1a220 <syna_tcm_v1_read_message+0x1270>
		000000000001a220:  R_AARCH64_CALL26	mutex_unlock
   1a224: b5000ed9     	cbnz	x25, 0x1a3fc <syna_tcm_v1_read_message+0x144c>
   1a228: 14000077     	b	0x1a404 <syna_tcm_v1_read_message+0x1454>
   1a22c: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a22c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   1a230: 91000000     	add	x0, x0, #0x0
		000000000001a230:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   1a234: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a234:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
   1a238: 91000021     	add	x1, x1, #0x0
		000000000001a238:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
   1a23c: 94000000     	bl	0x1a23c <syna_tcm_v1_read_message+0x128c>
		000000000001a23c:  R_AARCH64_CALL26	_printk
   1a240: 39450268     	ldrb	w8, [x19, #0x140]
   1a244: 51000508     	sub	w8, w8, #0x1
   1a248: 17fffff4     	b	0x1a218 <syna_tcm_v1_read_message+0x1268>
   1a24c: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a24c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   1a250: 91000000     	add	x0, x0, #0x0
		000000000001a250:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   1a254: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a254:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
   1a258: 91000021     	add	x1, x1, #0x0
		000000000001a258:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
   1a25c: 94000000     	bl	0x1a25c <syna_tcm_v1_read_message+0x12ac>
		000000000001a25c:  R_AARCH64_CALL26	_printk
   1a260: 394a0268     	ldrb	w8, [x19, #0x280]
   1a264: 51000508     	sub	w8, w8, #0x1
   1a268: 17fffc65     	b	0x193fc <syna_tcm_v1_read_message+0x44c>
   1a26c: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a26c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f17
   1a270: 91000000     	add	x0, x0, #0x0
		000000000001a270:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f17
   1a274: 14000045     	b	0x1a388 <syna_tcm_v1_read_message+0x13d8>
   1a278: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a278:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x65b1
   1a27c: 91000000     	add	x0, x0, #0x0
		000000000001a27c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x65b1
   1a280: 1400004f     	b	0x1a3bc <syna_tcm_v1_read_message+0x140c>
   1a284: b85f43a4     	ldur	w4, [x29, #-0xc]
   1a288: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a288:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4177
   1a28c: 91000000     	add	x0, x0, #0x0
		000000000001a28c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4177
   1a290: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a290:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x229d
   1a294: 91000021     	add	x1, x1, #0x0
		000000000001a294:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x229d
   1a298: 2a1c03e2     	mov	w2, w28
   1a29c: 2a1903e3     	mov	w3, w25
   1a2a0: 94000000     	bl	0x1a2a0 <syna_tcm_v1_read_message+0x12f0>
		000000000001a2a0:  R_AARCH64_CALL26	_printk
   1a2a4: 12801e37     	mov	w23, #-0xf2             // =-242
   1a2a8: 52800034     	mov	w20, #0x1               // =1
   1a2ac: 17fffd03     	b	0x196b8 <syna_tcm_v1_read_message+0x708>
   1a2b0: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a2b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f17
   1a2b4: 91000000     	add	x0, x0, #0x0
		000000000001a2b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f17
   1a2b8: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a2b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ae7
   1a2bc: 91000021     	add	x1, x1, #0x0
		000000000001a2bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ae7
   1a2c0: 94000000     	bl	0x1a2c0 <syna_tcm_v1_read_message+0x1310>
		000000000001a2c0:  R_AARCH64_CALL26	_printk
   1a2c4: f9016a7f     	str	xzr, [x19, #0x2d0]
   1a2c8: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a2c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5c25
   1a2cc: 91000000     	add	x0, x0, #0x0
		000000000001a2cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5c25
   1a2d0: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a2d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7620
   1a2d4: 91000021     	add	x1, x1, #0x0
		000000000001a2d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7620
   1a2d8: 2a1603e2     	mov	w2, w22
   1a2dc: 94000000     	bl	0x1a2dc <syna_tcm_v1_read_message+0x132c>
		000000000001a2dc:  R_AARCH64_CALL26	_printk
   1a2e0: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a2e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc316
   1a2e4: 91000000     	add	x0, x0, #0x0
		000000000001a2e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc316
   1a2e8: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a2e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x229d
   1a2ec: 91000021     	add	x1, x1, #0x0
		000000000001a2ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x229d
   1a2f0: f9016e7f     	str	xzr, [x19, #0x2d8]
   1a2f4: 94000000     	bl	0x1a2f4 <syna_tcm_v1_read_message+0x1344>
		000000000001a2f4:  R_AARCH64_CALL26	_printk
   1a2f8: 12801e57     	mov	w23, #-0xf3             // =-243
   1a2fc: 52800034     	mov	w20, #0x1               // =1
   1a300: 17fffcee     	b	0x196b8 <syna_tcm_v1_read_message+0x708>
   1a304: b4000074     	cbz	x20, 0x1a310 <syna_tcm_v1_read_message+0x1360>
   1a308: aa1403e1     	mov	x1, x20
   1a30c: 94000000     	bl	0x1a30c <syna_tcm_v1_read_message+0x135c>
		000000000001a30c:  R_AARCH64_CALL26	devm_kfree
   1a310: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a310:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x99f9
   1a314: 91000000     	add	x0, x0, #0x0
		000000000001a314:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x99f9
   1a318: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a318:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x229d
   1a31c: 91000021     	add	x1, x1, #0x0
		000000000001a31c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x229d
   1a320: b90002bf     	str	wzr, [x21]
   1a324: 94000000     	bl	0x1a324 <syna_tcm_v1_read_message+0x1374>
		000000000001a324:  R_AARCH64_CALL26	_printk
   1a328: f85f83a0     	ldur	x0, [x29, #-0x8]
   1a32c: 97fff8a3     	bl	0x185b8 <syna_tcm_buf_unlock>
   1a330: b9401bed     	ldr	w13, [sp, #0x18]
   1a334: 12801e57     	mov	w23, #-0xf3             // =-243
   1a338: 39400303     	ldrb	w3, [x24]
   1a33c: 39400704     	ldrb	w4, [x24, #0x1]
   1a340: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a340:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x99ae
   1a344: 91000000     	add	x0, x0, #0x0
		000000000001a344:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x99ae
   1a348: 39400b05     	ldrb	w5, [x24, #0x2]
   1a34c: 39400f06     	ldrb	w6, [x24, #0x3]
   1a350: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a350:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbbf7
   1a354: 91000021     	add	x1, x1, #0x0
		000000000001a354:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbbf7
   1a358: 2a0d03e2     	mov	w2, w13
   1a35c: 94000000     	bl	0x1a35c <syna_tcm_v1_read_message+0x13ac>
		000000000001a35c:  R_AARCH64_CALL26	_printk
   1a360: 14000036     	b	0x1a438 <syna_tcm_v1_read_message+0x1488>
   1a364: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a364:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   1a368: 91000000     	add	x0, x0, #0x0
		000000000001a368:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   1a36c: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a36c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   1a370: 91000021     	add	x1, x1, #0x0
		000000000001a370:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   1a374: 94000000     	bl	0x1a374 <syna_tcm_v1_read_message+0x13c4>
		000000000001a374:  R_AARCH64_CALL26	_printk
   1a378: 94000000     	bl	0x1a378 <syna_tcm_v1_read_message+0x13c8>
		000000000001a378:  R_AARCH64_CALL26	syna_request_managed_device
   1a37c: b5ffaf40     	cbnz	x0, 0x19964 <syna_tcm_v1_read_message+0x9b4>
   1a380: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a380:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   1a384: 91000000     	add	x0, x0, #0x0
		000000000001a384:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   1a388: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a388:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ae7
   1a38c: 91000021     	add	x1, x1, #0x0
		000000000001a38c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ae7
   1a390: 94000000     	bl	0x1a390 <syna_tcm_v1_read_message+0x13e0>
		000000000001a390:  R_AARCH64_CALL26	_printk
   1a394: f900a67f     	str	xzr, [x19, #0x148]
   1a398: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a398:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5c25
   1a39c: 91000000     	add	x0, x0, #0x0
		000000000001a39c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5c25
   1a3a0: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a3a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7620
   1a3a4: 91000021     	add	x1, x1, #0x0
		000000000001a3a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7620
   1a3a8: 2a1603e2     	mov	w2, w22
   1a3ac: 94000000     	bl	0x1a3ac <syna_tcm_v1_read_message+0x13fc>
		000000000001a3ac:  R_AARCH64_CALL26	_printk
   1a3b0: f900aa7f     	str	xzr, [x19, #0x150]
   1a3b4: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a3b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3ac0
   1a3b8: 91000000     	add	x0, x0, #0x0
		000000000001a3b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3ac0
   1a3bc: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a3bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc353
   1a3c0: 91000021     	add	x1, x1, #0x0
		000000000001a3c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc353
   1a3c4: 94000000     	bl	0x1a3c4 <syna_tcm_v1_read_message+0x1414>
		000000000001a3c4:  R_AARCH64_CALL26	_printk
   1a3c8: 91052260     	add	x0, x19, #0x148
   1a3cc: 97fff87b     	bl	0x185b8 <syna_tcm_buf_unlock>
   1a3d0: 3947fa62     	ldrb	w2, [x19, #0x1fe]
   1a3d4: 34000122     	cbz	w2, 0x1a3f8 <syna_tcm_v1_read_message+0x1448>
   1a3d8: 7100045f     	cmp	w2, #0x1
   1a3dc: 540005a1     	b.ne	0x1a490 <syna_tcm_v1_read_message+0x14e0>
   1a3e0: b901fa7f     	str	wzr, [x19, #0x1f8]
   1a3e4: 91088260     	add	x0, x19, #0x220
   1a3e8: 94000000     	bl	0x1a3e8 <syna_tcm_v1_read_message+0x1438>
		000000000001a3e8:  R_AARCH64_CALL26	completion_done
   1a3ec: 37000060     	tbnz	w0, #0x0, 0x1a3f8 <syna_tcm_v1_read_message+0x1448>
   1a3f0: 91088260     	add	x0, x19, #0x220
   1a3f4: 94000000     	bl	0x1a3f4 <syna_tcm_v1_read_message+0x1444>
		000000000001a3f4:  R_AARCH64_CALL26	complete
   1a3f8: b4000079     	cbz	x25, 0x1a404 <syna_tcm_v1_read_message+0x1454>
   1a3fc: 3947f668     	ldrb	w8, [x19, #0x1fd]
   1a400: 39000328     	strb	w8, [x25]
   1a404: 2a1f03f7     	mov	w23, wzr
   1a408: 3400019a     	cbz	w26, 0x1a438 <syna_tcm_v1_read_message+0x1488>
   1a40c: b9403e68     	ldr	w8, [x19, #0x3c]
   1a410: b9420269     	ldr	w9, [x19, #0x200]
   1a414: 3947f66b     	ldrb	w11, [x19, #0x1fd]
   1a418: 5100150a     	sub	w10, w8, #0x5
   1a41c: 6b0a013f     	cmp	w9, w10
   1a420: 1a8a312a     	csel	w10, w9, w10, lo
   1a424: 7100011f     	cmp	w8, #0x0
   1a428: 1a8a0128     	csel	w8, w9, w10, eq
   1a42c: 7100417f     	cmp	w11, #0x10
   1a430: 1a8833e8     	csel	w8, wzr, w8, lo
   1a434: b9037e68     	str	w8, [x19, #0x37c]
   1a438: b9421260     	ldr	w0, [x19, #0x210]
   1a43c: 7100041f     	cmp	w0, #0x1
   1a440: 5400010b     	b.lt	0x1a460 <syna_tcm_v1_read_message+0x14b0>
   1a444: b9421668     	ldr	w8, [x19, #0x214]
   1a448: 7100051f     	cmp	w8, #0x1
   1a44c: 540000ab     	b.lt	0x1a460 <syna_tcm_v1_read_message+0x14b0>
   1a450: 6b00011f     	cmp	w8, w0
   1a454: 52800042     	mov	w2, #0x2                // =2
   1a458: 1a808101     	csel	w1, w8, w0, hi
   1a45c: 94000000     	bl	0x1a45c <syna_tcm_v1_read_message+0x14ac>
		000000000001a45c:  R_AARCH64_CALL26	usleep_range_state
   1a460: 910d2260     	add	x0, x19, #0x348
   1a464: 94000000     	bl	0x1a464 <syna_tcm_v1_read_message+0x14b4>
		000000000001a464:  R_AARCH64_CALL26	mutex_unlock
   1a468: 2a1703e0     	mov	w0, w23
   1a46c: a9484ff4     	ldp	x20, x19, [sp, #0x80]
   1a470: a94757f6     	ldp	x22, x21, [sp, #0x70]
   1a474: a9465ff8     	ldp	x24, x23, [sp, #0x60]
   1a478: a94567fa     	ldp	x26, x25, [sp, #0x50]
   1a47c: a9446ffc     	ldp	x28, x27, [sp, #0x40]
   1a480: a9437bfd     	ldp	x29, x30, [sp, #0x30]
   1a484: 910243ff     	add	sp, sp, #0x90
   1a488: d50323bf     	autiasp
   1a48c: d65f03c0     	ret
   1a490: 71000c5f     	cmp	w2, #0x3
   1a494: 54000101     	b.ne	0x1a4b4 <syna_tcm_v1_read_message+0x1504>
   1a498: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a498:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8c80
   1a49c: 91000000     	add	x0, x0, #0x0
		000000000001a49c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8c80
   1a4a0: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a4a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc353
   1a4a4: 91000021     	add	x1, x1, #0x0
		000000000001a4a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc353
   1a4a8: 94000000     	bl	0x1a4a8 <syna_tcm_v1_read_message+0x14f8>
		000000000001a4a8:  R_AARCH64_CALL26	_printk
   1a4ac: b5fffa99     	cbnz	x25, 0x1a3fc <syna_tcm_v1_read_message+0x144c>
   1a4b0: 17ffffd5     	b	0x1a404 <syna_tcm_v1_read_message+0x1454>
   1a4b4: 3947f263     	ldrb	w3, [x19, #0x1fc]
   1a4b8: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a4b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x99b
   1a4bc: 91000000     	add	x0, x0, #0x0
		000000000001a4bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x99b
   1a4c0: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a4c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc353
   1a4c4: 91000021     	add	x1, x1, #0x0
		000000000001a4c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc353
   1a4c8: 94000000     	bl	0x1a4c8 <syna_tcm_v1_read_message+0x1518>
		000000000001a4c8:  R_AARCH64_CALL26	_printk
   1a4cc: 12800008     	mov	w8, #-0x1               // =-1
   1a4d0: b901fa68     	str	w8, [x19, #0x1f8]
   1a4d4: 17ffffc4     	b	0x1a3e4 <syna_tcm_v1_read_message+0x1434>
   1a4d8: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a4d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   1a4dc: 91000000     	add	x0, x0, #0x0
		000000000001a4dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   1a4e0: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a4e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
   1a4e4: 91000021     	add	x1, x1, #0x0
		000000000001a4e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
   1a4e8: 94000000     	bl	0x1a4e8 <syna_tcm_v1_read_message+0x1538>
		000000000001a4e8:  R_AARCH64_CALL26	_printk
   1a4ec: 394a0268     	ldrb	w8, [x19, #0x280]
   1a4f0: 51000508     	sub	w8, w8, #0x1
   1a4f4: 17fffe4c     	b	0x19e24 <syna_tcm_v1_read_message+0xe74>
   1a4f8: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a4f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa7e7
   1a4fc: 91000000     	add	x0, x0, #0x0
		000000000001a4fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa7e7
   1a500: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a500:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x83b3
   1a504: 91000021     	add	x1, x1, #0x0
		000000000001a504:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x83b3
   1a508: 52800202     	mov	w2, #0x10               // =16
   1a50c: 94000000     	bl	0x1a50c <syna_tcm_v1_read_message+0x155c>
		000000000001a50c:  R_AARCH64_CALL26	_printk
   1a510: 12800008     	mov	w8, #-0x1               // =-1
   1a514: b901fa68     	str	w8, [x19, #0x1f8]
   1a518: 17fffdcc     	b	0x19c48 <syna_tcm_v1_read_message+0xc98>
