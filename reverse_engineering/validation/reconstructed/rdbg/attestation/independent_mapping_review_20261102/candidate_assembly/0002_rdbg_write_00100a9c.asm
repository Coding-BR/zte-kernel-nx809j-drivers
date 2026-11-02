
/input/rdbg.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000d58 <rdbg_write>:
     d58: d503233f     	paciasp
     d5c: d10243ff     	sub	sp, sp, #0x90
     d60: a9037bfd     	stp	x29, x30, [sp, #0x30]
     d64: a9046ffc     	stp	x28, x27, [sp, #0x40]
     d68: a90567fa     	stp	x26, x25, [sp, #0x50]
     d6c: a9065ff8     	stp	x24, x23, [sp, #0x60]
     d70: a90757f6     	stp	x22, x21, [sp, #0x70]
     d74: a9084ff4     	stp	x20, x19, [sp, #0x80]
     d78: 9100c3fd     	add	x29, sp, #0x30
     d7c: f9401018     	ldr	x24, [x0, #0x20]
     d80: b4001ed8     	cbz	x24, 0x1158 <rdbg_write+0x400>
     d84: d378dc28     	lsl	x8, x1, #8
     d88: aa0203f7     	mov	x23, x2
     d8c: 93407c53     	sxtw	x19, w2
     d90: 1101feea     	add	w10, w23, #0x7f
     d94: d2c01009     	mov	x9, #0x8000000000       // =549755813888
     d98: 529fe05c     	mov	w28, #0xff02            // =65282
     d9c: 8a882028     	and	x8, x1, x8, asr #8
     da0: 13077d5b     	asr	w27, w10, #7
     da4: 2a1f03f9     	mov	w25, wzr
     da8: 72bfe01c     	movk	w28, #0xff00, lsl #16
     dac: 5280003a     	mov	w26, #0x1               // =1
     db0: b81fc3aa     	stur	w10, [x29, #-0x4]
     db4: f90007e8     	str	x8, [sp, #0x8]
     db8: cb130128     	sub	x8, x9, x19
     dbc: d5384114     	mrs	x20, SP_EL0
     dc0: a90107e8     	stp	x8, x1, [sp, #0x10]
     dc4: f81f03a2     	stur	x2, [x29, #-0x10]
     dc8: f9405300     	ldr	x0, [x24, #0xa0]
     dcc: 94000000     	bl	0xdcc <rdbg_write+0x74>
		0000000000000dcc:  R_AARCH64_CALL26	mutex_lock
     dd0: f9404709     	ldr	x9, [x24, #0x88]
     dd4: b9400128     	ldr	w8, [x9]
     dd8: 6b1c011f     	cmp	w8, w28
     ddc: 54000141     	b.ne	0xe04 <rdbg_write+0xac>
     de0: f9403f08     	ldr	x8, [x24, #0x78]
     de4: 39400508     	ldrb	w8, [x8, #0x1]
     de8: 7100051f     	cmp	w8, #0x1
     dec: 540000c1     	b.ne	0xe04 <rdbg_write+0xac>
     df0: f9404308     	ldr	x8, [x24, #0x80]
     df4: b940052b     	ldr	w11, [x9, #0x4]
     df8: b940050a     	ldr	w10, [x8, #0x4]
     dfc: 6b0b015f     	cmp	w10, w11
     e00: 54000260     	b.eq	0xe4c <rdbg_write+0xf4>
     e04: b940b308     	ldr	w8, [x24, #0xb0]
     e08: 7100077f     	cmp	w27, #0x1
     e0c: 540004e1     	b.ne	0xea8 <rdbg_write+0x150>
     e10: f9405f09     	ldr	x9, [x24, #0xb8]
     e14: 2a0803f5     	mov	w21, w8
     e18: 3875492a     	ldrb	w10, [x9, w21, uxtw]
     e1c: 3400082a     	cbz	w10, 0xf20 <rdbg_write+0x1c8>
     e20: b940b70a     	ldr	w10, [x24, #0xb4]
     e24: 110006ab     	add	w11, w21, #0x1
     e28: 1aca096c     	udiv	w12, w11, w10
     e2c: 1b0aad95     	msub	w21, w12, w10, w11
     e30: 6b15011f     	cmp	w8, w21
     e34: b900b315     	str	w21, [x24, #0xb0]
     e38: 54ffff01     	b.ne	0xe18 <rdbg_write+0xc0>
     e3c: 2a1f03f5     	mov	w21, wzr
     e40: 1400009e     	b	0x10b8 <rdbg_write+0x360>
     e44: d5033d9f     	dsb	ld
     e48: a9482708     	ldp	x8, x9, [x24, #0x80]
     e4c: b840cd0a     	ldr	w10, [x8, #0xc]!
     e50: b9400d2b     	ldr	w11, [x9, #0xc]
     e54: 6b0b015f     	cmp	w10, w11
     e58: 54fffd60     	b.eq	0xe04 <rdbg_write+0xac>
     e5c: 8b2a4929     	add	x9, x9, w10, uxtw #2
     e60: b9409b0b     	ldr	w11, [x24, #0x98]
     e64: 78410d2c     	ldrh	w12, [x9, #0x10]!
     e68: 6b0c017f     	cmp	w11, w12
     e6c: 54fffe89     	b.ls	0xe3c <rdbg_write+0xe4>
     e70: 1100054a     	add	w10, w10, #0x1
     e74: 1acb094c     	udiv	w12, w10, w11
     e78: 1b0ba98a     	msub	w10, w12, w11, w10
     e7c: b900010a     	str	w10, [x8]
     e80: 79400128     	ldrh	w8, [x9]
     e84: f9405f09     	ldr	x9, [x24, #0xb8]
     e88: 38686929     	ldrb	w9, [x9, x8]
     e8c: 34fffdc9     	cbz	w9, 0xe44 <rdbg_write+0xec>
     e90: f9405f0a     	ldr	x10, [x24, #0xb8]
     e94: 71000529     	subs	w9, w9, #0x1
     e98: 3828695f     	strb	wzr, [x10, x8]
     e9c: 91000508     	add	x8, x8, #0x1
     ea0: 54ffff81     	b.ne	0xe90 <rdbg_write+0x138>
     ea4: 17ffffe8     	b	0xe44 <rdbg_write+0xec>
     ea8: b940b709     	ldr	w9, [x24, #0xb4]
     eac: f9405f0b     	ldr	x11, [x24, #0xb8]
     eb0: 2a1f03ea     	mov	w10, wzr
     eb4: 2a0803ec     	mov	w12, w8
     eb8: 2a0903ed     	mov	w13, w9
     ebc: 1400000c     	b	0xeec <rdbg_write+0x194>
     ec0: 0b0e0108     	add	w8, w8, w14
     ec4: 2a1f03ea     	mov	w10, wzr
     ec8: 2a0903f5     	mov	w21, w9
     ecc: 51000508     	sub	w8, w8, #0x1
     ed0: 11000508     	add	w8, w8, #0x1
     ed4: 1ac9090d     	udiv	w13, w8, w9
     ed8: 1b09a1a8     	msub	w8, w13, w9, w8
     edc: 2a1503ed     	mov	w13, w21
     ee0: 6b08019f     	cmp	w12, w8
     ee4: b900b308     	str	w8, [x24, #0xb0]
     ee8: 54fffaa0     	b.eq	0xe3c <rdbg_write+0xe4>
     eec: 3868496e     	ldrb	w14, [x11, w8, uxtw]
     ef0: 35fffe8e     	cbnz	w14, 0xec0 <rdbg_write+0x168>
     ef4: 6b0801bf     	cmp	w13, w8
     ef8: 1a8a874a     	csinc	w10, w26, w10, hi
     efc: 1a8c810c     	csel	w12, w8, w12, hi
     f00: 1a8831b5     	csel	w21, w13, w8, lo
     f04: 6b1b015f     	cmp	w10, w27
     f08: 54fffe41     	b.ne	0xed0 <rdbg_write+0x178>
     f0c: b85fc3a9     	ldur	w9, [x29, #-0x4]
     f10: 7102013f     	cmp	w9, #0x80
     f14: 54000122     	b.hs	0xf38 <rdbg_write+0x1e0>
     f18: 2a1f03e9     	mov	w9, wzr
     f1c: 14000012     	b	0xf64 <rdbg_write+0x20c>
     f20: 3835493a     	strb	w26, [x9, w21, uxtw]
     f24: 29562708     	ldp	w8, w9, [x24, #0xb0]
     f28: 11000508     	add	w8, w8, #0x1
     f2c: 1ac9090a     	udiv	w10, w8, w9
     f30: 1b09a148     	msub	w8, w10, w9, w8
     f34: 1400000e     	b	0xf6c <rdbg_write+0x214>
     f38: 6b0801bf     	cmp	w13, w8
     f3c: aa1b03e9     	mov	x9, x27
     f40: 1a8831a8     	csel	w8, w13, w8, lo
     f44: f9405f0a     	ldr	x10, [x24, #0xb8]
     f48: 38284949     	strb	w9, [x10, w8, uxtw]
     f4c: f1000529     	subs	x9, x9, #0x1
     f50: 11000508     	add	w8, w8, #0x1
     f54: 54ffff81     	b.ne	0xf44 <rdbg_write+0x1ec>
     f58: f9405f09     	ldr	x9, [x24, #0xb8]
     f5c: b940b308     	ldr	w8, [x24, #0xb0]
     f60: 38686929     	ldrb	w9, [x9, x8]
     f64: 0b090108     	add	w8, w8, w9
     f68: 51000508     	sub	w8, w8, #0x1
     f6c: f9404b09     	ldr	x9, [x24, #0x90]
     f70: 531962aa     	lsl	w10, w21, #7
     f74: b900b308     	str	w8, [x24, #0xb0]
     f78: 8b0a0136     	add	x22, x9, x10
     f7c: 37f80ad7     	tbnz	w23, #0x1f, 0x10d4 <rdbg_write+0x37c>
     f80: aa1603e0     	mov	x0, x22
     f84: aa1303e1     	mov	x1, x19
     f88: 2a1f03e2     	mov	w2, wzr
     f8c: 94000000     	bl	0xf8c <rdbg_write+0x234>
		0000000000000f8c:  R_AARCH64_CALL26	__check_object_size
     f90: 39411a88     	ldrb	w8, [x20, #0x46]
     f94: 37280088     	tbnz	w8, #0x5, 0xfa4 <rdbg_write+0x24c>
     f98: f9400289     	ldr	x9, [x20]
     f9c: f9400fe8     	ldr	x8, [sp, #0x18]
     fa0: 36d00049     	tbz	w9, #0x1a, 0xfa8 <rdbg_write+0x250>
     fa4: f94007e8     	ldr	x8, [sp, #0x8]
     fa8: f9400be9     	ldr	x9, [sp, #0x10]
     fac: aa1303f7     	mov	x23, x19
     fb0: eb08013f     	cmp	x9, x8
     fb4: 54000242     	b.hs	0xffc <rdbg_write+0x2a4>
     fb8: cb170268     	sub	x8, x19, x23
     fbc: 2a1f03e1     	mov	w1, wzr
     fc0: aa1703e2     	mov	x2, x23
     fc4: 8b0802c0     	add	x0, x22, x8
     fc8: 94000000     	bl	0xfc8 <rdbg_write+0x270>
		0000000000000fc8:  R_AARCH64_CALL26	memset
     fcc: 34000517     	cbz	w23, 0x106c <rdbg_write+0x314>
     fd0: b4000876     	cbz	x22, 0x10dc <rdbg_write+0x384>
     fd4: f9405f08     	ldr	x8, [x24, #0xb8]
     fd8: f85f03b7     	ldur	x23, [x29, #-0x10]
     fdc: 38754908     	ldrb	w8, [x8, w21, uxtw]
     fe0: 34fff2e8     	cbz	w8, 0xe3c <rdbg_write+0xe4>
     fe4: f9405f09     	ldr	x9, [x24, #0xb8]
     fe8: 71000508     	subs	w8, w8, #0x1
     fec: 3835493f     	strb	wzr, [x9, w21, uxtw]
     ff0: 110006b5     	add	w21, w21, #0x1
     ff4: 54ffff81     	b.ne	0xfe4 <rdbg_write+0x28c>
     ff8: 17ffff91     	b	0xe3c <rdbg_write+0xe4>
     ffc: d503201f     	nop
    1000: d53b4228     	mrs	x8, DAIF
    1004: d50343df     	msr	DAIFSet, #0x3
    1008: f9400689     	ldr	x9, [x20, #0x8]
    100c: d538202a     	mrs	x10, TTBR1_EL1
    1010: aa0903eb     	mov	x11, x9
    1014: b340bd4b     	bfxil	x11, x10, #0, #48
    1018: d518202b     	msr	TTBR1_EL1, x11
    101c: d5182009     	msr	TTBR0_EL1, x9
    1020: d5033fdf     	isb
    1024: d51b4228     	msr	DAIF, x8
    1028: f9400fe8     	ldr	x8, [sp, #0x18]
    102c: 9248f901     	and	x1, x8, #0xff7fffffffffffff
    1030: aa1603e0     	mov	x0, x22
    1034: aa1303e2     	mov	x2, x19
    1038: 94000000     	bl	0x1038 <rdbg_write+0x2e0>
		0000000000001038:  R_AARCH64_CALL26	__arch_copy_from_user
    103c: aa0003f7     	mov	x23, x0
    1040: d503201f     	nop
    1044: d53b4228     	mrs	x8, DAIF
    1048: d50343df     	msr	DAIFSet, #0x3
    104c: d5382029     	mrs	x9, TTBR1_EL1
    1050: 9240bd29     	and	x9, x9, #0xffffffffffff
    1054: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
    1058: d518200a     	msr	TTBR0_EL1, x10
    105c: d5182029     	msr	TTBR1_EL1, x9
    1060: d5033fdf     	isb
    1064: d51b4228     	msr	DAIF, x8
    1068: b5fffa97     	cbnz	x23, 0xfb8 <rdbg_write+0x260>
    106c: f9404308     	ldr	x8, [x24, #0x80]
    1070: b85fc3aa     	ldur	w10, [x29, #-0x4]
    1074: f85f03b7     	ldur	x23, [x29, #-0x10]
    1078: b9400909     	ldr	w9, [x8, #0x8]
    107c: 53077d4a     	lsr	w10, w10, #7
    1080: 8b090908     	add	x8, x8, x9, lsl #2
    1084: 79002115     	strh	w21, [x8, #0x10]
    1088: 52800035     	mov	w21, #0x1               // =1
    108c: f9404308     	ldr	x8, [x24, #0x80]
    1090: b9400909     	ldr	w9, [x8, #0x8]
    1094: 8b090908     	add	x8, x8, x9, lsl #2
    1098: 7900250a     	strh	w10, [x8, #0x12]
    109c: f9404308     	ldr	x8, [x24, #0x80]
    10a0: b9409b0a     	ldr	w10, [x24, #0x98]
    10a4: b9400909     	ldr	w9, [x8, #0x8]
    10a8: 11000529     	add	w9, w9, #0x1
    10ac: 1aca092b     	udiv	w11, w9, w10
    10b0: 1b0aa569     	msub	w9, w11, w10, w9
    10b4: b9000909     	str	w9, [x8, #0x8]
    10b8: f9405300     	ldr	x0, [x24, #0xa0]
    10bc: 94000000     	bl	0x10bc <rdbg_write+0x364>
		00000000000010bc:  R_AARCH64_CALL26	mutex_unlock
    10c0: 37000155     	tbnz	w21, #0x0, 0x10e8 <rdbg_write+0x390>
    10c4: 7100533f     	cmp	w25, #0x14
    10c8: 11000739     	add	w25, w25, #0x1
    10cc: 54ffe7e3     	b.lo	0xdc8 <rdbg_write+0x70>
    10d0: 14000006     	b	0x10e8 <rdbg_write+0x390>
    10d4: d4210000     	brk	#0x800
    10d8: b5fff7f6     	cbnz	x22, 0xfd4 <rdbg_write+0x27c>
    10dc: f85f03b7     	ldur	x23, [x29, #-0x10]
    10e0: 2a1f03f5     	mov	w21, wzr
    10e4: 17fffff5     	b	0x10b8 <rdbg_write+0x360>
    10e8: 36000435     	tbz	w21, #0x0, 0x116c <rdbg_write+0x414>
    10ec: b9405f15     	ldr	w21, [x24, #0x5c]
    10f0: 710082bf     	cmp	w21, #0x20
    10f4: 54000462     	b.hs	0x1180 <rdbg_write+0x428>
    10f8: b9404b08     	ldr	w8, [x24, #0x48]
    10fc: 8b150b16     	add	x22, x24, x21, lsl #2
    1100: 52800029     	mov	w9, #0x1                // =1
    1104: f9402b00     	ldr	x0, [x24, #0x50]
    1108: 0b150108     	add	w8, w8, w21
    110c: b9414aca     	ldr	w10, [x22, #0x148]
    1110: 9ac82121     	lsl	x1, x9, x8
    1114: 4a010154     	eor	w20, w10, w1
    1118: 2a1403e2     	mov	w2, w20
    111c: 94000000     	bl	0x111c <rdbg_write+0x3c4>
		000000000000111c:  R_AARCH64_CALL26	qcom_smem_state_update_bits
    1120: 110006a8     	add	w8, w21, #0x1
    1124: b9014ad4     	str	w20, [x22, #0x148]
    1128: 12001108     	and	w8, w8, #0x1f
    112c: b9005f08     	str	w8, [x24, #0x5c]
    1130: aa1303e0     	mov	x0, x19
    1134: a9484ff4     	ldp	x20, x19, [sp, #0x80]
    1138: a94757f6     	ldp	x22, x21, [sp, #0x70]
    113c: a9465ff8     	ldp	x24, x23, [sp, #0x60]
    1140: a94567fa     	ldp	x26, x25, [sp, #0x50]
    1144: a9446ffc     	ldp	x28, x27, [sp, #0x40]
    1148: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    114c: 910243ff     	add	sp, sp, #0x90
    1150: d50323bf     	autiasp
    1154: d65f03c0     	ret
    1158: 90000000     	adrp	x0, 0x1000 <rdbg_write+0x2a8>
		0000000000001158:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20d
    115c: 91000000     	add	x0, x0, #0x0
		000000000000115c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20d
    1160: 94000000     	bl	0x1160 <rdbg_write+0x408>
		0000000000001160:  R_AARCH64_CALL26	_printk
    1164: 928002b3     	mov	x19, #-0x16             // =-22
    1168: 17fffff2     	b	0x1130 <rdbg_write+0x3d8>
    116c: 90000000     	adrp	x0, 0x1000 <rdbg_write+0x2a8>
		000000000000116c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ea
    1170: 91000000     	add	x0, x0, #0x0
		0000000000001170:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ea
    1174: 94000000     	bl	0x1174 <rdbg_write+0x41c>
		0000000000001174:  R_AARCH64_CALL26	_printk
    1178: 928008b3     	mov	x19, #-0x46             // =-70
    117c: 17ffffed     	b	0x1130 <rdbg_write+0x3d8>
    1180: d42aa240     	brk	#0x5512
