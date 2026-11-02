
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000010a28 <syna_tcm_v1_read_message>:
   10a28: d503233f     	paciasp
   10a2c: d10243ff     	sub	sp, sp, #0x90
   10a30: a9037bfd     	stp	x29, x30, [sp, #0x30]
   10a34: a9046ffc     	stp	x28, x27, [sp, #0x40]
   10a38: a90567fa     	stp	x26, x25, [sp, #0x50]
   10a3c: a9065ff8     	stp	x24, x23, [sp, #0x60]
   10a40: a90757f6     	stp	x22, x21, [sp, #0x70]
   10a44: a9084ff4     	stp	x20, x19, [sp, #0x80]
   10a48: 9100c3fd     	add	x29, sp, #0x30
   10a4c: b4001de0     	cbz	x0, 0x10e08 <syna_tcm_v1_read_message+0x3e0>
   10a50: f9402408     	ldr	x8, [x0, #0x48]
   10a54: aa0003f3     	mov	x19, x0
   10a58: b4001de8     	cbz	x8, 0x10e14 <syna_tcm_v1_read_message+0x3ec>
   10a5c: 394dea68     	ldrb	w8, [x19, #0x37a]
   10a60: aa0103f9     	mov	x25, x1
   10a64: 7100051f     	cmp	w8, #0x1
   10a68: 540000c1     	b.ne	0x10a80 <syna_tcm_v1_read_message+0x58>
   10a6c: b941fa68     	ldr	w8, [x19, #0x1f8]
   10a70: 7100011f     	cmp	w8, #0x0
   10a74: 1a9f17fa     	cset	w26, eq
   10a78: b5000099     	cbnz	x25, 0x10a88 <syna_tcm_v1_read_message+0x60>
   10a7c: 14000005     	b	0x10a90 <syna_tcm_v1_read_message+0x68>
   10a80: 2a1f03fa     	mov	w26, wzr
   10a84: b4000079     	cbz	x25, 0x10a90 <syna_tcm_v1_read_message+0x68>
   10a88: 52801fe8     	mov	w8, #0xff               // =255
   10a8c: 39000328     	strb	w8, [x25]
   10a90: 910d2260     	add	x0, x19, #0x348
   10a94: 3907f67f     	strb	wzr, [x19, #0x1fd]
   10a98: 94000000     	bl	0x10a98 <syna_tcm_v1_read_message+0x70>
		0000000000010a98:  R_AARCH64_CALL26	mutex_lock
   10a9c: 394a0262     	ldrb	w2, [x19, #0x280]
   10aa0: 35001c82     	cbnz	w2, 0x10e30 <syna_tcm_v1_read_message+0x408>
   10aa4: 91094260     	add	x0, x19, #0x250
   10aa8: 94000000     	bl	0x10aa8 <syna_tcm_v1_read_message+0x80>
		0000000000010aa8:  R_AARCH64_CALL26	mutex_lock
   10aac: 394a0268     	ldrb	w8, [x19, #0x280]
   10ab0: 11000508     	add	w8, w8, #0x1
   10ab4: 390a0268     	strb	w8, [x19, #0x280]
   10ab8: 340001ba     	cbz	w26, 0x10aec <syna_tcm_v1_read_message+0xc4>
   10abc: b9437e68     	ldr	w8, [x19, #0x37c]
   10ac0: 52800096     	mov	w22, #0x4               // =4
   10ac4: 34000168     	cbz	w8, 0x10af0 <syna_tcm_v1_read_message+0xc8>
   10ac8: 394e0269     	ldrb	w9, [x19, #0x380]
   10acc: 394e126a     	ldrb	w10, [x19, #0x384]
   10ad0: 7100013f     	cmp	w9, #0x0
   10ad4: 528000c9     	mov	w9, #0x6                // =6
   10ad8: 0b0a0108     	add	w8, w8, w10
   10adc: 1a961129     	csel	w9, w9, w22, ne
   10ae0: 0b090108     	add	w8, w8, w9
   10ae4: 11000516     	add	w22, w8, #0x1
   10ae8: 14000002     	b	0x10af0 <syna_tcm_v1_read_message+0xc8>
   10aec: 52800096     	mov	w22, #0x4               // =4
   10af0: f9402668     	ldr	x8, [x19, #0x48]
   10af4: 39405509     	ldrb	w9, [x8, #0x15]
   10af8: 7100053f     	cmp	w9, #0x1
   10afc: 91090269     	add	x9, x19, #0x240
   10b00: f81f83a9     	stur	x9, [x29, #-0x8]
   10b04: 54000101     	b.ne	0x10b24 <syna_tcm_v1_read_message+0xfc>
   10b08: b9401d09     	ldr	w9, [x8, #0x1c]
   10b0c: 6b0902df     	cmp	w22, w9
   10b10: 540000a9     	b.ls	0x10b24 <syna_tcm_v1_read_message+0xfc>
   10b14: b9401908     	ldr	w8, [x8, #0x18]
   10b18: 34001648     	cbz	w8, 0x10de0 <syna_tcm_v1_read_message+0x3b8>
   10b1c: 1ac80ac9     	udiv	w9, w22, w8
   10b20: 1b087d36     	mul	w22, w9, w8
   10b24: b9424a68     	ldr	w8, [x19, #0x248]
   10b28: 91092275     	add	x21, x19, #0x248
   10b2c: 6b0802df     	cmp	w22, w8
   10b30: 54000309     	b.ls	0x10b90 <syna_tcm_v1_read_message+0x168>
   10b34: f85f83a8     	ldur	x8, [x29, #-0x8]
   10b38: f9400114     	ldr	x20, [x8]
   10b3c: b40000b4     	cbz	x20, 0x10b50 <syna_tcm_v1_read_message+0x128>
   10b40: 94000000     	bl	0x10b40 <syna_tcm_v1_read_message+0x118>
		0000000000010b40:  R_AARCH64_CALL26	syna_request_managed_device
   10b44: b4005f60     	cbz	x0, 0x11730 <syna_tcm_v1_read_message+0xd08>
   10b48: aa1403e1     	mov	x1, x20
   10b4c: 94000000     	bl	0x10b4c <syna_tcm_v1_read_message+0x124>
		0000000000010b4c:  R_AARCH64_CALL26	devm_kfree
   10b50: 94000000     	bl	0x10b50 <syna_tcm_v1_read_message+0x128>
		0000000000010b50:  R_AARCH64_CALL26	syna_request_managed_device
   10b54: b4005fc0     	cbz	x0, 0x1174c <syna_tcm_v1_read_message+0xd24>
   10b58: 710002df     	cmp	w22, #0x0
   10b5c: 54001aad     	b.le	0x10eb0 <syna_tcm_v1_read_message+0x488>
   10b60: 2a1603f4     	mov	w20, w22
   10b64: 5281b802     	mov	w2, #0xdc0              // =3520
   10b68: aa1403e1     	mov	x1, x20
   10b6c: 94000000     	bl	0x10b6c <syna_tcm_v1_read_message+0x144>
		0000000000010b6c:  R_AARCH64_CALL26	devm_kmalloc
   10b70: f85f83a8     	ldur	x8, [x29, #-0x8]
   10b74: f9000100     	str	x0, [x8]
   10b78: b4005f80     	cbz	x0, 0x11768 <syna_tcm_v1_read_message+0xd40>
   10b7c: 2a1f03e1     	mov	w1, wzr
   10b80: aa1403e2     	mov	x2, x20
   10b84: b9024a76     	str	w22, [x19, #0x248]
   10b88: 94000000     	bl	0x10b88 <syna_tcm_v1_read_message+0x160>
		0000000000010b88:  R_AARCH64_CALL26	memset
   10b8c: b9024e7f     	str	wzr, [x19, #0x24c]
   10b90: f9412262     	ldr	x2, [x19, #0x240]
   10b94: b9424a63     	ldr	w3, [x19, #0x248]
   10b98: aa1303e0     	mov	x0, x19
   10b9c: 2a1603e1     	mov	w1, w22
   10ba0: 9400054f     	bl	0x120dc <syna_tcm_v1_read+0x8c>
		0000000000010ba0:  R_AARCH64_CALL26	syna_tcm_v1_read
   10ba4: 37f81520     	tbnz	w0, #0x1f, 0x10e48 <syna_tcm_v1_read_message+0x420>
   10ba8: f9412278     	ldr	x24, [x19, #0x240]
   10bac: 79400708     	ldrh	w8, [x24, #0x2]
   10bb0: b9020268     	str	w8, [x19, #0x200]
   10bb4: 39400708     	ldrb	w8, [x24, #0x1]
   10bb8: 34000048     	cbz	w8, 0x10bc0 <syna_tcm_v1_read_message+0x198>
   10bbc: 3907f668     	strb	w8, [x19, #0x1fd]
   10bc0: 394a0262     	ldrb	w2, [x19, #0x280]
   10bc4: 7100045f     	cmp	w2, #0x1
   10bc8: 54001641     	b.ne	0x10e90 <syna_tcm_v1_read_message+0x468>
   10bcc: 2a1f03e8     	mov	w8, wzr
   10bd0: 91094260     	add	x0, x19, #0x250
   10bd4: 390a0268     	strb	w8, [x19, #0x280]
   10bd8: 94000000     	bl	0x10bd8 <syna_tcm_v1_read_message+0x1b0>
		0000000000010bd8:  R_AARCH64_CALL26	mutex_unlock
   10bdc: b9420268     	ldr	w8, [x19, #0x200]
   10be0: 34002cc8     	cbz	w8, 0x11178 <syna_tcm_v1_read_message+0x750>
   10be4: 39400709     	ldrb	w9, [x24, #0x1]
   10be8: 71000d3f     	cmp	w9, #0x3
   10bec: 54000601     	b.ne	0x10cac <syna_tcm_v1_read_message+0x284>
   10bf0: b9403e68     	ldr	w8, [x19, #0x3c]
   10bf4: 52800809     	mov	w9, #0x40               // =64
   10bf8: 7100011f     	cmp	w8, #0x0
   10bfc: 1a880134     	csel	w20, w9, w8, eq
   10c00: 94000000     	bl	0x10c00 <syna_tcm_v1_read_message+0x1d8>
		0000000000010c00:  R_AARCH64_CALL26	syna_request_managed_device
   10c04: b4005e20     	cbz	x0, 0x117c8 <syna_tcm_v1_read_message+0xda0>
   10c08: 321f77e8     	mov	w8, #0x7ffffffe         // =2147483646
   10c0c: 6b08029f     	cmp	w20, w8
   10c10: 54005e28     	b.hi	0x117d4 <syna_tcm_v1_read_message+0xdac>
   10c14: 11000681     	add	w1, w20, #0x1
   10c18: 5281b802     	mov	w2, #0xdc0              // =3520
   10c1c: 94000000     	bl	0x10c1c <syna_tcm_v1_read_message+0x1f4>
		0000000000010c1c:  R_AARCH64_CALL26	devm_kmalloc
   10c20: b4005e40     	cbz	x0, 0x117e8 <syna_tcm_v1_read_message+0xdc0>
   10c24: aa0003f5     	mov	x21, x0
   10c28: 90000016     	adrp	x22, 0x10000 <syna_tcm_v1_detect+0x394>
		0000000000010c28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c06
   10c2c: 910002d6     	add	x22, x22, #0x0
		0000000000010c2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c06
   10c30: 52800c98     	mov	w24, #0x64              // =100
   10c34: 90000017     	adrp	x23, 0x10000 <syna_tcm_v1_detect+0x394>
		0000000000010c34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4e00
   10c38: 910002f7     	add	x23, x23, #0x0
		0000000000010c38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4e00
   10c3c: f9402660     	ldr	x0, [x19, #0x48]
   10c40: b4006840     	cbz	x0, 0x11948 <syna_tcm_v1_read_message+0xf20>
   10c44: f9401008     	ldr	x8, [x0, #0x20]
   10c48: b40067e8     	cbz	x8, 0x11944 <syna_tcm_v1_read_message+0xf1c>
   10c4c: aa1503e1     	mov	x1, x21
   10c50: 2a1403e2     	mov	w2, w20
   10c54: b85fc110     	ldur	w16, [x8, #-0x4]
   10c58: 728403f1     	movk	w17, #0x201f
   10c5c: 72a51491     	movk	w17, #0x28a4, lsl #16
   10c60: 6b11021f     	cmp	w16, w17
   10c64: 54000040     	b.eq	0x10c6c <syna_tcm_v1_read_message+0x244>
   10c68: d4304500     	brk	#0x8228
   10c6c: d63f0100     	blr	x8
   10c70: 37f86740     	tbnz	w0, #0x1f, 0x11958 <syna_tcm_v1_read_message+0xf30>
   10c74: 394006a8     	ldrb	w8, [x21, #0x1]
   10c78: 340000e8     	cbz	w8, 0x10c94 <syna_tcm_v1_read_message+0x26c>
   10c7c: 52807d00     	mov	w0, #0x3e8              // =1000
   10c80: 5280fa01     	mov	w1, #0x7d0              // =2000
   10c84: 52800042     	mov	w2, #0x2                // =2
   10c88: 94000000     	bl	0x10c88 <syna_tcm_v1_read_message+0x260>
		0000000000010c88:  R_AARCH64_CALL26	usleep_range_state
   10c8c: 71000718     	subs	w24, w24, #0x1
   10c90: 54fffd61     	b.ne	0x10c3c <syna_tcm_v1_read_message+0x214>
   10c94: 94000000     	bl	0x10c94 <syna_tcm_v1_read_message+0x26c>
		0000000000010c94:  R_AARCH64_CALL26	syna_request_managed_device
   10c98: b4006700     	cbz	x0, 0x11978 <syna_tcm_v1_read_message+0xf50>
   10c9c: aa1503e1     	mov	x1, x21
   10ca0: 94000000     	bl	0x10ca0 <syna_tcm_v1_read_message+0x278>
		0000000000010ca0:  R_AARCH64_CALL26	devm_kfree
   10ca4: 12801e37     	mov	w23, #-0xf2             // =-242
   10ca8: 14000482     	b	0x11eb0 <syna_tcm_v1_read_message+0x1488>
   10cac: 710012c9     	subs	w9, w22, #0x4
   10cb0: 6b090109     	subs	w9, w8, w9
   10cb4: 1a8933e9     	csel	w9, wzr, w9, lo
   10cb8: 710012df     	cmp	w22, #0x4
   10cbc: 1a88812d     	csel	w13, w9, w8, hi
   10cc0: 340025cd     	cbz	w13, 0x11178 <syna_tcm_v1_read_message+0x750>
   10cc4: 529fffe9     	mov	w9, #0xffff             // =65535
   10cc8: 6a2d013f     	bics	wzr, w9, w13
   10ccc: 54005b00     	b.eq	0x1182c <syna_tcm_v1_read_message+0xe04>
   10cd0: 394e0269     	ldrb	w9, [x19, #0x380]
   10cd4: 394e126c     	ldrb	w12, [x19, #0x384]
   10cd8: 1100150a     	add	w10, w8, #0x5
   10cdc: 11001d08     	add	w8, w8, #0x7
   10ce0: 11000dab     	add	w11, w13, #0x3
   10ce4: 394a0262     	ldrb	w2, [x19, #0x280]
   10ce8: 7100013f     	cmp	w9, #0x0
   10cec: 2a0c0129     	orr	w9, w9, w12
   10cf0: 1100058c     	add	w12, w12, #0x1
   10cf4: 1a8a1108     	csel	w8, w8, w10, ne
   10cf8: 1a8d156b     	csinc	w11, w11, w13, ne
   10cfc: 7200013f     	tst	w9, #0x1
   10d00: 0b0c0108     	add	w8, w8, w12
   10d04: 0b0c016b     	add	w11, w11, w12
   10d08: f9000bf8     	str	x24, [sp, #0x10]
   10d0c: 1a8a1114     	csel	w20, w8, w10, ne
   10d10: 1a8d157b     	csinc	w27, w11, w13, ne
   10d14: b9001bed     	str	w13, [sp, #0x18]
   10d18: 350059a2     	cbnz	w2, 0x1184c <syna_tcm_v1_read_message+0xe24>
   10d1c: 91094260     	add	x0, x19, #0x250
   10d20: 94000000     	bl	0x10d20 <syna_tcm_v1_read_message+0x2f8>
		0000000000010d20:  R_AARCH64_CALL26	mutex_lock
   10d24: 394a0268     	ldrb	w8, [x19, #0x280]
   10d28: b9424a78     	ldr	w24, [x19, #0x248]
   10d2c: 11000696     	add	w22, w20, #0x1
   10d30: 11000508     	add	w8, w8, #0x1
   10d34: 6b16031f     	cmp	w24, w22
   10d38: 390a0268     	strb	w8, [x19, #0x280]
   10d3c: 540002e2     	b.hs	0x10d98 <syna_tcm_v1_read_message+0x370>
   10d40: f85f83a8     	ldur	x8, [x29, #-0x8]
   10d44: f9400117     	ldr	x23, [x8]
   10d48: 94000000     	bl	0x10d48 <syna_tcm_v1_read_message+0x320>
		0000000000010d48:  R_AARCH64_CALL26	syna_request_managed_device
   10d4c: b4006540     	cbz	x0, 0x119f4 <syna_tcm_v1_read_message+0xfcc>
   10d50: 12b00008     	mov	w8, #0x7fffffff         // =2147483647
   10d54: 6b08029f     	cmp	w20, w8
   10d58: 540067e2     	b.hs	0x11a54 <syna_tcm_v1_read_message+0x102c>
   10d5c: aa1603e1     	mov	x1, x22
   10d60: 5281b802     	mov	w2, #0xdc0              // =3520
   10d64: 94000000     	bl	0x10d64 <syna_tcm_v1_read_message+0x33c>
		0000000000010d64:  R_AARCH64_CALL26	devm_kmalloc
   10d68: f85f83a8     	ldur	x8, [x29, #-0x8]
   10d6c: f9000100     	str	x0, [x8]
   10d70: b4006800     	cbz	x0, 0x11a70 <syna_tcm_v1_read_message+0x1048>
   10d74: b40071b7     	cbz	x23, 0x11ba8 <syna_tcm_v1_read_message+0x1180>
   10d78: aa1703e1     	mov	x1, x23
   10d7c: aa1803e2     	mov	x2, x24
   10d80: 94000000     	bl	0x10d80 <syna_tcm_v1_read_message+0x358>
		0000000000010d80:  R_AARCH64_CALL26	memcpy
   10d84: 94000000     	bl	0x10d84 <syna_tcm_v1_read_message+0x35c>
		0000000000010d84:  R_AARCH64_CALL26	syna_request_managed_device
   10d88: b40073e0     	cbz	x0, 0x11c04 <syna_tcm_v1_read_message+0x11dc>
   10d8c: aa1703e1     	mov	x1, x23
   10d90: 94000000     	bl	0x10d90 <syna_tcm_v1_read_message+0x368>
		0000000000010d90:  R_AARCH64_CALL26	devm_kfree
   10d94: b90002b6     	str	w22, [x21]
   10d98: f9402668     	ldr	x8, [x19, #0x48]
   10d9c: b9403e69     	ldr	w9, [x19, #0x3c]
   10da0: 3940550a     	ldrb	w10, [x8, #0x15]
   10da4: 7100013f     	cmp	w9, #0x0
   10da8: 1a890289     	csel	w9, w20, w9, eq
   10dac: 7100055f     	cmp	w10, #0x1
   10db0: 540001e1     	b.ne	0x10dec <syna_tcm_v1_read_message+0x3c4>
   10db4: b9401beb     	ldr	w11, [sp, #0x18]
   10db8: 2a1f03f6     	mov	w22, wzr
   10dbc: 34000809     	cbz	w9, 0x10ebc <syna_tcm_v1_read_message+0x494>
   10dc0: b940190a     	ldr	w10, [x8, #0x18]
   10dc4: 2a1603e8     	mov	w8, w22
   10dc8: 340007ca     	cbz	w10, 0x10ec0 <syna_tcm_v1_read_message+0x498>
   10dcc: 1aca0928     	udiv	w8, w9, w10
   10dd0: 1b0a7d16     	mul	w22, w8, w10
   10dd4: 35000136     	cbnz	w22, 0x10df8 <syna_tcm_v1_read_message+0x3d0>
   10dd8: 2a1f03e8     	mov	w8, wzr
   10ddc: 14000039     	b	0x10ec0 <syna_tcm_v1_read_message+0x498>
   10de0: 2a1f03f6     	mov	w22, wzr
   10de4: 91092275     	add	x21, x19, #0x248
   10de8: 17ffff6a     	b	0x10b90 <syna_tcm_v1_read_message+0x168>
   10dec: b9401beb     	ldr	w11, [sp, #0x18]
   10df0: 2a0903f6     	mov	w22, w9
   10df4: 34ffff36     	cbz	w22, 0x10dd8 <syna_tcm_v1_read_message+0x3b0>
   10df8: 0b160288     	add	w8, w20, w22
   10dfc: 51000508     	sub	w8, w8, #0x1
   10e00: 1ad60908     	udiv	w8, w8, w22
   10e04: 1400002f     	b	0x10ec0 <syna_tcm_v1_read_message+0x498>
   10e08: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x394>
		0000000000010e08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c8
   10e0c: 91000000     	add	x0, x0, #0x0
		0000000000010e0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c8
   10e10: 14000003     	b	0x10e1c <syna_tcm_v1_read_message+0x3f4>
   10e14: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x394>
		0000000000010e14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb874
   10e18: 91000000     	add	x0, x0, #0x0
		0000000000010e18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb874
   10e1c: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x394>
		0000000000010e1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbed0
   10e20: 91000021     	add	x1, x1, #0x0
		0000000000010e20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbed0
   10e24: 94000000     	bl	0x10e24 <syna_tcm_v1_read_message+0x3fc>
		0000000000010e24:  R_AARCH64_CALL26	_printk
   10e28: 12801e17     	mov	w23, #-0xf1             // =-241
   10e2c: 1400042d     	b	0x11ee0 <syna_tcm_v1_read_message+0x14b8>
   10e30: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x394>
		0000000000010e30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   10e34: 91000000     	add	x0, x0, #0x0
		0000000000010e34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   10e38: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x394>
		0000000000010e38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70c4
   10e3c: 91000021     	add	x1, x1, #0x0
		0000000000010e3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70c4
   10e40: 94000000     	bl	0x10e40 <syna_tcm_v1_read_message+0x418>
		0000000000010e40:  R_AARCH64_CALL26	_printk
   10e44: 17ffff18     	b	0x10aa4 <syna_tcm_v1_read_message+0x7c>
   10e48: 2a0003f7     	mov	w23, w0
   10e4c: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x394>
		0000000000010e4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x72be
   10e50: 91000000     	add	x0, x0, #0x0
		0000000000010e50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x72be
   10e54: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x394>
		0000000000010e54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbed0
   10e58: 91000021     	add	x1, x1, #0x0
		0000000000010e58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbed0
   10e5c: 2a1603e2     	mov	w2, w22
   10e60: 94000000     	bl	0x10e60 <syna_tcm_v1_read_message+0x438>
		0000000000010e60:  R_AARCH64_CALL26	_printk
   10e64: 394a0262     	ldrb	w2, [x19, #0x280]
   10e68: 7100045f     	cmp	w2, #0x1
   10e6c: 540072c1     	b.ne	0x11cc4 <syna_tcm_v1_read_message+0x129c>
   10e70: 2a1f03e8     	mov	w8, wzr
   10e74: 91094260     	add	x0, x19, #0x250
   10e78: 390a0268     	strb	w8, [x19, #0x280]
   10e7c: 94000000     	bl	0x10e7c <syna_tcm_v1_read_message+0x454>
		0000000000010e7c:  R_AARCH64_CALL26	mutex_unlock
   10e80: 52801fe8     	mov	w8, #0xff               // =255
   10e84: b902027f     	str	wzr, [x19, #0x200]
   10e88: 3907f668     	strb	w8, [x19, #0x1fd]
   10e8c: 14000409     	b	0x11eb0 <syna_tcm_v1_read_message+0x1488>
   10e90: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x394>
		0000000000010e90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   10e94: 91000000     	add	x0, x0, #0x0
		0000000000010e94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   10e98: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x394>
		0000000000010e98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   10e9c: 91000021     	add	x1, x1, #0x0
		0000000000010e9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   10ea0: 94000000     	bl	0x10ea0 <syna_tcm_v1_read_message+0x478>
		0000000000010ea0:  R_AARCH64_CALL26	_printk
   10ea4: 394a0268     	ldrb	w8, [x19, #0x280]
   10ea8: 51000508     	sub	w8, w8, #0x1
   10eac: 17ffff49     	b	0x10bd0 <syna_tcm_v1_read_message+0x1a8>
   10eb0: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x394>
		0000000000010eb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70d6
   10eb4: 91000000     	add	x0, x0, #0x0
		0000000000010eb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70d6
   10eb8: 14000227     	b	0x11754 <syna_tcm_v1_read_message+0xd2c>
   10ebc: 2a1603e8     	mov	w8, w22
   10ec0: b9420269     	ldr	w9, [x19, #0x200]
   10ec4: 394c4262     	ldrb	w2, [x19, #0x310]
   10ec8: 7100051f     	cmp	w8, #0x1
   10ecc: b90007fa     	str	w26, [sp, #0x4]
   10ed0: 1a9f8514     	csinc	w20, w8, wzr, hi
   10ed4: 4b0b0129     	sub	w9, w9, w11
   10ed8: f90007f9     	str	x25, [sp, #0x8]
   10edc: 1100113a     	add	w26, w9, #0x4
   10ee0: 35005062     	cbnz	w2, 0x118ec <syna_tcm_v1_read_message+0xec4>
   10ee4: 910b8260     	add	x0, x19, #0x2e0
   10ee8: 94000000     	bl	0x10ee8 <syna_tcm_v1_read_message+0x4c0>
		0000000000010ee8:  R_AARCH64_CALL26	mutex_lock
   10eec: 394c4268     	ldrb	w8, [x19, #0x310]
   10ef0: 2a1f03f9     	mov	w25, wzr
   10ef4: 2a1f03f5     	mov	w21, wzr
   10ef8: 51000ac9     	sub	w9, w22, #0x2
   10efc: 52801ffc     	mov	w28, #0xff              // =255
   10f00: 11000508     	add	w8, w8, #0x1
   10f04: 293ddba9     	stp	w9, w22, [x29, #-0x14]
   10f08: 390c4268     	strb	w8, [x19, #0x310]
   10f0c: 1400000a     	b	0x10f34 <syna_tcm_v1_read_message+0x50c>
   10f10: f85f83a8     	ldur	x8, [x29, #-0x8]
   10f14: 52800b4a     	mov	w10, #0x5a              // =90
   10f18: 5100077b     	sub	w27, w27, #0x1
   10f1c: f9400108     	ldr	x8, [x8]
   10f20: 383a490a     	strb	w10, [x8, w26, uxtw]
   10f24: 1100075a     	add	w26, w26, #0x1
   10f28: 6b1402ff     	cmp	w23, w20
   10f2c: 2a1703f9     	mov	w25, w23
   10f30: 54000fa2     	b.hs	0x11124 <syna_tcm_v1_read_message+0x6fc>
   10f34: 6b16037f     	cmp	w27, w22
   10f38: 11000737     	add	w23, w25, #0x1
   10f3c: 1a9b8138     	csel	w24, w9, w27, hi
   10f40: 7100071f     	cmp	w24, #0x1
   10f44: 54fffe60     	b.eq	0x10f10 <syna_tcm_v1_read_message+0x4e8>
   10f48: 6b1402ff     	cmp	w23, w20
   10f4c: 540001c1     	b.ne	0x10f84 <syna_tcm_v1_read_message+0x55c>
   10f50: f9402668     	ldr	x8, [x19, #0x48]
   10f54: 39405509     	ldrb	w9, [x8, #0x15]
   10f58: 36000169     	tbz	w9, #0x0, 0x10f84 <syna_tcm_v1_read_message+0x55c>
   10f5c: b9401d09     	ldr	w9, [x8, #0x1c]
   10f60: 6b09031f     	cmp	w24, w9
   10f64: 54000109     	b.ls	0x10f84 <syna_tcm_v1_read_message+0x55c>
   10f68: b9401908     	ldr	w8, [x8, #0x18]
   10f6c: 34000068     	cbz	w8, 0x10f78 <syna_tcm_v1_read_message+0x550>
   10f70: 1ac80b09     	udiv	w9, w24, w8
   10f74: 1b087d28     	mul	w8, w9, w8
   10f78: 51000918     	sub	w24, w8, #0x2
   10f7c: 6b1b031f     	cmp	w24, w27
   10f80: 1a940694     	cinc	w20, w20, ne
   10f84: b942da62     	ldr	w2, [x19, #0x2d8]
   10f88: b81f43b4     	stur	w20, [x29, #-0xc]
   10f8c: 11000b16     	add	w22, w24, #0x2
   10f90: f9416a74     	ldr	x20, [x19, #0x2d0]
   10f94: 6b16005f     	cmp	w2, w22
   10f98: 54000242     	b.hs	0x10fe0 <syna_tcm_v1_read_message+0x5b8>
   10f9c: b40000b4     	cbz	x20, 0x10fb0 <syna_tcm_v1_read_message+0x588>
   10fa0: 94000000     	bl	0x10fa0 <syna_tcm_v1_read_message+0x578>
		0000000000010fa0:  R_AARCH64_CALL26	syna_request_managed_device
   10fa4: b4000ac0     	cbz	x0, 0x110fc <syna_tcm_v1_read_message+0x6d4>
   10fa8: aa1403e1     	mov	x1, x20
   10fac: 94000000     	bl	0x10fac <syna_tcm_v1_read_message+0x584>
		0000000000010fac:  R_AARCH64_CALL26	devm_kfree
   10fb0: 94000000     	bl	0x10fb0 <syna_tcm_v1_read_message+0x588>
		0000000000010fb0:  R_AARCH64_CALL26	syna_request_managed_device
   10fb4: b4000b20     	cbz	x0, 0x11118 <syna_tcm_v1_read_message+0x6f0>
   10fb8: 710002df     	cmp	w22, #0x0
   10fbc: 54006b6d     	b.le	0x11d28 <syna_tcm_v1_read_message+0x1300>
   10fc0: aa1603e1     	mov	x1, x22
   10fc4: 5281b802     	mov	w2, #0xdc0              // =3520
   10fc8: 94000000     	bl	0x10fc8 <syna_tcm_v1_read_message+0x5a0>
		0000000000010fc8:  R_AARCH64_CALL26	devm_kmalloc
   10fcc: f9016a60     	str	x0, [x19, #0x2d0]
   10fd0: b4006b80     	cbz	x0, 0x11d40 <syna_tcm_v1_read_message+0x1318>
   10fd4: aa0003f4     	mov	x20, x0
   10fd8: aa1603e2     	mov	x2, x22
   10fdc: b902da76     	str	w22, [x19, #0x2d8]
   10fe0: aa1403e0     	mov	x0, x20
   10fe4: 2a1f03e1     	mov	w1, wzr
   10fe8: 94000000     	bl	0x10fe8 <syna_tcm_v1_read_message+0x5c0>
		0000000000010fe8:  R_AARCH64_CALL26	memset
   10fec: 110006a8     	add	w8, w21, #0x1
   10ff0: b902de7f     	str	wzr, [x19, #0x2dc]
   10ff4: 7100151f     	cmp	w8, #0x5
   10ff8: 528000a8     	mov	w8, #0x5                // =5
   10ffc: 1a95d514     	csinc	w20, w8, w21, le
   11000: b9421260     	ldr	w0, [x19, #0x210]
   11004: 7100041f     	cmp	w0, #0x1
   11008: 5400010b     	b.lt	0x11028 <syna_tcm_v1_read_message+0x600>
   1100c: b9421668     	ldr	w8, [x19, #0x214]
   11010: 7100051f     	cmp	w8, #0x1
   11014: 540000ab     	b.lt	0x11028 <syna_tcm_v1_read_message+0x600>
   11018: 6b00011f     	cmp	w8, w0
   1101c: 52800042     	mov	w2, #0x2                // =2
   11020: 1a808101     	csel	w1, w8, w0, hi
   11024: 94000000     	bl	0x11024 <syna_tcm_v1_read_message+0x5fc>
		0000000000011024:  R_AARCH64_CALL26	usleep_range_state
   11028: f9416a62     	ldr	x2, [x19, #0x2d0]
   1102c: b942da63     	ldr	w3, [x19, #0x2d8]
   11030: aa1303e0     	mov	x0, x19
   11034: 2a1603e1     	mov	w1, w22
   11038: 94000429     	bl	0x120dc <syna_tcm_v1_read+0x8c>
		0000000000011038:  R_AARCH64_CALL26	syna_tcm_v1_read
   1103c: 37f80140     	tbnz	w0, #0x1f, 0x11064 <syna_tcm_v1_read_message+0x63c>
   11040: f9416a68     	ldr	x8, [x19, #0x2d0]
   11044: b902de76     	str	w22, [x19, #0x2dc]
   11048: 3940051c     	ldrb	w28, [x8, #0x1]
   1104c: 71000f9f     	cmp	w28, #0x3
   11050: 54000280     	b.eq	0x110a0 <syna_tcm_v1_read_message+0x678>
   11054: 110006b5     	add	w21, w21, #0x1
   11058: 710016bf     	cmp	w21, #0x5
   1105c: 54fffd2b     	b.lt	0x11000 <syna_tcm_v1_read_message+0x5d8>
   11060: 14000008     	b	0x11080 <syna_tcm_v1_read_message+0x658>
   11064: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011064:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5f48
   11068: 91000000     	add	x0, x0, #0x0
		0000000000011068:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5f48
   1106c: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		000000000001106c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2318
   11070: 91000021     	add	x1, x1, #0x0
		0000000000011070:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2318
   11074: 2a1603e2     	mov	w2, w22
   11078: 94000000     	bl	0x11078 <syna_tcm_v1_read_message+0x650>
		0000000000011078:  R_AARCH64_CALL26	_printk
   1107c: 17fffff6     	b	0x11054 <syna_tcm_v1_read_message+0x62c>
   11080: b85f03b6     	ldur	w22, [x29, #-0x10]
   11084: 71000f9f     	cmp	w28, #0x3
   11088: 540063a1     	b.ne	0x11cfc <syna_tcm_v1_read_message+0x12d4>
   1108c: f9416a68     	ldr	x8, [x19, #0x2d0]
   11090: 2a1403f5     	mov	w21, w20
   11094: b1000901     	adds	x1, x8, #0x2
   11098: 540000a1     	b.ne	0x110ac <syna_tcm_v1_read_message+0x684>
   1109c: 140002b3     	b	0x11b68 <syna_tcm_v1_read_message+0x1140>
   110a0: b85f03b6     	ldur	w22, [x29, #-0x10]
   110a4: b1000901     	adds	x1, x8, #0x2
   110a8: 54005600     	b.eq	0x11b68 <syna_tcm_v1_read_message+0x1140>
   110ac: f85f83a8     	ldur	x8, [x29, #-0x8]
   110b0: f9400108     	ldr	x8, [x8]
   110b4: 8b3a4100     	add	x0, x8, w26, uxtw
   110b8: b4005580     	cbz	x0, 0x11b68 <syna_tcm_v1_read_message+0x1140>
   110bc: b942da68     	ldr	w8, [x19, #0x2d8]
   110c0: 51000902     	sub	w2, w8, #0x2
   110c4: b9424a68     	ldr	w8, [x19, #0x248]
   110c8: 6b02031f     	cmp	w24, w2
   110cc: 4b1a0103     	sub	w3, w8, w26
   110d0: 54005408     	b.hi	0x11b50 <syna_tcm_v1_read_message+0x1128>
   110d4: 6b03031f     	cmp	w24, w3
   110d8: 540053c8     	b.hi	0x11b50 <syna_tcm_v1_read_message+0x1128>
   110dc: 2a1803e2     	mov	w2, w24
   110e0: 94000000     	bl	0x110e0 <syna_tcm_v1_read_message+0x6b8>
		00000000000110e0:  R_AARCH64_CALL26	memcpy
   110e4: b85f43b4     	ldur	w20, [x29, #-0xc]
   110e8: b85ec3a9     	ldur	w9, [x29, #-0x14]
   110ec: 0b1a031a     	add	w26, w24, w26
   110f0: 4b18037b     	sub	w27, w27, w24
   110f4: 5280007c     	mov	w28, #0x3               // =3
   110f8: 17ffff8c     	b	0x10f28 <syna_tcm_v1_read_message+0x500>
   110fc: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		00000000000110fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   11100: 91000000     	add	x0, x0, #0x0
		0000000000011100:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   11104: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011104:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   11108: 91000021     	add	x1, x1, #0x0
		0000000000011108:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   1110c: 94000000     	bl	0x1110c <syna_tcm_v1_read_message+0x6e4>
		000000000001110c:  R_AARCH64_CALL26	_printk
   11110: 94000000     	bl	0x11110 <syna_tcm_v1_read_message+0x6e8>
		0000000000011110:  R_AARCH64_CALL26	syna_request_managed_device
   11114: b5fff520     	cbnz	x0, 0x10fb8 <syna_tcm_v1_read_message+0x590>
   11118: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011118:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   1111c: 91000000     	add	x0, x0, #0x0
		000000000001111c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   11120: 14000304     	b	0x11d30 <syna_tcm_v1_read_message+0x1308>
   11124: 2a1f03f4     	mov	w20, wzr
   11128: 2a1f03f7     	mov	w23, wzr
   1112c: b9024e7a     	str	w26, [x19, #0x24c]
   11130: 394c4262     	ldrb	w2, [x19, #0x310]
   11134: a940e3f9     	ldp	x25, x24, [sp, #0x8]
   11138: b94007fa     	ldr	w26, [sp, #0x4]
   1113c: 7100045f     	cmp	w2, #0x1
   11140: 54003e21     	b.ne	0x11904 <syna_tcm_v1_read_message+0xedc>
   11144: 2a1f03e8     	mov	w8, wzr
   11148: 910b8260     	add	x0, x19, #0x2e0
   1114c: 390c4268     	strb	w8, [x19, #0x310]
   11150: 94000000     	bl	0x11150 <syna_tcm_v1_read_message+0x728>
		0000000000011150:  R_AARCH64_CALL26	mutex_unlock
   11154: 394a0262     	ldrb	w2, [x19, #0x280]
   11158: 7100045f     	cmp	w2, #0x1
   1115c: 54003e41     	b.ne	0x11924 <syna_tcm_v1_read_message+0xefc>
   11160: 2a1f03e8     	mov	w8, wzr
   11164: 91094260     	add	x0, x19, #0x250
   11168: 390a0268     	strb	w8, [x19, #0x280]
   1116c: 94000000     	bl	0x1116c <syna_tcm_v1_read_message+0x744>
		000000000001116c:  R_AARCH64_CALL26	mutex_unlock
   11170: b9401bed     	ldr	w13, [sp, #0x18]
   11174: 350061f4     	cbnz	w20, 0x11db0 <syna_tcm_v1_read_message+0x1388>
   11178: 394a0262     	ldrb	w2, [x19, #0x280]
   1117c: 350025a2     	cbnz	w2, 0x11630 <syna_tcm_v1_read_message+0xc08>
   11180: 91094260     	add	x0, x19, #0x250
   11184: 94000000     	bl	0x11184 <syna_tcm_v1_read_message+0x75c>
		0000000000011184:  R_AARCH64_CALL26	mutex_lock
   11188: 394a0268     	ldrb	w8, [x19, #0x280]
   1118c: f9412269     	ldr	x9, [x19, #0x240]
   11190: 11000508     	add	w8, w8, #0x1
   11194: 390a0268     	strb	w8, [x19, #0x280]
   11198: 528014a8     	mov	w8, #0xa5               // =165
   1119c: 39000128     	strb	w8, [x9]
   111a0: 3947f668     	ldrb	w8, [x19, #0x1fd]
   111a4: f9412269     	ldr	x9, [x19, #0x240]
   111a8: 39000528     	strb	w8, [x9, #0x1]
   111ac: b9420268     	ldr	w8, [x19, #0x200]
   111b0: f9412269     	ldr	x9, [x19, #0x240]
   111b4: 39000928     	strb	w8, [x9, #0x2]
   111b8: b9420268     	ldr	w8, [x19, #0x200]
   111bc: f9412269     	ldr	x9, [x19, #0x240]
   111c0: 53087d08     	lsr	w8, w8, #8
   111c4: 39000d28     	strb	w8, [x9, #0x3]
   111c8: 394a0262     	ldrb	w2, [x19, #0x280]
   111cc: 7100045f     	cmp	w2, #0x1
   111d0: 540023c1     	b.ne	0x11648 <syna_tcm_v1_read_message+0xc20>
   111d4: 2a1f03e8     	mov	w8, wzr
   111d8: 91094260     	add	x0, x19, #0x250
   111dc: 390a0268     	strb	w8, [x19, #0x280]
   111e0: 94000000     	bl	0x111e0 <syna_tcm_v1_read_message+0x7b8>
		00000000000111e0:  R_AARCH64_CALL26	mutex_unlock
   111e4: 394e0268     	ldrb	w8, [x19, #0x380]
   111e8: 7100051f     	cmp	w8, #0x1
   111ec: 540003e1     	b.ne	0x11268 <syna_tcm_v1_read_message+0x840>
   111f0: b9420268     	ldr	w8, [x19, #0x200]
   111f4: 340003a8     	cbz	w8, 0x11268 <syna_tcm_v1_read_message+0x840>
   111f8: 394a0262     	ldrb	w2, [x19, #0x280]
   111fc: 35003002     	cbnz	w2, 0x117fc <syna_tcm_v1_read_message+0xdd4>
   11200: 91094260     	add	x0, x19, #0x250
   11204: 94000000     	bl	0x11204 <syna_tcm_v1_read_message+0x7dc>
		0000000000011204:  R_AARCH64_CALL26	mutex_lock
   11208: b942026a     	ldr	w10, [x19, #0x200]
   1120c: 394a0269     	ldrb	w9, [x19, #0x280]
   11210: b9424a6b     	ldr	w11, [x19, #0x248]
   11214: 1100154d     	add	w13, w10, #0x5
   11218: 11000528     	add	w8, w9, #0x1
   1121c: 6b0d017f     	cmp	w11, w13
   11220: 390a0268     	strb	w8, [x19, #0x280]
   11224: 54000229     	b.ls	0x11268 <syna_tcm_v1_read_message+0x840>
   11228: f941226c     	ldr	x12, [x19, #0x240]
   1122c: 394e126e     	ldrb	w14, [x19, #0x384]
   11230: 786d498d     	ldrh	w13, [x12, w13, uxtw]
   11234: 710005df     	cmp	w14, #0x1
   11238: 7907066d     	strh	w13, [x19, #0x382]
   1123c: 540000c1     	b.ne	0x11254 <syna_tcm_v1_read_message+0x82c>
   11240: 11001d4a     	add	w10, w10, #0x7
   11244: 6b0a017f     	cmp	w11, w10
   11248: 54000063     	b.lo	0x11254 <syna_tcm_v1_read_message+0x82c>
   1124c: 386a498a     	ldrb	w10, [x12, w10, uxtw]
   11250: 390e166a     	strb	w10, [x19, #0x385]
   11254: 35003a09     	cbnz	w9, 0x11994 <syna_tcm_v1_read_message+0xf6c>
   11258: 2a1f03e8     	mov	w8, wzr
   1125c: 91094260     	add	x0, x19, #0x250
   11260: 390a0268     	strb	w8, [x19, #0x280]
   11264: 94000000     	bl	0x11264 <syna_tcm_v1_read_message+0x83c>
		0000000000011264:  R_AARCH64_CALL26	mutex_unlock
   11268: 52827b08     	mov	w8, #0x13d8             // =5080
   1126c: 3947f676     	ldrb	w22, [x19, #0x1fd]
   11270: 8b080274     	add	x20, x19, x8
   11274: 8b161288     	add	x8, x20, x22, lsl #4
   11278: f9400508     	ldr	x8, [x8, #0x8]
   1127c: b40003a8     	cbz	x8, 0x112f0 <syna_tcm_v1_read_message+0x8c8>
   11280: 394a0262     	ldrb	w2, [x19, #0x280]
   11284: 35001f22     	cbnz	w2, 0x11668 <syna_tcm_v1_read_message+0xc40>
   11288: 91094260     	add	x0, x19, #0x250
   1128c: 94000000     	bl	0x1128c <syna_tcm_v1_read_message+0x864>
		000000000001128c:  R_AARCH64_CALL26	mutex_lock
   11290: 3947f660     	ldrb	w0, [x19, #0x1fd]
   11294: 394a0268     	ldrb	w8, [x19, #0x280]
   11298: f941226a     	ldr	x10, [x19, #0x240]
   1129c: b9420262     	ldr	w2, [x19, #0x200]
   112a0: 8b201289     	add	x9, x20, w0, uxtb #4
   112a4: 11000508     	add	w8, w8, #0x1
   112a8: 91001141     	add	x1, x10, #0x4
   112ac: 390a0268     	strb	w8, [x19, #0x280]
   112b0: a9402d23     	ldp	x3, x11, [x9]
   112b4: b85fc170     	ldur	w16, [x11, #-0x4]
   112b8: 72988151     	movk	w17, #0xc40a
   112bc: 72b3f271     	movk	w17, #0x9f93, lsl #16
   112c0: 6b11021f     	cmp	w16, w17
   112c4: 54000040     	b.eq	0x112cc <syna_tcm_v1_read_message+0x8a4>
   112c8: d4304560     	brk	#0x822b
   112cc: d63f0160     	blr	x11
   112d0: 394a0262     	ldrb	w2, [x19, #0x280]
   112d4: 7100045f     	cmp	w2, #0x1
   112d8: 54001d41     	b.ne	0x11680 <syna_tcm_v1_read_message+0xc58>
   112dc: 2a1f03e8     	mov	w8, wzr
   112e0: 91094260     	add	x0, x19, #0x250
   112e4: 390a0268     	strb	w8, [x19, #0x280]
   112e8: 94000000     	bl	0x112e8 <syna_tcm_v1_read_message+0x8c0>
		00000000000112e8:  R_AARCH64_CALL26	mutex_unlock
   112ec: 3947f676     	ldrb	w22, [x19, #0x1fd]
   112f0: 710042df     	cmp	w22, #0x10
   112f4: 54000403     	b.lo	0x11374 <syna_tcm_v1_read_message+0x94c>
   112f8: b9420268     	ldr	w8, [x19, #0x200]
   112fc: 34000828     	cbz	w8, 0x11400 <syna_tcm_v1_read_message+0x9d8>
   11300: 39450262     	ldrb	w2, [x19, #0x140]
   11304: 35002882     	cbnz	w2, 0x11814 <syna_tcm_v1_read_message+0xdec>
   11308: 91044260     	add	x0, x19, #0x110
   1130c: 94000000     	bl	0x1130c <syna_tcm_v1_read_message+0x8e4>
		000000000001130c:  R_AARCH64_CALL26	mutex_lock
   11310: 39450269     	ldrb	w9, [x19, #0x140]
   11314: b9420277     	ldr	w23, [x19, #0x200]
   11318: b9410a68     	ldr	w8, [x19, #0x108]
   1131c: f9408260     	ldr	x0, [x19, #0x100]
   11320: 11000529     	add	w9, w9, #0x1
   11324: 6b17011f     	cmp	w8, w23
   11328: 39050269     	strb	w9, [x19, #0x140]
   1132c: 54000702     	b.hs	0x1140c <syna_tcm_v1_read_message+0x9e4>
   11330: b40000c0     	cbz	x0, 0x11348 <syna_tcm_v1_read_message+0x920>
   11334: aa0003f4     	mov	x20, x0
   11338: 94000000     	bl	0x11338 <syna_tcm_v1_read_message+0x910>
		0000000000011338:  R_AARCH64_CALL26	syna_request_managed_device
   1133c: b4004700     	cbz	x0, 0x11c1c <syna_tcm_v1_read_message+0x11f4>
   11340: aa1403e1     	mov	x1, x20
   11344: 94000000     	bl	0x11344 <syna_tcm_v1_read_message+0x91c>
		0000000000011344:  R_AARCH64_CALL26	devm_kfree
   11348: 94000000     	bl	0x11348 <syna_tcm_v1_read_message+0x920>
		0000000000011348:  R_AARCH64_CALL26	syna_request_managed_device
   1134c: b4004760     	cbz	x0, 0x11c38 <syna_tcm_v1_read_message+0x1210>
   11350: 710002ff     	cmp	w23, #0x0
   11354: 540033ed     	b.le	0x119d0 <syna_tcm_v1_read_message+0xfa8>
   11358: aa1703e1     	mov	x1, x23
   1135c: 5281b802     	mov	w2, #0xdc0              // =3520
   11360: 94000000     	bl	0x11360 <syna_tcm_v1_read_message+0x938>
		0000000000011360:  R_AARCH64_CALL26	devm_kmalloc
   11364: f9008260     	str	x0, [x19, #0x100]
   11368: b4004740     	cbz	x0, 0x11c50 <syna_tcm_v1_read_message+0x1228>
   1136c: b9010a77     	str	w23, [x19, #0x108]
   11370: 14000028     	b	0x11410 <syna_tcm_v1_read_message+0x9e8>
   11374: b941fa68     	ldr	w8, [x19, #0x1f8]
   11378: 7100051f     	cmp	w8, #0x1
   1137c: 540057a1     	b.ne	0x11e70 <syna_tcm_v1_read_message+0x1448>
   11380: b9420268     	ldr	w8, [x19, #0x200]
   11384: 3907fa76     	strb	w22, [x19, #0x1fe]
   11388: 34000de8     	cbz	w8, 0x11544 <syna_tcm_v1_read_message+0xb1c>
   1138c: 39462262     	ldrb	w2, [x19, #0x188]
   11390: 35003142     	cbnz	w2, 0x119b8 <syna_tcm_v1_read_message+0xf90>
   11394: 91056260     	add	x0, x19, #0x158
   11398: 94000000     	bl	0x11398 <syna_tcm_v1_read_message+0x970>
		0000000000011398:  R_AARCH64_CALL26	mutex_lock
   1139c: 39462269     	ldrb	w9, [x19, #0x188]
   113a0: b9420276     	ldr	w22, [x19, #0x200]
   113a4: b9415268     	ldr	w8, [x19, #0x150]
   113a8: f940a660     	ldr	x0, [x19, #0x148]
   113ac: 11000529     	add	w9, w9, #0x1
   113b0: 6b16011f     	cmp	w8, w22
   113b4: 39062269     	strb	w9, [x19, #0x188]
   113b8: 54000ce2     	b.hs	0x11554 <syna_tcm_v1_read_message+0xb2c>
   113bc: b40000c0     	cbz	x0, 0x113d4 <syna_tcm_v1_read_message+0x9ac>
   113c0: aa0003f4     	mov	x20, x0
   113c4: 94000000     	bl	0x113c4 <syna_tcm_v1_read_message+0x99c>
		00000000000113c4:  R_AARCH64_CALL26	syna_request_managed_device
   113c8: b40050a0     	cbz	x0, 0x11ddc <syna_tcm_v1_read_message+0x13b4>
   113cc: aa1403e1     	mov	x1, x20
   113d0: 94000000     	bl	0x113d0 <syna_tcm_v1_read_message+0x9a8>
		00000000000113d0:  R_AARCH64_CALL26	devm_kfree
   113d4: 94000000     	bl	0x113d4 <syna_tcm_v1_read_message+0x9ac>
		00000000000113d4:  R_AARCH64_CALL26	syna_request_managed_device
   113d8: b4005100     	cbz	x0, 0x11df8 <syna_tcm_v1_read_message+0x13d0>
   113dc: 710002df     	cmp	w22, #0x0
   113e0: 5400482d     	b.le	0x11ce4 <syna_tcm_v1_read_message+0x12bc>
   113e4: aa1603e1     	mov	x1, x22
   113e8: 5281b802     	mov	w2, #0xdc0              // =3520
   113ec: 94000000     	bl	0x113ec <syna_tcm_v1_read_message+0x9c4>
		00000000000113ec:  R_AARCH64_CALL26	devm_kmalloc
   113f0: f900a660     	str	x0, [x19, #0x148]
   113f4: b40050e0     	cbz	x0, 0x11e10 <syna_tcm_v1_read_message+0x13e8>
   113f8: b9015276     	str	w22, [x19, #0x150]
   113fc: 14000057     	b	0x11558 <syna_tcm_v1_read_message+0xb30>
   11400: b9010e7f     	str	wzr, [x19, #0x10c]
   11404: b5005399     	cbnz	x25, 0x11e74 <syna_tcm_v1_read_message+0x144c>
   11408: 1400029d     	b	0x11e7c <syna_tcm_v1_read_message+0x1454>
   1140c: aa0803f7     	mov	x23, x8
   11410: 2a1f03e1     	mov	w1, wzr
   11414: aa1703e2     	mov	x2, x23
   11418: 94000000     	bl	0x11418 <syna_tcm_v1_read_message+0x9f0>
		0000000000011418:  R_AARCH64_CALL26	memset
   1141c: 394a0262     	ldrb	w2, [x19, #0x280]
   11420: b9010e7f     	str	wzr, [x19, #0x10c]
   11424: 35002082     	cbnz	w2, 0x11834 <syna_tcm_v1_read_message+0xe0c>
   11428: 91094260     	add	x0, x19, #0x250
   1142c: 94000000     	bl	0x1142c <syna_tcm_v1_read_message+0xa04>
		000000000001142c:  R_AARCH64_CALL26	mutex_lock
   11430: 394a0268     	ldrb	w8, [x19, #0x280]
   11434: f9408260     	ldr	x0, [x19, #0x100]
   11438: 11000508     	add	w8, w8, #0x1
   1143c: 390a0268     	strb	w8, [x19, #0x280]
   11440: b40021c0     	cbz	x0, 0x11878 <syna_tcm_v1_read_message+0xe50>
   11444: f9412268     	ldr	x8, [x19, #0x240]
   11448: 91001101     	add	x1, x8, #0x4
   1144c: b4002161     	cbz	x1, 0x11878 <syna_tcm_v1_read_message+0xe50>
   11450: b9410a63     	ldr	w3, [x19, #0x108]
   11454: b9420264     	ldr	w4, [x19, #0x200]
   11458: b9424a68     	ldr	w8, [x19, #0x248]
   1145c: 6b03009f     	cmp	w4, w3
   11460: 51001102     	sub	w2, w8, #0x4
   11464: 54002008     	b.hi	0x11864 <syna_tcm_v1_read_message+0xe3c>
   11468: 6b02009f     	cmp	w4, w2
   1146c: 54001fc8     	b.hi	0x11864 <syna_tcm_v1_read_message+0xe3c>
   11470: aa0403e2     	mov	x2, x4
   11474: 94000000     	bl	0x11474 <syna_tcm_v1_read_message+0xa4c>
		0000000000011474:  R_AARCH64_CALL26	memcpy
   11478: 394a0262     	ldrb	w2, [x19, #0x280]
   1147c: b9420268     	ldr	w8, [x19, #0x200]
   11480: 7100045f     	cmp	w2, #0x1
   11484: b9010e68     	str	w8, [x19, #0x10c]
   11488: 54002121     	b.ne	0x118ac <syna_tcm_v1_read_message+0xe84>
   1148c: 2a1f03e8     	mov	w8, wzr
   11490: 91094260     	add	x0, x19, #0x250
   11494: 390a0268     	strb	w8, [x19, #0x280]
   11498: 94000000     	bl	0x11498 <syna_tcm_v1_read_message+0xa70>
		0000000000011498:  R_AARCH64_CALL26	mutex_unlock
   1149c: 39450262     	ldrb	w2, [x19, #0x140]
   114a0: 7100045f     	cmp	w2, #0x1
   114a4: 54002141     	b.ne	0x118cc <syna_tcm_v1_read_message+0xea4>
   114a8: 2a1f03e8     	mov	w8, wzr
   114ac: 91044260     	add	x0, x19, #0x110
   114b0: 39050268     	strb	w8, [x19, #0x140]
   114b4: 94000000     	bl	0x114b4 <syna_tcm_v1_read_message+0xa8c>
		00000000000114b4:  R_AARCH64_CALL26	mutex_unlock
   114b8: 710042df     	cmp	w22, #0x10
   114bc: 540010c1     	b.ne	0x116d4 <syna_tcm_v1_read_message+0xcac>
   114c0: 394a0262     	ldrb	w2, [x19, #0x280]
   114c4: 35002fc2     	cbnz	w2, 0x11abc <syna_tcm_v1_read_message+0x1094>
   114c8: 91094260     	add	x0, x19, #0x250
   114cc: 94000000     	bl	0x114cc <syna_tcm_v1_read_message+0xaa4>
		00000000000114cc:  R_AARCH64_CALL26	mutex_lock
   114d0: 394a0268     	ldrb	w8, [x19, #0x280]
   114d4: b9424a69     	ldr	w9, [x19, #0x248]
   114d8: aa1303e0     	mov	x0, x19
   114dc: f941226a     	ldr	x10, [x19, #0x240]
   114e0: b9420263     	ldr	w3, [x19, #0x200]
   114e4: 11000508     	add	w8, w8, #0x1
   114e8: 51001122     	sub	w2, w9, #0x4
   114ec: 91001141     	add	x1, x10, #0x4
   114f0: 390a0268     	strb	w8, [x19, #0x280]
   114f4: 97fffcf3     	bl	0x108c0 <syna_tcm_v1_write_message+0x77c>
		00000000000114f4:  R_AARCH64_CALL26	syna_tcm_v1_parse_idinfo
   114f8: 37f82ee0     	tbnz	w0, #0x1f, 0x11ad4 <syna_tcm_v1_read_message+0x10ac>
   114fc: 394a0262     	ldrb	w2, [x19, #0x280]
   11500: 7100045f     	cmp	w2, #0x1
   11504: 54003421     	b.ne	0x11b88 <syna_tcm_v1_read_message+0x1160>
   11508: 2a1f03e8     	mov	w8, wzr
   1150c: 91094260     	add	x0, x19, #0x250
   11510: 390a0268     	strb	w8, [x19, #0x280]
   11514: 94000000     	bl	0x11514 <syna_tcm_v1_read_message+0xaec>
		0000000000011514:  R_AARCH64_CALL26	mutex_unlock
   11518: b941fa68     	ldr	w8, [x19, #0x1f8]
   1151c: 7100051f     	cmp	w8, #0x1
   11520: 54000da1     	b.ne	0x116d4 <syna_tcm_v1_read_message+0xcac>
   11524: 3947f268     	ldrb	w8, [x19, #0x1fc]
   11528: 7100791f     	cmp	w8, #0x1e
   1152c: 54000bac     	b.gt	0x116a0 <syna_tcm_v1_read_message+0xc78>
   11530: 7100111f     	cmp	w8, #0x4
   11534: 54004920     	b.eq	0x11e58 <syna_tcm_v1_read_message+0x1430>
   11538: 7100511f     	cmp	w8, #0x14
   1153c: 540048e0     	b.eq	0x11e58 <syna_tcm_v1_read_message+0x1430>
   11540: 1400005c     	b	0x116b0 <syna_tcm_v1_read_message+0xc88>
   11544: b901567f     	str	wzr, [x19, #0x154]
   11548: 3947fa62     	ldrb	w2, [x19, #0x1fe]
   1154c: 35004822     	cbnz	w2, 0x11e50 <syna_tcm_v1_read_message+0x1428>
   11550: 14000248     	b	0x11e70 <syna_tcm_v1_read_message+0x1448>
   11554: aa0803f6     	mov	x22, x8
   11558: 2a1f03e1     	mov	w1, wzr
   1155c: aa1603e2     	mov	x2, x22
   11560: 94000000     	bl	0x11560 <syna_tcm_v1_read_message+0xb38>
		0000000000011560:  R_AARCH64_CALL26	memset
   11564: 394a0262     	ldrb	w2, [x19, #0x280]
   11568: b901567f     	str	wzr, [x19, #0x154]
   1156c: 35002382     	cbnz	w2, 0x119dc <syna_tcm_v1_read_message+0xfb4>
   11570: 91094260     	add	x0, x19, #0x250
   11574: 94000000     	bl	0x11574 <syna_tcm_v1_read_message+0xb4c>
		0000000000011574:  R_AARCH64_CALL26	mutex_lock
   11578: 394a0268     	ldrb	w8, [x19, #0x280]
   1157c: f940a660     	ldr	x0, [x19, #0x148]
   11580: 11000508     	add	w8, w8, #0x1
   11584: 390a0268     	strb	w8, [x19, #0x280]
   11588: b4002460     	cbz	x0, 0x11a14 <syna_tcm_v1_read_message+0xfec>
   1158c: f9412268     	ldr	x8, [x19, #0x240]
   11590: 91001101     	add	x1, x8, #0x4
   11594: b4002401     	cbz	x1, 0x11a14 <syna_tcm_v1_read_message+0xfec>
   11598: b9415263     	ldr	w3, [x19, #0x150]
   1159c: b9420264     	ldr	w4, [x19, #0x200]
   115a0: b9424a68     	ldr	w8, [x19, #0x248]
   115a4: 6b03009f     	cmp	w4, w3
   115a8: 51001102     	sub	w2, w8, #0x4
   115ac: 540022a8     	b.hi	0x11a00 <syna_tcm_v1_read_message+0xfd8>
   115b0: 6b02009f     	cmp	w4, w2
   115b4: 54002268     	b.hi	0x11a00 <syna_tcm_v1_read_message+0xfd8>
   115b8: aa0403e2     	mov	x2, x4
   115bc: 94000000     	bl	0x115bc <syna_tcm_v1_read_message+0xb94>
		00000000000115bc:  R_AARCH64_CALL26	memcpy
   115c0: 394a0262     	ldrb	w2, [x19, #0x280]
   115c4: b9420268     	ldr	w8, [x19, #0x200]
   115c8: 7100045f     	cmp	w2, #0x1
   115cc: b9015668     	str	w8, [x19, #0x154]
   115d0: 54002941     	b.ne	0x11af8 <syna_tcm_v1_read_message+0x10d0>
   115d4: 2a1f03e8     	mov	w8, wzr
   115d8: 91094260     	add	x0, x19, #0x250
   115dc: 390a0268     	strb	w8, [x19, #0x280]
   115e0: 94000000     	bl	0x115e0 <syna_tcm_v1_read_message+0xbb8>
		00000000000115e0:  R_AARCH64_CALL26	mutex_unlock
   115e4: 3947f268     	ldrb	w8, [x19, #0x1fc]
   115e8: 7100091f     	cmp	w8, #0x2
   115ec: 540000e1     	b.ne	0x11608 <syna_tcm_v1_read_message+0xbe0>
   115f0: f940a661     	ldr	x1, [x19, #0x148]
   115f4: b9415262     	ldr	w2, [x19, #0x150]
   115f8: aa1303e0     	mov	x0, x19
   115fc: b9415663     	ldr	w3, [x19, #0x154]
   11600: 97fffcb0     	bl	0x108c0 <syna_tcm_v1_write_message+0x77c>
		0000000000011600:  R_AARCH64_CALL26	syna_tcm_v1_parse_idinfo
   11604: 37f83760     	tbnz	w0, #0x1f, 0x11cf0 <syna_tcm_v1_read_message+0x12c8>
   11608: 39462262     	ldrb	w2, [x19, #0x188]
   1160c: 7100045f     	cmp	w2, #0x1
   11610: 54002901     	b.ne	0x11b30 <syna_tcm_v1_read_message+0x1108>
   11614: 2a1f03e8     	mov	w8, wzr
   11618: 91056260     	add	x0, x19, #0x158
   1161c: 39062268     	strb	w8, [x19, #0x188]
   11620: 94000000     	bl	0x11620 <syna_tcm_v1_read_message+0xbf8>
		0000000000011620:  R_AARCH64_CALL26	mutex_unlock
   11624: 3947fa62     	ldrb	w2, [x19, #0x1fe]
   11628: 35004142     	cbnz	w2, 0x11e50 <syna_tcm_v1_read_message+0x1428>
   1162c: 14000211     	b	0x11e70 <syna_tcm_v1_read_message+0x1448>
   11630: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011630:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   11634: 91000000     	add	x0, x0, #0x0
		0000000000011634:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   11638: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011638:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70c4
   1163c: 91000021     	add	x1, x1, #0x0
		000000000001163c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70c4
   11640: 94000000     	bl	0x11640 <syna_tcm_v1_read_message+0xc18>
		0000000000011640:  R_AARCH64_CALL26	_printk
   11644: 17fffecf     	b	0x11180 <syna_tcm_v1_read_message+0x758>
   11648: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011648:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   1164c: 91000000     	add	x0, x0, #0x0
		000000000001164c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   11650: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011650:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   11654: 91000021     	add	x1, x1, #0x0
		0000000000011654:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   11658: 94000000     	bl	0x11658 <syna_tcm_v1_read_message+0xc30>
		0000000000011658:  R_AARCH64_CALL26	_printk
   1165c: 394a0268     	ldrb	w8, [x19, #0x280]
   11660: 51000508     	sub	w8, w8, #0x1
   11664: 17fffedd     	b	0x111d8 <syna_tcm_v1_read_message+0x7b0>
   11668: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011668:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   1166c: 91000000     	add	x0, x0, #0x0
		000000000001166c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   11670: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011670:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70c4
   11674: 91000021     	add	x1, x1, #0x0
		0000000000011674:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70c4
   11678: 94000000     	bl	0x11678 <syna_tcm_v1_read_message+0xc50>
		0000000000011678:  R_AARCH64_CALL26	_printk
   1167c: 17ffff03     	b	0x11288 <syna_tcm_v1_read_message+0x860>
   11680: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011680:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   11684: 91000000     	add	x0, x0, #0x0
		0000000000011684:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   11688: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011688:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   1168c: 91000021     	add	x1, x1, #0x0
		000000000001168c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   11690: 94000000     	bl	0x11690 <syna_tcm_v1_read_message+0xc68>
		0000000000011690:  R_AARCH64_CALL26	_printk
   11694: 394a0268     	ldrb	w8, [x19, #0x280]
   11698: 51000508     	sub	w8, w8, #0x1
   1169c: 17ffff11     	b	0x112e0 <syna_tcm_v1_read_message+0x8b8>
   116a0: 71007d1f     	cmp	w8, #0x1f
   116a4: 54003da0     	b.eq	0x11e58 <syna_tcm_v1_read_message+0x1430>
   116a8: 7100c51f     	cmp	w8, #0x31
   116ac: 54003d60     	b.eq	0x11e58 <syna_tcm_v1_read_message+0x1430>
   116b0: 3947c268     	ldrb	w8, [x19, #0x1f0]
   116b4: 7100051f     	cmp	w8, #0x1
   116b8: 540045c1     	b.ne	0x11f70 <syna_tcm_v1_read_message+0x1548>
   116bc: b901fa7f     	str	wzr, [x19, #0x1f8]
   116c0: 91088260     	add	x0, x19, #0x220
   116c4: 94000000     	bl	0x116c4 <syna_tcm_v1_read_message+0xc9c>
		00000000000116c4:  R_AARCH64_CALL26	completion_done
   116c8: 37000060     	tbnz	w0, #0x0, 0x116d4 <syna_tcm_v1_read_message+0xcac>
   116cc: 91088260     	add	x0, x19, #0x220
   116d0: 94000000     	bl	0x116d0 <syna_tcm_v1_read_message+0xca8>
		00000000000116d0:  R_AARCH64_CALL26	complete
   116d4: 8b365268     	add	x8, x19, w22, uxtw #4
   116d8: f941f109     	ldr	x9, [x8, #0x3e0]
   116dc: b4003ca9     	cbz	x9, 0x11e70 <syna_tcm_v1_read_message+0x1448>
   116e0: 39450262     	ldrb	w2, [x19, #0x140]
   116e4: 910f6114     	add	x20, x8, #0x3d8
   116e8: 35002182     	cbnz	w2, 0x11b18 <syna_tcm_v1_read_message+0x10f0>
   116ec: 91044260     	add	x0, x19, #0x110
   116f0: 94000000     	bl	0x116f0 <syna_tcm_v1_read_message+0xcc8>
		00000000000116f0:  R_AARCH64_CALL26	mutex_lock
   116f4: 39450268     	ldrb	w8, [x19, #0x140]
   116f8: a9402683     	ldp	x3, x9, [x20]
   116fc: b9410e62     	ldr	w2, [x19, #0x10c]
   11700: 2a1603e0     	mov	w0, w22
   11704: f9408261     	ldr	x1, [x19, #0x100]
   11708: 11000508     	add	w8, w8, #0x1
   1170c: 39050268     	strb	w8, [x19, #0x140]
   11710: b85fc130     	ldur	w16, [x9, #-0x4]
   11714: 72988151     	movk	w17, #0xc40a
   11718: 72b3f271     	movk	w17, #0x9f93, lsl #16
   1171c: 6b11021f     	cmp	w16, w17
   11720: 54000040     	b.eq	0x11728 <syna_tcm_v1_read_message+0xd00>
   11724: d4304520     	brk	#0x8229
   11728: d63f0120     	blr	x9
   1172c: 14000155     	b	0x11c80 <syna_tcm_v1_read_message+0x1258>
   11730: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011730:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   11734: 91000000     	add	x0, x0, #0x0
		0000000000011734:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   11738: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011738:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   1173c: 91000021     	add	x1, x1, #0x0
		000000000001173c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   11740: 94000000     	bl	0x11740 <syna_tcm_v1_read_message+0xd18>
		0000000000011740:  R_AARCH64_CALL26	_printk
   11744: 94000000     	bl	0x11744 <syna_tcm_v1_read_message+0xd1c>
		0000000000011744:  R_AARCH64_CALL26	syna_request_managed_device
   11748: b5ffa080     	cbnz	x0, 0x10b58 <syna_tcm_v1_read_message+0x130>
   1174c: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		000000000001174c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   11750: 91000000     	add	x0, x0, #0x0
		0000000000011750:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   11754: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011754:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bfa
   11758: 91000021     	add	x1, x1, #0x0
		0000000000011758:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bfa
   1175c: 94000000     	bl	0x1175c <syna_tcm_v1_read_message+0xd34>
		000000000001175c:  R_AARCH64_CALL26	_printk
   11760: f85f83a8     	ldur	x8, [x29, #-0x8]
   11764: f900011f     	str	xzr, [x8]
   11768: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011768:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d74
   1176c: 91000000     	add	x0, x0, #0x0
		000000000001176c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d74
   11770: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011770:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x77fc
   11774: 91000021     	add	x1, x1, #0x0
		0000000000011774:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x77fc
   11778: 2a1603e2     	mov	w2, w22
   1177c: 94000000     	bl	0x1177c <syna_tcm_v1_read_message+0xd54>
		000000000001177c:  R_AARCH64_CALL26	_printk
   11780: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011780:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e98
   11784: 91000000     	add	x0, x0, #0x0
		0000000000011784:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e98
   11788: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011788:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbed0
   1178c: 91000021     	add	x1, x1, #0x0
		000000000001178c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbed0
   11790: f901267f     	str	xzr, [x19, #0x248]
   11794: 94000000     	bl	0x11794 <syna_tcm_v1_read_message+0xd6c>
		0000000000011794:  R_AARCH64_CALL26	_printk
   11798: 394a0262     	ldrb	w2, [x19, #0x280]
   1179c: 7100045f     	cmp	w2, #0x1
   117a0: 540014a1     	b.ne	0x11a34 <syna_tcm_v1_read_message+0x100c>
   117a4: 2a1f03e8     	mov	w8, wzr
   117a8: 91094260     	add	x0, x19, #0x250
   117ac: 390a0268     	strb	w8, [x19, #0x280]
   117b0: 94000000     	bl	0x117b0 <syna_tcm_v1_read_message+0xd88>
		00000000000117b0:  R_AARCH64_CALL26	mutex_unlock
   117b4: 52801fe8     	mov	w8, #0xff               // =255
   117b8: b902027f     	str	wzr, [x19, #0x200]
   117bc: 12801e57     	mov	w23, #-0xf3             // =-243
   117c0: 3907f668     	strb	w8, [x19, #0x1fd]
   117c4: 140001bb     	b	0x11eb0 <syna_tcm_v1_read_message+0x1488>
   117c8: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		00000000000117c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   117cc: 91000000     	add	x0, x0, #0x0
		00000000000117cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   117d0: 14000003     	b	0x117dc <syna_tcm_v1_read_message+0xdb4>
   117d4: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		00000000000117d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70d6
   117d8: 91000000     	add	x0, x0, #0x0
		00000000000117d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70d6
   117dc: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		00000000000117dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bfa
   117e0: 91000021     	add	x1, x1, #0x0
		00000000000117e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bfa
   117e4: 94000000     	bl	0x117e4 <syna_tcm_v1_read_message+0xdbc>
		00000000000117e4:  R_AARCH64_CALL26	_printk
   117e8: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		00000000000117e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d70
   117ec: 91000000     	add	x0, x0, #0x0
		00000000000117ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d70
   117f0: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		00000000000117f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x66ee
   117f4: 91000021     	add	x1, x1, #0x0
		00000000000117f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x66ee
   117f8: 14000064     	b	0x11988 <syna_tcm_v1_read_message+0xf60>
   117fc: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		00000000000117fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   11800: 91000000     	add	x0, x0, #0x0
		0000000000011800:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   11804: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011804:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70c4
   11808: 91000021     	add	x1, x1, #0x0
		0000000000011808:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70c4
   1180c: 94000000     	bl	0x1180c <syna_tcm_v1_read_message+0xde4>
		000000000001180c:  R_AARCH64_CALL26	_printk
   11810: 17fffe7c     	b	0x11200 <syna_tcm_v1_read_message+0x7d8>
   11814: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011814:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   11818: 91000000     	add	x0, x0, #0x0
		0000000000011818:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   1181c: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		000000000001181c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70c4
   11820: 91000021     	add	x1, x1, #0x0
		0000000000011820:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70c4
   11824: 94000000     	bl	0x11824 <syna_tcm_v1_read_message+0xdfc>
		0000000000011824:  R_AARCH64_CALL26	_printk
   11828: 17fffeb8     	b	0x11308 <syna_tcm_v1_read_message+0x8e0>
   1182c: 12801e17     	mov	w23, #-0xf1             // =-241
   11830: 14000160     	b	0x11db0 <syna_tcm_v1_read_message+0x1388>
   11834: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011834:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   11838: 91000000     	add	x0, x0, #0x0
		0000000000011838:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   1183c: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		000000000001183c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70c4
   11840: 91000021     	add	x1, x1, #0x0
		0000000000011840:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70c4
   11844: 94000000     	bl	0x11844 <syna_tcm_v1_read_message+0xe1c>
		0000000000011844:  R_AARCH64_CALL26	_printk
   11848: 17fffef8     	b	0x11428 <syna_tcm_v1_read_message+0xa00>
   1184c: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		000000000001184c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   11850: 91000000     	add	x0, x0, #0x0
		0000000000011850:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   11854: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011854:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70c4
   11858: 91000021     	add	x1, x1, #0x0
		0000000000011858:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70c4
   1185c: 94000000     	bl	0x1185c <syna_tcm_v1_read_message+0xe34>
		000000000001185c:  R_AARCH64_CALL26	_printk
   11860: 17fffd2f     	b	0x10d1c <syna_tcm_v1_read_message+0x2f4>
   11864: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011864:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8406
   11868: 91000000     	add	x0, x0, #0x0
		0000000000011868:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8406
   1186c: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		000000000001186c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a80
   11870: 91000021     	add	x1, x1, #0x0
		0000000000011870:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a80
   11874: 94000000     	bl	0x11874 <syna_tcm_v1_read_message+0xe4c>
		0000000000011874:  R_AARCH64_CALL26	_printk
   11878: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011878:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1476
   1187c: 91000000     	add	x0, x0, #0x0
		000000000001187c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1476
   11880: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011880:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x85ce
   11884: 91000021     	add	x1, x1, #0x0
		0000000000011884:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x85ce
   11888: 94000000     	bl	0x11888 <syna_tcm_v1_read_message+0xe60>
		0000000000011888:  R_AARCH64_CALL26	_printk
   1188c: 394a0262     	ldrb	w2, [x19, #0x280]
   11890: 7100045f     	cmp	w2, #0x1
   11894: 540035e1     	b.ne	0x11f50 <syna_tcm_v1_read_message+0x1528>
   11898: 2a1f03e8     	mov	w8, wzr
   1189c: 91094260     	add	x0, x19, #0x250
   118a0: 390a0268     	strb	w8, [x19, #0x280]
   118a4: 94000000     	bl	0x118a4 <syna_tcm_v1_read_message+0xe7c>
		00000000000118a4:  R_AARCH64_CALL26	mutex_unlock
   118a8: 140000f6     	b	0x11c80 <syna_tcm_v1_read_message+0x1258>
   118ac: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		00000000000118ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   118b0: 91000000     	add	x0, x0, #0x0
		00000000000118b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   118b4: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		00000000000118b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   118b8: 91000021     	add	x1, x1, #0x0
		00000000000118b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   118bc: 94000000     	bl	0x118bc <syna_tcm_v1_read_message+0xe94>
		00000000000118bc:  R_AARCH64_CALL26	_printk
   118c0: 394a0268     	ldrb	w8, [x19, #0x280]
   118c4: 51000508     	sub	w8, w8, #0x1
   118c8: 17fffef2     	b	0x11490 <syna_tcm_v1_read_message+0xa68>
   118cc: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		00000000000118cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   118d0: 91000000     	add	x0, x0, #0x0
		00000000000118d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   118d4: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		00000000000118d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   118d8: 91000021     	add	x1, x1, #0x0
		00000000000118d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   118dc: 94000000     	bl	0x118dc <syna_tcm_v1_read_message+0xeb4>
		00000000000118dc:  R_AARCH64_CALL26	_printk
   118e0: 39450268     	ldrb	w8, [x19, #0x140]
   118e4: 51000508     	sub	w8, w8, #0x1
   118e8: 17fffef1     	b	0x114ac <syna_tcm_v1_read_message+0xa84>
   118ec: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		00000000000118ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   118f0: 91000000     	add	x0, x0, #0x0
		00000000000118f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   118f4: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		00000000000118f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70c4
   118f8: 91000021     	add	x1, x1, #0x0
		00000000000118f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70c4
   118fc: 94000000     	bl	0x118fc <syna_tcm_v1_read_message+0xed4>
		00000000000118fc:  R_AARCH64_CALL26	_printk
   11900: 17fffd79     	b	0x10ee4 <syna_tcm_v1_read_message+0x4bc>
   11904: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011904:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   11908: 91000000     	add	x0, x0, #0x0
		0000000000011908:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   1190c: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		000000000001190c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   11910: 91000021     	add	x1, x1, #0x0
		0000000000011910:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   11914: 94000000     	bl	0x11914 <syna_tcm_v1_read_message+0xeec>
		0000000000011914:  R_AARCH64_CALL26	_printk
   11918: 394c4268     	ldrb	w8, [x19, #0x310]
   1191c: 51000508     	sub	w8, w8, #0x1
   11920: 17fffe0a     	b	0x11148 <syna_tcm_v1_read_message+0x720>
   11924: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011924:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   11928: 91000000     	add	x0, x0, #0x0
		0000000000011928:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   1192c: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		000000000001192c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   11930: 91000021     	add	x1, x1, #0x0
		0000000000011930:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   11934: 94000000     	bl	0x11934 <syna_tcm_v1_read_message+0xf0c>
		0000000000011934:  R_AARCH64_CALL26	_printk
   11938: 394a0268     	ldrb	w8, [x19, #0x280]
   1193c: 51000508     	sub	w8, w8, #0x1
   11940: 17fffe09     	b	0x11164 <syna_tcm_v1_read_message+0x73c>
   11944: aa1703f6     	mov	x22, x23
   11948: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011948:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4df2
   1194c: 91000021     	add	x1, x1, #0x0
		000000000001194c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4df2
   11950: aa1603e0     	mov	x0, x22
   11954: 94000000     	bl	0x11954 <syna_tcm_v1_read_message+0xf2c>
		0000000000011954:  R_AARCH64_CALL26	_printk
   11958: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011958:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b6
   1195c: 91000000     	add	x0, x0, #0x0
		000000000001195c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b6
   11960: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011960:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x66ee
   11964: 91000021     	add	x1, x1, #0x0
		0000000000011964:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x66ee
   11968: 2a1403e2     	mov	w2, w20
   1196c: 94000000     	bl	0x1196c <syna_tcm_v1_read_message+0xf44>
		000000000001196c:  R_AARCH64_CALL26	_printk
   11970: 94000000     	bl	0x11970 <syna_tcm_v1_read_message+0xf48>
		0000000000011970:  R_AARCH64_CALL26	syna_request_managed_device
   11974: b5ff9940     	cbnz	x0, 0x10c9c <syna_tcm_v1_read_message+0x274>
   11978: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011978:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   1197c: 91000000     	add	x0, x0, #0x0
		000000000001197c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   11980: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011980:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   11984: 91000021     	add	x1, x1, #0x0
		0000000000011984:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   11988: 94000000     	bl	0x11988 <syna_tcm_v1_read_message+0xf60>
		0000000000011988:  R_AARCH64_CALL26	_printk
   1198c: 12801e37     	mov	w23, #-0xf2             // =-242
   11990: 14000148     	b	0x11eb0 <syna_tcm_v1_read_message+0x1488>
   11994: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011994:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   11998: 91000000     	add	x0, x0, #0x0
		0000000000011998:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   1199c: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		000000000001199c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   119a0: 91000021     	add	x1, x1, #0x0
		00000000000119a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   119a4: 12001d02     	and	w2, w8, #0xff
   119a8: 94000000     	bl	0x119a8 <syna_tcm_v1_read_message+0xf80>
		00000000000119a8:  R_AARCH64_CALL26	_printk
   119ac: 394a0268     	ldrb	w8, [x19, #0x280]
   119b0: 51000508     	sub	w8, w8, #0x1
   119b4: 17fffe2a     	b	0x1125c <syna_tcm_v1_read_message+0x834>
   119b8: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		00000000000119b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   119bc: 91000000     	add	x0, x0, #0x0
		00000000000119bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   119c0: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		00000000000119c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70c4
   119c4: 91000021     	add	x1, x1, #0x0
		00000000000119c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70c4
   119c8: 94000000     	bl	0x119c8 <syna_tcm_v1_read_message+0xfa0>
		00000000000119c8:  R_AARCH64_CALL26	_printk
   119cc: 17fffe72     	b	0x11394 <syna_tcm_v1_read_message+0x96c>
   119d0: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		00000000000119d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70d6
   119d4: 91000000     	add	x0, x0, #0x0
		00000000000119d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70d6
   119d8: 1400009a     	b	0x11c40 <syna_tcm_v1_read_message+0x1218>
   119dc: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		00000000000119dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   119e0: 91000000     	add	x0, x0, #0x0
		00000000000119e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   119e4: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		00000000000119e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70c4
   119e8: 91000021     	add	x1, x1, #0x0
		00000000000119e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70c4
   119ec: 94000000     	bl	0x119ec <syna_tcm_v1_read_message+0xfc4>
		00000000000119ec:  R_AARCH64_CALL26	_printk
   119f0: 17fffee0     	b	0x11570 <syna_tcm_v1_read_message+0xb48>
   119f4: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		00000000000119f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   119f8: 91000000     	add	x0, x0, #0x0
		00000000000119f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   119fc: 14000018     	b	0x11a5c <syna_tcm_v1_read_message+0x1034>
   11a00: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011a00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8406
   11a04: 91000000     	add	x0, x0, #0x0
		0000000000011a04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8406
   11a08: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011a08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a80
   11a0c: 91000021     	add	x1, x1, #0x0
		0000000000011a0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a80
   11a10: 94000000     	bl	0x11a10 <syna_tcm_v1_read_message+0xfe8>
		0000000000011a10:  R_AARCH64_CALL26	_printk
   11a14: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011a14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9ca2
   11a18: 91000000     	add	x0, x0, #0x0
		0000000000011a18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9ca2
   11a1c: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011a1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc648
   11a20: 91000021     	add	x1, x1, #0x0
		0000000000011a20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc648
   11a24: 94000000     	bl	0x11a24 <syna_tcm_v1_read_message+0xffc>
		0000000000011a24:  R_AARCH64_CALL26	_printk
   11a28: f85f83a0     	ldur	x0, [x29, #-0x8]
   11a2c: 97fff981     	bl	0x10030 <syna_tcm_v1_detect+0x3c4>
		0000000000011a2c:  R_AARCH64_CALL26	syna_tcm_buf_unlock
   11a30: 14000104     	b	0x11e40 <syna_tcm_v1_read_message+0x1418>
   11a34: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011a34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   11a38: 91000000     	add	x0, x0, #0x0
		0000000000011a38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   11a3c: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011a3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   11a40: 91000021     	add	x1, x1, #0x0
		0000000000011a40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   11a44: 94000000     	bl	0x11a44 <syna_tcm_v1_read_message+0x101c>
		0000000000011a44:  R_AARCH64_CALL26	_printk
   11a48: 394a0268     	ldrb	w8, [x19, #0x280]
   11a4c: 51000508     	sub	w8, w8, #0x1
   11a50: 17ffff56     	b	0x117a8 <syna_tcm_v1_read_message+0xd80>
   11a54: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011a54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70d6
   11a58: 91000000     	add	x0, x0, #0x0
		0000000000011a58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70d6
   11a5c: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011a5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bfa
   11a60: 91000021     	add	x1, x1, #0x0
		0000000000011a60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bfa
   11a64: 94000000     	bl	0x11a64 <syna_tcm_v1_read_message+0x103c>
		0000000000011a64:  R_AARCH64_CALL26	_printk
   11a68: f85f83a8     	ldur	x8, [x29, #-0x8]
   11a6c: f900011f     	str	xzr, [x8]
   11a70: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011a70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d74
   11a74: 91000000     	add	x0, x0, #0x0
		0000000000011a74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d74
   11a78: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011a78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x48c4
   11a7c: 91000021     	add	x1, x1, #0x0
		0000000000011a7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x48c4
   11a80: 2a1603e2     	mov	w2, w22
   11a84: 94000000     	bl	0x11a84 <syna_tcm_v1_read_message+0x105c>
		0000000000011a84:  R_AARCH64_CALL26	_printk
   11a88: 94000000     	bl	0x11a88 <syna_tcm_v1_read_message+0x1060>
		0000000000011a88:  R_AARCH64_CALL26	syna_request_managed_device
   11a8c: b5000100     	cbnz	x0, 0x11aac <syna_tcm_v1_read_message+0x1084>
   11a90: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011a90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   11a94: 91000000     	add	x0, x0, #0x0
		0000000000011a94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   11a98: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011a98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   11a9c: 91000021     	add	x1, x1, #0x0
		0000000000011a9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   11aa0: 94000000     	bl	0x11aa0 <syna_tcm_v1_read_message+0x1078>
		0000000000011aa0:  R_AARCH64_CALL26	_printk
   11aa4: f9400bf8     	ldr	x24, [sp, #0x10]
   11aa8: 140000b8     	b	0x11d88 <syna_tcm_v1_read_message+0x1360>
   11aac: f9400bf8     	ldr	x24, [sp, #0x10]
   11ab0: b40016d7     	cbz	x23, 0x11d88 <syna_tcm_v1_read_message+0x1360>
   11ab4: aa1703e1     	mov	x1, x23
   11ab8: 140000b3     	b	0x11d84 <syna_tcm_v1_read_message+0x135c>
   11abc: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011abc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   11ac0: 91000000     	add	x0, x0, #0x0
		0000000000011ac0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   11ac4: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011ac4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70c4
   11ac8: 91000021     	add	x1, x1, #0x0
		0000000000011ac8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70c4
   11acc: 94000000     	bl	0x11acc <syna_tcm_v1_read_message+0x10a4>
		0000000000011acc:  R_AARCH64_CALL26	_printk
   11ad0: 17fffe7e     	b	0x114c8 <syna_tcm_v1_read_message+0xaa0>
   11ad4: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011ad4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8e8a
   11ad8: 91000000     	add	x0, x0, #0x0
		0000000000011ad8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8e8a
   11adc: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011adc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x85ce
   11ae0: 91000021     	add	x1, x1, #0x0
		0000000000011ae0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x85ce
   11ae4: 94000000     	bl	0x11ae4 <syna_tcm_v1_read_message+0x10bc>
		0000000000011ae4:  R_AARCH64_CALL26	_printk
   11ae8: f85f83a0     	ldur	x0, [x29, #-0x8]
   11aec: 97fff951     	bl	0x10030 <syna_tcm_v1_detect+0x3c4>
		0000000000011aec:  R_AARCH64_CALL26	syna_tcm_buf_unlock
   11af0: b5001c39     	cbnz	x25, 0x11e74 <syna_tcm_v1_read_message+0x144c>
   11af4: 140000e2     	b	0x11e7c <syna_tcm_v1_read_message+0x1454>
   11af8: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011af8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   11afc: 91000000     	add	x0, x0, #0x0
		0000000000011afc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   11b00: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011b00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   11b04: 91000021     	add	x1, x1, #0x0
		0000000000011b04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   11b08: 94000000     	bl	0x11b08 <syna_tcm_v1_read_message+0x10e0>
		0000000000011b08:  R_AARCH64_CALL26	_printk
   11b0c: 394a0268     	ldrb	w8, [x19, #0x280]
   11b10: 51000508     	sub	w8, w8, #0x1
   11b14: 17fffeb1     	b	0x115d8 <syna_tcm_v1_read_message+0xbb0>
   11b18: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011b18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   11b1c: 91000000     	add	x0, x0, #0x0
		0000000000011b1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   11b20: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011b20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70c4
   11b24: 91000021     	add	x1, x1, #0x0
		0000000000011b24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70c4
   11b28: 94000000     	bl	0x11b28 <syna_tcm_v1_read_message+0x1100>
		0000000000011b28:  R_AARCH64_CALL26	_printk
   11b2c: 17fffef0     	b	0x116ec <syna_tcm_v1_read_message+0xcc4>
   11b30: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011b30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   11b34: 91000000     	add	x0, x0, #0x0
		0000000000011b34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   11b38: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011b38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   11b3c: 91000021     	add	x1, x1, #0x0
		0000000000011b3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   11b40: 94000000     	bl	0x11b40 <syna_tcm_v1_read_message+0x1118>
		0000000000011b40:  R_AARCH64_CALL26	_printk
   11b44: 39462268     	ldrb	w8, [x19, #0x188]
   11b48: 51000508     	sub	w8, w8, #0x1
   11b4c: 17fffeb3     	b	0x11618 <syna_tcm_v1_read_message+0xbf0>
   11b50: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011b50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8406
   11b54: 91000000     	add	x0, x0, #0x0
		0000000000011b54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8406
   11b58: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011b58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a80
   11b5c: 91000021     	add	x1, x1, #0x0
		0000000000011b5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a80
   11b60: 2a1803e4     	mov	w4, w24
   11b64: 94000000     	bl	0x11b64 <syna_tcm_v1_read_message+0x113c>
		0000000000011b64:  R_AARCH64_CALL26	_printk
   11b68: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011b68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb232
   11b6c: 91000000     	add	x0, x0, #0x0
		0000000000011b6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb232
   11b70: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011b70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2318
   11b74: 91000021     	add	x1, x1, #0x0
		0000000000011b74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2318
   11b78: 94000000     	bl	0x11b78 <syna_tcm_v1_read_message+0x1150>
		0000000000011b78:  R_AARCH64_CALL26	_printk
   11b7c: 128002b7     	mov	w23, #-0x16             // =-22
   11b80: 52800034     	mov	w20, #0x1               // =1
   11b84: 17fffd6b     	b	0x11130 <syna_tcm_v1_read_message+0x708>
   11b88: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011b88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   11b8c: 91000000     	add	x0, x0, #0x0
		0000000000011b8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   11b90: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011b90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   11b94: 91000021     	add	x1, x1, #0x0
		0000000000011b94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   11b98: 94000000     	bl	0x11b98 <syna_tcm_v1_read_message+0x1170>
		0000000000011b98:  R_AARCH64_CALL26	_printk
   11b9c: 394a0268     	ldrb	w8, [x19, #0x280]
   11ba0: 51000508     	sub	w8, w8, #0x1
   11ba4: 17fffe5a     	b	0x1150c <syna_tcm_v1_read_message+0xae4>
   11ba8: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011ba8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e6
   11bac: 91000000     	add	x0, x0, #0x0
		0000000000011bac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e6
   11bb0: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011bb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x48c4
   11bb4: 91000021     	add	x1, x1, #0x0
		0000000000011bb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x48c4
   11bb8: 94000000     	bl	0x11bb8 <syna_tcm_v1_read_message+0x1190>
		0000000000011bb8:  R_AARCH64_CALL26	_printk
   11bbc: 94000000     	bl	0x11bbc <syna_tcm_v1_read_message+0x1194>
		0000000000011bbc:  R_AARCH64_CALL26	syna_request_managed_device
   11bc0: f9400bf8     	ldr	x24, [sp, #0x10]
   11bc4: b50000c0     	cbnz	x0, 0x11bdc <syna_tcm_v1_read_message+0x11b4>
   11bc8: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011bc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   11bcc: 91000000     	add	x0, x0, #0x0
		0000000000011bcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   11bd0: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011bd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   11bd4: 91000021     	add	x1, x1, #0x0
		0000000000011bd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   11bd8: 94000000     	bl	0x11bd8 <syna_tcm_v1_read_message+0x11b0>
		0000000000011bd8:  R_AARCH64_CALL26	_printk
   11bdc: f85f83a8     	ldur	x8, [x29, #-0x8]
   11be0: f9400114     	ldr	x20, [x8]
   11be4: 94000000     	bl	0x11be4 <syna_tcm_v1_read_message+0x11bc>
		0000000000011be4:  R_AARCH64_CALL26	syna_request_managed_device
   11be8: b5000ca0     	cbnz	x0, 0x11d7c <syna_tcm_v1_read_message+0x1354>
   11bec: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011bec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   11bf0: 91000000     	add	x0, x0, #0x0
		0000000000011bf0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   11bf4: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011bf4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   11bf8: 91000021     	add	x1, x1, #0x0
		0000000000011bf8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   11bfc: 94000000     	bl	0x11bfc <syna_tcm_v1_read_message+0x11d4>
		0000000000011bfc:  R_AARCH64_CALL26	_printk
   11c00: 14000062     	b	0x11d88 <syna_tcm_v1_read_message+0x1360>
   11c04: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011c04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   11c08: 91000000     	add	x0, x0, #0x0
		0000000000011c08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   11c0c: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011c0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   11c10: 91000021     	add	x1, x1, #0x0
		0000000000011c10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   11c14: 94000000     	bl	0x11c14 <syna_tcm_v1_read_message+0x11ec>
		0000000000011c14:  R_AARCH64_CALL26	_printk
   11c18: 17fffc5f     	b	0x10d94 <syna_tcm_v1_read_message+0x36c>
   11c1c: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011c1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   11c20: 91000000     	add	x0, x0, #0x0
		0000000000011c20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   11c24: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011c24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   11c28: 91000021     	add	x1, x1, #0x0
		0000000000011c28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   11c2c: 94000000     	bl	0x11c2c <syna_tcm_v1_read_message+0x1204>
		0000000000011c2c:  R_AARCH64_CALL26	_printk
   11c30: 94000000     	bl	0x11c30 <syna_tcm_v1_read_message+0x1208>
		0000000000011c30:  R_AARCH64_CALL26	syna_request_managed_device
   11c34: b5ffb8e0     	cbnz	x0, 0x11350 <syna_tcm_v1_read_message+0x928>
   11c38: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011c38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   11c3c: 91000000     	add	x0, x0, #0x0
		0000000000011c3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   11c40: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011c40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bfa
   11c44: 91000021     	add	x1, x1, #0x0
		0000000000011c44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bfa
   11c48: 94000000     	bl	0x11c48 <syna_tcm_v1_read_message+0x1220>
		0000000000011c48:  R_AARCH64_CALL26	_printk
   11c4c: f900827f     	str	xzr, [x19, #0x100]
   11c50: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011c50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d74
   11c54: 91000000     	add	x0, x0, #0x0
		0000000000011c54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d74
   11c58: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011c58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x77fc
   11c5c: 91000021     	add	x1, x1, #0x0
		0000000000011c5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x77fc
   11c60: 2a1703e2     	mov	w2, w23
   11c64: 94000000     	bl	0x11c64 <syna_tcm_v1_read_message+0x123c>
		0000000000011c64:  R_AARCH64_CALL26	_printk
   11c68: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011c68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x670a
   11c6c: 91000000     	add	x0, x0, #0x0
		0000000000011c6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x670a
   11c70: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011c70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x85ce
   11c74: 91000021     	add	x1, x1, #0x0
		0000000000011c74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x85ce
   11c78: f900867f     	str	xzr, [x19, #0x108]
   11c7c: 94000000     	bl	0x11c7c <syna_tcm_v1_read_message+0x1254>
		0000000000011c7c:  R_AARCH64_CALL26	_printk
   11c80: 39450262     	ldrb	w2, [x19, #0x140]
   11c84: 7100045f     	cmp	w2, #0x1
   11c88: 540000e1     	b.ne	0x11ca4 <syna_tcm_v1_read_message+0x127c>
   11c8c: 2a1f03e8     	mov	w8, wzr
   11c90: 91044260     	add	x0, x19, #0x110
   11c94: 39050268     	strb	w8, [x19, #0x140]
   11c98: 94000000     	bl	0x11c98 <syna_tcm_v1_read_message+0x1270>
		0000000000011c98:  R_AARCH64_CALL26	mutex_unlock
   11c9c: b5000ed9     	cbnz	x25, 0x11e74 <syna_tcm_v1_read_message+0x144c>
   11ca0: 14000077     	b	0x11e7c <syna_tcm_v1_read_message+0x1454>
   11ca4: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011ca4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   11ca8: 91000000     	add	x0, x0, #0x0
		0000000000011ca8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   11cac: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011cac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   11cb0: 91000021     	add	x1, x1, #0x0
		0000000000011cb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   11cb4: 94000000     	bl	0x11cb4 <syna_tcm_v1_read_message+0x128c>
		0000000000011cb4:  R_AARCH64_CALL26	_printk
   11cb8: 39450268     	ldrb	w8, [x19, #0x140]
   11cbc: 51000508     	sub	w8, w8, #0x1
   11cc0: 17fffff4     	b	0x11c90 <syna_tcm_v1_read_message+0x1268>
   11cc4: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011cc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   11cc8: 91000000     	add	x0, x0, #0x0
		0000000000011cc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   11ccc: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011ccc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   11cd0: 91000021     	add	x1, x1, #0x0
		0000000000011cd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   11cd4: 94000000     	bl	0x11cd4 <syna_tcm_v1_read_message+0x12ac>
		0000000000011cd4:  R_AARCH64_CALL26	_printk
   11cd8: 394a0268     	ldrb	w8, [x19, #0x280]
   11cdc: 51000508     	sub	w8, w8, #0x1
   11ce0: 17fffc65     	b	0x10e74 <syna_tcm_v1_read_message+0x44c>
   11ce4: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011ce4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70d6
   11ce8: 91000000     	add	x0, x0, #0x0
		0000000000011ce8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70d6
   11cec: 14000045     	b	0x11e00 <syna_tcm_v1_read_message+0x13d8>
   11cf0: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011cf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x674a
   11cf4: 91000000     	add	x0, x0, #0x0
		0000000000011cf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x674a
   11cf8: 1400004f     	b	0x11e34 <syna_tcm_v1_read_message+0x140c>
   11cfc: b85f43a4     	ldur	w4, [x29, #-0xc]
   11d00: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011d00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4266
   11d04: 91000000     	add	x0, x0, #0x0
		0000000000011d04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4266
   11d08: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011d08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2318
   11d0c: 91000021     	add	x1, x1, #0x0
		0000000000011d0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2318
   11d10: 2a1c03e2     	mov	w2, w28
   11d14: 2a1903e3     	mov	w3, w25
   11d18: 94000000     	bl	0x11d18 <syna_tcm_v1_read_message+0x12f0>
		0000000000011d18:  R_AARCH64_CALL26	_printk
   11d1c: 12801e37     	mov	w23, #-0xf2             // =-242
   11d20: 52800034     	mov	w20, #0x1               // =1
   11d24: 17fffd03     	b	0x11130 <syna_tcm_v1_read_message+0x708>
   11d28: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011d28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70d6
   11d2c: 91000000     	add	x0, x0, #0x0
		0000000000011d2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70d6
   11d30: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011d30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bfa
   11d34: 91000021     	add	x1, x1, #0x0
		0000000000011d34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bfa
   11d38: 94000000     	bl	0x11d38 <syna_tcm_v1_read_message+0x1310>
		0000000000011d38:  R_AARCH64_CALL26	_printk
   11d3c: f9016a7f     	str	xzr, [x19, #0x2d0]
   11d40: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011d40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d74
   11d44: 91000000     	add	x0, x0, #0x0
		0000000000011d44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d74
   11d48: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011d48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x77fc
   11d4c: 91000021     	add	x1, x1, #0x0
		0000000000011d4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x77fc
   11d50: 2a1603e2     	mov	w2, w22
   11d54: 94000000     	bl	0x11d54 <syna_tcm_v1_read_message+0x132c>
		0000000000011d54:  R_AARCH64_CALL26	_printk
   11d58: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011d58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc60a
   11d5c: 91000000     	add	x0, x0, #0x0
		0000000000011d5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc60a
   11d60: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011d60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2318
   11d64: 91000021     	add	x1, x1, #0x0
		0000000000011d64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2318
   11d68: f9016e7f     	str	xzr, [x19, #0x2d8]
   11d6c: 94000000     	bl	0x11d6c <syna_tcm_v1_read_message+0x1344>
		0000000000011d6c:  R_AARCH64_CALL26	_printk
   11d70: 12801e57     	mov	w23, #-0xf3             // =-243
   11d74: 52800034     	mov	w20, #0x1               // =1
   11d78: 17fffcee     	b	0x11130 <syna_tcm_v1_read_message+0x708>
   11d7c: b4000074     	cbz	x20, 0x11d88 <syna_tcm_v1_read_message+0x1360>
   11d80: aa1403e1     	mov	x1, x20
   11d84: 94000000     	bl	0x11d84 <syna_tcm_v1_read_message+0x135c>
		0000000000011d84:  R_AARCH64_CALL26	devm_kfree
   11d88: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011d88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9c66
   11d8c: 91000000     	add	x0, x0, #0x0
		0000000000011d8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9c66
   11d90: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011d90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2318
   11d94: 91000021     	add	x1, x1, #0x0
		0000000000011d94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2318
   11d98: b90002bf     	str	wzr, [x21]
   11d9c: 94000000     	bl	0x11d9c <syna_tcm_v1_read_message+0x1374>
		0000000000011d9c:  R_AARCH64_CALL26	_printk
   11da0: f85f83a0     	ldur	x0, [x29, #-0x8]
   11da4: 97fff8a3     	bl	0x10030 <syna_tcm_v1_detect+0x3c4>
		0000000000011da4:  R_AARCH64_CALL26	syna_tcm_buf_unlock
   11da8: b9401bed     	ldr	w13, [sp, #0x18]
   11dac: 12801e57     	mov	w23, #-0xf3             // =-243
   11db0: 39400303     	ldrb	w3, [x24]
   11db4: 39400704     	ldrb	w4, [x24, #0x1]
   11db8: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011db8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9c1a
   11dbc: 91000000     	add	x0, x0, #0x0
		0000000000011dbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9c1a
   11dc0: 39400b05     	ldrb	w5, [x24, #0x2]
   11dc4: 39400f06     	ldrb	w6, [x24, #0x3]
   11dc8: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011dc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbed0
   11dcc: 91000021     	add	x1, x1, #0x0
		0000000000011dcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbed0
   11dd0: 2a0d03e2     	mov	w2, w13
   11dd4: 94000000     	bl	0x11dd4 <syna_tcm_v1_read_message+0x13ac>
		0000000000011dd4:  R_AARCH64_CALL26	_printk
   11dd8: 14000036     	b	0x11eb0 <syna_tcm_v1_read_message+0x1488>
   11ddc: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011ddc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   11de0: 91000000     	add	x0, x0, #0x0
		0000000000011de0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   11de4: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011de4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   11de8: 91000021     	add	x1, x1, #0x0
		0000000000011de8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   11dec: 94000000     	bl	0x11dec <syna_tcm_v1_read_message+0x13c4>
		0000000000011dec:  R_AARCH64_CALL26	_printk
   11df0: 94000000     	bl	0x11df0 <syna_tcm_v1_read_message+0x13c8>
		0000000000011df0:  R_AARCH64_CALL26	syna_request_managed_device
   11df4: b5ffaf40     	cbnz	x0, 0x113dc <syna_tcm_v1_read_message+0x9b4>
   11df8: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011df8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   11dfc: 91000000     	add	x0, x0, #0x0
		0000000000011dfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   11e00: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011e00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bfa
   11e04: 91000021     	add	x1, x1, #0x0
		0000000000011e04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bfa
   11e08: 94000000     	bl	0x11e08 <syna_tcm_v1_read_message+0x13e0>
		0000000000011e08:  R_AARCH64_CALL26	_printk
   11e0c: f900a67f     	str	xzr, [x19, #0x148]
   11e10: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011e10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d74
   11e14: 91000000     	add	x0, x0, #0x0
		0000000000011e14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d74
   11e18: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011e18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x77fc
   11e1c: 91000021     	add	x1, x1, #0x0
		0000000000011e1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x77fc
   11e20: 2a1603e2     	mov	w2, w22
   11e24: 94000000     	bl	0x11e24 <syna_tcm_v1_read_message+0x13fc>
		0000000000011e24:  R_AARCH64_CALL26	_printk
   11e28: f900aa7f     	str	xzr, [x19, #0x150]
   11e2c: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011e2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b98
   11e30: 91000000     	add	x0, x0, #0x0
		0000000000011e30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b98
   11e34: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011e34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc648
   11e38: 91000021     	add	x1, x1, #0x0
		0000000000011e38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc648
   11e3c: 94000000     	bl	0x11e3c <syna_tcm_v1_read_message+0x1414>
		0000000000011e3c:  R_AARCH64_CALL26	_printk
   11e40: 91052260     	add	x0, x19, #0x148
   11e44: 97fff87b     	bl	0x10030 <syna_tcm_v1_detect+0x3c4>
		0000000000011e44:  R_AARCH64_CALL26	syna_tcm_buf_unlock
   11e48: 3947fa62     	ldrb	w2, [x19, #0x1fe]
   11e4c: 34000122     	cbz	w2, 0x11e70 <syna_tcm_v1_read_message+0x1448>
   11e50: 7100045f     	cmp	w2, #0x1
   11e54: 540005a1     	b.ne	0x11f08 <syna_tcm_v1_read_message+0x14e0>
   11e58: b901fa7f     	str	wzr, [x19, #0x1f8]
   11e5c: 91088260     	add	x0, x19, #0x220
   11e60: 94000000     	bl	0x11e60 <syna_tcm_v1_read_message+0x1438>
		0000000000011e60:  R_AARCH64_CALL26	completion_done
   11e64: 37000060     	tbnz	w0, #0x0, 0x11e70 <syna_tcm_v1_read_message+0x1448>
   11e68: 91088260     	add	x0, x19, #0x220
   11e6c: 94000000     	bl	0x11e6c <syna_tcm_v1_read_message+0x1444>
		0000000000011e6c:  R_AARCH64_CALL26	complete
   11e70: b4000079     	cbz	x25, 0x11e7c <syna_tcm_v1_read_message+0x1454>
   11e74: 3947f668     	ldrb	w8, [x19, #0x1fd]
   11e78: 39000328     	strb	w8, [x25]
   11e7c: 2a1f03f7     	mov	w23, wzr
   11e80: 3400019a     	cbz	w26, 0x11eb0 <syna_tcm_v1_read_message+0x1488>
   11e84: b9403e68     	ldr	w8, [x19, #0x3c]
   11e88: b9420269     	ldr	w9, [x19, #0x200]
   11e8c: 3947f66b     	ldrb	w11, [x19, #0x1fd]
   11e90: 5100150a     	sub	w10, w8, #0x5
   11e94: 6b0a013f     	cmp	w9, w10
   11e98: 1a8a312a     	csel	w10, w9, w10, lo
   11e9c: 7100011f     	cmp	w8, #0x0
   11ea0: 1a8a0128     	csel	w8, w9, w10, eq
   11ea4: 7100417f     	cmp	w11, #0x10
   11ea8: 1a8833e8     	csel	w8, wzr, w8, lo
   11eac: b9037e68     	str	w8, [x19, #0x37c]
   11eb0: b9421260     	ldr	w0, [x19, #0x210]
   11eb4: 7100041f     	cmp	w0, #0x1
   11eb8: 5400010b     	b.lt	0x11ed8 <syna_tcm_v1_read_message+0x14b0>
   11ebc: b9421668     	ldr	w8, [x19, #0x214]
   11ec0: 7100051f     	cmp	w8, #0x1
   11ec4: 540000ab     	b.lt	0x11ed8 <syna_tcm_v1_read_message+0x14b0>
   11ec8: 6b00011f     	cmp	w8, w0
   11ecc: 52800042     	mov	w2, #0x2                // =2
   11ed0: 1a808101     	csel	w1, w8, w0, hi
   11ed4: 94000000     	bl	0x11ed4 <syna_tcm_v1_read_message+0x14ac>
		0000000000011ed4:  R_AARCH64_CALL26	usleep_range_state
   11ed8: 910d2260     	add	x0, x19, #0x348
   11edc: 94000000     	bl	0x11edc <syna_tcm_v1_read_message+0x14b4>
		0000000000011edc:  R_AARCH64_CALL26	mutex_unlock
   11ee0: 2a1703e0     	mov	w0, w23
   11ee4: a9484ff4     	ldp	x20, x19, [sp, #0x80]
   11ee8: a94757f6     	ldp	x22, x21, [sp, #0x70]
   11eec: a9465ff8     	ldp	x24, x23, [sp, #0x60]
   11ef0: a94567fa     	ldp	x26, x25, [sp, #0x50]
   11ef4: a9446ffc     	ldp	x28, x27, [sp, #0x40]
   11ef8: a9437bfd     	ldp	x29, x30, [sp, #0x30]
   11efc: 910243ff     	add	sp, sp, #0x90
   11f00: d50323bf     	autiasp
   11f04: d65f03c0     	ret
   11f08: 71000c5f     	cmp	w2, #0x3
   11f0c: 54000101     	b.ne	0x11f2c <syna_tcm_v1_read_message+0x1504>
   11f10: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011f10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8ebc
   11f14: 91000000     	add	x0, x0, #0x0
		0000000000011f14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8ebc
   11f18: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011f18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc648
   11f1c: 91000021     	add	x1, x1, #0x0
		0000000000011f1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc648
   11f20: 94000000     	bl	0x11f20 <syna_tcm_v1_read_message+0x14f8>
		0000000000011f20:  R_AARCH64_CALL26	_printk
   11f24: b5fffa99     	cbnz	x25, 0x11e74 <syna_tcm_v1_read_message+0x144c>
   11f28: 17ffffd5     	b	0x11e7c <syna_tcm_v1_read_message+0x1454>
   11f2c: 3947f263     	ldrb	w3, [x19, #0x1fc]
   11f30: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011f30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9be
   11f34: 91000000     	add	x0, x0, #0x0
		0000000000011f34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9be
   11f38: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011f38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc648
   11f3c: 91000021     	add	x1, x1, #0x0
		0000000000011f3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc648
   11f40: 94000000     	bl	0x11f40 <syna_tcm_v1_read_message+0x1518>
		0000000000011f40:  R_AARCH64_CALL26	_printk
   11f44: 12800008     	mov	w8, #-0x1               // =-1
   11f48: b901fa68     	str	w8, [x19, #0x1f8]
   11f4c: 17ffffc4     	b	0x11e5c <syna_tcm_v1_read_message+0x1434>
   11f50: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011f50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   11f54: 91000000     	add	x0, x0, #0x0
		0000000000011f54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   11f58: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011f58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   11f5c: 91000021     	add	x1, x1, #0x0
		0000000000011f5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   11f60: 94000000     	bl	0x11f60 <syna_tcm_v1_read_message+0x1538>
		0000000000011f60:  R_AARCH64_CALL26	_printk
   11f64: 394a0268     	ldrb	w8, [x19, #0x280]
   11f68: 51000508     	sub	w8, w8, #0x1
   11f6c: 17fffe4c     	b	0x1189c <syna_tcm_v1_read_message+0xe74>
   11f70: 90000000     	adrp	x0, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011f70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaa7c
   11f74: 91000000     	add	x0, x0, #0x0
		0000000000011f74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaa7c
   11f78: 90000001     	adrp	x1, 0x11000 <syna_tcm_v1_read_message+0x5d8>
		0000000000011f78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x85ce
   11f7c: 91000021     	add	x1, x1, #0x0
		0000000000011f7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x85ce
   11f80: 52800202     	mov	w2, #0x10               // =16
   11f84: 94000000     	bl	0x11f84 <syna_tcm_v1_read_message+0x155c>
		0000000000011f84:  R_AARCH64_CALL26	_printk
   11f88: 12800008     	mov	w8, #-0x1               // =-1
   11f8c: b901fa68     	str	w8, [x19, #0x1f8]
   11f90: 17fffdcc     	b	0x116c0 <syna_tcm_v1_read_message+0xc98>
