
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000109cc <syna_tcm_v1_read_message>:
   109cc: d503233f     	paciasp
   109d0: d10243ff     	sub	sp, sp, #0x90
   109d4: a9037bfd     	stp	x29, x30, [sp, #0x30]
   109d8: a9046ffc     	stp	x28, x27, [sp, #0x40]
   109dc: a90567fa     	stp	x26, x25, [sp, #0x50]
   109e0: a9065ff8     	stp	x24, x23, [sp, #0x60]
   109e4: a90757f6     	stp	x22, x21, [sp, #0x70]
   109e8: a9084ff4     	stp	x20, x19, [sp, #0x80]
   109ec: 9100c3fd     	add	x29, sp, #0x30
   109f0: b4001de0     	cbz	x0, 0x10dac <syna_tcm_v1_read_message+0x3e0>
   109f4: f9402408     	ldr	x8, [x0, #0x48]
   109f8: aa0003f3     	mov	x19, x0
   109fc: b4001de8     	cbz	x8, 0x10db8 <syna_tcm_v1_read_message+0x3ec>
   10a00: 394dea68     	ldrb	w8, [x19, #0x37a]
   10a04: aa0103f9     	mov	x25, x1
   10a08: 7100051f     	cmp	w8, #0x1
   10a0c: 540000c1     	b.ne	0x10a24 <syna_tcm_v1_read_message+0x58>
   10a10: b941fa68     	ldr	w8, [x19, #0x1f8]
   10a14: 7100011f     	cmp	w8, #0x0
   10a18: 1a9f17fa     	cset	w26, eq
   10a1c: b5000099     	cbnz	x25, 0x10a2c <syna_tcm_v1_read_message+0x60>
   10a20: 14000005     	b	0x10a34 <syna_tcm_v1_read_message+0x68>
   10a24: 2a1f03fa     	mov	w26, wzr
   10a28: b4000079     	cbz	x25, 0x10a34 <syna_tcm_v1_read_message+0x68>
   10a2c: 52801fe8     	mov	w8, #0xff               // =255
   10a30: 39000328     	strb	w8, [x25]
   10a34: 910d2260     	add	x0, x19, #0x348
   10a38: 3907f67f     	strb	wzr, [x19, #0x1fd]
   10a3c: 94000000     	bl	0x10a3c <syna_tcm_v1_read_message+0x70>
		0000000000010a3c:  R_AARCH64_CALL26	mutex_lock
   10a40: 394a0262     	ldrb	w2, [x19, #0x280]
   10a44: 35001c82     	cbnz	w2, 0x10dd4 <syna_tcm_v1_read_message+0x408>
   10a48: 91094260     	add	x0, x19, #0x250
   10a4c: 94000000     	bl	0x10a4c <syna_tcm_v1_read_message+0x80>
		0000000000010a4c:  R_AARCH64_CALL26	mutex_lock
   10a50: 394a0268     	ldrb	w8, [x19, #0x280]
   10a54: 11000508     	add	w8, w8, #0x1
   10a58: 390a0268     	strb	w8, [x19, #0x280]
   10a5c: 340001ba     	cbz	w26, 0x10a90 <syna_tcm_v1_read_message+0xc4>
   10a60: b9437e68     	ldr	w8, [x19, #0x37c]
   10a64: 52800096     	mov	w22, #0x4               // =4
   10a68: 34000168     	cbz	w8, 0x10a94 <syna_tcm_v1_read_message+0xc8>
   10a6c: 394e0269     	ldrb	w9, [x19, #0x380]
   10a70: 394e126a     	ldrb	w10, [x19, #0x384]
   10a74: 7100013f     	cmp	w9, #0x0
   10a78: 528000c9     	mov	w9, #0x6                // =6
   10a7c: 0b0a0108     	add	w8, w8, w10
   10a80: 1a961129     	csel	w9, w9, w22, ne
   10a84: 0b090108     	add	w8, w8, w9
   10a88: 11000516     	add	w22, w8, #0x1
   10a8c: 14000002     	b	0x10a94 <syna_tcm_v1_read_message+0xc8>
   10a90: 52800096     	mov	w22, #0x4               // =4
   10a94: f9402668     	ldr	x8, [x19, #0x48]
   10a98: 39405509     	ldrb	w9, [x8, #0x15]
   10a9c: 7100053f     	cmp	w9, #0x1
   10aa0: 91090269     	add	x9, x19, #0x240
   10aa4: f81f83a9     	stur	x9, [x29, #-0x8]
   10aa8: 54000101     	b.ne	0x10ac8 <syna_tcm_v1_read_message+0xfc>
   10aac: b9401d09     	ldr	w9, [x8, #0x1c]
   10ab0: 6b0902df     	cmp	w22, w9
   10ab4: 540000a9     	b.ls	0x10ac8 <syna_tcm_v1_read_message+0xfc>
   10ab8: b9401908     	ldr	w8, [x8, #0x18]
   10abc: 34001648     	cbz	w8, 0x10d84 <syna_tcm_v1_read_message+0x3b8>
   10ac0: 1ac80ac9     	udiv	w9, w22, w8
   10ac4: 1b087d36     	mul	w22, w9, w8
   10ac8: b9424a68     	ldr	w8, [x19, #0x248]
   10acc: 91092275     	add	x21, x19, #0x248
   10ad0: 6b0802df     	cmp	w22, w8
   10ad4: 54000309     	b.ls	0x10b34 <syna_tcm_v1_read_message+0x168>
   10ad8: f85f83a8     	ldur	x8, [x29, #-0x8]
   10adc: f9400114     	ldr	x20, [x8]
   10ae0: b40000b4     	cbz	x20, 0x10af4 <syna_tcm_v1_read_message+0x128>
   10ae4: 94000000     	bl	0x10ae4 <syna_tcm_v1_read_message+0x118>
		0000000000010ae4:  R_AARCH64_CALL26	syna_request_managed_device
   10ae8: b4005f60     	cbz	x0, 0x116d4 <syna_tcm_v1_read_message+0xd08>
   10aec: aa1403e1     	mov	x1, x20
   10af0: 94000000     	bl	0x10af0 <syna_tcm_v1_read_message+0x124>
		0000000000010af0:  R_AARCH64_CALL26	devm_kfree
   10af4: 94000000     	bl	0x10af4 <syna_tcm_v1_read_message+0x128>
		0000000000010af4:  R_AARCH64_CALL26	syna_request_managed_device
   10af8: b4005fc0     	cbz	x0, 0x116f0 <syna_tcm_v1_read_message+0xd24>
   10afc: 710002df     	cmp	w22, #0x0
   10b00: 54001aad     	b.le	0x10e54 <syna_tcm_v1_read_message+0x488>
   10b04: 2a1603f4     	mov	w20, w22
   10b08: 5281b802     	mov	w2, #0xdc0              // =3520
   10b0c: aa1403e1     	mov	x1, x20
   10b10: 94000000     	bl	0x10b10 <syna_tcm_v1_read_message+0x144>
		0000000000010b10:  R_AARCH64_CALL26	devm_kmalloc
   10b14: f85f83a8     	ldur	x8, [x29, #-0x8]
   10b18: f9000100     	str	x0, [x8]
   10b1c: b4005f80     	cbz	x0, 0x1170c <syna_tcm_v1_read_message+0xd40>
   10b20: 2a1f03e1     	mov	w1, wzr
   10b24: aa1403e2     	mov	x2, x20
   10b28: b9024a76     	str	w22, [x19, #0x248]
   10b2c: 94000000     	bl	0x10b2c <syna_tcm_v1_read_message+0x160>
		0000000000010b2c:  R_AARCH64_CALL26	memset
   10b30: b9024e7f     	str	wzr, [x19, #0x24c]
   10b34: f9412262     	ldr	x2, [x19, #0x240]
   10b38: b9424a63     	ldr	w3, [x19, #0x248]
   10b3c: aa1303e0     	mov	x0, x19
   10b40: 2a1603e1     	mov	w1, w22
   10b44: 9400054f     	bl	0x12080 <syna_tcm_v1_read+0x8c>
		0000000000010b44:  R_AARCH64_CALL26	syna_tcm_v1_read
   10b48: 37f81520     	tbnz	w0, #0x1f, 0x10dec <syna_tcm_v1_read_message+0x420>
   10b4c: f9412278     	ldr	x24, [x19, #0x240]
   10b50: 79400708     	ldrh	w8, [x24, #0x2]
   10b54: b9020268     	str	w8, [x19, #0x200]
   10b58: 39400708     	ldrb	w8, [x24, #0x1]
   10b5c: 34000048     	cbz	w8, 0x10b64 <syna_tcm_v1_read_message+0x198>
   10b60: 3907f668     	strb	w8, [x19, #0x1fd]
   10b64: 394a0262     	ldrb	w2, [x19, #0x280]
   10b68: 7100045f     	cmp	w2, #0x1
   10b6c: 54001641     	b.ne	0x10e34 <syna_tcm_v1_read_message+0x468>
   10b70: 2a1f03e8     	mov	w8, wzr
   10b74: 91094260     	add	x0, x19, #0x250
   10b78: 390a0268     	strb	w8, [x19, #0x280]
   10b7c: 94000000     	bl	0x10b7c <syna_tcm_v1_read_message+0x1b0>
		0000000000010b7c:  R_AARCH64_CALL26	mutex_unlock
   10b80: b9420268     	ldr	w8, [x19, #0x200]
   10b84: 34002cc8     	cbz	w8, 0x1111c <syna_tcm_v1_read_message+0x750>
   10b88: 39400709     	ldrb	w9, [x24, #0x1]
   10b8c: 71000d3f     	cmp	w9, #0x3
   10b90: 54000601     	b.ne	0x10c50 <syna_tcm_v1_read_message+0x284>
   10b94: b9403e68     	ldr	w8, [x19, #0x3c]
   10b98: 52800809     	mov	w9, #0x40               // =64
   10b9c: 7100011f     	cmp	w8, #0x0
   10ba0: 1a880134     	csel	w20, w9, w8, eq
   10ba4: 94000000     	bl	0x10ba4 <syna_tcm_v1_read_message+0x1d8>
		0000000000010ba4:  R_AARCH64_CALL26	syna_request_managed_device
   10ba8: b4005e20     	cbz	x0, 0x1176c <syna_tcm_v1_read_message+0xda0>
   10bac: 321f77e8     	mov	w8, #0x7ffffffe         // =2147483646
   10bb0: 6b08029f     	cmp	w20, w8
   10bb4: 54005e28     	b.hi	0x11778 <syna_tcm_v1_read_message+0xdac>
   10bb8: 11000681     	add	w1, w20, #0x1
   10bbc: 5281b802     	mov	w2, #0xdc0              // =3520
   10bc0: 94000000     	bl	0x10bc0 <syna_tcm_v1_read_message+0x1f4>
		0000000000010bc0:  R_AARCH64_CALL26	devm_kmalloc
   10bc4: b4005e40     	cbz	x0, 0x1178c <syna_tcm_v1_read_message+0xdc0>
   10bc8: aa0003f5     	mov	x21, x0
   10bcc: 90000016     	adrp	x22, 0x10000 <syna_tcm_v1_detect+0x3f0>
		0000000000010bcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c06
   10bd0: 910002d6     	add	x22, x22, #0x0
		0000000000010bd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c06
   10bd4: 52800c98     	mov	w24, #0x64              // =100
   10bd8: 90000017     	adrp	x23, 0x10000 <syna_tcm_v1_detect+0x3f0>
		0000000000010bd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4e00
   10bdc: 910002f7     	add	x23, x23, #0x0
		0000000000010bdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4e00
   10be0: f9402660     	ldr	x0, [x19, #0x48]
   10be4: b4006840     	cbz	x0, 0x118ec <syna_tcm_v1_read_message+0xf20>
   10be8: f9401008     	ldr	x8, [x0, #0x20]
   10bec: b40067e8     	cbz	x8, 0x118e8 <syna_tcm_v1_read_message+0xf1c>
   10bf0: aa1503e1     	mov	x1, x21
   10bf4: 2a1403e2     	mov	w2, w20
   10bf8: b85fc110     	ldur	w16, [x8, #-0x4]
   10bfc: 728403f1     	movk	w17, #0x201f
   10c00: 72a51491     	movk	w17, #0x28a4, lsl #16
   10c04: 6b11021f     	cmp	w16, w17
   10c08: 54000040     	b.eq	0x10c10 <syna_tcm_v1_read_message+0x244>
   10c0c: d4304500     	brk	#0x8228
   10c10: d63f0100     	blr	x8
   10c14: 37f86740     	tbnz	w0, #0x1f, 0x118fc <syna_tcm_v1_read_message+0xf30>
   10c18: 394006a8     	ldrb	w8, [x21, #0x1]
   10c1c: 340000e8     	cbz	w8, 0x10c38 <syna_tcm_v1_read_message+0x26c>
   10c20: 52807d00     	mov	w0, #0x3e8              // =1000
   10c24: 5280fa01     	mov	w1, #0x7d0              // =2000
   10c28: 52800042     	mov	w2, #0x2                // =2
   10c2c: 94000000     	bl	0x10c2c <syna_tcm_v1_read_message+0x260>
		0000000000010c2c:  R_AARCH64_CALL26	usleep_range_state
   10c30: 71000718     	subs	w24, w24, #0x1
   10c34: 54fffd61     	b.ne	0x10be0 <syna_tcm_v1_read_message+0x214>
   10c38: 94000000     	bl	0x10c38 <syna_tcm_v1_read_message+0x26c>
		0000000000010c38:  R_AARCH64_CALL26	syna_request_managed_device
   10c3c: b4006700     	cbz	x0, 0x1191c <syna_tcm_v1_read_message+0xf50>
   10c40: aa1503e1     	mov	x1, x21
   10c44: 94000000     	bl	0x10c44 <syna_tcm_v1_read_message+0x278>
		0000000000010c44:  R_AARCH64_CALL26	devm_kfree
   10c48: 12801e37     	mov	w23, #-0xf2             // =-242
   10c4c: 14000482     	b	0x11e54 <syna_tcm_v1_read_message+0x1488>
   10c50: 710012c9     	subs	w9, w22, #0x4
   10c54: 6b090109     	subs	w9, w8, w9
   10c58: 1a8933e9     	csel	w9, wzr, w9, lo
   10c5c: 710012df     	cmp	w22, #0x4
   10c60: 1a88812d     	csel	w13, w9, w8, hi
   10c64: 340025cd     	cbz	w13, 0x1111c <syna_tcm_v1_read_message+0x750>
   10c68: 529fffe9     	mov	w9, #0xffff             // =65535
   10c6c: 6a2d013f     	bics	wzr, w9, w13
   10c70: 54005b00     	b.eq	0x117d0 <syna_tcm_v1_read_message+0xe04>
   10c74: 394e0269     	ldrb	w9, [x19, #0x380]
   10c78: 394e126c     	ldrb	w12, [x19, #0x384]
   10c7c: 1100150a     	add	w10, w8, #0x5
   10c80: 11001d08     	add	w8, w8, #0x7
   10c84: 11000dab     	add	w11, w13, #0x3
   10c88: 394a0262     	ldrb	w2, [x19, #0x280]
   10c8c: 7100013f     	cmp	w9, #0x0
   10c90: 2a0c0129     	orr	w9, w9, w12
   10c94: 1100058c     	add	w12, w12, #0x1
   10c98: 1a8a1108     	csel	w8, w8, w10, ne
   10c9c: 1a8d156b     	csinc	w11, w11, w13, ne
   10ca0: 7200013f     	tst	w9, #0x1
   10ca4: 0b0c0108     	add	w8, w8, w12
   10ca8: 0b0c016b     	add	w11, w11, w12
   10cac: f9000bf8     	str	x24, [sp, #0x10]
   10cb0: 1a8a1114     	csel	w20, w8, w10, ne
   10cb4: 1a8d157b     	csinc	w27, w11, w13, ne
   10cb8: b9001bed     	str	w13, [sp, #0x18]
   10cbc: 350059a2     	cbnz	w2, 0x117f0 <syna_tcm_v1_read_message+0xe24>
   10cc0: 91094260     	add	x0, x19, #0x250
   10cc4: 94000000     	bl	0x10cc4 <syna_tcm_v1_read_message+0x2f8>
		0000000000010cc4:  R_AARCH64_CALL26	mutex_lock
   10cc8: 394a0268     	ldrb	w8, [x19, #0x280]
   10ccc: b9424a78     	ldr	w24, [x19, #0x248]
   10cd0: 11000696     	add	w22, w20, #0x1
   10cd4: 11000508     	add	w8, w8, #0x1
   10cd8: 6b16031f     	cmp	w24, w22
   10cdc: 390a0268     	strb	w8, [x19, #0x280]
   10ce0: 540002e2     	b.hs	0x10d3c <syna_tcm_v1_read_message+0x370>
   10ce4: f85f83a8     	ldur	x8, [x29, #-0x8]
   10ce8: f9400117     	ldr	x23, [x8]
   10cec: 94000000     	bl	0x10cec <syna_tcm_v1_read_message+0x320>
		0000000000010cec:  R_AARCH64_CALL26	syna_request_managed_device
   10cf0: b4006540     	cbz	x0, 0x11998 <syna_tcm_v1_read_message+0xfcc>
   10cf4: 12b00008     	mov	w8, #0x7fffffff         // =2147483647
   10cf8: 6b08029f     	cmp	w20, w8
   10cfc: 540067e2     	b.hs	0x119f8 <syna_tcm_v1_read_message+0x102c>
   10d00: aa1603e1     	mov	x1, x22
   10d04: 5281b802     	mov	w2, #0xdc0              // =3520
   10d08: 94000000     	bl	0x10d08 <syna_tcm_v1_read_message+0x33c>
		0000000000010d08:  R_AARCH64_CALL26	devm_kmalloc
   10d0c: f85f83a8     	ldur	x8, [x29, #-0x8]
   10d10: f9000100     	str	x0, [x8]
   10d14: b4006800     	cbz	x0, 0x11a14 <syna_tcm_v1_read_message+0x1048>
   10d18: b40071b7     	cbz	x23, 0x11b4c <syna_tcm_v1_read_message+0x1180>
   10d1c: aa1703e1     	mov	x1, x23
   10d20: aa1803e2     	mov	x2, x24
   10d24: 94000000     	bl	0x10d24 <syna_tcm_v1_read_message+0x358>
		0000000000010d24:  R_AARCH64_CALL26	memcpy
   10d28: 94000000     	bl	0x10d28 <syna_tcm_v1_read_message+0x35c>
		0000000000010d28:  R_AARCH64_CALL26	syna_request_managed_device
   10d2c: b40073e0     	cbz	x0, 0x11ba8 <syna_tcm_v1_read_message+0x11dc>
   10d30: aa1703e1     	mov	x1, x23
   10d34: 94000000     	bl	0x10d34 <syna_tcm_v1_read_message+0x368>
		0000000000010d34:  R_AARCH64_CALL26	devm_kfree
   10d38: b90002b6     	str	w22, [x21]
   10d3c: f9402668     	ldr	x8, [x19, #0x48]
   10d40: b9403e69     	ldr	w9, [x19, #0x3c]
   10d44: 3940550a     	ldrb	w10, [x8, #0x15]
   10d48: 7100013f     	cmp	w9, #0x0
   10d4c: 1a890289     	csel	w9, w20, w9, eq
   10d50: 7100055f     	cmp	w10, #0x1
   10d54: 540001e1     	b.ne	0x10d90 <syna_tcm_v1_read_message+0x3c4>
   10d58: b9401beb     	ldr	w11, [sp, #0x18]
   10d5c: 2a1f03f6     	mov	w22, wzr
   10d60: 34000809     	cbz	w9, 0x10e60 <syna_tcm_v1_read_message+0x494>
   10d64: b940190a     	ldr	w10, [x8, #0x18]
   10d68: 2a1603e8     	mov	w8, w22
   10d6c: 340007ca     	cbz	w10, 0x10e64 <syna_tcm_v1_read_message+0x498>
   10d70: 1aca0928     	udiv	w8, w9, w10
   10d74: 1b0a7d16     	mul	w22, w8, w10
   10d78: 35000136     	cbnz	w22, 0x10d9c <syna_tcm_v1_read_message+0x3d0>
   10d7c: 2a1f03e8     	mov	w8, wzr
   10d80: 14000039     	b	0x10e64 <syna_tcm_v1_read_message+0x498>
   10d84: 2a1f03f6     	mov	w22, wzr
   10d88: 91092275     	add	x21, x19, #0x248
   10d8c: 17ffff6a     	b	0x10b34 <syna_tcm_v1_read_message+0x168>
   10d90: b9401beb     	ldr	w11, [sp, #0x18]
   10d94: 2a0903f6     	mov	w22, w9
   10d98: 34ffff36     	cbz	w22, 0x10d7c <syna_tcm_v1_read_message+0x3b0>
   10d9c: 0b160288     	add	w8, w20, w22
   10da0: 51000508     	sub	w8, w8, #0x1
   10da4: 1ad60908     	udiv	w8, w8, w22
   10da8: 1400002f     	b	0x10e64 <syna_tcm_v1_read_message+0x498>
   10dac: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x3f0>
		0000000000010dac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c8
   10db0: 91000000     	add	x0, x0, #0x0
		0000000000010db0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c8
   10db4: 14000003     	b	0x10dc0 <syna_tcm_v1_read_message+0x3f4>
   10db8: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x3f0>
		0000000000010db8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb874
   10dbc: 91000000     	add	x0, x0, #0x0
		0000000000010dbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb874
   10dc0: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x3f0>
		0000000000010dc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbed0
   10dc4: 91000021     	add	x1, x1, #0x0
		0000000000010dc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbed0
   10dc8: 94000000     	bl	0x10dc8 <syna_tcm_v1_read_message+0x3fc>
		0000000000010dc8:  R_AARCH64_CALL26	_printk
   10dcc: 12801e17     	mov	w23, #-0xf1             // =-241
   10dd0: 1400042d     	b	0x11e84 <syna_tcm_v1_read_message+0x14b8>
   10dd4: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x3f0>
		0000000000010dd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   10dd8: 91000000     	add	x0, x0, #0x0
		0000000000010dd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   10ddc: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x3f0>
		0000000000010ddc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70c4
   10de0: 91000021     	add	x1, x1, #0x0
		0000000000010de0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70c4
   10de4: 94000000     	bl	0x10de4 <syna_tcm_v1_read_message+0x418>
		0000000000010de4:  R_AARCH64_CALL26	_printk
   10de8: 17ffff18     	b	0x10a48 <syna_tcm_v1_read_message+0x7c>
   10dec: 2a0003f7     	mov	w23, w0
   10df0: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x3f0>
		0000000000010df0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x72be
   10df4: 91000000     	add	x0, x0, #0x0
		0000000000010df4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x72be
   10df8: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x3f0>
		0000000000010df8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbed0
   10dfc: 91000021     	add	x1, x1, #0x0
		0000000000010dfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbed0
   10e00: 2a1603e2     	mov	w2, w22
   10e04: 94000000     	bl	0x10e04 <syna_tcm_v1_read_message+0x438>
		0000000000010e04:  R_AARCH64_CALL26	_printk
   10e08: 394a0262     	ldrb	w2, [x19, #0x280]
   10e0c: 7100045f     	cmp	w2, #0x1
   10e10: 540072c1     	b.ne	0x11c68 <syna_tcm_v1_read_message+0x129c>
   10e14: 2a1f03e8     	mov	w8, wzr
   10e18: 91094260     	add	x0, x19, #0x250
   10e1c: 390a0268     	strb	w8, [x19, #0x280]
   10e20: 94000000     	bl	0x10e20 <syna_tcm_v1_read_message+0x454>
		0000000000010e20:  R_AARCH64_CALL26	mutex_unlock
   10e24: 52801fe8     	mov	w8, #0xff               // =255
   10e28: b902027f     	str	wzr, [x19, #0x200]
   10e2c: 3907f668     	strb	w8, [x19, #0x1fd]
   10e30: 14000409     	b	0x11e54 <syna_tcm_v1_read_message+0x1488>
   10e34: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x3f0>
		0000000000010e34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   10e38: 91000000     	add	x0, x0, #0x0
		0000000000010e38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   10e3c: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x3f0>
		0000000000010e3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   10e40: 91000021     	add	x1, x1, #0x0
		0000000000010e40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   10e44: 94000000     	bl	0x10e44 <syna_tcm_v1_read_message+0x478>
		0000000000010e44:  R_AARCH64_CALL26	_printk
   10e48: 394a0268     	ldrb	w8, [x19, #0x280]
   10e4c: 51000508     	sub	w8, w8, #0x1
   10e50: 17ffff49     	b	0x10b74 <syna_tcm_v1_read_message+0x1a8>
   10e54: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x3f0>
		0000000000010e54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70d6
   10e58: 91000000     	add	x0, x0, #0x0
		0000000000010e58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70d6
   10e5c: 14000227     	b	0x116f8 <syna_tcm_v1_read_message+0xd2c>
   10e60: 2a1603e8     	mov	w8, w22
   10e64: b9420269     	ldr	w9, [x19, #0x200]
   10e68: 394c4262     	ldrb	w2, [x19, #0x310]
   10e6c: 7100051f     	cmp	w8, #0x1
   10e70: b90007fa     	str	w26, [sp, #0x4]
   10e74: 1a9f8514     	csinc	w20, w8, wzr, hi
   10e78: 4b0b0129     	sub	w9, w9, w11
   10e7c: f90007f9     	str	x25, [sp, #0x8]
   10e80: 1100113a     	add	w26, w9, #0x4
   10e84: 35005062     	cbnz	w2, 0x11890 <syna_tcm_v1_read_message+0xec4>
   10e88: 910b8260     	add	x0, x19, #0x2e0
   10e8c: 94000000     	bl	0x10e8c <syna_tcm_v1_read_message+0x4c0>
		0000000000010e8c:  R_AARCH64_CALL26	mutex_lock
   10e90: 394c4268     	ldrb	w8, [x19, #0x310]
   10e94: 2a1f03f9     	mov	w25, wzr
   10e98: 2a1f03f5     	mov	w21, wzr
   10e9c: 51000ac9     	sub	w9, w22, #0x2
   10ea0: 52801ffc     	mov	w28, #0xff              // =255
   10ea4: 11000508     	add	w8, w8, #0x1
   10ea8: 293ddba9     	stp	w9, w22, [x29, #-0x14]
   10eac: 390c4268     	strb	w8, [x19, #0x310]
   10eb0: 1400000a     	b	0x10ed8 <syna_tcm_v1_read_message+0x50c>
   10eb4: f85f83a8     	ldur	x8, [x29, #-0x8]
   10eb8: 52800b4a     	mov	w10, #0x5a              // =90
   10ebc: 5100077b     	sub	w27, w27, #0x1
   10ec0: f9400108     	ldr	x8, [x8]
   10ec4: 383a490a     	strb	w10, [x8, w26, uxtw]
   10ec8: 1100075a     	add	w26, w26, #0x1
   10ecc: 6b1402ff     	cmp	w23, w20
   10ed0: 2a1703f9     	mov	w25, w23
   10ed4: 54000fa2     	b.hs	0x110c8 <syna_tcm_v1_read_message+0x6fc>
   10ed8: 6b16037f     	cmp	w27, w22
   10edc: 11000737     	add	w23, w25, #0x1
   10ee0: 1a9b8138     	csel	w24, w9, w27, hi
   10ee4: 7100071f     	cmp	w24, #0x1
   10ee8: 54fffe60     	b.eq	0x10eb4 <syna_tcm_v1_read_message+0x4e8>
   10eec: 6b1402ff     	cmp	w23, w20
   10ef0: 540001c1     	b.ne	0x10f28 <syna_tcm_v1_read_message+0x55c>
   10ef4: f9402668     	ldr	x8, [x19, #0x48]
   10ef8: 39405509     	ldrb	w9, [x8, #0x15]
   10efc: 36000169     	tbz	w9, #0x0, 0x10f28 <syna_tcm_v1_read_message+0x55c>
   10f00: b9401d09     	ldr	w9, [x8, #0x1c]
   10f04: 6b09031f     	cmp	w24, w9
   10f08: 54000109     	b.ls	0x10f28 <syna_tcm_v1_read_message+0x55c>
   10f0c: b9401908     	ldr	w8, [x8, #0x18]
   10f10: 34000068     	cbz	w8, 0x10f1c <syna_tcm_v1_read_message+0x550>
   10f14: 1ac80b09     	udiv	w9, w24, w8
   10f18: 1b087d28     	mul	w8, w9, w8
   10f1c: 51000918     	sub	w24, w8, #0x2
   10f20: 6b1b031f     	cmp	w24, w27
   10f24: 1a940694     	cinc	w20, w20, ne
   10f28: b942da62     	ldr	w2, [x19, #0x2d8]
   10f2c: b81f43b4     	stur	w20, [x29, #-0xc]
   10f30: 11000b16     	add	w22, w24, #0x2
   10f34: f9416a74     	ldr	x20, [x19, #0x2d0]
   10f38: 6b16005f     	cmp	w2, w22
   10f3c: 54000242     	b.hs	0x10f84 <syna_tcm_v1_read_message+0x5b8>
   10f40: b40000b4     	cbz	x20, 0x10f54 <syna_tcm_v1_read_message+0x588>
   10f44: 94000000     	bl	0x10f44 <syna_tcm_v1_read_message+0x578>
		0000000000010f44:  R_AARCH64_CALL26	syna_request_managed_device
   10f48: b4000ac0     	cbz	x0, 0x110a0 <syna_tcm_v1_read_message+0x6d4>
   10f4c: aa1403e1     	mov	x1, x20
   10f50: 94000000     	bl	0x10f50 <syna_tcm_v1_read_message+0x584>
		0000000000010f50:  R_AARCH64_CALL26	devm_kfree
   10f54: 94000000     	bl	0x10f54 <syna_tcm_v1_read_message+0x588>
		0000000000010f54:  R_AARCH64_CALL26	syna_request_managed_device
   10f58: b4000b20     	cbz	x0, 0x110bc <syna_tcm_v1_read_message+0x6f0>
   10f5c: 710002df     	cmp	w22, #0x0
   10f60: 54006b6d     	b.le	0x11ccc <syna_tcm_v1_read_message+0x1300>
   10f64: aa1603e1     	mov	x1, x22
   10f68: 5281b802     	mov	w2, #0xdc0              // =3520
   10f6c: 94000000     	bl	0x10f6c <syna_tcm_v1_read_message+0x5a0>
		0000000000010f6c:  R_AARCH64_CALL26	devm_kmalloc
   10f70: f9016a60     	str	x0, [x19, #0x2d0]
   10f74: b4006b80     	cbz	x0, 0x11ce4 <syna_tcm_v1_read_message+0x1318>
   10f78: aa0003f4     	mov	x20, x0
   10f7c: aa1603e2     	mov	x2, x22
   10f80: b902da76     	str	w22, [x19, #0x2d8]
   10f84: aa1403e0     	mov	x0, x20
   10f88: 2a1f03e1     	mov	w1, wzr
   10f8c: 94000000     	bl	0x10f8c <syna_tcm_v1_read_message+0x5c0>
		0000000000010f8c:  R_AARCH64_CALL26	memset
   10f90: 110006a8     	add	w8, w21, #0x1
   10f94: b902de7f     	str	wzr, [x19, #0x2dc]
   10f98: 7100151f     	cmp	w8, #0x5
   10f9c: 528000a8     	mov	w8, #0x5                // =5
   10fa0: 1a95d514     	csinc	w20, w8, w21, le
   10fa4: b9421260     	ldr	w0, [x19, #0x210]
   10fa8: 7100041f     	cmp	w0, #0x1
   10fac: 5400010b     	b.lt	0x10fcc <syna_tcm_v1_read_message+0x600>
   10fb0: b9421668     	ldr	w8, [x19, #0x214]
   10fb4: 7100051f     	cmp	w8, #0x1
   10fb8: 540000ab     	b.lt	0x10fcc <syna_tcm_v1_read_message+0x600>
   10fbc: 6b00011f     	cmp	w8, w0
   10fc0: 52800042     	mov	w2, #0x2                // =2
   10fc4: 1a808101     	csel	w1, w8, w0, hi
   10fc8: 94000000     	bl	0x10fc8 <syna_tcm_v1_read_message+0x5fc>
		0000000000010fc8:  R_AARCH64_CALL26	usleep_range_state
   10fcc: f9416a62     	ldr	x2, [x19, #0x2d0]
   10fd0: b942da63     	ldr	w3, [x19, #0x2d8]
   10fd4: aa1303e0     	mov	x0, x19
   10fd8: 2a1603e1     	mov	w1, w22
   10fdc: 94000429     	bl	0x12080 <syna_tcm_v1_read+0x8c>
		0000000000010fdc:  R_AARCH64_CALL26	syna_tcm_v1_read
   10fe0: 37f80140     	tbnz	w0, #0x1f, 0x11008 <syna_tcm_v1_read_message+0x63c>
   10fe4: f9416a68     	ldr	x8, [x19, #0x2d0]
   10fe8: b902de76     	str	w22, [x19, #0x2dc]
   10fec: 3940051c     	ldrb	w28, [x8, #0x1]
   10ff0: 71000f9f     	cmp	w28, #0x3
   10ff4: 54000280     	b.eq	0x11044 <syna_tcm_v1_read_message+0x678>
   10ff8: 110006b5     	add	w21, w21, #0x1
   10ffc: 710016bf     	cmp	w21, #0x5
   11000: 54fffd2b     	b.lt	0x10fa4 <syna_tcm_v1_read_message+0x5d8>
   11004: 14000008     	b	0x11024 <syna_tcm_v1_read_message+0x658>
   11008: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011008:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5f48
   1100c: 91000000     	add	x0, x0, #0x0
		000000000001100c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5f48
   11010: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011010:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2318
   11014: 91000021     	add	x1, x1, #0x0
		0000000000011014:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2318
   11018: 2a1603e2     	mov	w2, w22
   1101c: 94000000     	bl	0x1101c <syna_tcm_v1_read_message+0x650>
		000000000001101c:  R_AARCH64_CALL26	_printk
   11020: 17fffff6     	b	0x10ff8 <syna_tcm_v1_read_message+0x62c>
   11024: b85f03b6     	ldur	w22, [x29, #-0x10]
   11028: 71000f9f     	cmp	w28, #0x3
   1102c: 540063a1     	b.ne	0x11ca0 <syna_tcm_v1_read_message+0x12d4>
   11030: f9416a68     	ldr	x8, [x19, #0x2d0]
   11034: 2a1403f5     	mov	w21, w20
   11038: b1000901     	adds	x1, x8, #0x2
   1103c: 540000a1     	b.ne	0x11050 <syna_tcm_v1_read_message+0x684>
   11040: 140002b3     	b	0x11b0c <syna_tcm_v1_read_message+0x1140>
   11044: b85f03b6     	ldur	w22, [x29, #-0x10]
   11048: b1000901     	adds	x1, x8, #0x2
   1104c: 54005600     	b.eq	0x11b0c <syna_tcm_v1_read_message+0x1140>
   11050: f85f83a8     	ldur	x8, [x29, #-0x8]
   11054: f9400108     	ldr	x8, [x8]
   11058: 8b3a4100     	add	x0, x8, w26, uxtw
   1105c: b4005580     	cbz	x0, 0x11b0c <syna_tcm_v1_read_message+0x1140>
   11060: b942da68     	ldr	w8, [x19, #0x2d8]
   11064: 51000902     	sub	w2, w8, #0x2
   11068: b9424a68     	ldr	w8, [x19, #0x248]
   1106c: 6b02031f     	cmp	w24, w2
   11070: 4b1a0103     	sub	w3, w8, w26
   11074: 54005408     	b.hi	0x11af4 <syna_tcm_v1_read_message+0x1128>
   11078: 6b03031f     	cmp	w24, w3
   1107c: 540053c8     	b.hi	0x11af4 <syna_tcm_v1_read_message+0x1128>
   11080: 2a1803e2     	mov	w2, w24
   11084: 94000000     	bl	0x11084 <syna_tcm_v1_read_message+0x6b8>
		0000000000011084:  R_AARCH64_CALL26	memcpy
   11088: b85f43b4     	ldur	w20, [x29, #-0xc]
   1108c: b85ec3a9     	ldur	w9, [x29, #-0x14]
   11090: 0b1a031a     	add	w26, w24, w26
   11094: 4b18037b     	sub	w27, w27, w24
   11098: 5280007c     	mov	w28, #0x3               // =3
   1109c: 17ffff8c     	b	0x10ecc <syna_tcm_v1_read_message+0x500>
   110a0: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		00000000000110a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   110a4: 91000000     	add	x0, x0, #0x0
		00000000000110a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   110a8: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		00000000000110a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   110ac: 91000021     	add	x1, x1, #0x0
		00000000000110ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   110b0: 94000000     	bl	0x110b0 <syna_tcm_v1_read_message+0x6e4>
		00000000000110b0:  R_AARCH64_CALL26	_printk
   110b4: 94000000     	bl	0x110b4 <syna_tcm_v1_read_message+0x6e8>
		00000000000110b4:  R_AARCH64_CALL26	syna_request_managed_device
   110b8: b5fff520     	cbnz	x0, 0x10f5c <syna_tcm_v1_read_message+0x590>
   110bc: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		00000000000110bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   110c0: 91000000     	add	x0, x0, #0x0
		00000000000110c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   110c4: 14000304     	b	0x11cd4 <syna_tcm_v1_read_message+0x1308>
   110c8: 2a1f03f4     	mov	w20, wzr
   110cc: 2a1f03f7     	mov	w23, wzr
   110d0: b9024e7a     	str	w26, [x19, #0x24c]
   110d4: 394c4262     	ldrb	w2, [x19, #0x310]
   110d8: a940e3f9     	ldp	x25, x24, [sp, #0x8]
   110dc: b94007fa     	ldr	w26, [sp, #0x4]
   110e0: 7100045f     	cmp	w2, #0x1
   110e4: 54003e21     	b.ne	0x118a8 <syna_tcm_v1_read_message+0xedc>
   110e8: 2a1f03e8     	mov	w8, wzr
   110ec: 910b8260     	add	x0, x19, #0x2e0
   110f0: 390c4268     	strb	w8, [x19, #0x310]
   110f4: 94000000     	bl	0x110f4 <syna_tcm_v1_read_message+0x728>
		00000000000110f4:  R_AARCH64_CALL26	mutex_unlock
   110f8: 394a0262     	ldrb	w2, [x19, #0x280]
   110fc: 7100045f     	cmp	w2, #0x1
   11100: 54003e41     	b.ne	0x118c8 <syna_tcm_v1_read_message+0xefc>
   11104: 2a1f03e8     	mov	w8, wzr
   11108: 91094260     	add	x0, x19, #0x250
   1110c: 390a0268     	strb	w8, [x19, #0x280]
   11110: 94000000     	bl	0x11110 <syna_tcm_v1_read_message+0x744>
		0000000000011110:  R_AARCH64_CALL26	mutex_unlock
   11114: b9401bed     	ldr	w13, [sp, #0x18]
   11118: 350061f4     	cbnz	w20, 0x11d54 <syna_tcm_v1_read_message+0x1388>
   1111c: 394a0262     	ldrb	w2, [x19, #0x280]
   11120: 350025a2     	cbnz	w2, 0x115d4 <syna_tcm_v1_read_message+0xc08>
   11124: 91094260     	add	x0, x19, #0x250
   11128: 94000000     	bl	0x11128 <syna_tcm_v1_read_message+0x75c>
		0000000000011128:  R_AARCH64_CALL26	mutex_lock
   1112c: 394a0268     	ldrb	w8, [x19, #0x280]
   11130: f9412269     	ldr	x9, [x19, #0x240]
   11134: 11000508     	add	w8, w8, #0x1
   11138: 390a0268     	strb	w8, [x19, #0x280]
   1113c: 528014a8     	mov	w8, #0xa5               // =165
   11140: 39000128     	strb	w8, [x9]
   11144: 3947f668     	ldrb	w8, [x19, #0x1fd]
   11148: f9412269     	ldr	x9, [x19, #0x240]
   1114c: 39000528     	strb	w8, [x9, #0x1]
   11150: b9420268     	ldr	w8, [x19, #0x200]
   11154: f9412269     	ldr	x9, [x19, #0x240]
   11158: 39000928     	strb	w8, [x9, #0x2]
   1115c: b9420268     	ldr	w8, [x19, #0x200]
   11160: f9412269     	ldr	x9, [x19, #0x240]
   11164: 53087d08     	lsr	w8, w8, #8
   11168: 39000d28     	strb	w8, [x9, #0x3]
   1116c: 394a0262     	ldrb	w2, [x19, #0x280]
   11170: 7100045f     	cmp	w2, #0x1
   11174: 540023c1     	b.ne	0x115ec <syna_tcm_v1_read_message+0xc20>
   11178: 2a1f03e8     	mov	w8, wzr
   1117c: 91094260     	add	x0, x19, #0x250
   11180: 390a0268     	strb	w8, [x19, #0x280]
   11184: 94000000     	bl	0x11184 <syna_tcm_v1_read_message+0x7b8>
		0000000000011184:  R_AARCH64_CALL26	mutex_unlock
   11188: 394e0268     	ldrb	w8, [x19, #0x380]
   1118c: 7100051f     	cmp	w8, #0x1
   11190: 540003e1     	b.ne	0x1120c <syna_tcm_v1_read_message+0x840>
   11194: b9420268     	ldr	w8, [x19, #0x200]
   11198: 340003a8     	cbz	w8, 0x1120c <syna_tcm_v1_read_message+0x840>
   1119c: 394a0262     	ldrb	w2, [x19, #0x280]
   111a0: 35003002     	cbnz	w2, 0x117a0 <syna_tcm_v1_read_message+0xdd4>
   111a4: 91094260     	add	x0, x19, #0x250
   111a8: 94000000     	bl	0x111a8 <syna_tcm_v1_read_message+0x7dc>
		00000000000111a8:  R_AARCH64_CALL26	mutex_lock
   111ac: b942026a     	ldr	w10, [x19, #0x200]
   111b0: 394a0269     	ldrb	w9, [x19, #0x280]
   111b4: b9424a6b     	ldr	w11, [x19, #0x248]
   111b8: 1100154d     	add	w13, w10, #0x5
   111bc: 11000528     	add	w8, w9, #0x1
   111c0: 6b0d017f     	cmp	w11, w13
   111c4: 390a0268     	strb	w8, [x19, #0x280]
   111c8: 54000229     	b.ls	0x1120c <syna_tcm_v1_read_message+0x840>
   111cc: f941226c     	ldr	x12, [x19, #0x240]
   111d0: 394e126e     	ldrb	w14, [x19, #0x384]
   111d4: 786d498d     	ldrh	w13, [x12, w13, uxtw]
   111d8: 710005df     	cmp	w14, #0x1
   111dc: 7907066d     	strh	w13, [x19, #0x382]
   111e0: 540000c1     	b.ne	0x111f8 <syna_tcm_v1_read_message+0x82c>
   111e4: 11001d4a     	add	w10, w10, #0x7
   111e8: 6b0a017f     	cmp	w11, w10
   111ec: 54000063     	b.lo	0x111f8 <syna_tcm_v1_read_message+0x82c>
   111f0: 386a498a     	ldrb	w10, [x12, w10, uxtw]
   111f4: 390e166a     	strb	w10, [x19, #0x385]
   111f8: 35003a09     	cbnz	w9, 0x11938 <syna_tcm_v1_read_message+0xf6c>
   111fc: 2a1f03e8     	mov	w8, wzr
   11200: 91094260     	add	x0, x19, #0x250
   11204: 390a0268     	strb	w8, [x19, #0x280]
   11208: 94000000     	bl	0x11208 <syna_tcm_v1_read_message+0x83c>
		0000000000011208:  R_AARCH64_CALL26	mutex_unlock
   1120c: 52827b08     	mov	w8, #0x13d8             // =5080
   11210: 3947f676     	ldrb	w22, [x19, #0x1fd]
   11214: 8b080274     	add	x20, x19, x8
   11218: 8b161288     	add	x8, x20, x22, lsl #4
   1121c: f9400508     	ldr	x8, [x8, #0x8]
   11220: b40003a8     	cbz	x8, 0x11294 <syna_tcm_v1_read_message+0x8c8>
   11224: 394a0262     	ldrb	w2, [x19, #0x280]
   11228: 35001f22     	cbnz	w2, 0x1160c <syna_tcm_v1_read_message+0xc40>
   1122c: 91094260     	add	x0, x19, #0x250
   11230: 94000000     	bl	0x11230 <syna_tcm_v1_read_message+0x864>
		0000000000011230:  R_AARCH64_CALL26	mutex_lock
   11234: 3947f660     	ldrb	w0, [x19, #0x1fd]
   11238: 394a0268     	ldrb	w8, [x19, #0x280]
   1123c: f941226a     	ldr	x10, [x19, #0x240]
   11240: b9420262     	ldr	w2, [x19, #0x200]
   11244: 8b201289     	add	x9, x20, w0, uxtb #4
   11248: 11000508     	add	w8, w8, #0x1
   1124c: 91001141     	add	x1, x10, #0x4
   11250: 390a0268     	strb	w8, [x19, #0x280]
   11254: a9402d23     	ldp	x3, x11, [x9]
   11258: b85fc170     	ldur	w16, [x11, #-0x4]
   1125c: 72988151     	movk	w17, #0xc40a
   11260: 72b3f271     	movk	w17, #0x9f93, lsl #16
   11264: 6b11021f     	cmp	w16, w17
   11268: 54000040     	b.eq	0x11270 <syna_tcm_v1_read_message+0x8a4>
   1126c: d4304560     	brk	#0x822b
   11270: d63f0160     	blr	x11
   11274: 394a0262     	ldrb	w2, [x19, #0x280]
   11278: 7100045f     	cmp	w2, #0x1
   1127c: 54001d41     	b.ne	0x11624 <syna_tcm_v1_read_message+0xc58>
   11280: 2a1f03e8     	mov	w8, wzr
   11284: 91094260     	add	x0, x19, #0x250
   11288: 390a0268     	strb	w8, [x19, #0x280]
   1128c: 94000000     	bl	0x1128c <syna_tcm_v1_read_message+0x8c0>
		000000000001128c:  R_AARCH64_CALL26	mutex_unlock
   11290: 3947f676     	ldrb	w22, [x19, #0x1fd]
   11294: 710042df     	cmp	w22, #0x10
   11298: 54000403     	b.lo	0x11318 <syna_tcm_v1_read_message+0x94c>
   1129c: b9420268     	ldr	w8, [x19, #0x200]
   112a0: 34000828     	cbz	w8, 0x113a4 <syna_tcm_v1_read_message+0x9d8>
   112a4: 39450262     	ldrb	w2, [x19, #0x140]
   112a8: 35002882     	cbnz	w2, 0x117b8 <syna_tcm_v1_read_message+0xdec>
   112ac: 91044260     	add	x0, x19, #0x110
   112b0: 94000000     	bl	0x112b0 <syna_tcm_v1_read_message+0x8e4>
		00000000000112b0:  R_AARCH64_CALL26	mutex_lock
   112b4: 39450269     	ldrb	w9, [x19, #0x140]
   112b8: b9420277     	ldr	w23, [x19, #0x200]
   112bc: b9410a68     	ldr	w8, [x19, #0x108]
   112c0: f9408260     	ldr	x0, [x19, #0x100]
   112c4: 11000529     	add	w9, w9, #0x1
   112c8: 6b17011f     	cmp	w8, w23
   112cc: 39050269     	strb	w9, [x19, #0x140]
   112d0: 54000702     	b.hs	0x113b0 <syna_tcm_v1_read_message+0x9e4>
   112d4: b40000c0     	cbz	x0, 0x112ec <syna_tcm_v1_read_message+0x920>
   112d8: aa0003f4     	mov	x20, x0
   112dc: 94000000     	bl	0x112dc <syna_tcm_v1_read_message+0x910>
		00000000000112dc:  R_AARCH64_CALL26	syna_request_managed_device
   112e0: b4004700     	cbz	x0, 0x11bc0 <syna_tcm_v1_read_message+0x11f4>
   112e4: aa1403e1     	mov	x1, x20
   112e8: 94000000     	bl	0x112e8 <syna_tcm_v1_read_message+0x91c>
		00000000000112e8:  R_AARCH64_CALL26	devm_kfree
   112ec: 94000000     	bl	0x112ec <syna_tcm_v1_read_message+0x920>
		00000000000112ec:  R_AARCH64_CALL26	syna_request_managed_device
   112f0: b4004760     	cbz	x0, 0x11bdc <syna_tcm_v1_read_message+0x1210>
   112f4: 710002ff     	cmp	w23, #0x0
   112f8: 540033ed     	b.le	0x11974 <syna_tcm_v1_read_message+0xfa8>
   112fc: aa1703e1     	mov	x1, x23
   11300: 5281b802     	mov	w2, #0xdc0              // =3520
   11304: 94000000     	bl	0x11304 <syna_tcm_v1_read_message+0x938>
		0000000000011304:  R_AARCH64_CALL26	devm_kmalloc
   11308: f9008260     	str	x0, [x19, #0x100]
   1130c: b4004740     	cbz	x0, 0x11bf4 <syna_tcm_v1_read_message+0x1228>
   11310: b9010a77     	str	w23, [x19, #0x108]
   11314: 14000028     	b	0x113b4 <syna_tcm_v1_read_message+0x9e8>
   11318: b941fa68     	ldr	w8, [x19, #0x1f8]
   1131c: 7100051f     	cmp	w8, #0x1
   11320: 540057a1     	b.ne	0x11e14 <syna_tcm_v1_read_message+0x1448>
   11324: b9420268     	ldr	w8, [x19, #0x200]
   11328: 3907fa76     	strb	w22, [x19, #0x1fe]
   1132c: 34000de8     	cbz	w8, 0x114e8 <syna_tcm_v1_read_message+0xb1c>
   11330: 39462262     	ldrb	w2, [x19, #0x188]
   11334: 35003142     	cbnz	w2, 0x1195c <syna_tcm_v1_read_message+0xf90>
   11338: 91056260     	add	x0, x19, #0x158
   1133c: 94000000     	bl	0x1133c <syna_tcm_v1_read_message+0x970>
		000000000001133c:  R_AARCH64_CALL26	mutex_lock
   11340: 39462269     	ldrb	w9, [x19, #0x188]
   11344: b9420276     	ldr	w22, [x19, #0x200]
   11348: b9415268     	ldr	w8, [x19, #0x150]
   1134c: f940a660     	ldr	x0, [x19, #0x148]
   11350: 11000529     	add	w9, w9, #0x1
   11354: 6b16011f     	cmp	w8, w22
   11358: 39062269     	strb	w9, [x19, #0x188]
   1135c: 54000ce2     	b.hs	0x114f8 <syna_tcm_v1_read_message+0xb2c>
   11360: b40000c0     	cbz	x0, 0x11378 <syna_tcm_v1_read_message+0x9ac>
   11364: aa0003f4     	mov	x20, x0
   11368: 94000000     	bl	0x11368 <syna_tcm_v1_read_message+0x99c>
		0000000000011368:  R_AARCH64_CALL26	syna_request_managed_device
   1136c: b40050a0     	cbz	x0, 0x11d80 <syna_tcm_v1_read_message+0x13b4>
   11370: aa1403e1     	mov	x1, x20
   11374: 94000000     	bl	0x11374 <syna_tcm_v1_read_message+0x9a8>
		0000000000011374:  R_AARCH64_CALL26	devm_kfree
   11378: 94000000     	bl	0x11378 <syna_tcm_v1_read_message+0x9ac>
		0000000000011378:  R_AARCH64_CALL26	syna_request_managed_device
   1137c: b4005100     	cbz	x0, 0x11d9c <syna_tcm_v1_read_message+0x13d0>
   11380: 710002df     	cmp	w22, #0x0
   11384: 5400482d     	b.le	0x11c88 <syna_tcm_v1_read_message+0x12bc>
   11388: aa1603e1     	mov	x1, x22
   1138c: 5281b802     	mov	w2, #0xdc0              // =3520
   11390: 94000000     	bl	0x11390 <syna_tcm_v1_read_message+0x9c4>
		0000000000011390:  R_AARCH64_CALL26	devm_kmalloc
   11394: f900a660     	str	x0, [x19, #0x148]
   11398: b40050e0     	cbz	x0, 0x11db4 <syna_tcm_v1_read_message+0x13e8>
   1139c: b9015276     	str	w22, [x19, #0x150]
   113a0: 14000057     	b	0x114fc <syna_tcm_v1_read_message+0xb30>
   113a4: b9010e7f     	str	wzr, [x19, #0x10c]
   113a8: b5005399     	cbnz	x25, 0x11e18 <syna_tcm_v1_read_message+0x144c>
   113ac: 1400029d     	b	0x11e20 <syna_tcm_v1_read_message+0x1454>
   113b0: aa0803f7     	mov	x23, x8
   113b4: 2a1f03e1     	mov	w1, wzr
   113b8: aa1703e2     	mov	x2, x23
   113bc: 94000000     	bl	0x113bc <syna_tcm_v1_read_message+0x9f0>
		00000000000113bc:  R_AARCH64_CALL26	memset
   113c0: 394a0262     	ldrb	w2, [x19, #0x280]
   113c4: b9010e7f     	str	wzr, [x19, #0x10c]
   113c8: 35002082     	cbnz	w2, 0x117d8 <syna_tcm_v1_read_message+0xe0c>
   113cc: 91094260     	add	x0, x19, #0x250
   113d0: 94000000     	bl	0x113d0 <syna_tcm_v1_read_message+0xa04>
		00000000000113d0:  R_AARCH64_CALL26	mutex_lock
   113d4: 394a0268     	ldrb	w8, [x19, #0x280]
   113d8: f9408260     	ldr	x0, [x19, #0x100]
   113dc: 11000508     	add	w8, w8, #0x1
   113e0: 390a0268     	strb	w8, [x19, #0x280]
   113e4: b40021c0     	cbz	x0, 0x1181c <syna_tcm_v1_read_message+0xe50>
   113e8: f9412268     	ldr	x8, [x19, #0x240]
   113ec: 91001101     	add	x1, x8, #0x4
   113f0: b4002161     	cbz	x1, 0x1181c <syna_tcm_v1_read_message+0xe50>
   113f4: b9410a63     	ldr	w3, [x19, #0x108]
   113f8: b9420264     	ldr	w4, [x19, #0x200]
   113fc: b9424a68     	ldr	w8, [x19, #0x248]
   11400: 6b03009f     	cmp	w4, w3
   11404: 51001102     	sub	w2, w8, #0x4
   11408: 54002008     	b.hi	0x11808 <syna_tcm_v1_read_message+0xe3c>
   1140c: 6b02009f     	cmp	w4, w2
   11410: 54001fc8     	b.hi	0x11808 <syna_tcm_v1_read_message+0xe3c>
   11414: aa0403e2     	mov	x2, x4
   11418: 94000000     	bl	0x11418 <syna_tcm_v1_read_message+0xa4c>
		0000000000011418:  R_AARCH64_CALL26	memcpy
   1141c: 394a0262     	ldrb	w2, [x19, #0x280]
   11420: b9420268     	ldr	w8, [x19, #0x200]
   11424: 7100045f     	cmp	w2, #0x1
   11428: b9010e68     	str	w8, [x19, #0x10c]
   1142c: 54002121     	b.ne	0x11850 <syna_tcm_v1_read_message+0xe84>
   11430: 2a1f03e8     	mov	w8, wzr
   11434: 91094260     	add	x0, x19, #0x250
   11438: 390a0268     	strb	w8, [x19, #0x280]
   1143c: 94000000     	bl	0x1143c <syna_tcm_v1_read_message+0xa70>
		000000000001143c:  R_AARCH64_CALL26	mutex_unlock
   11440: 39450262     	ldrb	w2, [x19, #0x140]
   11444: 7100045f     	cmp	w2, #0x1
   11448: 54002141     	b.ne	0x11870 <syna_tcm_v1_read_message+0xea4>
   1144c: 2a1f03e8     	mov	w8, wzr
   11450: 91044260     	add	x0, x19, #0x110
   11454: 39050268     	strb	w8, [x19, #0x140]
   11458: 94000000     	bl	0x11458 <syna_tcm_v1_read_message+0xa8c>
		0000000000011458:  R_AARCH64_CALL26	mutex_unlock
   1145c: 710042df     	cmp	w22, #0x10
   11460: 540010c1     	b.ne	0x11678 <syna_tcm_v1_read_message+0xcac>
   11464: 394a0262     	ldrb	w2, [x19, #0x280]
   11468: 35002fc2     	cbnz	w2, 0x11a60 <syna_tcm_v1_read_message+0x1094>
   1146c: 91094260     	add	x0, x19, #0x250
   11470: 94000000     	bl	0x11470 <syna_tcm_v1_read_message+0xaa4>
		0000000000011470:  R_AARCH64_CALL26	mutex_lock
   11474: 394a0268     	ldrb	w8, [x19, #0x280]
   11478: b9424a69     	ldr	w9, [x19, #0x248]
   1147c: aa1303e0     	mov	x0, x19
   11480: f941226a     	ldr	x10, [x19, #0x240]
   11484: b9420263     	ldr	w3, [x19, #0x200]
   11488: 11000508     	add	w8, w8, #0x1
   1148c: 51001122     	sub	w2, w9, #0x4
   11490: 91001141     	add	x1, x10, #0x4
   11494: 390a0268     	strb	w8, [x19, #0x280]
   11498: 97fffcf3     	bl	0x10864 <syna_tcm_v1_write_message+0x77c>
		0000000000011498:  R_AARCH64_CALL26	syna_tcm_v1_parse_idinfo
   1149c: 37f82ee0     	tbnz	w0, #0x1f, 0x11a78 <syna_tcm_v1_read_message+0x10ac>
   114a0: 394a0262     	ldrb	w2, [x19, #0x280]
   114a4: 7100045f     	cmp	w2, #0x1
   114a8: 54003421     	b.ne	0x11b2c <syna_tcm_v1_read_message+0x1160>
   114ac: 2a1f03e8     	mov	w8, wzr
   114b0: 91094260     	add	x0, x19, #0x250
   114b4: 390a0268     	strb	w8, [x19, #0x280]
   114b8: 94000000     	bl	0x114b8 <syna_tcm_v1_read_message+0xaec>
		00000000000114b8:  R_AARCH64_CALL26	mutex_unlock
   114bc: b941fa68     	ldr	w8, [x19, #0x1f8]
   114c0: 7100051f     	cmp	w8, #0x1
   114c4: 54000da1     	b.ne	0x11678 <syna_tcm_v1_read_message+0xcac>
   114c8: 3947f268     	ldrb	w8, [x19, #0x1fc]
   114cc: 7100791f     	cmp	w8, #0x1e
   114d0: 54000bac     	b.gt	0x11644 <syna_tcm_v1_read_message+0xc78>
   114d4: 7100111f     	cmp	w8, #0x4
   114d8: 54004920     	b.eq	0x11dfc <syna_tcm_v1_read_message+0x1430>
   114dc: 7100511f     	cmp	w8, #0x14
   114e0: 540048e0     	b.eq	0x11dfc <syna_tcm_v1_read_message+0x1430>
   114e4: 1400005c     	b	0x11654 <syna_tcm_v1_read_message+0xc88>
   114e8: b901567f     	str	wzr, [x19, #0x154]
   114ec: 3947fa62     	ldrb	w2, [x19, #0x1fe]
   114f0: 35004822     	cbnz	w2, 0x11df4 <syna_tcm_v1_read_message+0x1428>
   114f4: 14000248     	b	0x11e14 <syna_tcm_v1_read_message+0x1448>
   114f8: aa0803f6     	mov	x22, x8
   114fc: 2a1f03e1     	mov	w1, wzr
   11500: aa1603e2     	mov	x2, x22
   11504: 94000000     	bl	0x11504 <syna_tcm_v1_read_message+0xb38>
		0000000000011504:  R_AARCH64_CALL26	memset
   11508: 394a0262     	ldrb	w2, [x19, #0x280]
   1150c: b901567f     	str	wzr, [x19, #0x154]
   11510: 35002382     	cbnz	w2, 0x11980 <syna_tcm_v1_read_message+0xfb4>
   11514: 91094260     	add	x0, x19, #0x250
   11518: 94000000     	bl	0x11518 <syna_tcm_v1_read_message+0xb4c>
		0000000000011518:  R_AARCH64_CALL26	mutex_lock
   1151c: 394a0268     	ldrb	w8, [x19, #0x280]
   11520: f940a660     	ldr	x0, [x19, #0x148]
   11524: 11000508     	add	w8, w8, #0x1
   11528: 390a0268     	strb	w8, [x19, #0x280]
   1152c: b4002460     	cbz	x0, 0x119b8 <syna_tcm_v1_read_message+0xfec>
   11530: f9412268     	ldr	x8, [x19, #0x240]
   11534: 91001101     	add	x1, x8, #0x4
   11538: b4002401     	cbz	x1, 0x119b8 <syna_tcm_v1_read_message+0xfec>
   1153c: b9415263     	ldr	w3, [x19, #0x150]
   11540: b9420264     	ldr	w4, [x19, #0x200]
   11544: b9424a68     	ldr	w8, [x19, #0x248]
   11548: 6b03009f     	cmp	w4, w3
   1154c: 51001102     	sub	w2, w8, #0x4
   11550: 540022a8     	b.hi	0x119a4 <syna_tcm_v1_read_message+0xfd8>
   11554: 6b02009f     	cmp	w4, w2
   11558: 54002268     	b.hi	0x119a4 <syna_tcm_v1_read_message+0xfd8>
   1155c: aa0403e2     	mov	x2, x4
   11560: 94000000     	bl	0x11560 <syna_tcm_v1_read_message+0xb94>
		0000000000011560:  R_AARCH64_CALL26	memcpy
   11564: 394a0262     	ldrb	w2, [x19, #0x280]
   11568: b9420268     	ldr	w8, [x19, #0x200]
   1156c: 7100045f     	cmp	w2, #0x1
   11570: b9015668     	str	w8, [x19, #0x154]
   11574: 54002941     	b.ne	0x11a9c <syna_tcm_v1_read_message+0x10d0>
   11578: 2a1f03e8     	mov	w8, wzr
   1157c: 91094260     	add	x0, x19, #0x250
   11580: 390a0268     	strb	w8, [x19, #0x280]
   11584: 94000000     	bl	0x11584 <syna_tcm_v1_read_message+0xbb8>
		0000000000011584:  R_AARCH64_CALL26	mutex_unlock
   11588: 3947f268     	ldrb	w8, [x19, #0x1fc]
   1158c: 7100091f     	cmp	w8, #0x2
   11590: 540000e1     	b.ne	0x115ac <syna_tcm_v1_read_message+0xbe0>
   11594: f940a661     	ldr	x1, [x19, #0x148]
   11598: b9415262     	ldr	w2, [x19, #0x150]
   1159c: aa1303e0     	mov	x0, x19
   115a0: b9415663     	ldr	w3, [x19, #0x154]
   115a4: 97fffcb0     	bl	0x10864 <syna_tcm_v1_write_message+0x77c>
		00000000000115a4:  R_AARCH64_CALL26	syna_tcm_v1_parse_idinfo
   115a8: 37f83760     	tbnz	w0, #0x1f, 0x11c94 <syna_tcm_v1_read_message+0x12c8>
   115ac: 39462262     	ldrb	w2, [x19, #0x188]
   115b0: 7100045f     	cmp	w2, #0x1
   115b4: 54002901     	b.ne	0x11ad4 <syna_tcm_v1_read_message+0x1108>
   115b8: 2a1f03e8     	mov	w8, wzr
   115bc: 91056260     	add	x0, x19, #0x158
   115c0: 39062268     	strb	w8, [x19, #0x188]
   115c4: 94000000     	bl	0x115c4 <syna_tcm_v1_read_message+0xbf8>
		00000000000115c4:  R_AARCH64_CALL26	mutex_unlock
   115c8: 3947fa62     	ldrb	w2, [x19, #0x1fe]
   115cc: 35004142     	cbnz	w2, 0x11df4 <syna_tcm_v1_read_message+0x1428>
   115d0: 14000211     	b	0x11e14 <syna_tcm_v1_read_message+0x1448>
   115d4: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		00000000000115d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   115d8: 91000000     	add	x0, x0, #0x0
		00000000000115d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   115dc: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		00000000000115dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70c4
   115e0: 91000021     	add	x1, x1, #0x0
		00000000000115e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70c4
   115e4: 94000000     	bl	0x115e4 <syna_tcm_v1_read_message+0xc18>
		00000000000115e4:  R_AARCH64_CALL26	_printk
   115e8: 17fffecf     	b	0x11124 <syna_tcm_v1_read_message+0x758>
   115ec: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		00000000000115ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   115f0: 91000000     	add	x0, x0, #0x0
		00000000000115f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   115f4: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		00000000000115f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   115f8: 91000021     	add	x1, x1, #0x0
		00000000000115f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   115fc: 94000000     	bl	0x115fc <syna_tcm_v1_read_message+0xc30>
		00000000000115fc:  R_AARCH64_CALL26	_printk
   11600: 394a0268     	ldrb	w8, [x19, #0x280]
   11604: 51000508     	sub	w8, w8, #0x1
   11608: 17fffedd     	b	0x1117c <syna_tcm_v1_read_message+0x7b0>
   1160c: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		000000000001160c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   11610: 91000000     	add	x0, x0, #0x0
		0000000000011610:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   11614: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011614:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70c4
   11618: 91000021     	add	x1, x1, #0x0
		0000000000011618:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70c4
   1161c: 94000000     	bl	0x1161c <syna_tcm_v1_read_message+0xc50>
		000000000001161c:  R_AARCH64_CALL26	_printk
   11620: 17ffff03     	b	0x1122c <syna_tcm_v1_read_message+0x860>
   11624: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011624:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   11628: 91000000     	add	x0, x0, #0x0
		0000000000011628:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   1162c: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		000000000001162c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   11630: 91000021     	add	x1, x1, #0x0
		0000000000011630:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   11634: 94000000     	bl	0x11634 <syna_tcm_v1_read_message+0xc68>
		0000000000011634:  R_AARCH64_CALL26	_printk
   11638: 394a0268     	ldrb	w8, [x19, #0x280]
   1163c: 51000508     	sub	w8, w8, #0x1
   11640: 17ffff11     	b	0x11284 <syna_tcm_v1_read_message+0x8b8>
   11644: 71007d1f     	cmp	w8, #0x1f
   11648: 54003da0     	b.eq	0x11dfc <syna_tcm_v1_read_message+0x1430>
   1164c: 7100c51f     	cmp	w8, #0x31
   11650: 54003d60     	b.eq	0x11dfc <syna_tcm_v1_read_message+0x1430>
   11654: 3947c268     	ldrb	w8, [x19, #0x1f0]
   11658: 7100051f     	cmp	w8, #0x1
   1165c: 540045c1     	b.ne	0x11f14 <syna_tcm_v1_read_message+0x1548>
   11660: b901fa7f     	str	wzr, [x19, #0x1f8]
   11664: 91088260     	add	x0, x19, #0x220
   11668: 94000000     	bl	0x11668 <syna_tcm_v1_read_message+0xc9c>
		0000000000011668:  R_AARCH64_CALL26	completion_done
   1166c: 37000060     	tbnz	w0, #0x0, 0x11678 <syna_tcm_v1_read_message+0xcac>
   11670: 91088260     	add	x0, x19, #0x220
   11674: 94000000     	bl	0x11674 <syna_tcm_v1_read_message+0xca8>
		0000000000011674:  R_AARCH64_CALL26	complete
   11678: 8b365268     	add	x8, x19, w22, uxtw #4
   1167c: f941f109     	ldr	x9, [x8, #0x3e0]
   11680: b4003ca9     	cbz	x9, 0x11e14 <syna_tcm_v1_read_message+0x1448>
   11684: 39450262     	ldrb	w2, [x19, #0x140]
   11688: 910f6114     	add	x20, x8, #0x3d8
   1168c: 35002182     	cbnz	w2, 0x11abc <syna_tcm_v1_read_message+0x10f0>
   11690: 91044260     	add	x0, x19, #0x110
   11694: 94000000     	bl	0x11694 <syna_tcm_v1_read_message+0xcc8>
		0000000000011694:  R_AARCH64_CALL26	mutex_lock
   11698: 39450268     	ldrb	w8, [x19, #0x140]
   1169c: a9402683     	ldp	x3, x9, [x20]
   116a0: b9410e62     	ldr	w2, [x19, #0x10c]
   116a4: 2a1603e0     	mov	w0, w22
   116a8: f9408261     	ldr	x1, [x19, #0x100]
   116ac: 11000508     	add	w8, w8, #0x1
   116b0: 39050268     	strb	w8, [x19, #0x140]
   116b4: b85fc130     	ldur	w16, [x9, #-0x4]
   116b8: 72988151     	movk	w17, #0xc40a
   116bc: 72b3f271     	movk	w17, #0x9f93, lsl #16
   116c0: 6b11021f     	cmp	w16, w17
   116c4: 54000040     	b.eq	0x116cc <syna_tcm_v1_read_message+0xd00>
   116c8: d4304520     	brk	#0x8229
   116cc: d63f0120     	blr	x9
   116d0: 14000155     	b	0x11c24 <syna_tcm_v1_read_message+0x1258>
   116d4: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		00000000000116d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   116d8: 91000000     	add	x0, x0, #0x0
		00000000000116d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   116dc: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		00000000000116dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   116e0: 91000021     	add	x1, x1, #0x0
		00000000000116e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   116e4: 94000000     	bl	0x116e4 <syna_tcm_v1_read_message+0xd18>
		00000000000116e4:  R_AARCH64_CALL26	_printk
   116e8: 94000000     	bl	0x116e8 <syna_tcm_v1_read_message+0xd1c>
		00000000000116e8:  R_AARCH64_CALL26	syna_request_managed_device
   116ec: b5ffa080     	cbnz	x0, 0x10afc <syna_tcm_v1_read_message+0x130>
   116f0: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		00000000000116f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   116f4: 91000000     	add	x0, x0, #0x0
		00000000000116f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   116f8: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		00000000000116f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bfa
   116fc: 91000021     	add	x1, x1, #0x0
		00000000000116fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bfa
   11700: 94000000     	bl	0x11700 <syna_tcm_v1_read_message+0xd34>
		0000000000011700:  R_AARCH64_CALL26	_printk
   11704: f85f83a8     	ldur	x8, [x29, #-0x8]
   11708: f900011f     	str	xzr, [x8]
   1170c: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		000000000001170c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d74
   11710: 91000000     	add	x0, x0, #0x0
		0000000000011710:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d74
   11714: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011714:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x77fc
   11718: 91000021     	add	x1, x1, #0x0
		0000000000011718:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x77fc
   1171c: 2a1603e2     	mov	w2, w22
   11720: 94000000     	bl	0x11720 <syna_tcm_v1_read_message+0xd54>
		0000000000011720:  R_AARCH64_CALL26	_printk
   11724: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011724:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e98
   11728: 91000000     	add	x0, x0, #0x0
		0000000000011728:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e98
   1172c: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		000000000001172c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbed0
   11730: 91000021     	add	x1, x1, #0x0
		0000000000011730:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbed0
   11734: f901267f     	str	xzr, [x19, #0x248]
   11738: 94000000     	bl	0x11738 <syna_tcm_v1_read_message+0xd6c>
		0000000000011738:  R_AARCH64_CALL26	_printk
   1173c: 394a0262     	ldrb	w2, [x19, #0x280]
   11740: 7100045f     	cmp	w2, #0x1
   11744: 540014a1     	b.ne	0x119d8 <syna_tcm_v1_read_message+0x100c>
   11748: 2a1f03e8     	mov	w8, wzr
   1174c: 91094260     	add	x0, x19, #0x250
   11750: 390a0268     	strb	w8, [x19, #0x280]
   11754: 94000000     	bl	0x11754 <syna_tcm_v1_read_message+0xd88>
		0000000000011754:  R_AARCH64_CALL26	mutex_unlock
   11758: 52801fe8     	mov	w8, #0xff               // =255
   1175c: b902027f     	str	wzr, [x19, #0x200]
   11760: 12801e57     	mov	w23, #-0xf3             // =-243
   11764: 3907f668     	strb	w8, [x19, #0x1fd]
   11768: 140001bb     	b	0x11e54 <syna_tcm_v1_read_message+0x1488>
   1176c: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		000000000001176c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   11770: 91000000     	add	x0, x0, #0x0
		0000000000011770:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   11774: 14000003     	b	0x11780 <syna_tcm_v1_read_message+0xdb4>
   11778: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011778:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70d6
   1177c: 91000000     	add	x0, x0, #0x0
		000000000001177c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70d6
   11780: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011780:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bfa
   11784: 91000021     	add	x1, x1, #0x0
		0000000000011784:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bfa
   11788: 94000000     	bl	0x11788 <syna_tcm_v1_read_message+0xdbc>
		0000000000011788:  R_AARCH64_CALL26	_printk
   1178c: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		000000000001178c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d70
   11790: 91000000     	add	x0, x0, #0x0
		0000000000011790:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d70
   11794: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011794:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x66ee
   11798: 91000021     	add	x1, x1, #0x0
		0000000000011798:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x66ee
   1179c: 14000064     	b	0x1192c <syna_tcm_v1_read_message+0xf60>
   117a0: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		00000000000117a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   117a4: 91000000     	add	x0, x0, #0x0
		00000000000117a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   117a8: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		00000000000117a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70c4
   117ac: 91000021     	add	x1, x1, #0x0
		00000000000117ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70c4
   117b0: 94000000     	bl	0x117b0 <syna_tcm_v1_read_message+0xde4>
		00000000000117b0:  R_AARCH64_CALL26	_printk
   117b4: 17fffe7c     	b	0x111a4 <syna_tcm_v1_read_message+0x7d8>
   117b8: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		00000000000117b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   117bc: 91000000     	add	x0, x0, #0x0
		00000000000117bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   117c0: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		00000000000117c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70c4
   117c4: 91000021     	add	x1, x1, #0x0
		00000000000117c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70c4
   117c8: 94000000     	bl	0x117c8 <syna_tcm_v1_read_message+0xdfc>
		00000000000117c8:  R_AARCH64_CALL26	_printk
   117cc: 17fffeb8     	b	0x112ac <syna_tcm_v1_read_message+0x8e0>
   117d0: 12801e17     	mov	w23, #-0xf1             // =-241
   117d4: 14000160     	b	0x11d54 <syna_tcm_v1_read_message+0x1388>
   117d8: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		00000000000117d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   117dc: 91000000     	add	x0, x0, #0x0
		00000000000117dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   117e0: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		00000000000117e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70c4
   117e4: 91000021     	add	x1, x1, #0x0
		00000000000117e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70c4
   117e8: 94000000     	bl	0x117e8 <syna_tcm_v1_read_message+0xe1c>
		00000000000117e8:  R_AARCH64_CALL26	_printk
   117ec: 17fffef8     	b	0x113cc <syna_tcm_v1_read_message+0xa00>
   117f0: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		00000000000117f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   117f4: 91000000     	add	x0, x0, #0x0
		00000000000117f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   117f8: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		00000000000117f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70c4
   117fc: 91000021     	add	x1, x1, #0x0
		00000000000117fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70c4
   11800: 94000000     	bl	0x11800 <syna_tcm_v1_read_message+0xe34>
		0000000000011800:  R_AARCH64_CALL26	_printk
   11804: 17fffd2f     	b	0x10cc0 <syna_tcm_v1_read_message+0x2f4>
   11808: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011808:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8406
   1180c: 91000000     	add	x0, x0, #0x0
		000000000001180c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8406
   11810: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011810:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a80
   11814: 91000021     	add	x1, x1, #0x0
		0000000000011814:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a80
   11818: 94000000     	bl	0x11818 <syna_tcm_v1_read_message+0xe4c>
		0000000000011818:  R_AARCH64_CALL26	_printk
   1181c: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		000000000001181c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1476
   11820: 91000000     	add	x0, x0, #0x0
		0000000000011820:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1476
   11824: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011824:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x85ce
   11828: 91000021     	add	x1, x1, #0x0
		0000000000011828:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x85ce
   1182c: 94000000     	bl	0x1182c <syna_tcm_v1_read_message+0xe60>
		000000000001182c:  R_AARCH64_CALL26	_printk
   11830: 394a0262     	ldrb	w2, [x19, #0x280]
   11834: 7100045f     	cmp	w2, #0x1
   11838: 540035e1     	b.ne	0x11ef4 <syna_tcm_v1_read_message+0x1528>
   1183c: 2a1f03e8     	mov	w8, wzr
   11840: 91094260     	add	x0, x19, #0x250
   11844: 390a0268     	strb	w8, [x19, #0x280]
   11848: 94000000     	bl	0x11848 <syna_tcm_v1_read_message+0xe7c>
		0000000000011848:  R_AARCH64_CALL26	mutex_unlock
   1184c: 140000f6     	b	0x11c24 <syna_tcm_v1_read_message+0x1258>
   11850: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011850:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   11854: 91000000     	add	x0, x0, #0x0
		0000000000011854:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   11858: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011858:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   1185c: 91000021     	add	x1, x1, #0x0
		000000000001185c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   11860: 94000000     	bl	0x11860 <syna_tcm_v1_read_message+0xe94>
		0000000000011860:  R_AARCH64_CALL26	_printk
   11864: 394a0268     	ldrb	w8, [x19, #0x280]
   11868: 51000508     	sub	w8, w8, #0x1
   1186c: 17fffef2     	b	0x11434 <syna_tcm_v1_read_message+0xa68>
   11870: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011870:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   11874: 91000000     	add	x0, x0, #0x0
		0000000000011874:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   11878: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011878:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   1187c: 91000021     	add	x1, x1, #0x0
		000000000001187c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   11880: 94000000     	bl	0x11880 <syna_tcm_v1_read_message+0xeb4>
		0000000000011880:  R_AARCH64_CALL26	_printk
   11884: 39450268     	ldrb	w8, [x19, #0x140]
   11888: 51000508     	sub	w8, w8, #0x1
   1188c: 17fffef1     	b	0x11450 <syna_tcm_v1_read_message+0xa84>
   11890: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011890:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   11894: 91000000     	add	x0, x0, #0x0
		0000000000011894:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   11898: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011898:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70c4
   1189c: 91000021     	add	x1, x1, #0x0
		000000000001189c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70c4
   118a0: 94000000     	bl	0x118a0 <syna_tcm_v1_read_message+0xed4>
		00000000000118a0:  R_AARCH64_CALL26	_printk
   118a4: 17fffd79     	b	0x10e88 <syna_tcm_v1_read_message+0x4bc>
   118a8: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		00000000000118a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   118ac: 91000000     	add	x0, x0, #0x0
		00000000000118ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   118b0: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		00000000000118b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   118b4: 91000021     	add	x1, x1, #0x0
		00000000000118b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   118b8: 94000000     	bl	0x118b8 <syna_tcm_v1_read_message+0xeec>
		00000000000118b8:  R_AARCH64_CALL26	_printk
   118bc: 394c4268     	ldrb	w8, [x19, #0x310]
   118c0: 51000508     	sub	w8, w8, #0x1
   118c4: 17fffe0a     	b	0x110ec <syna_tcm_v1_read_message+0x720>
   118c8: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		00000000000118c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   118cc: 91000000     	add	x0, x0, #0x0
		00000000000118cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   118d0: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		00000000000118d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   118d4: 91000021     	add	x1, x1, #0x0
		00000000000118d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   118d8: 94000000     	bl	0x118d8 <syna_tcm_v1_read_message+0xf0c>
		00000000000118d8:  R_AARCH64_CALL26	_printk
   118dc: 394a0268     	ldrb	w8, [x19, #0x280]
   118e0: 51000508     	sub	w8, w8, #0x1
   118e4: 17fffe09     	b	0x11108 <syna_tcm_v1_read_message+0x73c>
   118e8: aa1703f6     	mov	x22, x23
   118ec: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		00000000000118ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4df2
   118f0: 91000021     	add	x1, x1, #0x0
		00000000000118f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4df2
   118f4: aa1603e0     	mov	x0, x22
   118f8: 94000000     	bl	0x118f8 <syna_tcm_v1_read_message+0xf2c>
		00000000000118f8:  R_AARCH64_CALL26	_printk
   118fc: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		00000000000118fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b6
   11900: 91000000     	add	x0, x0, #0x0
		0000000000011900:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b6
   11904: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011904:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x66ee
   11908: 91000021     	add	x1, x1, #0x0
		0000000000011908:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x66ee
   1190c: 2a1403e2     	mov	w2, w20
   11910: 94000000     	bl	0x11910 <syna_tcm_v1_read_message+0xf44>
		0000000000011910:  R_AARCH64_CALL26	_printk
   11914: 94000000     	bl	0x11914 <syna_tcm_v1_read_message+0xf48>
		0000000000011914:  R_AARCH64_CALL26	syna_request_managed_device
   11918: b5ff9940     	cbnz	x0, 0x10c40 <syna_tcm_v1_read_message+0x274>
   1191c: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		000000000001191c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   11920: 91000000     	add	x0, x0, #0x0
		0000000000011920:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   11924: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011924:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   11928: 91000021     	add	x1, x1, #0x0
		0000000000011928:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   1192c: 94000000     	bl	0x1192c <syna_tcm_v1_read_message+0xf60>
		000000000001192c:  R_AARCH64_CALL26	_printk
   11930: 12801e37     	mov	w23, #-0xf2             // =-242
   11934: 14000148     	b	0x11e54 <syna_tcm_v1_read_message+0x1488>
   11938: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011938:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   1193c: 91000000     	add	x0, x0, #0x0
		000000000001193c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   11940: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011940:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   11944: 91000021     	add	x1, x1, #0x0
		0000000000011944:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   11948: 12001d02     	and	w2, w8, #0xff
   1194c: 94000000     	bl	0x1194c <syna_tcm_v1_read_message+0xf80>
		000000000001194c:  R_AARCH64_CALL26	_printk
   11950: 394a0268     	ldrb	w8, [x19, #0x280]
   11954: 51000508     	sub	w8, w8, #0x1
   11958: 17fffe2a     	b	0x11200 <syna_tcm_v1_read_message+0x834>
   1195c: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		000000000001195c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   11960: 91000000     	add	x0, x0, #0x0
		0000000000011960:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   11964: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011964:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70c4
   11968: 91000021     	add	x1, x1, #0x0
		0000000000011968:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70c4
   1196c: 94000000     	bl	0x1196c <syna_tcm_v1_read_message+0xfa0>
		000000000001196c:  R_AARCH64_CALL26	_printk
   11970: 17fffe72     	b	0x11338 <syna_tcm_v1_read_message+0x96c>
   11974: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011974:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70d6
   11978: 91000000     	add	x0, x0, #0x0
		0000000000011978:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70d6
   1197c: 1400009a     	b	0x11be4 <syna_tcm_v1_read_message+0x1218>
   11980: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011980:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   11984: 91000000     	add	x0, x0, #0x0
		0000000000011984:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   11988: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011988:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70c4
   1198c: 91000021     	add	x1, x1, #0x0
		000000000001198c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70c4
   11990: 94000000     	bl	0x11990 <syna_tcm_v1_read_message+0xfc4>
		0000000000011990:  R_AARCH64_CALL26	_printk
   11994: 17fffee0     	b	0x11514 <syna_tcm_v1_read_message+0xb48>
   11998: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011998:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   1199c: 91000000     	add	x0, x0, #0x0
		000000000001199c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   119a0: 14000018     	b	0x11a00 <syna_tcm_v1_read_message+0x1034>
   119a4: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		00000000000119a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8406
   119a8: 91000000     	add	x0, x0, #0x0
		00000000000119a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8406
   119ac: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		00000000000119ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a80
   119b0: 91000021     	add	x1, x1, #0x0
		00000000000119b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a80
   119b4: 94000000     	bl	0x119b4 <syna_tcm_v1_read_message+0xfe8>
		00000000000119b4:  R_AARCH64_CALL26	_printk
   119b8: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		00000000000119b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9ca2
   119bc: 91000000     	add	x0, x0, #0x0
		00000000000119bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9ca2
   119c0: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		00000000000119c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc648
   119c4: 91000021     	add	x1, x1, #0x0
		00000000000119c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc648
   119c8: 94000000     	bl	0x119c8 <syna_tcm_v1_read_message+0xffc>
		00000000000119c8:  R_AARCH64_CALL26	_printk
   119cc: f85f83a0     	ldur	x0, [x29, #-0x8]
   119d0: 97fff981     	bl	0xffd4 <syna_tcm_v1_detect+0x3c4>
		00000000000119d0:  R_AARCH64_CALL26	syna_tcm_buf_unlock
   119d4: 14000104     	b	0x11de4 <syna_tcm_v1_read_message+0x1418>
   119d8: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		00000000000119d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   119dc: 91000000     	add	x0, x0, #0x0
		00000000000119dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   119e0: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		00000000000119e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   119e4: 91000021     	add	x1, x1, #0x0
		00000000000119e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   119e8: 94000000     	bl	0x119e8 <syna_tcm_v1_read_message+0x101c>
		00000000000119e8:  R_AARCH64_CALL26	_printk
   119ec: 394a0268     	ldrb	w8, [x19, #0x280]
   119f0: 51000508     	sub	w8, w8, #0x1
   119f4: 17ffff56     	b	0x1174c <syna_tcm_v1_read_message+0xd80>
   119f8: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		00000000000119f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70d6
   119fc: 91000000     	add	x0, x0, #0x0
		00000000000119fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70d6
   11a00: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011a00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bfa
   11a04: 91000021     	add	x1, x1, #0x0
		0000000000011a04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bfa
   11a08: 94000000     	bl	0x11a08 <syna_tcm_v1_read_message+0x103c>
		0000000000011a08:  R_AARCH64_CALL26	_printk
   11a0c: f85f83a8     	ldur	x8, [x29, #-0x8]
   11a10: f900011f     	str	xzr, [x8]
   11a14: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011a14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d74
   11a18: 91000000     	add	x0, x0, #0x0
		0000000000011a18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d74
   11a1c: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011a1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x48c4
   11a20: 91000021     	add	x1, x1, #0x0
		0000000000011a20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x48c4
   11a24: 2a1603e2     	mov	w2, w22
   11a28: 94000000     	bl	0x11a28 <syna_tcm_v1_read_message+0x105c>
		0000000000011a28:  R_AARCH64_CALL26	_printk
   11a2c: 94000000     	bl	0x11a2c <syna_tcm_v1_read_message+0x1060>
		0000000000011a2c:  R_AARCH64_CALL26	syna_request_managed_device
   11a30: b5000100     	cbnz	x0, 0x11a50 <syna_tcm_v1_read_message+0x1084>
   11a34: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011a34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   11a38: 91000000     	add	x0, x0, #0x0
		0000000000011a38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   11a3c: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011a3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   11a40: 91000021     	add	x1, x1, #0x0
		0000000000011a40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   11a44: 94000000     	bl	0x11a44 <syna_tcm_v1_read_message+0x1078>
		0000000000011a44:  R_AARCH64_CALL26	_printk
   11a48: f9400bf8     	ldr	x24, [sp, #0x10]
   11a4c: 140000b8     	b	0x11d2c <syna_tcm_v1_read_message+0x1360>
   11a50: f9400bf8     	ldr	x24, [sp, #0x10]
   11a54: b40016d7     	cbz	x23, 0x11d2c <syna_tcm_v1_read_message+0x1360>
   11a58: aa1703e1     	mov	x1, x23
   11a5c: 140000b3     	b	0x11d28 <syna_tcm_v1_read_message+0x135c>
   11a60: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011a60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   11a64: 91000000     	add	x0, x0, #0x0
		0000000000011a64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   11a68: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011a68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70c4
   11a6c: 91000021     	add	x1, x1, #0x0
		0000000000011a6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70c4
   11a70: 94000000     	bl	0x11a70 <syna_tcm_v1_read_message+0x10a4>
		0000000000011a70:  R_AARCH64_CALL26	_printk
   11a74: 17fffe7e     	b	0x1146c <syna_tcm_v1_read_message+0xaa0>
   11a78: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011a78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8e8a
   11a7c: 91000000     	add	x0, x0, #0x0
		0000000000011a7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8e8a
   11a80: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011a80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x85ce
   11a84: 91000021     	add	x1, x1, #0x0
		0000000000011a84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x85ce
   11a88: 94000000     	bl	0x11a88 <syna_tcm_v1_read_message+0x10bc>
		0000000000011a88:  R_AARCH64_CALL26	_printk
   11a8c: f85f83a0     	ldur	x0, [x29, #-0x8]
   11a90: 97fff951     	bl	0xffd4 <syna_tcm_v1_detect+0x3c4>
		0000000000011a90:  R_AARCH64_CALL26	syna_tcm_buf_unlock
   11a94: b5001c39     	cbnz	x25, 0x11e18 <syna_tcm_v1_read_message+0x144c>
   11a98: 140000e2     	b	0x11e20 <syna_tcm_v1_read_message+0x1454>
   11a9c: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011a9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   11aa0: 91000000     	add	x0, x0, #0x0
		0000000000011aa0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   11aa4: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011aa4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   11aa8: 91000021     	add	x1, x1, #0x0
		0000000000011aa8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   11aac: 94000000     	bl	0x11aac <syna_tcm_v1_read_message+0x10e0>
		0000000000011aac:  R_AARCH64_CALL26	_printk
   11ab0: 394a0268     	ldrb	w8, [x19, #0x280]
   11ab4: 51000508     	sub	w8, w8, #0x1
   11ab8: 17fffeb1     	b	0x1157c <syna_tcm_v1_read_message+0xbb0>
   11abc: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011abc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   11ac0: 91000000     	add	x0, x0, #0x0
		0000000000011ac0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   11ac4: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011ac4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70c4
   11ac8: 91000021     	add	x1, x1, #0x0
		0000000000011ac8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70c4
   11acc: 94000000     	bl	0x11acc <syna_tcm_v1_read_message+0x1100>
		0000000000011acc:  R_AARCH64_CALL26	_printk
   11ad0: 17fffef0     	b	0x11690 <syna_tcm_v1_read_message+0xcc4>
   11ad4: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011ad4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   11ad8: 91000000     	add	x0, x0, #0x0
		0000000000011ad8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   11adc: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011adc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   11ae0: 91000021     	add	x1, x1, #0x0
		0000000000011ae0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   11ae4: 94000000     	bl	0x11ae4 <syna_tcm_v1_read_message+0x1118>
		0000000000011ae4:  R_AARCH64_CALL26	_printk
   11ae8: 39462268     	ldrb	w8, [x19, #0x188]
   11aec: 51000508     	sub	w8, w8, #0x1
   11af0: 17fffeb3     	b	0x115bc <syna_tcm_v1_read_message+0xbf0>
   11af4: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011af4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8406
   11af8: 91000000     	add	x0, x0, #0x0
		0000000000011af8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8406
   11afc: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011afc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a80
   11b00: 91000021     	add	x1, x1, #0x0
		0000000000011b00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a80
   11b04: 2a1803e4     	mov	w4, w24
   11b08: 94000000     	bl	0x11b08 <syna_tcm_v1_read_message+0x113c>
		0000000000011b08:  R_AARCH64_CALL26	_printk
   11b0c: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011b0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb232
   11b10: 91000000     	add	x0, x0, #0x0
		0000000000011b10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb232
   11b14: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011b14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2318
   11b18: 91000021     	add	x1, x1, #0x0
		0000000000011b18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2318
   11b1c: 94000000     	bl	0x11b1c <syna_tcm_v1_read_message+0x1150>
		0000000000011b1c:  R_AARCH64_CALL26	_printk
   11b20: 128002b7     	mov	w23, #-0x16             // =-22
   11b24: 52800034     	mov	w20, #0x1               // =1
   11b28: 17fffd6b     	b	0x110d4 <syna_tcm_v1_read_message+0x708>
   11b2c: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011b2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   11b30: 91000000     	add	x0, x0, #0x0
		0000000000011b30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   11b34: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011b34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   11b38: 91000021     	add	x1, x1, #0x0
		0000000000011b38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   11b3c: 94000000     	bl	0x11b3c <syna_tcm_v1_read_message+0x1170>
		0000000000011b3c:  R_AARCH64_CALL26	_printk
   11b40: 394a0268     	ldrb	w8, [x19, #0x280]
   11b44: 51000508     	sub	w8, w8, #0x1
   11b48: 17fffe5a     	b	0x114b0 <syna_tcm_v1_read_message+0xae4>
   11b4c: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011b4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e6
   11b50: 91000000     	add	x0, x0, #0x0
		0000000000011b50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e6
   11b54: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011b54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x48c4
   11b58: 91000021     	add	x1, x1, #0x0
		0000000000011b58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x48c4
   11b5c: 94000000     	bl	0x11b5c <syna_tcm_v1_read_message+0x1190>
		0000000000011b5c:  R_AARCH64_CALL26	_printk
   11b60: 94000000     	bl	0x11b60 <syna_tcm_v1_read_message+0x1194>
		0000000000011b60:  R_AARCH64_CALL26	syna_request_managed_device
   11b64: f9400bf8     	ldr	x24, [sp, #0x10]
   11b68: b50000c0     	cbnz	x0, 0x11b80 <syna_tcm_v1_read_message+0x11b4>
   11b6c: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011b6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   11b70: 91000000     	add	x0, x0, #0x0
		0000000000011b70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   11b74: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011b74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   11b78: 91000021     	add	x1, x1, #0x0
		0000000000011b78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   11b7c: 94000000     	bl	0x11b7c <syna_tcm_v1_read_message+0x11b0>
		0000000000011b7c:  R_AARCH64_CALL26	_printk
   11b80: f85f83a8     	ldur	x8, [x29, #-0x8]
   11b84: f9400114     	ldr	x20, [x8]
   11b88: 94000000     	bl	0x11b88 <syna_tcm_v1_read_message+0x11bc>
		0000000000011b88:  R_AARCH64_CALL26	syna_request_managed_device
   11b8c: b5000ca0     	cbnz	x0, 0x11d20 <syna_tcm_v1_read_message+0x1354>
   11b90: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011b90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   11b94: 91000000     	add	x0, x0, #0x0
		0000000000011b94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   11b98: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011b98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   11b9c: 91000021     	add	x1, x1, #0x0
		0000000000011b9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   11ba0: 94000000     	bl	0x11ba0 <syna_tcm_v1_read_message+0x11d4>
		0000000000011ba0:  R_AARCH64_CALL26	_printk
   11ba4: 14000062     	b	0x11d2c <syna_tcm_v1_read_message+0x1360>
   11ba8: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011ba8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   11bac: 91000000     	add	x0, x0, #0x0
		0000000000011bac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   11bb0: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011bb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   11bb4: 91000021     	add	x1, x1, #0x0
		0000000000011bb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   11bb8: 94000000     	bl	0x11bb8 <syna_tcm_v1_read_message+0x11ec>
		0000000000011bb8:  R_AARCH64_CALL26	_printk
   11bbc: 17fffc5f     	b	0x10d38 <syna_tcm_v1_read_message+0x36c>
   11bc0: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011bc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   11bc4: 91000000     	add	x0, x0, #0x0
		0000000000011bc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   11bc8: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011bc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   11bcc: 91000021     	add	x1, x1, #0x0
		0000000000011bcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   11bd0: 94000000     	bl	0x11bd0 <syna_tcm_v1_read_message+0x1204>
		0000000000011bd0:  R_AARCH64_CALL26	_printk
   11bd4: 94000000     	bl	0x11bd4 <syna_tcm_v1_read_message+0x1208>
		0000000000011bd4:  R_AARCH64_CALL26	syna_request_managed_device
   11bd8: b5ffb8e0     	cbnz	x0, 0x112f4 <syna_tcm_v1_read_message+0x928>
   11bdc: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011bdc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   11be0: 91000000     	add	x0, x0, #0x0
		0000000000011be0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   11be4: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011be4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bfa
   11be8: 91000021     	add	x1, x1, #0x0
		0000000000011be8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bfa
   11bec: 94000000     	bl	0x11bec <syna_tcm_v1_read_message+0x1220>
		0000000000011bec:  R_AARCH64_CALL26	_printk
   11bf0: f900827f     	str	xzr, [x19, #0x100]
   11bf4: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011bf4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d74
   11bf8: 91000000     	add	x0, x0, #0x0
		0000000000011bf8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d74
   11bfc: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011bfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x77fc
   11c00: 91000021     	add	x1, x1, #0x0
		0000000000011c00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x77fc
   11c04: 2a1703e2     	mov	w2, w23
   11c08: 94000000     	bl	0x11c08 <syna_tcm_v1_read_message+0x123c>
		0000000000011c08:  R_AARCH64_CALL26	_printk
   11c0c: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011c0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x670a
   11c10: 91000000     	add	x0, x0, #0x0
		0000000000011c10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x670a
   11c14: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011c14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x85ce
   11c18: 91000021     	add	x1, x1, #0x0
		0000000000011c18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x85ce
   11c1c: f900867f     	str	xzr, [x19, #0x108]
   11c20: 94000000     	bl	0x11c20 <syna_tcm_v1_read_message+0x1254>
		0000000000011c20:  R_AARCH64_CALL26	_printk
   11c24: 39450262     	ldrb	w2, [x19, #0x140]
   11c28: 7100045f     	cmp	w2, #0x1
   11c2c: 540000e1     	b.ne	0x11c48 <syna_tcm_v1_read_message+0x127c>
   11c30: 2a1f03e8     	mov	w8, wzr
   11c34: 91044260     	add	x0, x19, #0x110
   11c38: 39050268     	strb	w8, [x19, #0x140]
   11c3c: 94000000     	bl	0x11c3c <syna_tcm_v1_read_message+0x1270>
		0000000000011c3c:  R_AARCH64_CALL26	mutex_unlock
   11c40: b5000ed9     	cbnz	x25, 0x11e18 <syna_tcm_v1_read_message+0x144c>
   11c44: 14000077     	b	0x11e20 <syna_tcm_v1_read_message+0x1454>
   11c48: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011c48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   11c4c: 91000000     	add	x0, x0, #0x0
		0000000000011c4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   11c50: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011c50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   11c54: 91000021     	add	x1, x1, #0x0
		0000000000011c54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   11c58: 94000000     	bl	0x11c58 <syna_tcm_v1_read_message+0x128c>
		0000000000011c58:  R_AARCH64_CALL26	_printk
   11c5c: 39450268     	ldrb	w8, [x19, #0x140]
   11c60: 51000508     	sub	w8, w8, #0x1
   11c64: 17fffff4     	b	0x11c34 <syna_tcm_v1_read_message+0x1268>
   11c68: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011c68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   11c6c: 91000000     	add	x0, x0, #0x0
		0000000000011c6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   11c70: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011c70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   11c74: 91000021     	add	x1, x1, #0x0
		0000000000011c74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   11c78: 94000000     	bl	0x11c78 <syna_tcm_v1_read_message+0x12ac>
		0000000000011c78:  R_AARCH64_CALL26	_printk
   11c7c: 394a0268     	ldrb	w8, [x19, #0x280]
   11c80: 51000508     	sub	w8, w8, #0x1
   11c84: 17fffc65     	b	0x10e18 <syna_tcm_v1_read_message+0x44c>
   11c88: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011c88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70d6
   11c8c: 91000000     	add	x0, x0, #0x0
		0000000000011c8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70d6
   11c90: 14000045     	b	0x11da4 <syna_tcm_v1_read_message+0x13d8>
   11c94: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011c94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x674a
   11c98: 91000000     	add	x0, x0, #0x0
		0000000000011c98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x674a
   11c9c: 1400004f     	b	0x11dd8 <syna_tcm_v1_read_message+0x140c>
   11ca0: b85f43a4     	ldur	w4, [x29, #-0xc]
   11ca4: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011ca4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4266
   11ca8: 91000000     	add	x0, x0, #0x0
		0000000000011ca8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4266
   11cac: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011cac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2318
   11cb0: 91000021     	add	x1, x1, #0x0
		0000000000011cb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2318
   11cb4: 2a1c03e2     	mov	w2, w28
   11cb8: 2a1903e3     	mov	w3, w25
   11cbc: 94000000     	bl	0x11cbc <syna_tcm_v1_read_message+0x12f0>
		0000000000011cbc:  R_AARCH64_CALL26	_printk
   11cc0: 12801e37     	mov	w23, #-0xf2             // =-242
   11cc4: 52800034     	mov	w20, #0x1               // =1
   11cc8: 17fffd03     	b	0x110d4 <syna_tcm_v1_read_message+0x708>
   11ccc: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011ccc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70d6
   11cd0: 91000000     	add	x0, x0, #0x0
		0000000000011cd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70d6
   11cd4: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011cd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bfa
   11cd8: 91000021     	add	x1, x1, #0x0
		0000000000011cd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bfa
   11cdc: 94000000     	bl	0x11cdc <syna_tcm_v1_read_message+0x1310>
		0000000000011cdc:  R_AARCH64_CALL26	_printk
   11ce0: f9016a7f     	str	xzr, [x19, #0x2d0]
   11ce4: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011ce4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d74
   11ce8: 91000000     	add	x0, x0, #0x0
		0000000000011ce8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d74
   11cec: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011cec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x77fc
   11cf0: 91000021     	add	x1, x1, #0x0
		0000000000011cf0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x77fc
   11cf4: 2a1603e2     	mov	w2, w22
   11cf8: 94000000     	bl	0x11cf8 <syna_tcm_v1_read_message+0x132c>
		0000000000011cf8:  R_AARCH64_CALL26	_printk
   11cfc: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011cfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc60a
   11d00: 91000000     	add	x0, x0, #0x0
		0000000000011d00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc60a
   11d04: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011d04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2318
   11d08: 91000021     	add	x1, x1, #0x0
		0000000000011d08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2318
   11d0c: f9016e7f     	str	xzr, [x19, #0x2d8]
   11d10: 94000000     	bl	0x11d10 <syna_tcm_v1_read_message+0x1344>
		0000000000011d10:  R_AARCH64_CALL26	_printk
   11d14: 12801e57     	mov	w23, #-0xf3             // =-243
   11d18: 52800034     	mov	w20, #0x1               // =1
   11d1c: 17fffcee     	b	0x110d4 <syna_tcm_v1_read_message+0x708>
   11d20: b4000074     	cbz	x20, 0x11d2c <syna_tcm_v1_read_message+0x1360>
   11d24: aa1403e1     	mov	x1, x20
   11d28: 94000000     	bl	0x11d28 <syna_tcm_v1_read_message+0x135c>
		0000000000011d28:  R_AARCH64_CALL26	devm_kfree
   11d2c: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011d2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9c66
   11d30: 91000000     	add	x0, x0, #0x0
		0000000000011d30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9c66
   11d34: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011d34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2318
   11d38: 91000021     	add	x1, x1, #0x0
		0000000000011d38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2318
   11d3c: b90002bf     	str	wzr, [x21]
   11d40: 94000000     	bl	0x11d40 <syna_tcm_v1_read_message+0x1374>
		0000000000011d40:  R_AARCH64_CALL26	_printk
   11d44: f85f83a0     	ldur	x0, [x29, #-0x8]
   11d48: 97fff8a3     	bl	0xffd4 <syna_tcm_v1_detect+0x3c4>
		0000000000011d48:  R_AARCH64_CALL26	syna_tcm_buf_unlock
   11d4c: b9401bed     	ldr	w13, [sp, #0x18]
   11d50: 12801e57     	mov	w23, #-0xf3             // =-243
   11d54: 39400303     	ldrb	w3, [x24]
   11d58: 39400704     	ldrb	w4, [x24, #0x1]
   11d5c: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011d5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9c1a
   11d60: 91000000     	add	x0, x0, #0x0
		0000000000011d60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9c1a
   11d64: 39400b05     	ldrb	w5, [x24, #0x2]
   11d68: 39400f06     	ldrb	w6, [x24, #0x3]
   11d6c: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011d6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbed0
   11d70: 91000021     	add	x1, x1, #0x0
		0000000000011d70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbed0
   11d74: 2a0d03e2     	mov	w2, w13
   11d78: 94000000     	bl	0x11d78 <syna_tcm_v1_read_message+0x13ac>
		0000000000011d78:  R_AARCH64_CALL26	_printk
   11d7c: 14000036     	b	0x11e54 <syna_tcm_v1_read_message+0x1488>
   11d80: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011d80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   11d84: 91000000     	add	x0, x0, #0x0
		0000000000011d84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   11d88: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011d88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   11d8c: 91000021     	add	x1, x1, #0x0
		0000000000011d8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   11d90: 94000000     	bl	0x11d90 <syna_tcm_v1_read_message+0x13c4>
		0000000000011d90:  R_AARCH64_CALL26	_printk
   11d94: 94000000     	bl	0x11d94 <syna_tcm_v1_read_message+0x13c8>
		0000000000011d94:  R_AARCH64_CALL26	syna_request_managed_device
   11d98: b5ffaf40     	cbnz	x0, 0x11380 <syna_tcm_v1_read_message+0x9b4>
   11d9c: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011d9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   11da0: 91000000     	add	x0, x0, #0x0
		0000000000011da0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   11da4: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011da4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bfa
   11da8: 91000021     	add	x1, x1, #0x0
		0000000000011da8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bfa
   11dac: 94000000     	bl	0x11dac <syna_tcm_v1_read_message+0x13e0>
		0000000000011dac:  R_AARCH64_CALL26	_printk
   11db0: f900a67f     	str	xzr, [x19, #0x148]
   11db4: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011db4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d74
   11db8: 91000000     	add	x0, x0, #0x0
		0000000000011db8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d74
   11dbc: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011dbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x77fc
   11dc0: 91000021     	add	x1, x1, #0x0
		0000000000011dc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x77fc
   11dc4: 2a1603e2     	mov	w2, w22
   11dc8: 94000000     	bl	0x11dc8 <syna_tcm_v1_read_message+0x13fc>
		0000000000011dc8:  R_AARCH64_CALL26	_printk
   11dcc: f900aa7f     	str	xzr, [x19, #0x150]
   11dd0: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011dd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b98
   11dd4: 91000000     	add	x0, x0, #0x0
		0000000000011dd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b98
   11dd8: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011dd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc648
   11ddc: 91000021     	add	x1, x1, #0x0
		0000000000011ddc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc648
   11de0: 94000000     	bl	0x11de0 <syna_tcm_v1_read_message+0x1414>
		0000000000011de0:  R_AARCH64_CALL26	_printk
   11de4: 91052260     	add	x0, x19, #0x148
   11de8: 97fff87b     	bl	0xffd4 <syna_tcm_v1_detect+0x3c4>
		0000000000011de8:  R_AARCH64_CALL26	syna_tcm_buf_unlock
   11dec: 3947fa62     	ldrb	w2, [x19, #0x1fe]
   11df0: 34000122     	cbz	w2, 0x11e14 <syna_tcm_v1_read_message+0x1448>
   11df4: 7100045f     	cmp	w2, #0x1
   11df8: 540005a1     	b.ne	0x11eac <syna_tcm_v1_read_message+0x14e0>
   11dfc: b901fa7f     	str	wzr, [x19, #0x1f8]
   11e00: 91088260     	add	x0, x19, #0x220
   11e04: 94000000     	bl	0x11e04 <syna_tcm_v1_read_message+0x1438>
		0000000000011e04:  R_AARCH64_CALL26	completion_done
   11e08: 37000060     	tbnz	w0, #0x0, 0x11e14 <syna_tcm_v1_read_message+0x1448>
   11e0c: 91088260     	add	x0, x19, #0x220
   11e10: 94000000     	bl	0x11e10 <syna_tcm_v1_read_message+0x1444>
		0000000000011e10:  R_AARCH64_CALL26	complete
   11e14: b4000079     	cbz	x25, 0x11e20 <syna_tcm_v1_read_message+0x1454>
   11e18: 3947f668     	ldrb	w8, [x19, #0x1fd]
   11e1c: 39000328     	strb	w8, [x25]
   11e20: 2a1f03f7     	mov	w23, wzr
   11e24: 3400019a     	cbz	w26, 0x11e54 <syna_tcm_v1_read_message+0x1488>
   11e28: b9403e68     	ldr	w8, [x19, #0x3c]
   11e2c: b9420269     	ldr	w9, [x19, #0x200]
   11e30: 3947f66b     	ldrb	w11, [x19, #0x1fd]
   11e34: 5100150a     	sub	w10, w8, #0x5
   11e38: 6b0a013f     	cmp	w9, w10
   11e3c: 1a8a312a     	csel	w10, w9, w10, lo
   11e40: 7100011f     	cmp	w8, #0x0
   11e44: 1a8a0128     	csel	w8, w9, w10, eq
   11e48: 7100417f     	cmp	w11, #0x10
   11e4c: 1a8833e8     	csel	w8, wzr, w8, lo
   11e50: b9037e68     	str	w8, [x19, #0x37c]
   11e54: b9421260     	ldr	w0, [x19, #0x210]
   11e58: 7100041f     	cmp	w0, #0x1
   11e5c: 5400010b     	b.lt	0x11e7c <syna_tcm_v1_read_message+0x14b0>
   11e60: b9421668     	ldr	w8, [x19, #0x214]
   11e64: 7100051f     	cmp	w8, #0x1
   11e68: 540000ab     	b.lt	0x11e7c <syna_tcm_v1_read_message+0x14b0>
   11e6c: 6b00011f     	cmp	w8, w0
   11e70: 52800042     	mov	w2, #0x2                // =2
   11e74: 1a808101     	csel	w1, w8, w0, hi
   11e78: 94000000     	bl	0x11e78 <syna_tcm_v1_read_message+0x14ac>
		0000000000011e78:  R_AARCH64_CALL26	usleep_range_state
   11e7c: 910d2260     	add	x0, x19, #0x348
   11e80: 94000000     	bl	0x11e80 <syna_tcm_v1_read_message+0x14b4>
		0000000000011e80:  R_AARCH64_CALL26	mutex_unlock
   11e84: 2a1703e0     	mov	w0, w23
   11e88: a9484ff4     	ldp	x20, x19, [sp, #0x80]
   11e8c: a94757f6     	ldp	x22, x21, [sp, #0x70]
   11e90: a9465ff8     	ldp	x24, x23, [sp, #0x60]
   11e94: a94567fa     	ldp	x26, x25, [sp, #0x50]
   11e98: a9446ffc     	ldp	x28, x27, [sp, #0x40]
   11e9c: a9437bfd     	ldp	x29, x30, [sp, #0x30]
   11ea0: 910243ff     	add	sp, sp, #0x90
   11ea4: d50323bf     	autiasp
   11ea8: d65f03c0     	ret
   11eac: 71000c5f     	cmp	w2, #0x3
   11eb0: 54000101     	b.ne	0x11ed0 <syna_tcm_v1_read_message+0x1504>
   11eb4: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011eb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8ebc
   11eb8: 91000000     	add	x0, x0, #0x0
		0000000000011eb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8ebc
   11ebc: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011ebc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc648
   11ec0: 91000021     	add	x1, x1, #0x0
		0000000000011ec0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc648
   11ec4: 94000000     	bl	0x11ec4 <syna_tcm_v1_read_message+0x14f8>
		0000000000011ec4:  R_AARCH64_CALL26	_printk
   11ec8: b5fffa99     	cbnz	x25, 0x11e18 <syna_tcm_v1_read_message+0x144c>
   11ecc: 17ffffd5     	b	0x11e20 <syna_tcm_v1_read_message+0x1454>
   11ed0: 3947f263     	ldrb	w3, [x19, #0x1fc]
   11ed4: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011ed4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9be
   11ed8: 91000000     	add	x0, x0, #0x0
		0000000000011ed8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9be
   11edc: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011edc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc648
   11ee0: 91000021     	add	x1, x1, #0x0
		0000000000011ee0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc648
   11ee4: 94000000     	bl	0x11ee4 <syna_tcm_v1_read_message+0x1518>
		0000000000011ee4:  R_AARCH64_CALL26	_printk
   11ee8: 12800008     	mov	w8, #-0x1               // =-1
   11eec: b901fa68     	str	w8, [x19, #0x1f8]
   11ef0: 17ffffc4     	b	0x11e00 <syna_tcm_v1_read_message+0x1434>
   11ef4: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011ef4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   11ef8: 91000000     	add	x0, x0, #0x0
		0000000000011ef8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   11efc: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011efc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   11f00: 91000021     	add	x1, x1, #0x0
		0000000000011f00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   11f04: 94000000     	bl	0x11f04 <syna_tcm_v1_read_message+0x1538>
		0000000000011f04:  R_AARCH64_CALL26	_printk
   11f08: 394a0268     	ldrb	w8, [x19, #0x280]
   11f0c: 51000508     	sub	w8, w8, #0x1
   11f10: 17fffe4c     	b	0x11840 <syna_tcm_v1_read_message+0xe74>
   11f14: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011f14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaa7c
   11f18: 91000000     	add	x0, x0, #0x0
		0000000000011f18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaa7c
   11f1c: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x634>
		0000000000011f1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x85ce
   11f20: 91000021     	add	x1, x1, #0x0
		0000000000011f20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x85ce
   11f24: 52800202     	mov	w2, #0x10               // =16
   11f28: 94000000     	bl	0x11f28 <syna_tcm_v1_read_message+0x155c>
		0000000000011f28:  R_AARCH64_CALL26	_printk
   11f2c: 12800008     	mov	w8, #-0x1               // =-1
   11f30: b901fa68     	str	w8, [x19, #0x1f8]
   11f34: 17fffdcc     	b	0x11664 <syna_tcm_v1_read_message+0xc98>
