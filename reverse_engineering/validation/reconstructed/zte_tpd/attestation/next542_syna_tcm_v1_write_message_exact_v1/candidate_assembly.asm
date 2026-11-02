
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001fad4 <syna_tcm_v1_write_message>:
   1fad4: d503233f     	paciasp
   1fad8: d10283ff     	sub	sp, sp, #0xa0
   1fadc: a9047bfd     	stp	x29, x30, [sp, #0x40]
   1fae0: a9056ffc     	stp	x28, x27, [sp, #0x50]
   1fae4: a90667fa     	stp	x26, x25, [sp, #0x60]
   1fae8: a9075ff8     	stp	x24, x23, [sp, #0x70]
   1faec: a90857f6     	stp	x22, x21, [sp, #0x80]
   1faf0: a9094ff4     	stp	x20, x19, [sp, #0x90]
   1faf4: 910103fd     	add	x29, sp, #0x40
   1faf8: f81e83a2     	stur	x2, [x29, #-0x18]
   1fafc: b9001fe1     	str	w1, [sp, #0x1c]
   1fb00: b4002360     	cbz	x0, 0x1ff6c <syna_tcm_v1_write_message+0x498>
   1fb04: f9402408     	ldr	x8, [x0, #0x48]
   1fb08: aa0003f3     	mov	x19, x0
   1fb0c: b4002368     	cbz	x8, 0x1ff78 <syna_tcm_v1_write_message+0x4a4>
   1fb10: 2a0503f7     	mov	w23, w5
   1fb14: aa0403f6     	mov	x22, x4
   1fb18: 2a0303f8     	mov	w24, w3
   1fb1c: b4000064     	cbz	x4, 0x1fb28 <syna_tcm_v1_write_message+0x54>
   1fb20: 52801fe8     	mov	w8, #0xff               // =255
   1fb24: 390002c8     	strb	w8, [x22]
   1fb28: 910c6260     	add	x0, x19, #0x318
   1fb2c: 94000000     	bl	0x1fb2c <syna_tcm_v1_write_message+0x58>
		000000000001fb2c:  R_AARCH64_CALL26	mutex_lock
   1fb30: 910d2260     	add	x0, x19, #0x348
   1fb34: 94000000     	bl	0x1fb34 <syna_tcm_v1_write_message+0x60>
		000000000001fb34:  R_AARCH64_CALL26	mutex_lock
   1fb38: 52800028     	mov	w8, #0x1                // =1
   1fb3c: b901f668     	str	w8, [x19, #0x1f4]
   1fb40: b901fa68     	str	w8, [x19, #0x1f8]
   1fb44: b9401fe8     	ldr	w8, [sp, #0x1c]
   1fb48: b902227f     	str	wzr, [x19, #0x220]
   1fb4c: 3907f268     	strb	w8, [x19, #0x1fc]
   1fb50: 340002b7     	cbz	w23, 0x1fba4 <syna_tcm_v1_write_message+0xd0>
   1fb54: f9402674     	ldr	x20, [x19, #0x48]
   1fb58: b40024d4     	cbz	x20, 0x1fff0 <syna_tcm_v1_write_message+0x51c>
   1fb5c: f9401e88     	ldr	x8, [x20, #0x38]
   1fb60: b4000268     	cbz	x8, 0x1fbac <syna_tcm_v1_write_message+0xd8>
   1fb64: 91014260     	add	x0, x19, #0x50
   1fb68: 94000000     	bl	0x1fb68 <syna_tcm_v1_write_message+0x94>
		000000000001fb68:  R_AARCH64_CALL26	mutex_lock
   1fb6c: f9401e88     	ldr	x8, [x20, #0x38]
   1fb70: aa1403e0     	mov	x0, x20
   1fb74: 2a1f03e1     	mov	w1, wzr
   1fb78: b85fc110     	ldur	w16, [x8, #-0x4]
   1fb7c: 728c3631     	movk	w17, #0x61b1
   1fb80: 72a685d1     	movk	w17, #0x342e, lsl #16
   1fb84: 6b11021f     	cmp	w16, w17
   1fb88: 54000040     	b.eq	0x1fb90 <syna_tcm_v1_write_message+0xbc>
   1fb8c: d4304500     	brk	#0x8228
   1fb90: d63f0100     	blr	x8
   1fb94: 2a0003f4     	mov	w20, w0
   1fb98: 91014260     	add	x0, x19, #0x50
   1fb9c: 94000000     	bl	0x1fb9c <syna_tcm_v1_write_message+0xc8>
		000000000001fb9c:  R_AARCH64_CALL26	mutex_unlock
   1fba0: 14000004     	b	0x1fbb0 <syna_tcm_v1_write_message+0xdc>
   1fba4: 2a1f03ee     	mov	w14, wzr
   1fba8: 14000004     	b	0x1fbb8 <syna_tcm_v1_write_message+0xe4>
   1fbac: 2a1f03f4     	mov	w20, wzr
   1fbb0: 7100029f     	cmp	w20, #0x0
   1fbb4: 1a9fd7ee     	cset	w14, gt
   1fbb8: 394e0268     	ldrb	w8, [x19, #0x380]
   1fbbc: 7100051f     	cmp	w8, #0x1
   1fbc0: 540003c1     	b.ne	0x1fc38 <syna_tcm_v1_write_message+0x164>
   1fbc4: b9401fe8     	ldr	w8, [sp, #0x1c]
   1fbc8: 529fe00a     	mov	w10, #0xff00            // =65280
   1fbcc: 12001f0b     	and	w11, w24, #0xff
   1fbd0: 2a2803e8     	mvn	w8, w8
   1fbd4: 92401d09     	and	x9, x8, #0xff
   1fbd8: 90000008     	adrp	x8, 0x1f000 <syna_tcm_testing_check_array_data+0xa0>
		000000000001fbd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x8f48
   1fbdc: 91000108     	add	x8, x8, #0x0
		000000000001fbdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x8f48
   1fbe0: 78697909     	ldrh	w9, [x8, x9, lsl #1]
   1fbe4: 0a29014a     	bic	w10, w10, w9
   1fbe8: 4a092309     	eor	w9, w24, w9, lsl #8
   1fbec: 4a4a216a     	eor	w10, w11, w10, lsr #8
   1fbf0: 786a590a     	ldrh	w10, [x8, w10, uxtw #1]
   1fbf4: 4a0a0129     	eor	w9, w9, w10
   1fbf8: 53083d29     	ubfx	w9, w9, #8, #8
   1fbfc: 78695914     	ldrh	w20, [x8, w9, uxtw #1]
   1fc00: 4a0a2289     	eor	w9, w20, w10, lsl #8
   1fc04: 34000158     	cbz	w24, 0x1fc2c <syna_tcm_v1_write_message+0x158>
   1fc08: f85e83ab     	ldur	x11, [x29, #-0x18]
   1fc0c: 2a1803ea     	mov	w10, w24
   1fc10: 3840156c     	ldrb	w12, [x11], #0x1
   1fc14: 12181d2d     	and	w13, w9, #0xff00
   1fc18: 7100054a     	subs	w10, w10, #0x1
   1fc1c: 4a4d218c     	eor	w12, w12, w13, lsr #8
   1fc20: 786c5914     	ldrh	w20, [x8, w12, uxtw #1]
   1fc24: 4a092289     	eor	w9, w20, w9, lsl #8
   1fc28: 54ffff41     	b.ne	0x1fc10 <syna_tcm_v1_write_message+0x13c>
   1fc2c: 53083d35     	ubfx	w21, w9, #8, #8
   1fc30: 11001708     	add	w8, w24, #0x5
   1fc34: 14000004     	b	0x1fc44 <syna_tcm_v1_write_message+0x170>
   1fc38: 2a1f03f5     	mov	w21, wzr
   1fc3c: 2a1f03f4     	mov	w20, wzr
   1fc40: 11000f08     	add	w8, w24, #0x3
   1fc44: f9402669     	ldr	x9, [x19, #0x48]
   1fc48: b9403a6a     	ldr	w10, [x19, #0x38]
   1fc4c: 3940552b     	ldrb	w11, [x9, #0x15]
   1fc50: 7100015f     	cmp	w10, #0x0
   1fc54: 1a8a010a     	csel	w10, w8, w10, eq
   1fc58: 7100057f     	cmp	w11, #0x1
   1fc5c: 54000161     	b.ne	0x1fc88 <syna_tcm_v1_write_message+0x1b4>
   1fc60: 2a1f03f9     	mov	w25, wzr
   1fc64: 340001ea     	cbz	w10, 0x1fca0 <syna_tcm_v1_write_message+0x1cc>
   1fc68: b940192b     	ldr	w11, [x9, #0x18]
   1fc6c: 2a1903e9     	mov	w9, w25
   1fc70: 340001ab     	cbz	w11, 0x1fca4 <syna_tcm_v1_write_message+0x1d0>
   1fc74: 1acb0949     	udiv	w9, w10, w11
   1fc78: 1b0b7d39     	mul	w25, w9, w11
   1fc7c: 350000b9     	cbnz	w25, 0x1fc90 <syna_tcm_v1_write_message+0x1bc>
   1fc80: 2a1f03e9     	mov	w9, wzr
   1fc84: 14000008     	b	0x1fca4 <syna_tcm_v1_write_message+0x1d0>
   1fc88: 2a0a03f9     	mov	w25, w10
   1fc8c: 34ffffb9     	cbz	w25, 0x1fc80 <syna_tcm_v1_write_message+0x1ac>
   1fc90: 0b190108     	add	w8, w8, w25
   1fc94: 51000508     	sub	w8, w8, #0x1
   1fc98: 1ad90909     	udiv	w9, w8, w25
   1fc9c: 14000002     	b	0x1fca4 <syna_tcm_v1_write_message+0x1d0>
   1fca0: 2a1903e9     	mov	w9, w25
   1fca4: 394b2262     	ldrb	w2, [x19, #0x2c8]
   1fca8: 7100053f     	cmp	w9, #0x1
   1fcac: 29013bf7     	stp	w23, w14, [sp, #0x8]
   1fcb0: 1a9f853a     	csinc	w26, w9, wzr, hi
   1fcb4: f9000bf6     	str	x22, [sp, #0x10]
   1fcb8: 350016e2     	cbnz	w2, 0x1ff94 <syna_tcm_v1_write_message+0x4c0>
   1fcbc: 910a6260     	add	x0, x19, #0x298
   1fcc0: 94000000     	bl	0x1fcc0 <syna_tcm_v1_write_message+0x1ec>
		000000000001fcc0:  R_AARCH64_CALL26	mutex_lock
   1fcc4: 394b2268     	ldrb	w8, [x19, #0x2c8]
   1fcc8: 12001e89     	and	w9, w20, #0xff
   1fccc: 2a1903ea     	mov	w10, w25
   1fcd0: 2a1f03f6     	mov	w22, wzr
   1fcd4: 2a1f03fb     	mov	w27, wzr
   1fcd8: aa0a03f4     	mov	x20, x10
   1fcdc: 11000508     	add	w8, w8, #0x1
   1fce0: 2a1803f7     	mov	w23, w24
   1fce4: 2a1a03ea     	mov	w10, w26
   1fce8: 390b2268     	strb	w8, [x19, #0x2c8]
   1fcec: 2a152128     	orr	w8, w9, w21, lsl #8
   1fcf0: b81e43b8     	stur	w24, [x29, #-0x1c]
   1fcf4: b90023e8     	str	w8, [sp, #0x20]
   1fcf8: f81f03b4     	stur	x20, [x29, #-0x10]
   1fcfc: 14000008     	b	0x1fd1c <syna_tcm_v1_write_message+0x248>
   1fd00: b85fc3aa     	ldur	w10, [x29, #-0x4]
   1fd04: f85f03b4     	ldur	x20, [x29, #-0x10]
   1fd08: 0b1c02d6     	add	w22, w22, w28
   1fd0c: 4b1c02f7     	sub	w23, w23, w28
   1fd10: 2a1503fb     	mov	w27, w21
   1fd14: 6b0a02bf     	cmp	w21, w10
   1fd18: 54001e22     	b.hs	0x200dc <syna_tcm_v1_write_message+0x608>
   1fd1c: 7100037f     	cmp	w27, #0x0
   1fd20: 12800048     	mov	w8, #-0x3               // =-3
   1fd24: 11000775     	add	w21, w27, #0x1
   1fd28: 5a9f0108     	csinv	w8, w8, wzr, eq
   1fd2c: 6b1902ff     	cmp	w23, w25
   1fd30: 0b190108     	add	w8, w8, w25
   1fd34: 1a97811c     	csel	w28, w8, w23, hi
   1fd38: 6b0a02bf     	cmp	w21, w10
   1fd3c: 1a9f17f8     	cset	w24, eq
   1fd40: 54000221     	b.ne	0x1fd84 <syna_tcm_v1_write_message+0x2b0>
   1fd44: f9402668     	ldr	x8, [x19, #0x48]
   1fd48: 39405509     	ldrb	w9, [x8, #0x15]
   1fd4c: 360001c9     	tbz	w9, #0x0, 0x1fd84 <syna_tcm_v1_write_message+0x2b0>
   1fd50: b9401d09     	ldr	w9, [x8, #0x1c]
   1fd54: 6b09039f     	cmp	w28, w9
   1fd58: 54000149     	b.ls	0x1fd80 <syna_tcm_v1_write_message+0x2ac>
   1fd5c: b9401908     	ldr	w8, [x8, #0x18]
   1fd60: 34000068     	cbz	w8, 0x1fd6c <syna_tcm_v1_write_message+0x298>
   1fd64: 1ac80b89     	udiv	w9, w28, w8
   1fd68: 1b087d28     	mul	w8, w9, w8
   1fd6c: 5100051c     	sub	w28, w8, #0x1
   1fd70: 6b17039f     	cmp	w28, w23
   1fd74: 1a9f17f8     	cset	w24, eq
   1fd78: 1a8a054a     	cinc	w10, w10, ne
   1fd7c: 14000002     	b	0x1fd84 <syna_tcm_v1_write_message+0x2b0>
   1fd80: 52800038     	mov	w24, #0x1               // =1
   1fd84: b9429262     	ldr	w2, [x19, #0x290]
   1fd88: f9414660     	ldr	x0, [x19, #0x288]
   1fd8c: b81fc3aa     	stur	w10, [x29, #-0x4]
   1fd90: 6b19005f     	cmp	w2, w25
   1fd94: 540002a2     	b.hs	0x1fde8 <syna_tcm_v1_write_message+0x314>
   1fd98: b85e43ba     	ldur	w26, [x29, #-0x1c]
   1fd9c: b40000e0     	cbz	x0, 0x1fdb8 <syna_tcm_v1_write_message+0x2e4>
   1fda0: aa0003f4     	mov	x20, x0
   1fda4: 94000000     	bl	0x1fda4 <syna_tcm_v1_write_message+0x2d0>
		000000000001fda4:  R_AARCH64_CALL26	syna_request_managed_device
   1fda8: b4000d60     	cbz	x0, 0x1ff54 <syna_tcm_v1_write_message+0x480>
   1fdac: aa1403e1     	mov	x1, x20
   1fdb0: 94000000     	bl	0x1fdb0 <syna_tcm_v1_write_message+0x2dc>
		000000000001fdb0:  R_AARCH64_CALL26	devm_kfree
   1fdb4: f85f03b4     	ldur	x20, [x29, #-0x10]
   1fdb8: 94000000     	bl	0x1fdb8 <syna_tcm_v1_write_message+0x2e4>
		000000000001fdb8:  R_AARCH64_CALL26	syna_request_managed_device
   1fdbc: 7100073f     	cmp	w25, #0x1
   1fdc0: 5400130b     	b.lt	0x20020 <syna_tcm_v1_write_message+0x54c>
   1fdc4: b40012e0     	cbz	x0, 0x20020 <syna_tcm_v1_write_message+0x54c>
   1fdc8: aa1403e1     	mov	x1, x20
   1fdcc: 5281b802     	mov	w2, #0xdc0              // =3520
   1fdd0: 94000000     	bl	0x1fdd0 <syna_tcm_v1_write_message+0x2fc>
		000000000001fdd0:  R_AARCH64_CALL26	devm_kmalloc
   1fdd4: f9014660     	str	x0, [x19, #0x288]
   1fdd8: b4001380     	cbz	x0, 0x20048 <syna_tcm_v1_write_message+0x574>
   1fddc: aa1403e2     	mov	x2, x20
   1fde0: b9029279     	str	w25, [x19, #0x290]
   1fde4: 14000002     	b	0x1fdec <syna_tcm_v1_write_message+0x318>
   1fde8: b85e43ba     	ldur	w26, [x29, #-0x1c]
   1fdec: 2a1f03e1     	mov	w1, wzr
   1fdf0: 94000000     	bl	0x1fdf0 <syna_tcm_v1_write_message+0x31c>
		000000000001fdf0:  R_AARCH64_CALL26	memset
   1fdf4: f9414668     	ldr	x8, [x19, #0x288]
   1fdf8: b902967f     	str	wzr, [x19, #0x294]
   1fdfc: 3400029b     	cbz	w27, 0x1fe4c <syna_tcm_v1_write_message+0x378>
   1fe00: f85e83a9     	ldur	x9, [x29, #-0x18]
   1fe04: ab364121     	adds	x1, x9, w22, uxtw
   1fe08: 52800029     	mov	w9, #0x1                // =1
   1fe0c: 39000109     	strb	w9, [x8]
   1fe10: 540015a0     	b.eq	0x200c4 <syna_tcm_v1_write_message+0x5f0>
   1fe14: f9414668     	ldr	x8, [x19, #0x288]
   1fe18: 91000500     	add	x0, x8, #0x1
   1fe1c: b4001540     	cbz	x0, 0x200c4 <syna_tcm_v1_write_message+0x5f0>
   1fe20: b9429268     	ldr	w8, [x19, #0x290]
   1fe24: 4b160342     	sub	w2, w26, w22
   1fe28: 6b02039f     	cmp	w28, w2
   1fe2c: 51000503     	sub	w3, w8, #0x1
   1fe30: 54000ee8     	b.hi	0x2000c <syna_tcm_v1_write_message+0x538>
   1fe34: 6b03039f     	cmp	w28, w3
   1fe38: 54000ea8     	b.hi	0x2000c <syna_tcm_v1_write_message+0x538>
   1fe3c: 2a1c03e2     	mov	w2, w28
   1fe40: 94000000     	bl	0x1fe40 <syna_tcm_v1_write_message+0x36c>
		000000000001fe40:  R_AARCH64_CALL26	memcpy
   1fe44: 52800028     	mov	w8, #0x1                // =1
   1fe48: 14000018     	b	0x1fea8 <syna_tcm_v1_write_message+0x3d4>
   1fe4c: b9401fe9     	ldr	w9, [sp, #0x1c]
   1fe50: 39000109     	strb	w9, [x8]
   1fe54: f9414668     	ldr	x8, [x19, #0x288]
   1fe58: 3900051a     	strb	w26, [x8, #0x1]
   1fe5c: 53087f48     	lsr	w8, w26, #8
   1fe60: f9414669     	ldr	x9, [x19, #0x288]
   1fe64: 39000928     	strb	w8, [x9, #0x2]
   1fe68: 340001fa     	cbz	w26, 0x1fea4 <syna_tcm_v1_write_message+0x3d0>
   1fe6c: f85e83a8     	ldur	x8, [x29, #-0x18]
   1fe70: b40012a8     	cbz	x8, 0x200c4 <syna_tcm_v1_write_message+0x5f0>
   1fe74: f9414668     	ldr	x8, [x19, #0x288]
   1fe78: 91000d00     	add	x0, x8, #0x3
   1fe7c: b4001240     	cbz	x0, 0x200c4 <syna_tcm_v1_write_message+0x5f0>
   1fe80: b9429268     	ldr	w8, [x19, #0x290]
   1fe84: 6b1a039f     	cmp	w28, w26
   1fe88: 51000d03     	sub	w3, w8, #0x3
   1fe8c: 540010e8     	b.hi	0x200a8 <syna_tcm_v1_write_message+0x5d4>
   1fe90: 6b03039f     	cmp	w28, w3
   1fe94: 540010a8     	b.hi	0x200a8 <syna_tcm_v1_write_message+0x5d4>
   1fe98: f85e83a1     	ldur	x1, [x29, #-0x18]
   1fe9c: 2a1c03e2     	mov	w2, w28
   1fea0: 94000000     	bl	0x1fea0 <syna_tcm_v1_write_message+0x3cc>
		000000000001fea0:  R_AARCH64_CALL26	memcpy
   1fea4: 52800068     	mov	w8, #0x3                // =3
   1fea8: 394e0269     	ldrb	w9, [x19, #0x380]
   1feac: f9414661     	ldr	x1, [x19, #0x288]
   1feb0: 0b1c0114     	add	w20, w8, w28
   1feb4: 0a090309     	and	w9, w24, w9
   1feb8: 7100053f     	cmp	w9, #0x1
   1febc: 54000181     	b.ne	0x1feec <syna_tcm_v1_write_message+0x418>
   1fec0: ab364028     	adds	x8, x1, w22, uxtw
   1fec4: 54000ec0     	b.eq	0x2009c <syna_tcm_v1_write_message+0x5c8>
   1fec8: b9429269     	ldr	w9, [x19, #0x290]
   1fecc: 4b160123     	sub	w3, w9, w22
   1fed0: 7100047f     	cmp	w3, #0x1
   1fed4: 54000d69     	b.ls	0x20080 <syna_tcm_v1_write_message+0x5ac>
   1fed8: b94023e9     	ldr	w9, [sp, #0x20]
   1fedc: 11000ad6     	add	w22, w22, #0x2
   1fee0: 11000a94     	add	w20, w20, #0x2
   1fee4: 79000109     	strh	w9, [x8]
   1fee8: f9414661     	ldr	x1, [x19, #0x288]
   1feec: f9402660     	ldr	x0, [x19, #0x48]
   1fef0: b40005e0     	cbz	x0, 0x1ffac <syna_tcm_v1_write_message+0x4d8>
   1fef4: f9401408     	ldr	x8, [x0, #0x28]
   1fef8: b4000628     	cbz	x8, 0x1ffbc <syna_tcm_v1_write_message+0x4e8>
   1fefc: 2a1403e2     	mov	w2, w20
   1ff00: b85fc110     	ldur	w16, [x8, #-0x4]
   1ff04: 728403f1     	movk	w17, #0x201f
   1ff08: 72a51491     	movk	w17, #0x28a4, lsl #16
   1ff0c: 6b11021f     	cmp	w16, w17
   1ff10: 54000040     	b.eq	0x1ff18 <syna_tcm_v1_write_message+0x444>
   1ff14: d4304500     	brk	#0x8228
   1ff18: d63f0100     	blr	x8
   1ff1c: 2a0003fa     	mov	w26, w0
   1ff20: 37f805a0     	tbnz	w0, #0x1f, 0x1ffd4 <syna_tcm_v1_write_message+0x500>
   1ff24: 3707eef8     	tbnz	w24, #0x0, 0x1fd00 <syna_tcm_v1_write_message+0x22c>
   1ff28: b9421260     	ldr	w0, [x19, #0x210]
   1ff2c: 7100041f     	cmp	w0, #0x1
   1ff30: 54ffee8b     	b.lt	0x1fd00 <syna_tcm_v1_write_message+0x22c>
   1ff34: b9421668     	ldr	w8, [x19, #0x214]
   1ff38: 7100051f     	cmp	w8, #0x1
   1ff3c: 54ffee2b     	b.lt	0x1fd00 <syna_tcm_v1_write_message+0x22c>
   1ff40: 6b00011f     	cmp	w8, w0
   1ff44: 52800042     	mov	w2, #0x2                // =2
   1ff48: 1a808101     	csel	w1, w8, w0, hi
   1ff4c: 94000000     	bl	0x1ff4c <syna_tcm_v1_write_message+0x478>
		000000000001ff4c:  R_AARCH64_CALL26	usleep_range_state
   1ff50: 17ffff6c     	b	0x1fd00 <syna_tcm_v1_write_message+0x22c>
   1ff54: 90000000     	adrp	x0, 0x1f000 <syna_tcm_testing_check_array_data+0xa0>
		000000000001ff54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15a80
   1ff58: 91000000     	add	x0, x0, #0x0
		000000000001ff58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15a80
   1ff5c: 90000001     	adrp	x1, 0x1f000 <syna_tcm_testing_check_array_data+0xa0>
		000000000001ff5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14c56
   1ff60: 91000021     	add	x1, x1, #0x0
		000000000001ff60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14c56
   1ff64: 94000000     	bl	0x1ff64 <syna_tcm_v1_write_message+0x490>
		000000000001ff64:  R_AARCH64_CALL26	_printk
   1ff68: 17ffff93     	b	0x1fdb4 <syna_tcm_v1_write_message+0x2e0>
   1ff6c: 90000000     	adrp	x0, 0x1f000 <syna_tcm_testing_check_array_data+0xa0>
		000000000001ff6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcda2
   1ff70: 91000000     	add	x0, x0, #0x0
		000000000001ff70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcda2
   1ff74: 14000003     	b	0x1ff80 <syna_tcm_v1_write_message+0x4ac>
   1ff78: 90000000     	adrp	x0, 0x1f000 <syna_tcm_testing_check_array_data+0xa0>
		000000000001ff78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16520
   1ff7c: 91000000     	add	x0, x0, #0x0
		000000000001ff7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16520
   1ff80: 90000001     	adrp	x1, 0x1f000 <syna_tcm_testing_check_array_data+0xa0>
		000000000001ff80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x100e6
   1ff84: 91000021     	add	x1, x1, #0x0
		000000000001ff84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x100e6
   1ff88: 94000000     	bl	0x1ff88 <syna_tcm_v1_write_message+0x4b4>
		000000000001ff88:  R_AARCH64_CALL26	_printk
   1ff8c: 12801e1a     	mov	w26, #-0xf1             // =-241
   1ff90: 140000ac     	b	0x20240 <syna_tcm_v1_write_message+0x76c>
   1ff94: 90000000     	adrp	x0, 0x1f000 <syna_tcm_testing_check_array_data+0xa0>
		000000000001ff94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   1ff98: 91000000     	add	x0, x0, #0x0
		000000000001ff98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   1ff9c: 90000001     	adrp	x1, 0x1f000 <syna_tcm_testing_check_array_data+0xa0>
		000000000001ff9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d70
   1ffa0: 91000021     	add	x1, x1, #0x0
		000000000001ffa0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d70
   1ffa4: 94000000     	bl	0x1ffa4 <syna_tcm_v1_write_message+0x4d0>
		000000000001ffa4:  R_AARCH64_CALL26	_printk
   1ffa8: 17ffff45     	b	0x1fcbc <syna_tcm_v1_write_message+0x1e8>
   1ffac: 12801e1a     	mov	w26, #-0xf1             // =-241
   1ffb0: 90000000     	adrp	x0, 0x1f000 <syna_tcm_testing_check_array_data+0xa0>
		000000000001ffb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x118b2
   1ffb4: 91000000     	add	x0, x0, #0x0
		000000000001ffb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x118b2
   1ffb8: 14000004     	b	0x1ffc8 <syna_tcm_v1_write_message+0x4f4>
   1ffbc: 12801e9a     	mov	w26, #-0xf5             // =-245
   1ffc0: 90000000     	adrp	x0, 0x1f000 <syna_tcm_testing_check_array_data+0xa0>
		000000000001ffc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x118e6
   1ffc4: 91000000     	add	x0, x0, #0x0
		000000000001ffc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x118e6
   1ffc8: 90000001     	adrp	x1, 0x1f000 <syna_tcm_testing_check_array_data+0xa0>
		000000000001ffc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x129b2
   1ffcc: 91000021     	add	x1, x1, #0x0
		000000000001ffcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x129b2
   1ffd0: 94000000     	bl	0x1ffd0 <syna_tcm_v1_write_message+0x4fc>
		000000000001ffd0:  R_AARCH64_CALL26	_printk
   1ffd4: 90000000     	adrp	x0, 0x1f000 <syna_tcm_testing_check_array_data+0xa0>
		000000000001ffd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe83a
   1ffd8: 91000000     	add	x0, x0, #0x0
		000000000001ffd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe83a
   1ffdc: 90000001     	adrp	x1, 0x1f000 <syna_tcm_testing_check_array_data+0xa0>
		000000000001ffdc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x105b4
   1ffe0: 91000021     	add	x1, x1, #0x0
		000000000001ffe0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x105b4
   1ffe4: 2a1403e2     	mov	w2, w20
   1ffe8: 94000000     	bl	0x1ffe8 <syna_tcm_v1_write_message+0x514>
		000000000001ffe8:  R_AARCH64_CALL26	_printk
   1ffec: 1400003c     	b	0x200dc <syna_tcm_v1_write_message+0x608>
   1fff0: 90000000     	adrp	x0, 0x1f000 <syna_tcm_testing_check_array_data+0xa0>
		000000000001fff0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x118b2
   1fff4: 91000000     	add	x0, x0, #0x0
		000000000001fff4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x118b2
   1fff8: 90000001     	adrp	x1, 0x1f000 <syna_tcm_testing_check_array_data+0xa0>
		000000000001fff8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15e7a
   1fffc: 91000021     	add	x1, x1, #0x0
		000000000001fffc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15e7a
   20000: 94000000     	bl	0x20000 <syna_tcm_v1_write_message+0x52c>
		0000000000020000:  R_AARCH64_CALL26	_printk
   20004: 12801e14     	mov	w20, #-0xf1             // =-241
   20008: 17fffeea     	b	0x1fbb0 <syna_tcm_v1_write_message+0xdc>
   2000c: 90000000     	adrp	x0, 0x20000 <syna_tcm_v1_write_message+0x52c>
		000000000002000c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x130d2
   20010: 91000000     	add	x0, x0, #0x0
		0000000000020010:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x130d2
   20014: 90000001     	adrp	x1, 0x20000 <syna_tcm_v1_write_message+0x52c>
		0000000000020014:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc770
   20018: 91000021     	add	x1, x1, #0x0
		0000000000020018:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc770
   2001c: 14000028     	b	0x200bc <syna_tcm_v1_write_message+0x5e8>
   20020: f100001f     	cmp	x0, #0x0
   20024: 90000008     	adrp	x8, 0x20000 <syna_tcm_v1_write_message+0x52c>
		0000000000020024:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d82
   20028: 91000108     	add	x8, x8, #0x0
		0000000000020028:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d82
   2002c: 90000009     	adrp	x9, 0x20000 <syna_tcm_v1_write_message+0x52c>
		000000000002002c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15a80
   20030: 91000129     	add	x9, x9, #0x0
		0000000000020030:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15a80
   20034: 90000001     	adrp	x1, 0x20000 <syna_tcm_v1_write_message+0x52c>
		0000000000020034:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf952
   20038: 91000021     	add	x1, x1, #0x0
		0000000000020038:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf952
   2003c: 9a880120     	csel	x0, x9, x8, eq
   20040: 94000000     	bl	0x20040 <syna_tcm_v1_write_message+0x56c>
		0000000000020040:  R_AARCH64_CALL26	_printk
   20044: f901467f     	str	xzr, [x19, #0x288]
   20048: 90000000     	adrp	x0, 0x20000 <syna_tcm_v1_write_message+0x52c>
		0000000000020048:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10a46
   2004c: 91000000     	add	x0, x0, #0x0
		000000000002004c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10a46
   20050: 90000001     	adrp	x1, 0x20000 <syna_tcm_v1_write_message+0x52c>
		0000000000020050:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x124ae
   20054: 91000021     	add	x1, x1, #0x0
		0000000000020054:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x124ae
   20058: 2a1903e2     	mov	w2, w25
   2005c: 94000000     	bl	0x2005c <syna_tcm_v1_write_message+0x588>
		000000000002005c:  R_AARCH64_CALL26	_printk
   20060: 90000000     	adrp	x0, 0x20000 <syna_tcm_v1_write_message+0x52c>
		0000000000020060:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc0f0
   20064: 91000000     	add	x0, x0, #0x0
		0000000000020064:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc0f0
   20068: 90000001     	adrp	x1, 0x20000 <syna_tcm_v1_write_message+0x52c>
		0000000000020068:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x105b4
   2006c: 91000021     	add	x1, x1, #0x0
		000000000002006c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x105b4
   20070: f9014a7f     	str	xzr, [x19, #0x290]
   20074: 94000000     	bl	0x20074 <syna_tcm_v1_write_message+0x5a0>
		0000000000020074:  R_AARCH64_CALL26	_printk
   20078: 12801e5a     	mov	w26, #-0xf3             // =-243
   2007c: 14000018     	b	0x200dc <syna_tcm_v1_write_message+0x608>
   20080: 90000000     	adrp	x0, 0x20000 <syna_tcm_v1_write_message+0x52c>
		0000000000020080:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x130d2
   20084: 91000000     	add	x0, x0, #0x0
		0000000000020084:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x130d2
   20088: 90000001     	adrp	x1, 0x20000 <syna_tcm_v1_write_message+0x52c>
		0000000000020088:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc770
   2008c: 91000021     	add	x1, x1, #0x0
		000000000002008c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc770
   20090: 52800042     	mov	w2, #0x2                // =2
   20094: 52800044     	mov	w4, #0x2                // =2
   20098: 94000000     	bl	0x20098 <syna_tcm_v1_write_message+0x5c4>
		0000000000020098:  R_AARCH64_CALL26	_printk
   2009c: 90000000     	adrp	x0, 0x20000 <syna_tcm_v1_write_message+0x52c>
		000000000002009c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17292
   200a0: 91000000     	add	x0, x0, #0x0
		00000000000200a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17292
   200a4: 1400000a     	b	0x200cc <syna_tcm_v1_write_message+0x5f8>
   200a8: 90000000     	adrp	x0, 0x20000 <syna_tcm_v1_write_message+0x52c>
		00000000000200a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x130d2
   200ac: 91000000     	add	x0, x0, #0x0
		00000000000200ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x130d2
   200b0: 90000001     	adrp	x1, 0x20000 <syna_tcm_v1_write_message+0x52c>
		00000000000200b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc770
   200b4: 91000021     	add	x1, x1, #0x0
		00000000000200b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc770
   200b8: 2a1a03e2     	mov	w2, w26
   200bc: 2a1c03e4     	mov	w4, w28
   200c0: 94000000     	bl	0x200c0 <syna_tcm_v1_write_message+0x5ec>
		00000000000200c0:  R_AARCH64_CALL26	_printk
   200c4: 90000000     	adrp	x0, 0x20000 <syna_tcm_v1_write_message+0x52c>
		00000000000200c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17254
   200c8: 91000000     	add	x0, x0, #0x0
		00000000000200c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17254
   200cc: 90000001     	adrp	x1, 0x20000 <syna_tcm_v1_write_message+0x52c>
		00000000000200cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x105b4
   200d0: 91000021     	add	x1, x1, #0x0
		00000000000200d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x105b4
   200d4: 94000000     	bl	0x200d4 <syna_tcm_v1_write_message+0x600>
		00000000000200d4:  R_AARCH64_CALL26	_printk
   200d8: 128002ba     	mov	w26, #-0x16             // =-22
   200dc: 394b2262     	ldrb	w2, [x19, #0x2c8]
   200e0: 7100045f     	cmp	w2, #0x1
   200e4: 54000c21     	b.ne	0x20268 <syna_tcm_v1_write_message+0x794>
   200e8: 2a1f03e8     	mov	w8, wzr
   200ec: f9400bf6     	ldr	x22, [sp, #0x10]
   200f0: b9400ff8     	ldr	w24, [sp, #0xc]
   200f4: 910a6260     	add	x0, x19, #0x298
   200f8: 390b2268     	strb	w8, [x19, #0x2c8]
   200fc: 94000000     	bl	0x200fc <syna_tcm_v1_write_message+0x628>
		00000000000200fc:  R_AARCH64_CALL26	mutex_unlock
   20100: 910d2260     	add	x0, x19, #0x348
   20104: 94000000     	bl	0x20104 <syna_tcm_v1_write_message+0x630>
		0000000000020104:  R_AARCH64_CALL26	mutex_unlock
   20108: 37f8067a     	tbnz	w26, #0x1f, 0x201d4 <syna_tcm_v1_write_message+0x700>
   2010c: b9400bf7     	ldr	w23, [sp, #0x8]
   20110: 2a1f03f4     	mov	w20, wzr
   20114: 14000007     	b	0x20130 <syna_tcm_v1_write_message+0x65c>
   20118: b941fa68     	ldr	w8, [x19, #0x1f8]
   2011c: 7100051f     	cmp	w8, #0x1
   20120: 54000541     	b.ne	0x201c8 <syna_tcm_v1_write_message+0x6f4>
   20124: b9420a68     	ldr	w8, [x19, #0x208]
   20128: 6b08029f     	cmp	w20, w8
   2012c: 540004e2     	b.hs	0x201c8 <syna_tcm_v1_write_message+0x6f4>
   20130: 34000117     	cbz	w23, 0x20150 <syna_tcm_v1_write_message+0x67c>
   20134: 710006ff     	cmp	w23, #0x1
   20138: 2a1703f5     	mov	w21, w23
   2013c: 540002eb     	b.lt	0x20198 <syna_tcm_v1_write_message+0x6c4>
   20140: 2a1703e0     	mov	w0, w23
   20144: 94000000     	bl	0x20144 <syna_tcm_v1_write_message+0x670>
		0000000000020144:  R_AARCH64_CALL26	msleep
   20148: 2a1703f5     	mov	w21, w23
   2014c: 14000013     	b	0x20198 <syna_tcm_v1_write_message+0x6c4>
   20150: f9402660     	ldr	x0, [x19, #0x48]
   20154: b9420a61     	ldr	w1, [x19, #0x208]
   20158: f9401808     	ldr	x8, [x0, #0x30]
   2015c: 53027c35     	lsr	w21, w1, #2
   20160: b4000128     	cbz	x8, 0x20184 <syna_tcm_v1_write_message+0x6b0>
   20164: b85fc110     	ldur	w16, [x8, #-0x4]
   20168: 72934f71     	movk	w17, #0x9a7b
   2016c: 72a1f311     	movk	w17, #0xf98, lsl #16
   20170: 6b11021f     	cmp	w16, w17
   20174: 54000040     	b.eq	0x2017c <syna_tcm_v1_write_message+0x6a8>
   20178: d4304500     	brk	#0x8228
   2017c: d63f0100     	blr	x8
   20180: 14000006     	b	0x20198 <syna_tcm_v1_write_message+0x6c4>
   20184: 2a0103e0     	mov	w0, w1
   20188: 94000000     	bl	0x20188 <syna_tcm_v1_write_message+0x6b4>
		0000000000020188:  R_AARCH64_CALL26	__msecs_to_jiffies
   2018c: aa0003e1     	mov	x1, x0
   20190: 91088260     	add	x0, x19, #0x220
   20194: 94000000     	bl	0x20194 <syna_tcm_v1_write_message+0x6c0>
		0000000000020194:  R_AARCH64_CALL26	wait_for_completion_timeout
   20198: b941fa68     	ldr	w8, [x19, #0x1f8]
   2019c: 7100091f     	cmp	w8, #0x2
   201a0: 54000180     	b.eq	0x201d0 <syna_tcm_v1_write_message+0x6fc>
   201a4: b941fa68     	ldr	w8, [x19, #0x1f8]
   201a8: 0b1402b4     	add	w20, w21, w20
   201ac: 7100051f     	cmp	w8, #0x1
   201b0: 54fffb41     	b.ne	0x20118 <syna_tcm_v1_write_message+0x644>
   201b4: aa1303e0     	mov	x0, x19
   201b8: aa1f03e1     	mov	x1, xzr
   201bc: 940000a9     	bl	0x20460 <tp_edge_report_limit_write+0x164>
		00000000000201bc:  R_AARCH64_CALL26	syna_tcm_v1_read_message
   201c0: 36fffac0     	tbz	w0, #0x1f, 0x20118 <syna_tcm_v1_write_message+0x644>
   201c4: 17ffffd8     	b	0x20124 <syna_tcm_v1_write_message+0x650>
   201c8: b941fa68     	ldr	w8, [x19, #0x1f8]
   201cc: 350006a8     	cbnz	w8, 0x202a0 <syna_tcm_v1_write_message+0x7cc>
   201d0: 2a1f03fa     	mov	w26, wzr
   201d4: b4000076     	cbz	x22, 0x201e0 <syna_tcm_v1_write_message+0x70c>
   201d8: 3947fa68     	ldrb	w8, [x19, #0x1fe]
   201dc: 390002c8     	strb	w8, [x22]
   201e0: 3907f27f     	strb	wzr, [x19, #0x1fc]
   201e4: 34000278     	cbz	w24, 0x20230 <syna_tcm_v1_write_message+0x75c>
   201e8: f9402674     	ldr	x20, [x19, #0x48]
   201ec: b40004f4     	cbz	x20, 0x20288 <syna_tcm_v1_write_message+0x7b4>
   201f0: f9401e88     	ldr	x8, [x20, #0x38]
   201f4: b40001e8     	cbz	x8, 0x20230 <syna_tcm_v1_write_message+0x75c>
   201f8: 91014260     	add	x0, x19, #0x50
   201fc: 94000000     	bl	0x201fc <syna_tcm_v1_write_message+0x728>
		00000000000201fc:  R_AARCH64_CALL26	mutex_lock
   20200: f9401e88     	ldr	x8, [x20, #0x38]
   20204: aa1403e0     	mov	x0, x20
   20208: 52800021     	mov	w1, #0x1                // =1
   2020c: b85fc110     	ldur	w16, [x8, #-0x4]
   20210: 728c3631     	movk	w17, #0x61b1
   20214: 72a685d1     	movk	w17, #0x342e, lsl #16
   20218: 6b11021f     	cmp	w16, w17
   2021c: 54000040     	b.eq	0x20224 <syna_tcm_v1_write_message+0x750>
   20220: d4304500     	brk	#0x8228
   20224: d63f0100     	blr	x8
   20228: 91014260     	add	x0, x19, #0x50
   2022c: 94000000     	bl	0x2022c <syna_tcm_v1_write_message+0x758>
		000000000002022c:  R_AARCH64_CALL26	mutex_unlock
   20230: 910c6260     	add	x0, x19, #0x318
   20234: b901fa7f     	str	wzr, [x19, #0x1f8]
   20238: b901f67f     	str	wzr, [x19, #0x1f4]
   2023c: 94000000     	bl	0x2023c <syna_tcm_v1_write_message+0x768>
		000000000002023c:  R_AARCH64_CALL26	mutex_unlock
   20240: 2a1a03e0     	mov	w0, w26
   20244: a9494ff4     	ldp	x20, x19, [sp, #0x90]
   20248: a94857f6     	ldp	x22, x21, [sp, #0x80]
   2024c: a9475ff8     	ldp	x24, x23, [sp, #0x70]
   20250: a94667fa     	ldp	x26, x25, [sp, #0x60]
   20254: a9456ffc     	ldp	x28, x27, [sp, #0x50]
   20258: a9447bfd     	ldp	x29, x30, [sp, #0x40]
   2025c: 910283ff     	add	sp, sp, #0xa0
   20260: d50323bf     	autiasp
   20264: d65f03c0     	ret
   20268: 90000000     	adrp	x0, 0x20000 <syna_tcm_v1_write_message+0x52c>
		0000000000020268:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   2026c: 91000000     	add	x0, x0, #0x0
		000000000002026c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   20270: 90000001     	adrp	x1, 0x20000 <syna_tcm_v1_write_message+0x52c>
		0000000000020270:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16aa8
   20274: 91000021     	add	x1, x1, #0x0
		0000000000020274:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16aa8
   20278: 94000000     	bl	0x20278 <syna_tcm_v1_write_message+0x7a4>
		0000000000020278:  R_AARCH64_CALL26	_printk
   2027c: 394b2268     	ldrb	w8, [x19, #0x2c8]
   20280: 51000508     	sub	w8, w8, #0x1
   20284: 17ffff9a     	b	0x200ec <syna_tcm_v1_write_message+0x618>
   20288: 90000000     	adrp	x0, 0x20000 <syna_tcm_v1_write_message+0x52c>
		0000000000020288:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x118b2
   2028c: 91000000     	add	x0, x0, #0x0
		000000000002028c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x118b2
   20290: 90000001     	adrp	x1, 0x20000 <syna_tcm_v1_write_message+0x52c>
		0000000000020290:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15e7a
   20294: 91000021     	add	x1, x1, #0x0
		0000000000020294:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15e7a
   20298: 94000000     	bl	0x20298 <syna_tcm_v1_write_message+0x7c4>
		0000000000020298:  R_AARCH64_CALL26	_printk
   2029c: 17ffffe5     	b	0x20230 <syna_tcm_v1_write_message+0x75c>
   202a0: b9420a63     	ldr	w3, [x19, #0x208]
   202a4: 6b03029f     	cmp	w20, w3
   202a8: 54000162     	b.hs	0x202d4 <syna_tcm_v1_write_message+0x800>
   202ac: b9401fe8     	ldr	w8, [sp, #0x1c]
   202b0: 3947f662     	ldrb	w2, [x19, #0x1fd]
   202b4: 90000000     	adrp	x0, 0x20000 <syna_tcm_v1_write_message+0x52c>
		00000000000202b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10570
   202b8: 91000000     	add	x0, x0, #0x0
		00000000000202b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10570
   202bc: 90000001     	adrp	x1, 0x20000 <syna_tcm_v1_write_message+0x52c>
		00000000000202bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x100e6
   202c0: 91000021     	add	x1, x1, #0x0
		00000000000202c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x100e6
   202c4: 12001d03     	and	w3, w8, #0xff
   202c8: 94000000     	bl	0x202c8 <syna_tcm_v1_write_message+0x7f4>
		00000000000202c8:  R_AARCH64_CALL26	_printk
   202cc: 12801e3a     	mov	w26, #-0xf2             // =-242
   202d0: 17ffffc1     	b	0x201d4 <syna_tcm_v1_write_message+0x700>
   202d4: b9401fe8     	ldr	w8, [sp, #0x1c]
   202d8: 90000000     	adrp	x0, 0x20000 <syna_tcm_v1_write_message+0x52c>
		00000000000202d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10100
   202dc: 91000000     	add	x0, x0, #0x0
		00000000000202dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10100
   202e0: 90000001     	adrp	x1, 0x20000 <syna_tcm_v1_write_message+0x52c>
		00000000000202e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x100e6
   202e4: 91000021     	add	x1, x1, #0x0
		00000000000202e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x100e6
   202e8: 12001d02     	and	w2, w8, #0xff
   202ec: 94000000     	bl	0x202ec <syna_tcm_v1_write_message+0x818>
		00000000000202ec:  R_AARCH64_CALL26	_printk
   202f0: 12801e7a     	mov	w26, #-0xf4             // =-244
   202f4: 17ffffb8     	b	0x201d4 <syna_tcm_v1_write_message+0x700>
