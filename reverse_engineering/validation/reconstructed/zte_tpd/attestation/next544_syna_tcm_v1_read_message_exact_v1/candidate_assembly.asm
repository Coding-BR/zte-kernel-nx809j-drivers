
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001ed04 <syna_tcm_v1_read_message>:
   1ed04: d503233f     	paciasp
   1ed08: d10243ff     	sub	sp, sp, #0x90
   1ed0c: a9037bfd     	stp	x29, x30, [sp, #0x30]
   1ed10: a9046ffc     	stp	x28, x27, [sp, #0x40]
   1ed14: a90567fa     	stp	x26, x25, [sp, #0x50]
   1ed18: a9065ff8     	stp	x24, x23, [sp, #0x60]
   1ed1c: a90757f6     	stp	x22, x21, [sp, #0x70]
   1ed20: a9084ff4     	stp	x20, x19, [sp, #0x80]
   1ed24: 9100c3fd     	add	x29, sp, #0x30
   1ed28: b4001de0     	cbz	x0, 0x1f0e4 <syna_tcm_v1_read_message+0x3e0>
   1ed2c: f9402408     	ldr	x8, [x0, #0x48]
   1ed30: aa0003f3     	mov	x19, x0
   1ed34: b4001de8     	cbz	x8, 0x1f0f0 <syna_tcm_v1_read_message+0x3ec>
   1ed38: 394dea68     	ldrb	w8, [x19, #0x37a]
   1ed3c: aa0103f9     	mov	x25, x1
   1ed40: 7100051f     	cmp	w8, #0x1
   1ed44: 540000c1     	b.ne	0x1ed5c <syna_tcm_v1_read_message+0x58>
   1ed48: b941fa68     	ldr	w8, [x19, #0x1f8]
   1ed4c: 7100011f     	cmp	w8, #0x0
   1ed50: 1a9f17fa     	cset	w26, eq
   1ed54: b5000099     	cbnz	x25, 0x1ed64 <syna_tcm_v1_read_message+0x60>
   1ed58: 14000005     	b	0x1ed6c <syna_tcm_v1_read_message+0x68>
   1ed5c: 2a1f03fa     	mov	w26, wzr
   1ed60: b4000079     	cbz	x25, 0x1ed6c <syna_tcm_v1_read_message+0x68>
   1ed64: 52801fe8     	mov	w8, #0xff               // =255
   1ed68: 39000328     	strb	w8, [x25]
   1ed6c: 910d2260     	add	x0, x19, #0x348
   1ed70: 3907f67f     	strb	wzr, [x19, #0x1fd]
   1ed74: 94000000     	bl	0x1ed74 <syna_tcm_v1_read_message+0x70>
		000000000001ed74:  R_AARCH64_CALL26	mutex_lock
   1ed78: 394a0262     	ldrb	w2, [x19, #0x280]
   1ed7c: 35001c82     	cbnz	w2, 0x1f10c <syna_tcm_v1_read_message+0x408>
   1ed80: 91094260     	add	x0, x19, #0x250
   1ed84: 94000000     	bl	0x1ed84 <syna_tcm_v1_read_message+0x80>
		000000000001ed84:  R_AARCH64_CALL26	mutex_lock
   1ed88: 394a0268     	ldrb	w8, [x19, #0x280]
   1ed8c: 11000508     	add	w8, w8, #0x1
   1ed90: 390a0268     	strb	w8, [x19, #0x280]
   1ed94: 340001ba     	cbz	w26, 0x1edc8 <syna_tcm_v1_read_message+0xc4>
   1ed98: b9437e68     	ldr	w8, [x19, #0x37c]
   1ed9c: 52800096     	mov	w22, #0x4               // =4
   1eda0: 34000168     	cbz	w8, 0x1edcc <syna_tcm_v1_read_message+0xc8>
   1eda4: 394e0269     	ldrb	w9, [x19, #0x380]
   1eda8: 394e126a     	ldrb	w10, [x19, #0x384]
   1edac: 7100013f     	cmp	w9, #0x0
   1edb0: 528000c9     	mov	w9, #0x6                // =6
   1edb4: 0b0a0108     	add	w8, w8, w10
   1edb8: 1a961129     	csel	w9, w9, w22, ne
   1edbc: 0b090108     	add	w8, w8, w9
   1edc0: 11000516     	add	w22, w8, #0x1
   1edc4: 14000002     	b	0x1edcc <syna_tcm_v1_read_message+0xc8>
   1edc8: 52800096     	mov	w22, #0x4               // =4
   1edcc: f9402668     	ldr	x8, [x19, #0x48]
   1edd0: 39405509     	ldrb	w9, [x8, #0x15]
   1edd4: 7100053f     	cmp	w9, #0x1
   1edd8: 91090269     	add	x9, x19, #0x240
   1eddc: f81f83a9     	stur	x9, [x29, #-0x8]
   1ede0: 54000101     	b.ne	0x1ee00 <syna_tcm_v1_read_message+0xfc>
   1ede4: b9401d09     	ldr	w9, [x8, #0x1c]
   1ede8: 6b0902df     	cmp	w22, w9
   1edec: 540000a9     	b.ls	0x1ee00 <syna_tcm_v1_read_message+0xfc>
   1edf0: b9401908     	ldr	w8, [x8, #0x18]
   1edf4: 34001648     	cbz	w8, 0x1f0bc <syna_tcm_v1_read_message+0x3b8>
   1edf8: 1ac80ac9     	udiv	w9, w22, w8
   1edfc: 1b087d36     	mul	w22, w9, w8
   1ee00: b9424a68     	ldr	w8, [x19, #0x248]
   1ee04: 91092275     	add	x21, x19, #0x248
   1ee08: 6b0802df     	cmp	w22, w8
   1ee0c: 54000309     	b.ls	0x1ee6c <syna_tcm_v1_read_message+0x168>
   1ee10: f85f83a8     	ldur	x8, [x29, #-0x8]
   1ee14: f9400114     	ldr	x20, [x8]
   1ee18: b40000b4     	cbz	x20, 0x1ee2c <syna_tcm_v1_read_message+0x128>
   1ee1c: 94000000     	bl	0x1ee1c <syna_tcm_v1_read_message+0x118>
		000000000001ee1c:  R_AARCH64_CALL26	syna_request_managed_device
   1ee20: b4005f60     	cbz	x0, 0x1fa0c <syna_tcm_v1_read_message+0xd08>
   1ee24: aa1403e1     	mov	x1, x20
   1ee28: 94000000     	bl	0x1ee28 <syna_tcm_v1_read_message+0x124>
		000000000001ee28:  R_AARCH64_CALL26	devm_kfree
   1ee2c: 94000000     	bl	0x1ee2c <syna_tcm_v1_read_message+0x128>
		000000000001ee2c:  R_AARCH64_CALL26	syna_request_managed_device
   1ee30: b4005fc0     	cbz	x0, 0x1fa28 <syna_tcm_v1_read_message+0xd24>
   1ee34: 710002df     	cmp	w22, #0x0
   1ee38: 54001aad     	b.le	0x1f18c <syna_tcm_v1_read_message+0x488>
   1ee3c: 2a1603f4     	mov	w20, w22
   1ee40: 5281b802     	mov	w2, #0xdc0              // =3520
   1ee44: aa1403e1     	mov	x1, x20
   1ee48: 94000000     	bl	0x1ee48 <syna_tcm_v1_read_message+0x144>
		000000000001ee48:  R_AARCH64_CALL26	devm_kmalloc
   1ee4c: f85f83a8     	ldur	x8, [x29, #-0x8]
   1ee50: f9000100     	str	x0, [x8]
   1ee54: b4005f80     	cbz	x0, 0x1fa44 <syna_tcm_v1_read_message+0xd40>
   1ee58: 2a1f03e1     	mov	w1, wzr
   1ee5c: aa1403e2     	mov	x2, x20
   1ee60: b9024a76     	str	w22, [x19, #0x248]
   1ee64: 94000000     	bl	0x1ee64 <syna_tcm_v1_read_message+0x160>
		000000000001ee64:  R_AARCH64_CALL26	memset
   1ee68: b9024e7f     	str	wzr, [x19, #0x24c]
   1ee6c: f9412262     	ldr	x2, [x19, #0x240]
   1ee70: b9424a63     	ldr	w3, [x19, #0x248]
   1ee74: aa1303e0     	mov	x0, x19
   1ee78: 2a1603e1     	mov	w1, w22
   1ee7c: 9400054f     	bl	0x203b8 <tp_edge_report_limit_write+0x144>
		000000000001ee7c:  R_AARCH64_CALL26	syna_tcm_v1_read
   1ee80: 37f81520     	tbnz	w0, #0x1f, 0x1f124 <syna_tcm_v1_read_message+0x420>
   1ee84: f9412278     	ldr	x24, [x19, #0x240]
   1ee88: 79400708     	ldrh	w8, [x24, #0x2]
   1ee8c: b9020268     	str	w8, [x19, #0x200]
   1ee90: 39400708     	ldrb	w8, [x24, #0x1]
   1ee94: 34000048     	cbz	w8, 0x1ee9c <syna_tcm_v1_read_message+0x198>
   1ee98: 3907f668     	strb	w8, [x19, #0x1fd]
   1ee9c: 394a0262     	ldrb	w2, [x19, #0x280]
   1eea0: 7100045f     	cmp	w2, #0x1
   1eea4: 54001641     	b.ne	0x1f16c <syna_tcm_v1_read_message+0x468>
   1eea8: 2a1f03e8     	mov	w8, wzr
   1eeac: 91094260     	add	x0, x19, #0x250
   1eeb0: 390a0268     	strb	w8, [x19, #0x280]
   1eeb4: 94000000     	bl	0x1eeb4 <syna_tcm_v1_read_message+0x1b0>
		000000000001eeb4:  R_AARCH64_CALL26	mutex_unlock
   1eeb8: b9420268     	ldr	w8, [x19, #0x200]
   1eebc: 34002cc8     	cbz	w8, 0x1f454 <syna_tcm_v1_read_message+0x750>
   1eec0: 39400709     	ldrb	w9, [x24, #0x1]
   1eec4: 71000d3f     	cmp	w9, #0x3
   1eec8: 54000601     	b.ne	0x1ef88 <syna_tcm_v1_read_message+0x284>
   1eecc: b9403e68     	ldr	w8, [x19, #0x3c]
   1eed0: 52800809     	mov	w9, #0x40               // =64
   1eed4: 7100011f     	cmp	w8, #0x0
   1eed8: 1a880134     	csel	w20, w9, w8, eq
   1eedc: 94000000     	bl	0x1eedc <syna_tcm_v1_read_message+0x1d8>
		000000000001eedc:  R_AARCH64_CALL26	syna_request_managed_device
   1eee0: b4005e20     	cbz	x0, 0x1faa4 <syna_tcm_v1_read_message+0xda0>
   1eee4: 321f77e8     	mov	w8, #0x7ffffffe         // =2147483646
   1eee8: 6b08029f     	cmp	w20, w8
   1eeec: 54005e28     	b.hi	0x1fab0 <syna_tcm_v1_read_message+0xdac>
   1eef0: 11000681     	add	w1, w20, #0x1
   1eef4: 5281b802     	mov	w2, #0xdc0              // =3520
   1eef8: 94000000     	bl	0x1eef8 <syna_tcm_v1_read_message+0x1f4>
		000000000001eef8:  R_AARCH64_CALL26	devm_kmalloc
   1eefc: b4005e40     	cbz	x0, 0x1fac4 <syna_tcm_v1_read_message+0xdc0>
   1ef00: aa0003f5     	mov	x21, x0
   1ef04: 90000016     	adrp	x22, 0x1e000 <syna_tcm_v1_detect+0xb8>
		000000000001ef04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x118b2
   1ef08: 910002d6     	add	x22, x22, #0x0
		000000000001ef08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x118b2
   1ef0c: 52800c98     	mov	w24, #0x64              // =100
   1ef10: 90000017     	adrp	x23, 0x1e000 <syna_tcm_v1_detect+0xb8>
		000000000001ef10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfad2
   1ef14: 910002f7     	add	x23, x23, #0x0
		000000000001ef14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfad2
   1ef18: f9402660     	ldr	x0, [x19, #0x48]
   1ef1c: b4006840     	cbz	x0, 0x1fc24 <syna_tcm_v1_read_message+0xf20>
   1ef20: f9401008     	ldr	x8, [x0, #0x20]
   1ef24: b40067e8     	cbz	x8, 0x1fc20 <syna_tcm_v1_read_message+0xf1c>
   1ef28: aa1503e1     	mov	x1, x21
   1ef2c: 2a1403e2     	mov	w2, w20
   1ef30: b85fc110     	ldur	w16, [x8, #-0x4]
   1ef34: 728403f1     	movk	w17, #0x201f
   1ef38: 72a51491     	movk	w17, #0x28a4, lsl #16
   1ef3c: 6b11021f     	cmp	w16, w17
   1ef40: 54000040     	b.eq	0x1ef48 <syna_tcm_v1_read_message+0x244>
   1ef44: d4304500     	brk	#0x8228
   1ef48: d63f0100     	blr	x8
   1ef4c: 37f86740     	tbnz	w0, #0x1f, 0x1fc34 <syna_tcm_v1_read_message+0xf30>
   1ef50: 394006a8     	ldrb	w8, [x21, #0x1]
   1ef54: 340000e8     	cbz	w8, 0x1ef70 <syna_tcm_v1_read_message+0x26c>
   1ef58: 52807d00     	mov	w0, #0x3e8              // =1000
   1ef5c: 5280fa01     	mov	w1, #0x7d0              // =2000
   1ef60: 52800042     	mov	w2, #0x2                // =2
   1ef64: 94000000     	bl	0x1ef64 <syna_tcm_v1_read_message+0x260>
		000000000001ef64:  R_AARCH64_CALL26	usleep_range_state
   1ef68: 71000718     	subs	w24, w24, #0x1
   1ef6c: 54fffd61     	b.ne	0x1ef18 <syna_tcm_v1_read_message+0x214>
   1ef70: 94000000     	bl	0x1ef70 <syna_tcm_v1_read_message+0x26c>
		000000000001ef70:  R_AARCH64_CALL26	syna_request_managed_device
   1ef74: b4006700     	cbz	x0, 0x1fc54 <syna_tcm_v1_read_message+0xf50>
   1ef78: aa1503e1     	mov	x1, x21
   1ef7c: 94000000     	bl	0x1ef7c <syna_tcm_v1_read_message+0x278>
		000000000001ef7c:  R_AARCH64_CALL26	devm_kfree
   1ef80: 12801e37     	mov	w23, #-0xf2             // =-242
   1ef84: 14000482     	b	0x2018c <syna_tcm_v1_read_message+0x1488>
   1ef88: 710012c9     	subs	w9, w22, #0x4
   1ef8c: 6b090109     	subs	w9, w8, w9
   1ef90: 1a8933e9     	csel	w9, wzr, w9, lo
   1ef94: 710012df     	cmp	w22, #0x4
   1ef98: 1a88812d     	csel	w13, w9, w8, hi
   1ef9c: 340025cd     	cbz	w13, 0x1f454 <syna_tcm_v1_read_message+0x750>
   1efa0: 529fffe9     	mov	w9, #0xffff             // =65535
   1efa4: 6a2d013f     	bics	wzr, w9, w13
   1efa8: 54005b00     	b.eq	0x1fb08 <syna_tcm_v1_read_message+0xe04>
   1efac: 394e0269     	ldrb	w9, [x19, #0x380]
   1efb0: 394e126c     	ldrb	w12, [x19, #0x384]
   1efb4: 1100150a     	add	w10, w8, #0x5
   1efb8: 11001d08     	add	w8, w8, #0x7
   1efbc: 11000dab     	add	w11, w13, #0x3
   1efc0: 394a0262     	ldrb	w2, [x19, #0x280]
   1efc4: 7100013f     	cmp	w9, #0x0
   1efc8: 2a0c0129     	orr	w9, w9, w12
   1efcc: 1100058c     	add	w12, w12, #0x1
   1efd0: 1a8a1108     	csel	w8, w8, w10, ne
   1efd4: 1a8d156b     	csinc	w11, w11, w13, ne
   1efd8: 7200013f     	tst	w9, #0x1
   1efdc: 0b0c0108     	add	w8, w8, w12
   1efe0: 0b0c016b     	add	w11, w11, w12
   1efe4: f9000bf8     	str	x24, [sp, #0x10]
   1efe8: 1a8a1114     	csel	w20, w8, w10, ne
   1efec: 1a8d157b     	csinc	w27, w11, w13, ne
   1eff0: b9001bed     	str	w13, [sp, #0x18]
   1eff4: 350059a2     	cbnz	w2, 0x1fb28 <syna_tcm_v1_read_message+0xe24>
   1eff8: 91094260     	add	x0, x19, #0x250
   1effc: 94000000     	bl	0x1effc <syna_tcm_v1_read_message+0x2f8>
		000000000001effc:  R_AARCH64_CALL26	mutex_lock
   1f000: 394a0268     	ldrb	w8, [x19, #0x280]
   1f004: b9424a78     	ldr	w24, [x19, #0x248]
   1f008: 11000696     	add	w22, w20, #0x1
   1f00c: 11000508     	add	w8, w8, #0x1
   1f010: 6b16031f     	cmp	w24, w22
   1f014: 390a0268     	strb	w8, [x19, #0x280]
   1f018: 540002e2     	b.hs	0x1f074 <syna_tcm_v1_read_message+0x370>
   1f01c: f85f83a8     	ldur	x8, [x29, #-0x8]
   1f020: f9400117     	ldr	x23, [x8]
   1f024: 94000000     	bl	0x1f024 <syna_tcm_v1_read_message+0x320>
		000000000001f024:  R_AARCH64_CALL26	syna_request_managed_device
   1f028: b4006540     	cbz	x0, 0x1fcd0 <syna_tcm_v1_read_message+0xfcc>
   1f02c: 12b00008     	mov	w8, #0x7fffffff         // =2147483647
   1f030: 6b08029f     	cmp	w20, w8
   1f034: 540067e2     	b.hs	0x1fd30 <syna_tcm_v1_read_message+0x102c>
   1f038: aa1603e1     	mov	x1, x22
   1f03c: 5281b802     	mov	w2, #0xdc0              // =3520
   1f040: 94000000     	bl	0x1f040 <syna_tcm_v1_read_message+0x33c>
		000000000001f040:  R_AARCH64_CALL26	devm_kmalloc
   1f044: f85f83a8     	ldur	x8, [x29, #-0x8]
   1f048: f9000100     	str	x0, [x8]
   1f04c: b4006800     	cbz	x0, 0x1fd4c <syna_tcm_v1_read_message+0x1048>
   1f050: b40071b7     	cbz	x23, 0x1fe84 <syna_tcm_v1_read_message+0x1180>
   1f054: aa1703e1     	mov	x1, x23
   1f058: aa1803e2     	mov	x2, x24
   1f05c: 94000000     	bl	0x1f05c <syna_tcm_v1_read_message+0x358>
		000000000001f05c:  R_AARCH64_CALL26	memcpy
   1f060: 94000000     	bl	0x1f060 <syna_tcm_v1_read_message+0x35c>
		000000000001f060:  R_AARCH64_CALL26	syna_request_managed_device
   1f064: b40073e0     	cbz	x0, 0x1fee0 <syna_tcm_v1_read_message+0x11dc>
   1f068: aa1703e1     	mov	x1, x23
   1f06c: 94000000     	bl	0x1f06c <syna_tcm_v1_read_message+0x368>
		000000000001f06c:  R_AARCH64_CALL26	devm_kfree
   1f070: b90002b6     	str	w22, [x21]
   1f074: f9402668     	ldr	x8, [x19, #0x48]
   1f078: b9403e69     	ldr	w9, [x19, #0x3c]
   1f07c: 3940550a     	ldrb	w10, [x8, #0x15]
   1f080: 7100013f     	cmp	w9, #0x0
   1f084: 1a890289     	csel	w9, w20, w9, eq
   1f088: 7100055f     	cmp	w10, #0x1
   1f08c: 540001e1     	b.ne	0x1f0c8 <syna_tcm_v1_read_message+0x3c4>
   1f090: b9401beb     	ldr	w11, [sp, #0x18]
   1f094: 2a1f03f6     	mov	w22, wzr
   1f098: 34000809     	cbz	w9, 0x1f198 <syna_tcm_v1_read_message+0x494>
   1f09c: b940190a     	ldr	w10, [x8, #0x18]
   1f0a0: 2a1603e8     	mov	w8, w22
   1f0a4: 340007ca     	cbz	w10, 0x1f19c <syna_tcm_v1_read_message+0x498>
   1f0a8: 1aca0928     	udiv	w8, w9, w10
   1f0ac: 1b0a7d16     	mul	w22, w8, w10
   1f0b0: 35000136     	cbnz	w22, 0x1f0d4 <syna_tcm_v1_read_message+0x3d0>
   1f0b4: 2a1f03e8     	mov	w8, wzr
   1f0b8: 14000039     	b	0x1f19c <syna_tcm_v1_read_message+0x498>
   1f0bc: 2a1f03f6     	mov	w22, wzr
   1f0c0: 91092275     	add	x21, x19, #0x248
   1f0c4: 17ffff6a     	b	0x1ee6c <syna_tcm_v1_read_message+0x168>
   1f0c8: b9401beb     	ldr	w11, [sp, #0x18]
   1f0cc: 2a0903f6     	mov	w22, w9
   1f0d0: 34ffff36     	cbz	w22, 0x1f0b4 <syna_tcm_v1_read_message+0x3b0>
   1f0d4: 0b160288     	add	w8, w20, w22
   1f0d8: 51000508     	sub	w8, w8, #0x1
   1f0dc: 1ad60908     	udiv	w8, w8, w22
   1f0e0: 1400002f     	b	0x1f19c <syna_tcm_v1_read_message+0x498>
   1f0e4: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001f0e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcda2
   1f0e8: 91000000     	add	x0, x0, #0x0
		000000000001f0e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcda2
   1f0ec: 14000003     	b	0x1f0f8 <syna_tcm_v1_read_message+0x3f4>
   1f0f0: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001f0f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16520
   1f0f4: 91000000     	add	x0, x0, #0x0
		000000000001f0f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16520
   1f0f8: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001f0f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16b7c
   1f0fc: 91000021     	add	x1, x1, #0x0
		000000000001f0fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16b7c
   1f100: 94000000     	bl	0x1f100 <syna_tcm_v1_read_message+0x3fc>
		000000000001f100:  R_AARCH64_CALL26	_printk
   1f104: 12801e17     	mov	w23, #-0xf1             // =-241
   1f108: 1400042d     	b	0x201bc <syna_tcm_v1_read_message+0x14b8>
   1f10c: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001f10c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   1f110: 91000000     	add	x0, x0, #0x0
		000000000001f110:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   1f114: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001f114:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d70
   1f118: 91000021     	add	x1, x1, #0x0
		000000000001f118:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d70
   1f11c: 94000000     	bl	0x1f11c <syna_tcm_v1_read_message+0x418>
		000000000001f11c:  R_AARCH64_CALL26	_printk
   1f120: 17ffff18     	b	0x1ed80 <syna_tcm_v1_read_message+0x7c>
   1f124: 2a0003f7     	mov	w23, w0
   1f128: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001f128:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11f6a
   1f12c: 91000000     	add	x0, x0, #0x0
		000000000001f12c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11f6a
   1f130: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001f130:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16b7c
   1f134: 91000021     	add	x1, x1, #0x0
		000000000001f134:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16b7c
   1f138: 2a1603e2     	mov	w2, w22
   1f13c: 94000000     	bl	0x1f13c <syna_tcm_v1_read_message+0x438>
		000000000001f13c:  R_AARCH64_CALL26	_printk
   1f140: 394a0262     	ldrb	w2, [x19, #0x280]
   1f144: 7100045f     	cmp	w2, #0x1
   1f148: 540072c1     	b.ne	0x1ffa0 <syna_tcm_v1_read_message+0x129c>
   1f14c: 2a1f03e8     	mov	w8, wzr
   1f150: 91094260     	add	x0, x19, #0x250
   1f154: 390a0268     	strb	w8, [x19, #0x280]
   1f158: 94000000     	bl	0x1f158 <syna_tcm_v1_read_message+0x454>
		000000000001f158:  R_AARCH64_CALL26	mutex_unlock
   1f15c: 52801fe8     	mov	w8, #0xff               // =255
   1f160: b902027f     	str	wzr, [x19, #0x200]
   1f164: 3907f668     	strb	w8, [x19, #0x1fd]
   1f168: 14000409     	b	0x2018c <syna_tcm_v1_read_message+0x1488>
   1f16c: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001f16c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   1f170: 91000000     	add	x0, x0, #0x0
		000000000001f170:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   1f174: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001f174:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16aa8
   1f178: 91000021     	add	x1, x1, #0x0
		000000000001f178:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16aa8
   1f17c: 94000000     	bl	0x1f17c <syna_tcm_v1_read_message+0x478>
		000000000001f17c:  R_AARCH64_CALL26	_printk
   1f180: 394a0268     	ldrb	w8, [x19, #0x280]
   1f184: 51000508     	sub	w8, w8, #0x1
   1f188: 17ffff49     	b	0x1eeac <syna_tcm_v1_read_message+0x1a8>
   1f18c: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001f18c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d82
   1f190: 91000000     	add	x0, x0, #0x0
		000000000001f190:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d82
   1f194: 14000227     	b	0x1fa30 <syna_tcm_v1_read_message+0xd2c>
   1f198: 2a1603e8     	mov	w8, w22
   1f19c: b9420269     	ldr	w9, [x19, #0x200]
   1f1a0: 394c4262     	ldrb	w2, [x19, #0x310]
   1f1a4: 7100051f     	cmp	w8, #0x1
   1f1a8: b90007fa     	str	w26, [sp, #0x4]
   1f1ac: 1a9f8514     	csinc	w20, w8, wzr, hi
   1f1b0: 4b0b0129     	sub	w9, w9, w11
   1f1b4: f90007f9     	str	x25, [sp, #0x8]
   1f1b8: 1100113a     	add	w26, w9, #0x4
   1f1bc: 35005062     	cbnz	w2, 0x1fbc8 <syna_tcm_v1_read_message+0xec4>
   1f1c0: 910b8260     	add	x0, x19, #0x2e0
   1f1c4: 94000000     	bl	0x1f1c4 <syna_tcm_v1_read_message+0x4c0>
		000000000001f1c4:  R_AARCH64_CALL26	mutex_lock
   1f1c8: 394c4268     	ldrb	w8, [x19, #0x310]
   1f1cc: 2a1f03f9     	mov	w25, wzr
   1f1d0: 2a1f03f5     	mov	w21, wzr
   1f1d4: 51000ac9     	sub	w9, w22, #0x2
   1f1d8: 52801ffc     	mov	w28, #0xff              // =255
   1f1dc: 11000508     	add	w8, w8, #0x1
   1f1e0: 293ddba9     	stp	w9, w22, [x29, #-0x14]
   1f1e4: 390c4268     	strb	w8, [x19, #0x310]
   1f1e8: 1400000a     	b	0x1f210 <syna_tcm_v1_read_message+0x50c>
   1f1ec: f85f83a8     	ldur	x8, [x29, #-0x8]
   1f1f0: 52800b4a     	mov	w10, #0x5a              // =90
   1f1f4: 5100077b     	sub	w27, w27, #0x1
   1f1f8: f9400108     	ldr	x8, [x8]
   1f1fc: 383a490a     	strb	w10, [x8, w26, uxtw]
   1f200: 1100075a     	add	w26, w26, #0x1
   1f204: 6b1402ff     	cmp	w23, w20
   1f208: 2a1703f9     	mov	w25, w23
   1f20c: 54000fa2     	b.hs	0x1f400 <syna_tcm_v1_read_message+0x6fc>
   1f210: 6b16037f     	cmp	w27, w22
   1f214: 11000737     	add	w23, w25, #0x1
   1f218: 1a9b8138     	csel	w24, w9, w27, hi
   1f21c: 7100071f     	cmp	w24, #0x1
   1f220: 54fffe60     	b.eq	0x1f1ec <syna_tcm_v1_read_message+0x4e8>
   1f224: 6b1402ff     	cmp	w23, w20
   1f228: 540001c1     	b.ne	0x1f260 <syna_tcm_v1_read_message+0x55c>
   1f22c: f9402668     	ldr	x8, [x19, #0x48]
   1f230: 39405509     	ldrb	w9, [x8, #0x15]
   1f234: 36000169     	tbz	w9, #0x0, 0x1f260 <syna_tcm_v1_read_message+0x55c>
   1f238: b9401d09     	ldr	w9, [x8, #0x1c]
   1f23c: 6b09031f     	cmp	w24, w9
   1f240: 54000109     	b.ls	0x1f260 <syna_tcm_v1_read_message+0x55c>
   1f244: b9401908     	ldr	w8, [x8, #0x18]
   1f248: 34000068     	cbz	w8, 0x1f254 <syna_tcm_v1_read_message+0x550>
   1f24c: 1ac80b09     	udiv	w9, w24, w8
   1f250: 1b087d28     	mul	w8, w9, w8
   1f254: 51000918     	sub	w24, w8, #0x2
   1f258: 6b1b031f     	cmp	w24, w27
   1f25c: 1a940694     	cinc	w20, w20, ne
   1f260: b942da62     	ldr	w2, [x19, #0x2d8]
   1f264: b81f43b4     	stur	w20, [x29, #-0xc]
   1f268: 11000b16     	add	w22, w24, #0x2
   1f26c: f9416a74     	ldr	x20, [x19, #0x2d0]
   1f270: 6b16005f     	cmp	w2, w22
   1f274: 54000242     	b.hs	0x1f2bc <syna_tcm_v1_read_message+0x5b8>
   1f278: b40000b4     	cbz	x20, 0x1f28c <syna_tcm_v1_read_message+0x588>
   1f27c: 94000000     	bl	0x1f27c <syna_tcm_v1_read_message+0x578>
		000000000001f27c:  R_AARCH64_CALL26	syna_request_managed_device
   1f280: b4000ac0     	cbz	x0, 0x1f3d8 <syna_tcm_v1_read_message+0x6d4>
   1f284: aa1403e1     	mov	x1, x20
   1f288: 94000000     	bl	0x1f288 <syna_tcm_v1_read_message+0x584>
		000000000001f288:  R_AARCH64_CALL26	devm_kfree
   1f28c: 94000000     	bl	0x1f28c <syna_tcm_v1_read_message+0x588>
		000000000001f28c:  R_AARCH64_CALL26	syna_request_managed_device
   1f290: b4000b20     	cbz	x0, 0x1f3f4 <syna_tcm_v1_read_message+0x6f0>
   1f294: 710002df     	cmp	w22, #0x0
   1f298: 54006b6d     	b.le	0x20004 <syna_tcm_v1_read_message+0x1300>
   1f29c: aa1603e1     	mov	x1, x22
   1f2a0: 5281b802     	mov	w2, #0xdc0              // =3520
   1f2a4: 94000000     	bl	0x1f2a4 <syna_tcm_v1_read_message+0x5a0>
		000000000001f2a4:  R_AARCH64_CALL26	devm_kmalloc
   1f2a8: f9016a60     	str	x0, [x19, #0x2d0]
   1f2ac: b4006b80     	cbz	x0, 0x2001c <syna_tcm_v1_read_message+0x1318>
   1f2b0: aa0003f4     	mov	x20, x0
   1f2b4: aa1603e2     	mov	x2, x22
   1f2b8: b902da76     	str	w22, [x19, #0x2d8]
   1f2bc: aa1403e0     	mov	x0, x20
   1f2c0: 2a1f03e1     	mov	w1, wzr
   1f2c4: 94000000     	bl	0x1f2c4 <syna_tcm_v1_read_message+0x5c0>
		000000000001f2c4:  R_AARCH64_CALL26	memset
   1f2c8: 110006a8     	add	w8, w21, #0x1
   1f2cc: b902de7f     	str	wzr, [x19, #0x2dc]
   1f2d0: 7100151f     	cmp	w8, #0x5
   1f2d4: 528000a8     	mov	w8, #0x5                // =5
   1f2d8: 1a95d514     	csinc	w20, w8, w21, le
   1f2dc: b9421260     	ldr	w0, [x19, #0x210]
   1f2e0: 7100041f     	cmp	w0, #0x1
   1f2e4: 5400010b     	b.lt	0x1f304 <syna_tcm_v1_read_message+0x600>
   1f2e8: b9421668     	ldr	w8, [x19, #0x214]
   1f2ec: 7100051f     	cmp	w8, #0x1
   1f2f0: 540000ab     	b.lt	0x1f304 <syna_tcm_v1_read_message+0x600>
   1f2f4: 6b00011f     	cmp	w8, w0
   1f2f8: 52800042     	mov	w2, #0x2                // =2
   1f2fc: 1a808101     	csel	w1, w8, w0, hi
   1f300: 94000000     	bl	0x1f300 <syna_tcm_v1_read_message+0x5fc>
		000000000001f300:  R_AARCH64_CALL26	usleep_range_state
   1f304: f9416a62     	ldr	x2, [x19, #0x2d0]
   1f308: b942da63     	ldr	w3, [x19, #0x2d8]
   1f30c: aa1303e0     	mov	x0, x19
   1f310: 2a1603e1     	mov	w1, w22
   1f314: 94000429     	bl	0x203b8 <tp_edge_report_limit_write+0x144>
		000000000001f314:  R_AARCH64_CALL26	syna_tcm_v1_read
   1f318: 37f80140     	tbnz	w0, #0x1f, 0x1f340 <syna_tcm_v1_read_message+0x63c>
   1f31c: f9416a68     	ldr	x8, [x19, #0x2d0]
   1f320: b902de76     	str	w22, [x19, #0x2dc]
   1f324: 3940051c     	ldrb	w28, [x8, #0x1]
   1f328: 71000f9f     	cmp	w28, #0x3
   1f32c: 54000280     	b.eq	0x1f37c <syna_tcm_v1_read_message+0x678>
   1f330: 110006b5     	add	w21, w21, #0x1
   1f334: 710016bf     	cmp	w21, #0x5
   1f338: 54fffd2b     	b.lt	0x1f2dc <syna_tcm_v1_read_message+0x5d8>
   1f33c: 14000008     	b	0x1f35c <syna_tcm_v1_read_message+0x658>
   1f340: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001f340:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10c1a
   1f344: 91000000     	add	x0, x0, #0x0
		000000000001f344:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10c1a
   1f348: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001f348:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcfec
   1f34c: 91000021     	add	x1, x1, #0x0
		000000000001f34c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcfec
   1f350: 2a1603e2     	mov	w2, w22
   1f354: 94000000     	bl	0x1f354 <syna_tcm_v1_read_message+0x650>
		000000000001f354:  R_AARCH64_CALL26	_printk
   1f358: 17fffff6     	b	0x1f330 <syna_tcm_v1_read_message+0x62c>
   1f35c: b85f03b6     	ldur	w22, [x29, #-0x10]
   1f360: 71000f9f     	cmp	w28, #0x3
   1f364: 540063a1     	b.ne	0x1ffd8 <syna_tcm_v1_read_message+0x12d4>
   1f368: f9416a68     	ldr	x8, [x19, #0x2d0]
   1f36c: 2a1403f5     	mov	w21, w20
   1f370: b1000901     	adds	x1, x8, #0x2
   1f374: 540000a1     	b.ne	0x1f388 <syna_tcm_v1_read_message+0x684>
   1f378: 140002b3     	b	0x1fe44 <syna_tcm_v1_read_message+0x1140>
   1f37c: b85f03b6     	ldur	w22, [x29, #-0x10]
   1f380: b1000901     	adds	x1, x8, #0x2
   1f384: 54005600     	b.eq	0x1fe44 <syna_tcm_v1_read_message+0x1140>
   1f388: f85f83a8     	ldur	x8, [x29, #-0x8]
   1f38c: f9400108     	ldr	x8, [x8]
   1f390: 8b3a4100     	add	x0, x8, w26, uxtw
   1f394: b4005580     	cbz	x0, 0x1fe44 <syna_tcm_v1_read_message+0x1140>
   1f398: b942da68     	ldr	w8, [x19, #0x2d8]
   1f39c: 51000902     	sub	w2, w8, #0x2
   1f3a0: b9424a68     	ldr	w8, [x19, #0x248]
   1f3a4: 6b02031f     	cmp	w24, w2
   1f3a8: 4b1a0103     	sub	w3, w8, w26
   1f3ac: 54005408     	b.hi	0x1fe2c <syna_tcm_v1_read_message+0x1128>
   1f3b0: 6b03031f     	cmp	w24, w3
   1f3b4: 540053c8     	b.hi	0x1fe2c <syna_tcm_v1_read_message+0x1128>
   1f3b8: 2a1803e2     	mov	w2, w24
   1f3bc: 94000000     	bl	0x1f3bc <syna_tcm_v1_read_message+0x6b8>
		000000000001f3bc:  R_AARCH64_CALL26	memcpy
   1f3c0: b85f43b4     	ldur	w20, [x29, #-0xc]
   1f3c4: b85ec3a9     	ldur	w9, [x29, #-0x14]
   1f3c8: 0b1a031a     	add	w26, w24, w26
   1f3cc: 4b18037b     	sub	w27, w27, w24
   1f3d0: 5280007c     	mov	w28, #0x3               // =3
   1f3d4: 17ffff8c     	b	0x1f204 <syna_tcm_v1_read_message+0x500>
   1f3d8: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001f3d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15a80
   1f3dc: 91000000     	add	x0, x0, #0x0
		000000000001f3dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15a80
   1f3e0: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001f3e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14c56
   1f3e4: 91000021     	add	x1, x1, #0x0
		000000000001f3e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14c56
   1f3e8: 94000000     	bl	0x1f3e8 <syna_tcm_v1_read_message+0x6e4>
		000000000001f3e8:  R_AARCH64_CALL26	_printk
   1f3ec: 94000000     	bl	0x1f3ec <syna_tcm_v1_read_message+0x6e8>
		000000000001f3ec:  R_AARCH64_CALL26	syna_request_managed_device
   1f3f0: b5fff520     	cbnz	x0, 0x1f294 <syna_tcm_v1_read_message+0x590>
   1f3f4: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001f3f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15a80
   1f3f8: 91000000     	add	x0, x0, #0x0
		000000000001f3f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15a80
   1f3fc: 14000304     	b	0x2000c <syna_tcm_v1_read_message+0x1308>
   1f400: 2a1f03f4     	mov	w20, wzr
   1f404: 2a1f03f7     	mov	w23, wzr
   1f408: b9024e7a     	str	w26, [x19, #0x24c]
   1f40c: 394c4262     	ldrb	w2, [x19, #0x310]
   1f410: a940e3f9     	ldp	x25, x24, [sp, #0x8]
   1f414: b94007fa     	ldr	w26, [sp, #0x4]
   1f418: 7100045f     	cmp	w2, #0x1
   1f41c: 54003e21     	b.ne	0x1fbe0 <syna_tcm_v1_read_message+0xedc>
   1f420: 2a1f03e8     	mov	w8, wzr
   1f424: 910b8260     	add	x0, x19, #0x2e0
   1f428: 390c4268     	strb	w8, [x19, #0x310]
   1f42c: 94000000     	bl	0x1f42c <syna_tcm_v1_read_message+0x728>
		000000000001f42c:  R_AARCH64_CALL26	mutex_unlock
   1f430: 394a0262     	ldrb	w2, [x19, #0x280]
   1f434: 7100045f     	cmp	w2, #0x1
   1f438: 54003e41     	b.ne	0x1fc00 <syna_tcm_v1_read_message+0xefc>
   1f43c: 2a1f03e8     	mov	w8, wzr
   1f440: 91094260     	add	x0, x19, #0x250
   1f444: 390a0268     	strb	w8, [x19, #0x280]
   1f448: 94000000     	bl	0x1f448 <syna_tcm_v1_read_message+0x744>
		000000000001f448:  R_AARCH64_CALL26	mutex_unlock
   1f44c: b9401bed     	ldr	w13, [sp, #0x18]
   1f450: 350061f4     	cbnz	w20, 0x2008c <syna_tcm_v1_read_message+0x1388>
   1f454: 394a0262     	ldrb	w2, [x19, #0x280]
   1f458: 350025a2     	cbnz	w2, 0x1f90c <syna_tcm_v1_read_message+0xc08>
   1f45c: 91094260     	add	x0, x19, #0x250
   1f460: 94000000     	bl	0x1f460 <syna_tcm_v1_read_message+0x75c>
		000000000001f460:  R_AARCH64_CALL26	mutex_lock
   1f464: 394a0268     	ldrb	w8, [x19, #0x280]
   1f468: f9412269     	ldr	x9, [x19, #0x240]
   1f46c: 11000508     	add	w8, w8, #0x1
   1f470: 390a0268     	strb	w8, [x19, #0x280]
   1f474: 528014a8     	mov	w8, #0xa5               // =165
   1f478: 39000128     	strb	w8, [x9]
   1f47c: 3947f668     	ldrb	w8, [x19, #0x1fd]
   1f480: f9412269     	ldr	x9, [x19, #0x240]
   1f484: 39000528     	strb	w8, [x9, #0x1]
   1f488: b9420268     	ldr	w8, [x19, #0x200]
   1f48c: f9412269     	ldr	x9, [x19, #0x240]
   1f490: 39000928     	strb	w8, [x9, #0x2]
   1f494: b9420268     	ldr	w8, [x19, #0x200]
   1f498: f9412269     	ldr	x9, [x19, #0x240]
   1f49c: 53087d08     	lsr	w8, w8, #8
   1f4a0: 39000d28     	strb	w8, [x9, #0x3]
   1f4a4: 394a0262     	ldrb	w2, [x19, #0x280]
   1f4a8: 7100045f     	cmp	w2, #0x1
   1f4ac: 540023c1     	b.ne	0x1f924 <syna_tcm_v1_read_message+0xc20>
   1f4b0: 2a1f03e8     	mov	w8, wzr
   1f4b4: 91094260     	add	x0, x19, #0x250
   1f4b8: 390a0268     	strb	w8, [x19, #0x280]
   1f4bc: 94000000     	bl	0x1f4bc <syna_tcm_v1_read_message+0x7b8>
		000000000001f4bc:  R_AARCH64_CALL26	mutex_unlock
   1f4c0: 394e0268     	ldrb	w8, [x19, #0x380]
   1f4c4: 7100051f     	cmp	w8, #0x1
   1f4c8: 540003e1     	b.ne	0x1f544 <syna_tcm_v1_read_message+0x840>
   1f4cc: b9420268     	ldr	w8, [x19, #0x200]
   1f4d0: 340003a8     	cbz	w8, 0x1f544 <syna_tcm_v1_read_message+0x840>
   1f4d4: 394a0262     	ldrb	w2, [x19, #0x280]
   1f4d8: 35003002     	cbnz	w2, 0x1fad8 <syna_tcm_v1_read_message+0xdd4>
   1f4dc: 91094260     	add	x0, x19, #0x250
   1f4e0: 94000000     	bl	0x1f4e0 <syna_tcm_v1_read_message+0x7dc>
		000000000001f4e0:  R_AARCH64_CALL26	mutex_lock
   1f4e4: b942026a     	ldr	w10, [x19, #0x200]
   1f4e8: 394a0269     	ldrb	w9, [x19, #0x280]
   1f4ec: b9424a6b     	ldr	w11, [x19, #0x248]
   1f4f0: 1100154d     	add	w13, w10, #0x5
   1f4f4: 11000528     	add	w8, w9, #0x1
   1f4f8: 6b0d017f     	cmp	w11, w13
   1f4fc: 390a0268     	strb	w8, [x19, #0x280]
   1f500: 54000229     	b.ls	0x1f544 <syna_tcm_v1_read_message+0x840>
   1f504: f941226c     	ldr	x12, [x19, #0x240]
   1f508: 394e126e     	ldrb	w14, [x19, #0x384]
   1f50c: 786d498d     	ldrh	w13, [x12, w13, uxtw]
   1f510: 710005df     	cmp	w14, #0x1
   1f514: 7907066d     	strh	w13, [x19, #0x382]
   1f518: 540000c1     	b.ne	0x1f530 <syna_tcm_v1_read_message+0x82c>
   1f51c: 11001d4a     	add	w10, w10, #0x7
   1f520: 6b0a017f     	cmp	w11, w10
   1f524: 54000063     	b.lo	0x1f530 <syna_tcm_v1_read_message+0x82c>
   1f528: 386a498a     	ldrb	w10, [x12, w10, uxtw]
   1f52c: 390e166a     	strb	w10, [x19, #0x385]
   1f530: 35003a09     	cbnz	w9, 0x1fc70 <syna_tcm_v1_read_message+0xf6c>
   1f534: 2a1f03e8     	mov	w8, wzr
   1f538: 91094260     	add	x0, x19, #0x250
   1f53c: 390a0268     	strb	w8, [x19, #0x280]
   1f540: 94000000     	bl	0x1f540 <syna_tcm_v1_read_message+0x83c>
		000000000001f540:  R_AARCH64_CALL26	mutex_unlock
   1f544: 52827b08     	mov	w8, #0x13d8             // =5080
   1f548: 3947f676     	ldrb	w22, [x19, #0x1fd]
   1f54c: 8b080274     	add	x20, x19, x8
   1f550: 8b161288     	add	x8, x20, x22, lsl #4
   1f554: f9400508     	ldr	x8, [x8, #0x8]
   1f558: b40003a8     	cbz	x8, 0x1f5cc <syna_tcm_v1_read_message+0x8c8>
   1f55c: 394a0262     	ldrb	w2, [x19, #0x280]
   1f560: 35001f22     	cbnz	w2, 0x1f944 <syna_tcm_v1_read_message+0xc40>
   1f564: 91094260     	add	x0, x19, #0x250
   1f568: 94000000     	bl	0x1f568 <syna_tcm_v1_read_message+0x864>
		000000000001f568:  R_AARCH64_CALL26	mutex_lock
   1f56c: 3947f660     	ldrb	w0, [x19, #0x1fd]
   1f570: 394a0268     	ldrb	w8, [x19, #0x280]
   1f574: f941226a     	ldr	x10, [x19, #0x240]
   1f578: b9420262     	ldr	w2, [x19, #0x200]
   1f57c: 8b201289     	add	x9, x20, w0, uxtb #4
   1f580: 11000508     	add	w8, w8, #0x1
   1f584: 91001141     	add	x1, x10, #0x4
   1f588: 390a0268     	strb	w8, [x19, #0x280]
   1f58c: a9402d23     	ldp	x3, x11, [x9]
   1f590: b85fc170     	ldur	w16, [x11, #-0x4]
   1f594: 72988151     	movk	w17, #0xc40a
   1f598: 72b3f271     	movk	w17, #0x9f93, lsl #16
   1f59c: 6b11021f     	cmp	w16, w17
   1f5a0: 54000040     	b.eq	0x1f5a8 <syna_tcm_v1_read_message+0x8a4>
   1f5a4: d4304560     	brk	#0x822b
   1f5a8: d63f0160     	blr	x11
   1f5ac: 394a0262     	ldrb	w2, [x19, #0x280]
   1f5b0: 7100045f     	cmp	w2, #0x1
   1f5b4: 54001d41     	b.ne	0x1f95c <syna_tcm_v1_read_message+0xc58>
   1f5b8: 2a1f03e8     	mov	w8, wzr
   1f5bc: 91094260     	add	x0, x19, #0x250
   1f5c0: 390a0268     	strb	w8, [x19, #0x280]
   1f5c4: 94000000     	bl	0x1f5c4 <syna_tcm_v1_read_message+0x8c0>
		000000000001f5c4:  R_AARCH64_CALL26	mutex_unlock
   1f5c8: 3947f676     	ldrb	w22, [x19, #0x1fd]
   1f5cc: 710042df     	cmp	w22, #0x10
   1f5d0: 54000403     	b.lo	0x1f650 <syna_tcm_v1_read_message+0x94c>
   1f5d4: b9420268     	ldr	w8, [x19, #0x200]
   1f5d8: 34000828     	cbz	w8, 0x1f6dc <syna_tcm_v1_read_message+0x9d8>
   1f5dc: 39450262     	ldrb	w2, [x19, #0x140]
   1f5e0: 35002882     	cbnz	w2, 0x1faf0 <syna_tcm_v1_read_message+0xdec>
   1f5e4: 91044260     	add	x0, x19, #0x110
   1f5e8: 94000000     	bl	0x1f5e8 <syna_tcm_v1_read_message+0x8e4>
		000000000001f5e8:  R_AARCH64_CALL26	mutex_lock
   1f5ec: 39450269     	ldrb	w9, [x19, #0x140]
   1f5f0: b9420277     	ldr	w23, [x19, #0x200]
   1f5f4: b9410a68     	ldr	w8, [x19, #0x108]
   1f5f8: f9408260     	ldr	x0, [x19, #0x100]
   1f5fc: 11000529     	add	w9, w9, #0x1
   1f600: 6b17011f     	cmp	w8, w23
   1f604: 39050269     	strb	w9, [x19, #0x140]
   1f608: 54000702     	b.hs	0x1f6e8 <syna_tcm_v1_read_message+0x9e4>
   1f60c: b40000c0     	cbz	x0, 0x1f624 <syna_tcm_v1_read_message+0x920>
   1f610: aa0003f4     	mov	x20, x0
   1f614: 94000000     	bl	0x1f614 <syna_tcm_v1_read_message+0x910>
		000000000001f614:  R_AARCH64_CALL26	syna_request_managed_device
   1f618: b4004700     	cbz	x0, 0x1fef8 <syna_tcm_v1_read_message+0x11f4>
   1f61c: aa1403e1     	mov	x1, x20
   1f620: 94000000     	bl	0x1f620 <syna_tcm_v1_read_message+0x91c>
		000000000001f620:  R_AARCH64_CALL26	devm_kfree
   1f624: 94000000     	bl	0x1f624 <syna_tcm_v1_read_message+0x920>
		000000000001f624:  R_AARCH64_CALL26	syna_request_managed_device
   1f628: b4004760     	cbz	x0, 0x1ff14 <syna_tcm_v1_read_message+0x1210>
   1f62c: 710002ff     	cmp	w23, #0x0
   1f630: 540033ed     	b.le	0x1fcac <syna_tcm_v1_read_message+0xfa8>
   1f634: aa1703e1     	mov	x1, x23
   1f638: 5281b802     	mov	w2, #0xdc0              // =3520
   1f63c: 94000000     	bl	0x1f63c <syna_tcm_v1_read_message+0x938>
		000000000001f63c:  R_AARCH64_CALL26	devm_kmalloc
   1f640: f9008260     	str	x0, [x19, #0x100]
   1f644: b4004740     	cbz	x0, 0x1ff2c <syna_tcm_v1_read_message+0x1228>
   1f648: b9010a77     	str	w23, [x19, #0x108]
   1f64c: 14000028     	b	0x1f6ec <syna_tcm_v1_read_message+0x9e8>
   1f650: b941fa68     	ldr	w8, [x19, #0x1f8]
   1f654: 7100051f     	cmp	w8, #0x1
   1f658: 540057a1     	b.ne	0x2014c <syna_tcm_v1_read_message+0x1448>
   1f65c: b9420268     	ldr	w8, [x19, #0x200]
   1f660: 3907fa76     	strb	w22, [x19, #0x1fe]
   1f664: 34000de8     	cbz	w8, 0x1f820 <syna_tcm_v1_read_message+0xb1c>
   1f668: 39462262     	ldrb	w2, [x19, #0x188]
   1f66c: 35003142     	cbnz	w2, 0x1fc94 <syna_tcm_v1_read_message+0xf90>
   1f670: 91056260     	add	x0, x19, #0x158
   1f674: 94000000     	bl	0x1f674 <syna_tcm_v1_read_message+0x970>
		000000000001f674:  R_AARCH64_CALL26	mutex_lock
   1f678: 39462269     	ldrb	w9, [x19, #0x188]
   1f67c: b9420276     	ldr	w22, [x19, #0x200]
   1f680: b9415268     	ldr	w8, [x19, #0x150]
   1f684: f940a660     	ldr	x0, [x19, #0x148]
   1f688: 11000529     	add	w9, w9, #0x1
   1f68c: 6b16011f     	cmp	w8, w22
   1f690: 39062269     	strb	w9, [x19, #0x188]
   1f694: 54000ce2     	b.hs	0x1f830 <syna_tcm_v1_read_message+0xb2c>
   1f698: b40000c0     	cbz	x0, 0x1f6b0 <syna_tcm_v1_read_message+0x9ac>
   1f69c: aa0003f4     	mov	x20, x0
   1f6a0: 94000000     	bl	0x1f6a0 <syna_tcm_v1_read_message+0x99c>
		000000000001f6a0:  R_AARCH64_CALL26	syna_request_managed_device
   1f6a4: b40050a0     	cbz	x0, 0x200b8 <syna_tcm_v1_read_message+0x13b4>
   1f6a8: aa1403e1     	mov	x1, x20
   1f6ac: 94000000     	bl	0x1f6ac <syna_tcm_v1_read_message+0x9a8>
		000000000001f6ac:  R_AARCH64_CALL26	devm_kfree
   1f6b0: 94000000     	bl	0x1f6b0 <syna_tcm_v1_read_message+0x9ac>
		000000000001f6b0:  R_AARCH64_CALL26	syna_request_managed_device
   1f6b4: b4005100     	cbz	x0, 0x200d4 <syna_tcm_v1_read_message+0x13d0>
   1f6b8: 710002df     	cmp	w22, #0x0
   1f6bc: 5400482d     	b.le	0x1ffc0 <syna_tcm_v1_read_message+0x12bc>
   1f6c0: aa1603e1     	mov	x1, x22
   1f6c4: 5281b802     	mov	w2, #0xdc0              // =3520
   1f6c8: 94000000     	bl	0x1f6c8 <syna_tcm_v1_read_message+0x9c4>
		000000000001f6c8:  R_AARCH64_CALL26	devm_kmalloc
   1f6cc: f900a660     	str	x0, [x19, #0x148]
   1f6d0: b40050e0     	cbz	x0, 0x200ec <syna_tcm_v1_read_message+0x13e8>
   1f6d4: b9015276     	str	w22, [x19, #0x150]
   1f6d8: 14000057     	b	0x1f834 <syna_tcm_v1_read_message+0xb30>
   1f6dc: b9010e7f     	str	wzr, [x19, #0x10c]
   1f6e0: b5005399     	cbnz	x25, 0x20150 <syna_tcm_v1_read_message+0x144c>
   1f6e4: 1400029d     	b	0x20158 <syna_tcm_v1_read_message+0x1454>
   1f6e8: aa0803f7     	mov	x23, x8
   1f6ec: 2a1f03e1     	mov	w1, wzr
   1f6f0: aa1703e2     	mov	x2, x23
   1f6f4: 94000000     	bl	0x1f6f4 <syna_tcm_v1_read_message+0x9f0>
		000000000001f6f4:  R_AARCH64_CALL26	memset
   1f6f8: 394a0262     	ldrb	w2, [x19, #0x280]
   1f6fc: b9010e7f     	str	wzr, [x19, #0x10c]
   1f700: 35002082     	cbnz	w2, 0x1fb10 <syna_tcm_v1_read_message+0xe0c>
   1f704: 91094260     	add	x0, x19, #0x250
   1f708: 94000000     	bl	0x1f708 <syna_tcm_v1_read_message+0xa04>
		000000000001f708:  R_AARCH64_CALL26	mutex_lock
   1f70c: 394a0268     	ldrb	w8, [x19, #0x280]
   1f710: f9408260     	ldr	x0, [x19, #0x100]
   1f714: 11000508     	add	w8, w8, #0x1
   1f718: 390a0268     	strb	w8, [x19, #0x280]
   1f71c: b40021c0     	cbz	x0, 0x1fb54 <syna_tcm_v1_read_message+0xe50>
   1f720: f9412268     	ldr	x8, [x19, #0x240]
   1f724: 91001101     	add	x1, x8, #0x4
   1f728: b4002161     	cbz	x1, 0x1fb54 <syna_tcm_v1_read_message+0xe50>
   1f72c: b9410a63     	ldr	w3, [x19, #0x108]
   1f730: b9420264     	ldr	w4, [x19, #0x200]
   1f734: b9424a68     	ldr	w8, [x19, #0x248]
   1f738: 6b03009f     	cmp	w4, w3
   1f73c: 51001102     	sub	w2, w8, #0x4
   1f740: 54002008     	b.hi	0x1fb40 <syna_tcm_v1_read_message+0xe3c>
   1f744: 6b02009f     	cmp	w4, w2
   1f748: 54001fc8     	b.hi	0x1fb40 <syna_tcm_v1_read_message+0xe3c>
   1f74c: aa0403e2     	mov	x2, x4
   1f750: 94000000     	bl	0x1f750 <syna_tcm_v1_read_message+0xa4c>
		000000000001f750:  R_AARCH64_CALL26	memcpy
   1f754: 394a0262     	ldrb	w2, [x19, #0x280]
   1f758: b9420268     	ldr	w8, [x19, #0x200]
   1f75c: 7100045f     	cmp	w2, #0x1
   1f760: b9010e68     	str	w8, [x19, #0x10c]
   1f764: 54002121     	b.ne	0x1fb88 <syna_tcm_v1_read_message+0xe84>
   1f768: 2a1f03e8     	mov	w8, wzr
   1f76c: 91094260     	add	x0, x19, #0x250
   1f770: 390a0268     	strb	w8, [x19, #0x280]
   1f774: 94000000     	bl	0x1f774 <syna_tcm_v1_read_message+0xa70>
		000000000001f774:  R_AARCH64_CALL26	mutex_unlock
   1f778: 39450262     	ldrb	w2, [x19, #0x140]
   1f77c: 7100045f     	cmp	w2, #0x1
   1f780: 54002141     	b.ne	0x1fba8 <syna_tcm_v1_read_message+0xea4>
   1f784: 2a1f03e8     	mov	w8, wzr
   1f788: 91044260     	add	x0, x19, #0x110
   1f78c: 39050268     	strb	w8, [x19, #0x140]
   1f790: 94000000     	bl	0x1f790 <syna_tcm_v1_read_message+0xa8c>
		000000000001f790:  R_AARCH64_CALL26	mutex_unlock
   1f794: 710042df     	cmp	w22, #0x10
   1f798: 540010c1     	b.ne	0x1f9b0 <syna_tcm_v1_read_message+0xcac>
   1f79c: 394a0262     	ldrb	w2, [x19, #0x280]
   1f7a0: 35002fc2     	cbnz	w2, 0x1fd98 <syna_tcm_v1_read_message+0x1094>
   1f7a4: 91094260     	add	x0, x19, #0x250
   1f7a8: 94000000     	bl	0x1f7a8 <syna_tcm_v1_read_message+0xaa4>
		000000000001f7a8:  R_AARCH64_CALL26	mutex_lock
   1f7ac: 394a0268     	ldrb	w8, [x19, #0x280]
   1f7b0: b9424a69     	ldr	w9, [x19, #0x248]
   1f7b4: aa1303e0     	mov	x0, x19
   1f7b8: f941226a     	ldr	x10, [x19, #0x240]
   1f7bc: b9420263     	ldr	w3, [x19, #0x200]
   1f7c0: 11000508     	add	w8, w8, #0x1
   1f7c4: 51001122     	sub	w2, w9, #0x4
   1f7c8: 91001141     	add	x1, x10, #0x4
   1f7cc: 390a0268     	strb	w8, [x19, #0x280]
   1f7d0: 97fffcf3     	bl	0x1eb9c <syna_tcm_v1_write_message+0x77c>
		000000000001f7d0:  R_AARCH64_CALL26	syna_tcm_v1_parse_idinfo
   1f7d4: 37f82ee0     	tbnz	w0, #0x1f, 0x1fdb0 <syna_tcm_v1_read_message+0x10ac>
   1f7d8: 394a0262     	ldrb	w2, [x19, #0x280]
   1f7dc: 7100045f     	cmp	w2, #0x1
   1f7e0: 54003421     	b.ne	0x1fe64 <syna_tcm_v1_read_message+0x1160>
   1f7e4: 2a1f03e8     	mov	w8, wzr
   1f7e8: 91094260     	add	x0, x19, #0x250
   1f7ec: 390a0268     	strb	w8, [x19, #0x280]
   1f7f0: 94000000     	bl	0x1f7f0 <syna_tcm_v1_read_message+0xaec>
		000000000001f7f0:  R_AARCH64_CALL26	mutex_unlock
   1f7f4: b941fa68     	ldr	w8, [x19, #0x1f8]
   1f7f8: 7100051f     	cmp	w8, #0x1
   1f7fc: 54000da1     	b.ne	0x1f9b0 <syna_tcm_v1_read_message+0xcac>
   1f800: 3947f268     	ldrb	w8, [x19, #0x1fc]
   1f804: 7100791f     	cmp	w8, #0x1e
   1f808: 54000bac     	b.gt	0x1f97c <syna_tcm_v1_read_message+0xc78>
   1f80c: 7100111f     	cmp	w8, #0x4
   1f810: 54004920     	b.eq	0x20134 <syna_tcm_v1_read_message+0x1430>
   1f814: 7100511f     	cmp	w8, #0x14
   1f818: 540048e0     	b.eq	0x20134 <syna_tcm_v1_read_message+0x1430>
   1f81c: 1400005c     	b	0x1f98c <syna_tcm_v1_read_message+0xc88>
   1f820: b901567f     	str	wzr, [x19, #0x154]
   1f824: 3947fa62     	ldrb	w2, [x19, #0x1fe]
   1f828: 35004822     	cbnz	w2, 0x2012c <syna_tcm_v1_read_message+0x1428>
   1f82c: 14000248     	b	0x2014c <syna_tcm_v1_read_message+0x1448>
   1f830: aa0803f6     	mov	x22, x8
   1f834: 2a1f03e1     	mov	w1, wzr
   1f838: aa1603e2     	mov	x2, x22
   1f83c: 94000000     	bl	0x1f83c <syna_tcm_v1_read_message+0xb38>
		000000000001f83c:  R_AARCH64_CALL26	memset
   1f840: 394a0262     	ldrb	w2, [x19, #0x280]
   1f844: b901567f     	str	wzr, [x19, #0x154]
   1f848: 35002382     	cbnz	w2, 0x1fcb8 <syna_tcm_v1_read_message+0xfb4>
   1f84c: 91094260     	add	x0, x19, #0x250
   1f850: 94000000     	bl	0x1f850 <syna_tcm_v1_read_message+0xb4c>
		000000000001f850:  R_AARCH64_CALL26	mutex_lock
   1f854: 394a0268     	ldrb	w8, [x19, #0x280]
   1f858: f940a660     	ldr	x0, [x19, #0x148]
   1f85c: 11000508     	add	w8, w8, #0x1
   1f860: 390a0268     	strb	w8, [x19, #0x280]
   1f864: b4002460     	cbz	x0, 0x1fcf0 <syna_tcm_v1_read_message+0xfec>
   1f868: f9412268     	ldr	x8, [x19, #0x240]
   1f86c: 91001101     	add	x1, x8, #0x4
   1f870: b4002401     	cbz	x1, 0x1fcf0 <syna_tcm_v1_read_message+0xfec>
   1f874: b9415263     	ldr	w3, [x19, #0x150]
   1f878: b9420264     	ldr	w4, [x19, #0x200]
   1f87c: b9424a68     	ldr	w8, [x19, #0x248]
   1f880: 6b03009f     	cmp	w4, w3
   1f884: 51001102     	sub	w2, w8, #0x4
   1f888: 540022a8     	b.hi	0x1fcdc <syna_tcm_v1_read_message+0xfd8>
   1f88c: 6b02009f     	cmp	w4, w2
   1f890: 54002268     	b.hi	0x1fcdc <syna_tcm_v1_read_message+0xfd8>
   1f894: aa0403e2     	mov	x2, x4
   1f898: 94000000     	bl	0x1f898 <syna_tcm_v1_read_message+0xb94>
		000000000001f898:  R_AARCH64_CALL26	memcpy
   1f89c: 394a0262     	ldrb	w2, [x19, #0x280]
   1f8a0: b9420268     	ldr	w8, [x19, #0x200]
   1f8a4: 7100045f     	cmp	w2, #0x1
   1f8a8: b9015668     	str	w8, [x19, #0x154]
   1f8ac: 54002941     	b.ne	0x1fdd4 <syna_tcm_v1_read_message+0x10d0>
   1f8b0: 2a1f03e8     	mov	w8, wzr
   1f8b4: 91094260     	add	x0, x19, #0x250
   1f8b8: 390a0268     	strb	w8, [x19, #0x280]
   1f8bc: 94000000     	bl	0x1f8bc <syna_tcm_v1_read_message+0xbb8>
		000000000001f8bc:  R_AARCH64_CALL26	mutex_unlock
   1f8c0: 3947f268     	ldrb	w8, [x19, #0x1fc]
   1f8c4: 7100091f     	cmp	w8, #0x2
   1f8c8: 540000e1     	b.ne	0x1f8e4 <syna_tcm_v1_read_message+0xbe0>
   1f8cc: f940a661     	ldr	x1, [x19, #0x148]
   1f8d0: b9415262     	ldr	w2, [x19, #0x150]
   1f8d4: aa1303e0     	mov	x0, x19
   1f8d8: b9415663     	ldr	w3, [x19, #0x154]
   1f8dc: 97fffcb0     	bl	0x1eb9c <syna_tcm_v1_write_message+0x77c>
		000000000001f8dc:  R_AARCH64_CALL26	syna_tcm_v1_parse_idinfo
   1f8e0: 37f83760     	tbnz	w0, #0x1f, 0x1ffcc <syna_tcm_v1_read_message+0x12c8>
   1f8e4: 39462262     	ldrb	w2, [x19, #0x188]
   1f8e8: 7100045f     	cmp	w2, #0x1
   1f8ec: 54002901     	b.ne	0x1fe0c <syna_tcm_v1_read_message+0x1108>
   1f8f0: 2a1f03e8     	mov	w8, wzr
   1f8f4: 91056260     	add	x0, x19, #0x158
   1f8f8: 39062268     	strb	w8, [x19, #0x188]
   1f8fc: 94000000     	bl	0x1f8fc <syna_tcm_v1_read_message+0xbf8>
		000000000001f8fc:  R_AARCH64_CALL26	mutex_unlock
   1f900: 3947fa62     	ldrb	w2, [x19, #0x1fe]
   1f904: 35004142     	cbnz	w2, 0x2012c <syna_tcm_v1_read_message+0x1428>
   1f908: 14000211     	b	0x2014c <syna_tcm_v1_read_message+0x1448>
   1f90c: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001f90c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   1f910: 91000000     	add	x0, x0, #0x0
		000000000001f910:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   1f914: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001f914:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d70
   1f918: 91000021     	add	x1, x1, #0x0
		000000000001f918:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d70
   1f91c: 94000000     	bl	0x1f91c <syna_tcm_v1_read_message+0xc18>
		000000000001f91c:  R_AARCH64_CALL26	_printk
   1f920: 17fffecf     	b	0x1f45c <syna_tcm_v1_read_message+0x758>
   1f924: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001f924:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   1f928: 91000000     	add	x0, x0, #0x0
		000000000001f928:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   1f92c: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001f92c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16aa8
   1f930: 91000021     	add	x1, x1, #0x0
		000000000001f930:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16aa8
   1f934: 94000000     	bl	0x1f934 <syna_tcm_v1_read_message+0xc30>
		000000000001f934:  R_AARCH64_CALL26	_printk
   1f938: 394a0268     	ldrb	w8, [x19, #0x280]
   1f93c: 51000508     	sub	w8, w8, #0x1
   1f940: 17fffedd     	b	0x1f4b4 <syna_tcm_v1_read_message+0x7b0>
   1f944: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001f944:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   1f948: 91000000     	add	x0, x0, #0x0
		000000000001f948:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   1f94c: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001f94c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d70
   1f950: 91000021     	add	x1, x1, #0x0
		000000000001f950:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d70
   1f954: 94000000     	bl	0x1f954 <syna_tcm_v1_read_message+0xc50>
		000000000001f954:  R_AARCH64_CALL26	_printk
   1f958: 17ffff03     	b	0x1f564 <syna_tcm_v1_read_message+0x860>
   1f95c: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001f95c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   1f960: 91000000     	add	x0, x0, #0x0
		000000000001f960:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   1f964: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001f964:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16aa8
   1f968: 91000021     	add	x1, x1, #0x0
		000000000001f968:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16aa8
   1f96c: 94000000     	bl	0x1f96c <syna_tcm_v1_read_message+0xc68>
		000000000001f96c:  R_AARCH64_CALL26	_printk
   1f970: 394a0268     	ldrb	w8, [x19, #0x280]
   1f974: 51000508     	sub	w8, w8, #0x1
   1f978: 17ffff11     	b	0x1f5bc <syna_tcm_v1_read_message+0x8b8>
   1f97c: 71007d1f     	cmp	w8, #0x1f
   1f980: 54003da0     	b.eq	0x20134 <syna_tcm_v1_read_message+0x1430>
   1f984: 7100c51f     	cmp	w8, #0x31
   1f988: 54003d60     	b.eq	0x20134 <syna_tcm_v1_read_message+0x1430>
   1f98c: 3947c268     	ldrb	w8, [x19, #0x1f0]
   1f990: 7100051f     	cmp	w8, #0x1
   1f994: 540045c1     	b.ne	0x2024c <syna_tcm_v1_read_message+0x1548>
   1f998: b901fa7f     	str	wzr, [x19, #0x1f8]
   1f99c: 91088260     	add	x0, x19, #0x220
   1f9a0: 94000000     	bl	0x1f9a0 <syna_tcm_v1_read_message+0xc9c>
		000000000001f9a0:  R_AARCH64_CALL26	completion_done
   1f9a4: 37000060     	tbnz	w0, #0x0, 0x1f9b0 <syna_tcm_v1_read_message+0xcac>
   1f9a8: 91088260     	add	x0, x19, #0x220
   1f9ac: 94000000     	bl	0x1f9ac <syna_tcm_v1_read_message+0xca8>
		000000000001f9ac:  R_AARCH64_CALL26	complete
   1f9b0: 8b365268     	add	x8, x19, w22, uxtw #4
   1f9b4: f941f109     	ldr	x9, [x8, #0x3e0]
   1f9b8: b4003ca9     	cbz	x9, 0x2014c <syna_tcm_v1_read_message+0x1448>
   1f9bc: 39450262     	ldrb	w2, [x19, #0x140]
   1f9c0: 910f6114     	add	x20, x8, #0x3d8
   1f9c4: 35002182     	cbnz	w2, 0x1fdf4 <syna_tcm_v1_read_message+0x10f0>
   1f9c8: 91044260     	add	x0, x19, #0x110
   1f9cc: 94000000     	bl	0x1f9cc <syna_tcm_v1_read_message+0xcc8>
		000000000001f9cc:  R_AARCH64_CALL26	mutex_lock
   1f9d0: 39450268     	ldrb	w8, [x19, #0x140]
   1f9d4: a9402683     	ldp	x3, x9, [x20]
   1f9d8: b9410e62     	ldr	w2, [x19, #0x10c]
   1f9dc: 2a1603e0     	mov	w0, w22
   1f9e0: f9408261     	ldr	x1, [x19, #0x100]
   1f9e4: 11000508     	add	w8, w8, #0x1
   1f9e8: 39050268     	strb	w8, [x19, #0x140]
   1f9ec: b85fc130     	ldur	w16, [x9, #-0x4]
   1f9f0: 72988151     	movk	w17, #0xc40a
   1f9f4: 72b3f271     	movk	w17, #0x9f93, lsl #16
   1f9f8: 6b11021f     	cmp	w16, w17
   1f9fc: 54000040     	b.eq	0x1fa04 <syna_tcm_v1_read_message+0xd00>
   1fa00: d4304520     	brk	#0x8229
   1fa04: d63f0120     	blr	x9
   1fa08: 14000155     	b	0x1ff5c <syna_tcm_v1_read_message+0x1258>
   1fa0c: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fa0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15a80
   1fa10: 91000000     	add	x0, x0, #0x0
		000000000001fa10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15a80
   1fa14: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fa14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14c56
   1fa18: 91000021     	add	x1, x1, #0x0
		000000000001fa18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14c56
   1fa1c: 94000000     	bl	0x1fa1c <syna_tcm_v1_read_message+0xd18>
		000000000001fa1c:  R_AARCH64_CALL26	_printk
   1fa20: 94000000     	bl	0x1fa20 <syna_tcm_v1_read_message+0xd1c>
		000000000001fa20:  R_AARCH64_CALL26	syna_request_managed_device
   1fa24: b5ffa080     	cbnz	x0, 0x1ee34 <syna_tcm_v1_read_message+0x130>
   1fa28: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fa28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15a80
   1fa2c: 91000000     	add	x0, x0, #0x0
		000000000001fa2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15a80
   1fa30: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fa30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf952
   1fa34: 91000021     	add	x1, x1, #0x0
		000000000001fa34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf952
   1fa38: 94000000     	bl	0x1fa38 <syna_tcm_v1_read_message+0xd34>
		000000000001fa38:  R_AARCH64_CALL26	_printk
   1fa3c: f85f83a8     	ldur	x8, [x29, #-0x8]
   1fa40: f900011f     	str	xzr, [x8]
   1fa44: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fa44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10a46
   1fa48: 91000000     	add	x0, x0, #0x0
		000000000001fa48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10a46
   1fa4c: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fa4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x124ae
   1fa50: 91000021     	add	x1, x1, #0x0
		000000000001fa50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x124ae
   1fa54: 2a1603e2     	mov	w2, w22
   1fa58: 94000000     	bl	0x1fa58 <syna_tcm_v1_read_message+0xd54>
		000000000001fa58:  R_AARCH64_CALL26	_printk
   1fa5c: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fa5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdb6c
   1fa60: 91000000     	add	x0, x0, #0x0
		000000000001fa60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdb6c
   1fa64: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fa64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16b7c
   1fa68: 91000021     	add	x1, x1, #0x0
		000000000001fa68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16b7c
   1fa6c: f901267f     	str	xzr, [x19, #0x248]
   1fa70: 94000000     	bl	0x1fa70 <syna_tcm_v1_read_message+0xd6c>
		000000000001fa70:  R_AARCH64_CALL26	_printk
   1fa74: 394a0262     	ldrb	w2, [x19, #0x280]
   1fa78: 7100045f     	cmp	w2, #0x1
   1fa7c: 540014a1     	b.ne	0x1fd10 <syna_tcm_v1_read_message+0x100c>
   1fa80: 2a1f03e8     	mov	w8, wzr
   1fa84: 91094260     	add	x0, x19, #0x250
   1fa88: 390a0268     	strb	w8, [x19, #0x280]
   1fa8c: 94000000     	bl	0x1fa8c <syna_tcm_v1_read_message+0xd88>
		000000000001fa8c:  R_AARCH64_CALL26	mutex_unlock
   1fa90: 52801fe8     	mov	w8, #0xff               // =255
   1fa94: b902027f     	str	wzr, [x19, #0x200]
   1fa98: 12801e57     	mov	w23, #-0xf3             // =-243
   1fa9c: 3907f668     	strb	w8, [x19, #0x1fd]
   1faa0: 140001bb     	b	0x2018c <syna_tcm_v1_read_message+0x1488>
   1faa4: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001faa4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15a80
   1faa8: 91000000     	add	x0, x0, #0x0
		000000000001faa8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15a80
   1faac: 14000003     	b	0x1fab8 <syna_tcm_v1_read_message+0xdb4>
   1fab0: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fab0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d82
   1fab4: 91000000     	add	x0, x0, #0x0
		000000000001fab4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d82
   1fab8: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fab8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf952
   1fabc: 91000021     	add	x1, x1, #0x0
		000000000001fabc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf952
   1fac0: 94000000     	bl	0x1fac0 <syna_tcm_v1_read_message+0xdbc>
		000000000001fac0:  R_AARCH64_CALL26	_printk
   1fac4: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fac4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11a1c
   1fac8: 91000000     	add	x0, x0, #0x0
		000000000001fac8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11a1c
   1facc: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001facc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1139a
   1fad0: 91000021     	add	x1, x1, #0x0
		000000000001fad0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1139a
   1fad4: 14000064     	b	0x1fc64 <syna_tcm_v1_read_message+0xf60>
   1fad8: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fad8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   1fadc: 91000000     	add	x0, x0, #0x0
		000000000001fadc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   1fae0: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fae0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d70
   1fae4: 91000021     	add	x1, x1, #0x0
		000000000001fae4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d70
   1fae8: 94000000     	bl	0x1fae8 <syna_tcm_v1_read_message+0xde4>
		000000000001fae8:  R_AARCH64_CALL26	_printk
   1faec: 17fffe7c     	b	0x1f4dc <syna_tcm_v1_read_message+0x7d8>
   1faf0: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001faf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   1faf4: 91000000     	add	x0, x0, #0x0
		000000000001faf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   1faf8: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001faf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d70
   1fafc: 91000021     	add	x1, x1, #0x0
		000000000001fafc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d70
   1fb00: 94000000     	bl	0x1fb00 <syna_tcm_v1_read_message+0xdfc>
		000000000001fb00:  R_AARCH64_CALL26	_printk
   1fb04: 17fffeb8     	b	0x1f5e4 <syna_tcm_v1_read_message+0x8e0>
   1fb08: 12801e17     	mov	w23, #-0xf1             // =-241
   1fb0c: 14000160     	b	0x2008c <syna_tcm_v1_read_message+0x1388>
   1fb10: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fb10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   1fb14: 91000000     	add	x0, x0, #0x0
		000000000001fb14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   1fb18: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fb18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d70
   1fb1c: 91000021     	add	x1, x1, #0x0
		000000000001fb1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d70
   1fb20: 94000000     	bl	0x1fb20 <syna_tcm_v1_read_message+0xe1c>
		000000000001fb20:  R_AARCH64_CALL26	_printk
   1fb24: 17fffef8     	b	0x1f704 <syna_tcm_v1_read_message+0xa00>
   1fb28: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fb28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   1fb2c: 91000000     	add	x0, x0, #0x0
		000000000001fb2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   1fb30: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fb30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d70
   1fb34: 91000021     	add	x1, x1, #0x0
		000000000001fb34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d70
   1fb38: 94000000     	bl	0x1fb38 <syna_tcm_v1_read_message+0xe34>
		000000000001fb38:  R_AARCH64_CALL26	_printk
   1fb3c: 17fffd2f     	b	0x1eff8 <syna_tcm_v1_read_message+0x2f4>
   1fb40: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fb40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x130d2
   1fb44: 91000000     	add	x0, x0, #0x0
		000000000001fb44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x130d2
   1fb48: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fb48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc770
   1fb4c: 91000021     	add	x1, x1, #0x0
		000000000001fb4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc770
   1fb50: 94000000     	bl	0x1fb50 <syna_tcm_v1_read_message+0xe4c>
		000000000001fb50:  R_AARCH64_CALL26	_printk
   1fb54: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fb54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc14a
   1fb58: 91000000     	add	x0, x0, #0x0
		000000000001fb58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc14a
   1fb5c: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fb5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1327a
   1fb60: 91000021     	add	x1, x1, #0x0
		000000000001fb60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1327a
   1fb64: 94000000     	bl	0x1fb64 <syna_tcm_v1_read_message+0xe60>
		000000000001fb64:  R_AARCH64_CALL26	_printk
   1fb68: 394a0262     	ldrb	w2, [x19, #0x280]
   1fb6c: 7100045f     	cmp	w2, #0x1
   1fb70: 540035e1     	b.ne	0x2022c <syna_tcm_v1_read_message+0x1528>
   1fb74: 2a1f03e8     	mov	w8, wzr
   1fb78: 91094260     	add	x0, x19, #0x250
   1fb7c: 390a0268     	strb	w8, [x19, #0x280]
   1fb80: 94000000     	bl	0x1fb80 <syna_tcm_v1_read_message+0xe7c>
		000000000001fb80:  R_AARCH64_CALL26	mutex_unlock
   1fb84: 140000f6     	b	0x1ff5c <syna_tcm_v1_read_message+0x1258>
   1fb88: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fb88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   1fb8c: 91000000     	add	x0, x0, #0x0
		000000000001fb8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   1fb90: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fb90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16aa8
   1fb94: 91000021     	add	x1, x1, #0x0
		000000000001fb94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16aa8
   1fb98: 94000000     	bl	0x1fb98 <syna_tcm_v1_read_message+0xe94>
		000000000001fb98:  R_AARCH64_CALL26	_printk
   1fb9c: 394a0268     	ldrb	w8, [x19, #0x280]
   1fba0: 51000508     	sub	w8, w8, #0x1
   1fba4: 17fffef2     	b	0x1f76c <syna_tcm_v1_read_message+0xa68>
   1fba8: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fba8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   1fbac: 91000000     	add	x0, x0, #0x0
		000000000001fbac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   1fbb0: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fbb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16aa8
   1fbb4: 91000021     	add	x1, x1, #0x0
		000000000001fbb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16aa8
   1fbb8: 94000000     	bl	0x1fbb8 <syna_tcm_v1_read_message+0xeb4>
		000000000001fbb8:  R_AARCH64_CALL26	_printk
   1fbbc: 39450268     	ldrb	w8, [x19, #0x140]
   1fbc0: 51000508     	sub	w8, w8, #0x1
   1fbc4: 17fffef1     	b	0x1f788 <syna_tcm_v1_read_message+0xa84>
   1fbc8: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fbc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   1fbcc: 91000000     	add	x0, x0, #0x0
		000000000001fbcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   1fbd0: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fbd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d70
   1fbd4: 91000021     	add	x1, x1, #0x0
		000000000001fbd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d70
   1fbd8: 94000000     	bl	0x1fbd8 <syna_tcm_v1_read_message+0xed4>
		000000000001fbd8:  R_AARCH64_CALL26	_printk
   1fbdc: 17fffd79     	b	0x1f1c0 <syna_tcm_v1_read_message+0x4bc>
   1fbe0: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fbe0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   1fbe4: 91000000     	add	x0, x0, #0x0
		000000000001fbe4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   1fbe8: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fbe8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16aa8
   1fbec: 91000021     	add	x1, x1, #0x0
		000000000001fbec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16aa8
   1fbf0: 94000000     	bl	0x1fbf0 <syna_tcm_v1_read_message+0xeec>
		000000000001fbf0:  R_AARCH64_CALL26	_printk
   1fbf4: 394c4268     	ldrb	w8, [x19, #0x310]
   1fbf8: 51000508     	sub	w8, w8, #0x1
   1fbfc: 17fffe0a     	b	0x1f424 <syna_tcm_v1_read_message+0x720>
   1fc00: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fc00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   1fc04: 91000000     	add	x0, x0, #0x0
		000000000001fc04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   1fc08: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fc08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16aa8
   1fc0c: 91000021     	add	x1, x1, #0x0
		000000000001fc0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16aa8
   1fc10: 94000000     	bl	0x1fc10 <syna_tcm_v1_read_message+0xf0c>
		000000000001fc10:  R_AARCH64_CALL26	_printk
   1fc14: 394a0268     	ldrb	w8, [x19, #0x280]
   1fc18: 51000508     	sub	w8, w8, #0x1
   1fc1c: 17fffe09     	b	0x1f440 <syna_tcm_v1_read_message+0x73c>
   1fc20: aa1703f6     	mov	x22, x23
   1fc24: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fc24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfac4
   1fc28: 91000021     	add	x1, x1, #0x0
		000000000001fc28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfac4
   1fc2c: aa1603e0     	mov	x0, x22
   1fc30: 94000000     	bl	0x1fc30 <syna_tcm_v1_read_message+0xf2c>
		000000000001fc30:  R_AARCH64_CALL26	_printk
   1fc34: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fc34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaf8a
   1fc38: 91000000     	add	x0, x0, #0x0
		000000000001fc38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaf8a
   1fc3c: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fc3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1139a
   1fc40: 91000021     	add	x1, x1, #0x0
		000000000001fc40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1139a
   1fc44: 2a1403e2     	mov	w2, w20
   1fc48: 94000000     	bl	0x1fc48 <syna_tcm_v1_read_message+0xf44>
		000000000001fc48:  R_AARCH64_CALL26	_printk
   1fc4c: 94000000     	bl	0x1fc4c <syna_tcm_v1_read_message+0xf48>
		000000000001fc4c:  R_AARCH64_CALL26	syna_request_managed_device
   1fc50: b5ff9940     	cbnz	x0, 0x1ef78 <syna_tcm_v1_read_message+0x274>
   1fc54: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fc54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15a80
   1fc58: 91000000     	add	x0, x0, #0x0
		000000000001fc58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15a80
   1fc5c: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fc5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14c56
   1fc60: 91000021     	add	x1, x1, #0x0
		000000000001fc60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14c56
   1fc64: 94000000     	bl	0x1fc64 <syna_tcm_v1_read_message+0xf60>
		000000000001fc64:  R_AARCH64_CALL26	_printk
   1fc68: 12801e37     	mov	w23, #-0xf2             // =-242
   1fc6c: 14000148     	b	0x2018c <syna_tcm_v1_read_message+0x1488>
   1fc70: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fc70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   1fc74: 91000000     	add	x0, x0, #0x0
		000000000001fc74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   1fc78: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fc78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16aa8
   1fc7c: 91000021     	add	x1, x1, #0x0
		000000000001fc7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16aa8
   1fc80: 12001d02     	and	w2, w8, #0xff
   1fc84: 94000000     	bl	0x1fc84 <syna_tcm_v1_read_message+0xf80>
		000000000001fc84:  R_AARCH64_CALL26	_printk
   1fc88: 394a0268     	ldrb	w8, [x19, #0x280]
   1fc8c: 51000508     	sub	w8, w8, #0x1
   1fc90: 17fffe2a     	b	0x1f538 <syna_tcm_v1_read_message+0x834>
   1fc94: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fc94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   1fc98: 91000000     	add	x0, x0, #0x0
		000000000001fc98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   1fc9c: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fc9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d70
   1fca0: 91000021     	add	x1, x1, #0x0
		000000000001fca0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d70
   1fca4: 94000000     	bl	0x1fca4 <syna_tcm_v1_read_message+0xfa0>
		000000000001fca4:  R_AARCH64_CALL26	_printk
   1fca8: 17fffe72     	b	0x1f670 <syna_tcm_v1_read_message+0x96c>
   1fcac: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fcac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d82
   1fcb0: 91000000     	add	x0, x0, #0x0
		000000000001fcb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d82
   1fcb4: 1400009a     	b	0x1ff1c <syna_tcm_v1_read_message+0x1218>
   1fcb8: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fcb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   1fcbc: 91000000     	add	x0, x0, #0x0
		000000000001fcbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   1fcc0: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fcc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d70
   1fcc4: 91000021     	add	x1, x1, #0x0
		000000000001fcc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d70
   1fcc8: 94000000     	bl	0x1fcc8 <syna_tcm_v1_read_message+0xfc4>
		000000000001fcc8:  R_AARCH64_CALL26	_printk
   1fccc: 17fffee0     	b	0x1f84c <syna_tcm_v1_read_message+0xb48>
   1fcd0: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fcd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15a80
   1fcd4: 91000000     	add	x0, x0, #0x0
		000000000001fcd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15a80
   1fcd8: 14000018     	b	0x1fd38 <syna_tcm_v1_read_message+0x1034>
   1fcdc: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fcdc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x130d2
   1fce0: 91000000     	add	x0, x0, #0x0
		000000000001fce0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x130d2
   1fce4: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fce4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc770
   1fce8: 91000021     	add	x1, x1, #0x0
		000000000001fce8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc770
   1fcec: 94000000     	bl	0x1fcec <syna_tcm_v1_read_message+0xfe8>
		000000000001fcec:  R_AARCH64_CALL26	_printk
   1fcf0: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fcf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1494e
   1fcf4: 91000000     	add	x0, x0, #0x0
		000000000001fcf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1494e
   1fcf8: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fcf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x172f4
   1fcfc: 91000021     	add	x1, x1, #0x0
		000000000001fcfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x172f4
   1fd00: 94000000     	bl	0x1fd00 <syna_tcm_v1_read_message+0xffc>
		000000000001fd00:  R_AARCH64_CALL26	_printk
   1fd04: f85f83a0     	ldur	x0, [x29, #-0x8]
   1fd08: 97fff981     	bl	0x1e30c <syna_tcm_v1_detect+0x3c4>
		000000000001fd08:  R_AARCH64_CALL26	syna_tcm_buf_unlock
   1fd0c: 14000104     	b	0x2011c <syna_tcm_v1_read_message+0x1418>
   1fd10: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fd10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   1fd14: 91000000     	add	x0, x0, #0x0
		000000000001fd14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   1fd18: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fd18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16aa8
   1fd1c: 91000021     	add	x1, x1, #0x0
		000000000001fd1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16aa8
   1fd20: 94000000     	bl	0x1fd20 <syna_tcm_v1_read_message+0x101c>
		000000000001fd20:  R_AARCH64_CALL26	_printk
   1fd24: 394a0268     	ldrb	w8, [x19, #0x280]
   1fd28: 51000508     	sub	w8, w8, #0x1
   1fd2c: 17ffff56     	b	0x1fa84 <syna_tcm_v1_read_message+0xd80>
   1fd30: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fd30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d82
   1fd34: 91000000     	add	x0, x0, #0x0
		000000000001fd34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d82
   1fd38: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fd38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf952
   1fd3c: 91000021     	add	x1, x1, #0x0
		000000000001fd3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf952
   1fd40: 94000000     	bl	0x1fd40 <syna_tcm_v1_read_message+0x103c>
		000000000001fd40:  R_AARCH64_CALL26	_printk
   1fd44: f85f83a8     	ldur	x8, [x29, #-0x8]
   1fd48: f900011f     	str	xzr, [x8]
   1fd4c: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fd4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10a46
   1fd50: 91000000     	add	x0, x0, #0x0
		000000000001fd50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10a46
   1fd54: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fd54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf596
   1fd58: 91000021     	add	x1, x1, #0x0
		000000000001fd58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf596
   1fd5c: 2a1603e2     	mov	w2, w22
   1fd60: 94000000     	bl	0x1fd60 <syna_tcm_v1_read_message+0x105c>
		000000000001fd60:  R_AARCH64_CALL26	_printk
   1fd64: 94000000     	bl	0x1fd64 <syna_tcm_v1_read_message+0x1060>
		000000000001fd64:  R_AARCH64_CALL26	syna_request_managed_device
   1fd68: b5000100     	cbnz	x0, 0x1fd88 <syna_tcm_v1_read_message+0x1084>
   1fd6c: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fd6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15a80
   1fd70: 91000000     	add	x0, x0, #0x0
		000000000001fd70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15a80
   1fd74: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fd74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14c56
   1fd78: 91000021     	add	x1, x1, #0x0
		000000000001fd78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14c56
   1fd7c: 94000000     	bl	0x1fd7c <syna_tcm_v1_read_message+0x1078>
		000000000001fd7c:  R_AARCH64_CALL26	_printk
   1fd80: f9400bf8     	ldr	x24, [sp, #0x10]
   1fd84: 140000b8     	b	0x20064 <syna_tcm_v1_read_message+0x1360>
   1fd88: f9400bf8     	ldr	x24, [sp, #0x10]
   1fd8c: b40016d7     	cbz	x23, 0x20064 <syna_tcm_v1_read_message+0x1360>
   1fd90: aa1703e1     	mov	x1, x23
   1fd94: 140000b3     	b	0x20060 <syna_tcm_v1_read_message+0x135c>
   1fd98: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fd98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   1fd9c: 91000000     	add	x0, x0, #0x0
		000000000001fd9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   1fda0: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fda0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d70
   1fda4: 91000021     	add	x1, x1, #0x0
		000000000001fda4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d70
   1fda8: 94000000     	bl	0x1fda8 <syna_tcm_v1_read_message+0x10a4>
		000000000001fda8:  R_AARCH64_CALL26	_printk
   1fdac: 17fffe7e     	b	0x1f7a4 <syna_tcm_v1_read_message+0xaa0>
   1fdb0: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fdb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13b36
   1fdb4: 91000000     	add	x0, x0, #0x0
		000000000001fdb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13b36
   1fdb8: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fdb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1327a
   1fdbc: 91000021     	add	x1, x1, #0x0
		000000000001fdbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1327a
   1fdc0: 94000000     	bl	0x1fdc0 <syna_tcm_v1_read_message+0x10bc>
		000000000001fdc0:  R_AARCH64_CALL26	_printk
   1fdc4: f85f83a0     	ldur	x0, [x29, #-0x8]
   1fdc8: 97fff951     	bl	0x1e30c <syna_tcm_v1_detect+0x3c4>
		000000000001fdc8:  R_AARCH64_CALL26	syna_tcm_buf_unlock
   1fdcc: b5001c39     	cbnz	x25, 0x20150 <syna_tcm_v1_read_message+0x144c>
   1fdd0: 140000e2     	b	0x20158 <syna_tcm_v1_read_message+0x1454>
   1fdd4: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fdd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   1fdd8: 91000000     	add	x0, x0, #0x0
		000000000001fdd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   1fddc: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fddc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16aa8
   1fde0: 91000021     	add	x1, x1, #0x0
		000000000001fde0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16aa8
   1fde4: 94000000     	bl	0x1fde4 <syna_tcm_v1_read_message+0x10e0>
		000000000001fde4:  R_AARCH64_CALL26	_printk
   1fde8: 394a0268     	ldrb	w8, [x19, #0x280]
   1fdec: 51000508     	sub	w8, w8, #0x1
   1fdf0: 17fffeb1     	b	0x1f8b4 <syna_tcm_v1_read_message+0xbb0>
   1fdf4: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fdf4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   1fdf8: 91000000     	add	x0, x0, #0x0
		000000000001fdf8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   1fdfc: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fdfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d70
   1fe00: 91000021     	add	x1, x1, #0x0
		000000000001fe00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d70
   1fe04: 94000000     	bl	0x1fe04 <syna_tcm_v1_read_message+0x1100>
		000000000001fe04:  R_AARCH64_CALL26	_printk
   1fe08: 17fffef0     	b	0x1f9c8 <syna_tcm_v1_read_message+0xcc4>
   1fe0c: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fe0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   1fe10: 91000000     	add	x0, x0, #0x0
		000000000001fe10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   1fe14: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fe14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16aa8
   1fe18: 91000021     	add	x1, x1, #0x0
		000000000001fe18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16aa8
   1fe1c: 94000000     	bl	0x1fe1c <syna_tcm_v1_read_message+0x1118>
		000000000001fe1c:  R_AARCH64_CALL26	_printk
   1fe20: 39462268     	ldrb	w8, [x19, #0x188]
   1fe24: 51000508     	sub	w8, w8, #0x1
   1fe28: 17fffeb3     	b	0x1f8f4 <syna_tcm_v1_read_message+0xbf0>
   1fe2c: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fe2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x130d2
   1fe30: 91000000     	add	x0, x0, #0x0
		000000000001fe30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x130d2
   1fe34: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fe34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc770
   1fe38: 91000021     	add	x1, x1, #0x0
		000000000001fe38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc770
   1fe3c: 2a1803e4     	mov	w4, w24
   1fe40: 94000000     	bl	0x1fe40 <syna_tcm_v1_read_message+0x113c>
		000000000001fe40:  R_AARCH64_CALL26	_printk
   1fe44: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fe44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15ede
   1fe48: 91000000     	add	x0, x0, #0x0
		000000000001fe48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15ede
   1fe4c: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fe4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcfec
   1fe50: 91000021     	add	x1, x1, #0x0
		000000000001fe50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcfec
   1fe54: 94000000     	bl	0x1fe54 <syna_tcm_v1_read_message+0x1150>
		000000000001fe54:  R_AARCH64_CALL26	_printk
   1fe58: 128002b7     	mov	w23, #-0x16             // =-22
   1fe5c: 52800034     	mov	w20, #0x1               // =1
   1fe60: 17fffd6b     	b	0x1f40c <syna_tcm_v1_read_message+0x708>
   1fe64: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fe64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   1fe68: 91000000     	add	x0, x0, #0x0
		000000000001fe68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   1fe6c: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fe6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16aa8
   1fe70: 91000021     	add	x1, x1, #0x0
		000000000001fe70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16aa8
   1fe74: 94000000     	bl	0x1fe74 <syna_tcm_v1_read_message+0x1170>
		000000000001fe74:  R_AARCH64_CALL26	_printk
   1fe78: 394a0268     	ldrb	w8, [x19, #0x280]
   1fe7c: 51000508     	sub	w8, w8, #0x1
   1fe80: 17fffe5a     	b	0x1f7e8 <syna_tcm_v1_read_message+0xae4>
   1fe84: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fe84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafba
   1fe88: 91000000     	add	x0, x0, #0x0
		000000000001fe88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafba
   1fe8c: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fe8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf596
   1fe90: 91000021     	add	x1, x1, #0x0
		000000000001fe90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf596
   1fe94: 94000000     	bl	0x1fe94 <syna_tcm_v1_read_message+0x1190>
		000000000001fe94:  R_AARCH64_CALL26	_printk
   1fe98: 94000000     	bl	0x1fe98 <syna_tcm_v1_read_message+0x1194>
		000000000001fe98:  R_AARCH64_CALL26	syna_request_managed_device
   1fe9c: f9400bf8     	ldr	x24, [sp, #0x10]
   1fea0: b50000c0     	cbnz	x0, 0x1feb8 <syna_tcm_v1_read_message+0x11b4>
   1fea4: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fea4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15a80
   1fea8: 91000000     	add	x0, x0, #0x0
		000000000001fea8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15a80
   1feac: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001feac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14c56
   1feb0: 91000021     	add	x1, x1, #0x0
		000000000001feb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14c56
   1feb4: 94000000     	bl	0x1feb4 <syna_tcm_v1_read_message+0x11b0>
		000000000001feb4:  R_AARCH64_CALL26	_printk
   1feb8: f85f83a8     	ldur	x8, [x29, #-0x8]
   1febc: f9400114     	ldr	x20, [x8]
   1fec0: 94000000     	bl	0x1fec0 <syna_tcm_v1_read_message+0x11bc>
		000000000001fec0:  R_AARCH64_CALL26	syna_request_managed_device
   1fec4: b5000ca0     	cbnz	x0, 0x20058 <syna_tcm_v1_read_message+0x1354>
   1fec8: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fec8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15a80
   1fecc: 91000000     	add	x0, x0, #0x0
		000000000001fecc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15a80
   1fed0: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fed0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14c56
   1fed4: 91000021     	add	x1, x1, #0x0
		000000000001fed4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14c56
   1fed8: 94000000     	bl	0x1fed8 <syna_tcm_v1_read_message+0x11d4>
		000000000001fed8:  R_AARCH64_CALL26	_printk
   1fedc: 14000062     	b	0x20064 <syna_tcm_v1_read_message+0x1360>
   1fee0: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fee0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15a80
   1fee4: 91000000     	add	x0, x0, #0x0
		000000000001fee4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15a80
   1fee8: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fee8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14c56
   1feec: 91000021     	add	x1, x1, #0x0
		000000000001feec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14c56
   1fef0: 94000000     	bl	0x1fef0 <syna_tcm_v1_read_message+0x11ec>
		000000000001fef0:  R_AARCH64_CALL26	_printk
   1fef4: 17fffc5f     	b	0x1f070 <syna_tcm_v1_read_message+0x36c>
   1fef8: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001fef8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15a80
   1fefc: 91000000     	add	x0, x0, #0x0
		000000000001fefc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15a80
   1ff00: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001ff00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14c56
   1ff04: 91000021     	add	x1, x1, #0x0
		000000000001ff04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14c56
   1ff08: 94000000     	bl	0x1ff08 <syna_tcm_v1_read_message+0x1204>
		000000000001ff08:  R_AARCH64_CALL26	_printk
   1ff0c: 94000000     	bl	0x1ff0c <syna_tcm_v1_read_message+0x1208>
		000000000001ff0c:  R_AARCH64_CALL26	syna_request_managed_device
   1ff10: b5ffb8e0     	cbnz	x0, 0x1f62c <syna_tcm_v1_read_message+0x928>
   1ff14: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001ff14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15a80
   1ff18: 91000000     	add	x0, x0, #0x0
		000000000001ff18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15a80
   1ff1c: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001ff1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf952
   1ff20: 91000021     	add	x1, x1, #0x0
		000000000001ff20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf952
   1ff24: 94000000     	bl	0x1ff24 <syna_tcm_v1_read_message+0x1220>
		000000000001ff24:  R_AARCH64_CALL26	_printk
   1ff28: f900827f     	str	xzr, [x19, #0x100]
   1ff2c: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001ff2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10a46
   1ff30: 91000000     	add	x0, x0, #0x0
		000000000001ff30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10a46
   1ff34: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001ff34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x124ae
   1ff38: 91000021     	add	x1, x1, #0x0
		000000000001ff38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x124ae
   1ff3c: 2a1703e2     	mov	w2, w23
   1ff40: 94000000     	bl	0x1ff40 <syna_tcm_v1_read_message+0x123c>
		000000000001ff40:  R_AARCH64_CALL26	_printk
   1ff44: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001ff44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x113b6
   1ff48: 91000000     	add	x0, x0, #0x0
		000000000001ff48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x113b6
   1ff4c: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001ff4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1327a
   1ff50: 91000021     	add	x1, x1, #0x0
		000000000001ff50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1327a
   1ff54: f900867f     	str	xzr, [x19, #0x108]
   1ff58: 94000000     	bl	0x1ff58 <syna_tcm_v1_read_message+0x1254>
		000000000001ff58:  R_AARCH64_CALL26	_printk
   1ff5c: 39450262     	ldrb	w2, [x19, #0x140]
   1ff60: 7100045f     	cmp	w2, #0x1
   1ff64: 540000e1     	b.ne	0x1ff80 <syna_tcm_v1_read_message+0x127c>
   1ff68: 2a1f03e8     	mov	w8, wzr
   1ff6c: 91044260     	add	x0, x19, #0x110
   1ff70: 39050268     	strb	w8, [x19, #0x140]
   1ff74: 94000000     	bl	0x1ff74 <syna_tcm_v1_read_message+0x1270>
		000000000001ff74:  R_AARCH64_CALL26	mutex_unlock
   1ff78: b5000ed9     	cbnz	x25, 0x20150 <syna_tcm_v1_read_message+0x144c>
   1ff7c: 14000077     	b	0x20158 <syna_tcm_v1_read_message+0x1454>
   1ff80: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001ff80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   1ff84: 91000000     	add	x0, x0, #0x0
		000000000001ff84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   1ff88: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001ff88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16aa8
   1ff8c: 91000021     	add	x1, x1, #0x0
		000000000001ff8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16aa8
   1ff90: 94000000     	bl	0x1ff90 <syna_tcm_v1_read_message+0x128c>
		000000000001ff90:  R_AARCH64_CALL26	_printk
   1ff94: 39450268     	ldrb	w8, [x19, #0x140]
   1ff98: 51000508     	sub	w8, w8, #0x1
   1ff9c: 17fffff4     	b	0x1ff6c <syna_tcm_v1_read_message+0x1268>
   1ffa0: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001ffa0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   1ffa4: 91000000     	add	x0, x0, #0x0
		000000000001ffa4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   1ffa8: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001ffa8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16aa8
   1ffac: 91000021     	add	x1, x1, #0x0
		000000000001ffac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16aa8
   1ffb0: 94000000     	bl	0x1ffb0 <syna_tcm_v1_read_message+0x12ac>
		000000000001ffb0:  R_AARCH64_CALL26	_printk
   1ffb4: 394a0268     	ldrb	w8, [x19, #0x280]
   1ffb8: 51000508     	sub	w8, w8, #0x1
   1ffbc: 17fffc65     	b	0x1f150 <syna_tcm_v1_read_message+0x44c>
   1ffc0: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001ffc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d82
   1ffc4: 91000000     	add	x0, x0, #0x0
		000000000001ffc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d82
   1ffc8: 14000045     	b	0x200dc <syna_tcm_v1_read_message+0x13d8>
   1ffcc: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001ffcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x113f6
   1ffd0: 91000000     	add	x0, x0, #0x0
		000000000001ffd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x113f6
   1ffd4: 1400004f     	b	0x20110 <syna_tcm_v1_read_message+0x140c>
   1ffd8: b85f43a4     	ldur	w4, [x29, #-0xc]
   1ffdc: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001ffdc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xef38
   1ffe0: 91000000     	add	x0, x0, #0x0
		000000000001ffe0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xef38
   1ffe4: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0x2fc>
		000000000001ffe4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcfec
   1ffe8: 91000021     	add	x1, x1, #0x0
		000000000001ffe8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcfec
   1ffec: 2a1c03e2     	mov	w2, w28
   1fff0: 2a1903e3     	mov	w3, w25
   1fff4: 94000000     	bl	0x1fff4 <syna_tcm_v1_read_message+0x12f0>
		000000000001fff4:  R_AARCH64_CALL26	_printk
   1fff8: 12801e37     	mov	w23, #-0xf2             // =-242
   1fffc: 52800034     	mov	w20, #0x1               // =1
   20000: 17fffd03     	b	0x1f40c <syna_tcm_v1_read_message+0x708>
   20004: 90000000     	adrp	x0, 0x20000 <syna_tcm_v1_read_message+0x12fc>
		0000000000020004:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d82
   20008: 91000000     	add	x0, x0, #0x0
		0000000000020008:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d82
   2000c: 90000001     	adrp	x1, 0x20000 <syna_tcm_v1_read_message+0x12fc>
		000000000002000c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf952
   20010: 91000021     	add	x1, x1, #0x0
		0000000000020010:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf952
   20014: 94000000     	bl	0x20014 <syna_tcm_v1_read_message+0x1310>
		0000000000020014:  R_AARCH64_CALL26	_printk
   20018: f9016a7f     	str	xzr, [x19, #0x2d0]
   2001c: 90000000     	adrp	x0, 0x20000 <syna_tcm_v1_read_message+0x12fc>
		000000000002001c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10a46
   20020: 91000000     	add	x0, x0, #0x0
		0000000000020020:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10a46
   20024: 90000001     	adrp	x1, 0x20000 <syna_tcm_v1_read_message+0x12fc>
		0000000000020024:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x124ae
   20028: 91000021     	add	x1, x1, #0x0
		0000000000020028:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x124ae
   2002c: 2a1603e2     	mov	w2, w22
   20030: 94000000     	bl	0x20030 <syna_tcm_v1_read_message+0x132c>
		0000000000020030:  R_AARCH64_CALL26	_printk
   20034: 90000000     	adrp	x0, 0x20000 <syna_tcm_v1_read_message+0x12fc>
		0000000000020034:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x172b6
   20038: 91000000     	add	x0, x0, #0x0
		0000000000020038:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x172b6
   2003c: 90000001     	adrp	x1, 0x20000 <syna_tcm_v1_read_message+0x12fc>
		000000000002003c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcfec
   20040: 91000021     	add	x1, x1, #0x0
		0000000000020040:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcfec
   20044: f9016e7f     	str	xzr, [x19, #0x2d8]
   20048: 94000000     	bl	0x20048 <syna_tcm_v1_read_message+0x1344>
		0000000000020048:  R_AARCH64_CALL26	_printk
   2004c: 12801e57     	mov	w23, #-0xf3             // =-243
   20050: 52800034     	mov	w20, #0x1               // =1
   20054: 17fffcee     	b	0x1f40c <syna_tcm_v1_read_message+0x708>
   20058: b4000074     	cbz	x20, 0x20064 <syna_tcm_v1_read_message+0x1360>
   2005c: aa1403e1     	mov	x1, x20
   20060: 94000000     	bl	0x20060 <syna_tcm_v1_read_message+0x135c>
		0000000000020060:  R_AARCH64_CALL26	devm_kfree
   20064: 90000000     	adrp	x0, 0x20000 <syna_tcm_v1_read_message+0x12fc>
		0000000000020064:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14912
   20068: 91000000     	add	x0, x0, #0x0
		0000000000020068:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14912
   2006c: 90000001     	adrp	x1, 0x20000 <syna_tcm_v1_read_message+0x12fc>
		000000000002006c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcfec
   20070: 91000021     	add	x1, x1, #0x0
		0000000000020070:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcfec
   20074: b90002bf     	str	wzr, [x21]
   20078: 94000000     	bl	0x20078 <syna_tcm_v1_read_message+0x1374>
		0000000000020078:  R_AARCH64_CALL26	_printk
   2007c: f85f83a0     	ldur	x0, [x29, #-0x8]
   20080: 97fff8a3     	bl	0x1e30c <syna_tcm_v1_detect+0x3c4>
		0000000000020080:  R_AARCH64_CALL26	syna_tcm_buf_unlock
   20084: b9401bed     	ldr	w13, [sp, #0x18]
   20088: 12801e57     	mov	w23, #-0xf3             // =-243
   2008c: 39400303     	ldrb	w3, [x24]
   20090: 39400704     	ldrb	w4, [x24, #0x1]
   20094: 90000000     	adrp	x0, 0x20000 <syna_tcm_v1_read_message+0x12fc>
		0000000000020094:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x148c6
   20098: 91000000     	add	x0, x0, #0x0
		0000000000020098:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x148c6
   2009c: 39400b05     	ldrb	w5, [x24, #0x2]
   200a0: 39400f06     	ldrb	w6, [x24, #0x3]
   200a4: 90000001     	adrp	x1, 0x20000 <syna_tcm_v1_read_message+0x12fc>
		00000000000200a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16b7c
   200a8: 91000021     	add	x1, x1, #0x0
		00000000000200a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16b7c
   200ac: 2a0d03e2     	mov	w2, w13
   200b0: 94000000     	bl	0x200b0 <syna_tcm_v1_read_message+0x13ac>
		00000000000200b0:  R_AARCH64_CALL26	_printk
   200b4: 14000036     	b	0x2018c <syna_tcm_v1_read_message+0x1488>
   200b8: 90000000     	adrp	x0, 0x20000 <syna_tcm_v1_read_message+0x12fc>
		00000000000200b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15a80
   200bc: 91000000     	add	x0, x0, #0x0
		00000000000200bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15a80
   200c0: 90000001     	adrp	x1, 0x20000 <syna_tcm_v1_read_message+0x12fc>
		00000000000200c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14c56
   200c4: 91000021     	add	x1, x1, #0x0
		00000000000200c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14c56
   200c8: 94000000     	bl	0x200c8 <syna_tcm_v1_read_message+0x13c4>
		00000000000200c8:  R_AARCH64_CALL26	_printk
   200cc: 94000000     	bl	0x200cc <syna_tcm_v1_read_message+0x13c8>
		00000000000200cc:  R_AARCH64_CALL26	syna_request_managed_device
   200d0: b5ffaf40     	cbnz	x0, 0x1f6b8 <syna_tcm_v1_read_message+0x9b4>
   200d4: 90000000     	adrp	x0, 0x20000 <syna_tcm_v1_read_message+0x12fc>
		00000000000200d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15a80
   200d8: 91000000     	add	x0, x0, #0x0
		00000000000200d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15a80
   200dc: 90000001     	adrp	x1, 0x20000 <syna_tcm_v1_read_message+0x12fc>
		00000000000200dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf952
   200e0: 91000021     	add	x1, x1, #0x0
		00000000000200e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf952
   200e4: 94000000     	bl	0x200e4 <syna_tcm_v1_read_message+0x13e0>
		00000000000200e4:  R_AARCH64_CALL26	_printk
   200e8: f900a67f     	str	xzr, [x19, #0x148]
   200ec: 90000000     	adrp	x0, 0x20000 <syna_tcm_v1_read_message+0x12fc>
		00000000000200ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10a46
   200f0: 91000000     	add	x0, x0, #0x0
		00000000000200f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10a46
   200f4: 90000001     	adrp	x1, 0x20000 <syna_tcm_v1_read_message+0x12fc>
		00000000000200f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x124ae
   200f8: 91000021     	add	x1, x1, #0x0
		00000000000200f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x124ae
   200fc: 2a1603e2     	mov	w2, w22
   20100: 94000000     	bl	0x20100 <syna_tcm_v1_read_message+0x13fc>
		0000000000020100:  R_AARCH64_CALL26	_printk
   20104: f900aa7f     	str	xzr, [x19, #0x150]
   20108: 90000000     	adrp	x0, 0x20000 <syna_tcm_v1_read_message+0x12fc>
		0000000000020108:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe86a
   2010c: 91000000     	add	x0, x0, #0x0
		000000000002010c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe86a
   20110: 90000001     	adrp	x1, 0x20000 <syna_tcm_v1_read_message+0x12fc>
		0000000000020110:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x172f4
   20114: 91000021     	add	x1, x1, #0x0
		0000000000020114:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x172f4
   20118: 94000000     	bl	0x20118 <syna_tcm_v1_read_message+0x1414>
		0000000000020118:  R_AARCH64_CALL26	_printk
   2011c: 91052260     	add	x0, x19, #0x148
   20120: 97fff87b     	bl	0x1e30c <syna_tcm_v1_detect+0x3c4>
		0000000000020120:  R_AARCH64_CALL26	syna_tcm_buf_unlock
   20124: 3947fa62     	ldrb	w2, [x19, #0x1fe]
   20128: 34000122     	cbz	w2, 0x2014c <syna_tcm_v1_read_message+0x1448>
   2012c: 7100045f     	cmp	w2, #0x1
   20130: 540005a1     	b.ne	0x201e4 <syna_tcm_v1_read_message+0x14e0>
   20134: b901fa7f     	str	wzr, [x19, #0x1f8]
   20138: 91088260     	add	x0, x19, #0x220
   2013c: 94000000     	bl	0x2013c <syna_tcm_v1_read_message+0x1438>
		000000000002013c:  R_AARCH64_CALL26	completion_done
   20140: 37000060     	tbnz	w0, #0x0, 0x2014c <syna_tcm_v1_read_message+0x1448>
   20144: 91088260     	add	x0, x19, #0x220
   20148: 94000000     	bl	0x20148 <syna_tcm_v1_read_message+0x1444>
		0000000000020148:  R_AARCH64_CALL26	complete
   2014c: b4000079     	cbz	x25, 0x20158 <syna_tcm_v1_read_message+0x1454>
   20150: 3947f668     	ldrb	w8, [x19, #0x1fd]
   20154: 39000328     	strb	w8, [x25]
   20158: 2a1f03f7     	mov	w23, wzr
   2015c: 3400019a     	cbz	w26, 0x2018c <syna_tcm_v1_read_message+0x1488>
   20160: b9403e68     	ldr	w8, [x19, #0x3c]
   20164: b9420269     	ldr	w9, [x19, #0x200]
   20168: 3947f66b     	ldrb	w11, [x19, #0x1fd]
   2016c: 5100150a     	sub	w10, w8, #0x5
   20170: 6b0a013f     	cmp	w9, w10
   20174: 1a8a312a     	csel	w10, w9, w10, lo
   20178: 7100011f     	cmp	w8, #0x0
   2017c: 1a8a0128     	csel	w8, w9, w10, eq
   20180: 7100417f     	cmp	w11, #0x10
   20184: 1a8833e8     	csel	w8, wzr, w8, lo
   20188: b9037e68     	str	w8, [x19, #0x37c]
   2018c: b9421260     	ldr	w0, [x19, #0x210]
   20190: 7100041f     	cmp	w0, #0x1
   20194: 5400010b     	b.lt	0x201b4 <syna_tcm_v1_read_message+0x14b0>
   20198: b9421668     	ldr	w8, [x19, #0x214]
   2019c: 7100051f     	cmp	w8, #0x1
   201a0: 540000ab     	b.lt	0x201b4 <syna_tcm_v1_read_message+0x14b0>
   201a4: 6b00011f     	cmp	w8, w0
   201a8: 52800042     	mov	w2, #0x2                // =2
   201ac: 1a808101     	csel	w1, w8, w0, hi
   201b0: 94000000     	bl	0x201b0 <syna_tcm_v1_read_message+0x14ac>
		00000000000201b0:  R_AARCH64_CALL26	usleep_range_state
   201b4: 910d2260     	add	x0, x19, #0x348
   201b8: 94000000     	bl	0x201b8 <syna_tcm_v1_read_message+0x14b4>
		00000000000201b8:  R_AARCH64_CALL26	mutex_unlock
   201bc: 2a1703e0     	mov	w0, w23
   201c0: a9484ff4     	ldp	x20, x19, [sp, #0x80]
   201c4: a94757f6     	ldp	x22, x21, [sp, #0x70]
   201c8: a9465ff8     	ldp	x24, x23, [sp, #0x60]
   201cc: a94567fa     	ldp	x26, x25, [sp, #0x50]
   201d0: a9446ffc     	ldp	x28, x27, [sp, #0x40]
   201d4: a9437bfd     	ldp	x29, x30, [sp, #0x30]
   201d8: 910243ff     	add	sp, sp, #0x90
   201dc: d50323bf     	autiasp
   201e0: d65f03c0     	ret
   201e4: 71000c5f     	cmp	w2, #0x3
   201e8: 54000101     	b.ne	0x20208 <syna_tcm_v1_read_message+0x1504>
   201ec: 90000000     	adrp	x0, 0x20000 <syna_tcm_v1_read_message+0x12fc>
		00000000000201ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13b68
   201f0: 91000000     	add	x0, x0, #0x0
		00000000000201f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13b68
   201f4: 90000001     	adrp	x1, 0x20000 <syna_tcm_v1_read_message+0x12fc>
		00000000000201f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x172f4
   201f8: 91000021     	add	x1, x1, #0x0
		00000000000201f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x172f4
   201fc: 94000000     	bl	0x201fc <syna_tcm_v1_read_message+0x14f8>
		00000000000201fc:  R_AARCH64_CALL26	_printk
   20200: b5fffa99     	cbnz	x25, 0x20150 <syna_tcm_v1_read_message+0x144c>
   20204: 17ffffd5     	b	0x20158 <syna_tcm_v1_read_message+0x1454>
   20208: 3947f263     	ldrb	w3, [x19, #0x1fc]
   2020c: 90000000     	adrp	x0, 0x20000 <syna_tcm_v1_read_message+0x12fc>
		000000000002020c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb692
   20210: 91000000     	add	x0, x0, #0x0
		0000000000020210:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb692
   20214: 90000001     	adrp	x1, 0x20000 <syna_tcm_v1_read_message+0x12fc>
		0000000000020214:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x172f4
   20218: 91000021     	add	x1, x1, #0x0
		0000000000020218:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x172f4
   2021c: 94000000     	bl	0x2021c <syna_tcm_v1_read_message+0x1518>
		000000000002021c:  R_AARCH64_CALL26	_printk
   20220: 12800008     	mov	w8, #-0x1               // =-1
   20224: b901fa68     	str	w8, [x19, #0x1f8]
   20228: 17ffffc4     	b	0x20138 <syna_tcm_v1_read_message+0x1434>
   2022c: 90000000     	adrp	x0, 0x20000 <syna_tcm_v1_read_message+0x12fc>
		000000000002022c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   20230: 91000000     	add	x0, x0, #0x0
		0000000000020230:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   20234: 90000001     	adrp	x1, 0x20000 <syna_tcm_v1_read_message+0x12fc>
		0000000000020234:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16aa8
   20238: 91000021     	add	x1, x1, #0x0
		0000000000020238:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16aa8
   2023c: 94000000     	bl	0x2023c <syna_tcm_v1_read_message+0x1538>
		000000000002023c:  R_AARCH64_CALL26	_printk
   20240: 394a0268     	ldrb	w8, [x19, #0x280]
   20244: 51000508     	sub	w8, w8, #0x1
   20248: 17fffe4c     	b	0x1fb78 <syna_tcm_v1_read_message+0xe74>
   2024c: 90000000     	adrp	x0, 0x20000 <syna_tcm_v1_read_message+0x12fc>
		000000000002024c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15728
   20250: 91000000     	add	x0, x0, #0x0
		0000000000020250:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15728
   20254: 90000001     	adrp	x1, 0x20000 <syna_tcm_v1_read_message+0x12fc>
		0000000000020254:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1327a
   20258: 91000021     	add	x1, x1, #0x0
		0000000000020258:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1327a
   2025c: 52800202     	mov	w2, #0x10               // =16
   20260: 94000000     	bl	0x20260 <syna_tcm_v1_read_message+0x155c>
		0000000000020260:  R_AARCH64_CALL26	_printk
   20264: 12800008     	mov	w8, #-0x1               // =-1
   20268: b901fa68     	str	w8, [x19, #0x1f8]
   2026c: 17fffdcc     	b	0x1f99c <syna_tcm_v1_read_message+0xc98>
