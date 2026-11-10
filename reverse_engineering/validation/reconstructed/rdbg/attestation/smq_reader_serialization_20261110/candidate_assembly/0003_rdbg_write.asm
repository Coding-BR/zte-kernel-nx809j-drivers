
/input/rdbg.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000e54 <rdbg_write>:
     e54: d503233f     	paciasp
     e58: d10243ff     	sub	sp, sp, #0x90
     e5c: a9037bfd     	stp	x29, x30, [sp, #0x30]
     e60: a9046ffc     	stp	x28, x27, [sp, #0x40]
     e64: a90567fa     	stp	x26, x25, [sp, #0x50]
     e68: a9065ff8     	stp	x24, x23, [sp, #0x60]
     e6c: a90757f6     	stp	x22, x21, [sp, #0x70]
     e70: a9084ff4     	stp	x20, x19, [sp, #0x80]
     e74: 9100c3fd     	add	x29, sp, #0x30
     e78: f9401008     	ldr	x8, [x0, #0x20]
     e7c: a93f0ba1     	stp	x1, x2, [x29, #-0x10]
     e80: b4001e68     	cbz	x8, 0x124c <rdbg_write+0x3f8>
     e84: f9400118     	ldr	x24, [x8]
     e88: b4001e38     	cbz	x24, 0x124c <rdbg_write+0x3f8>
     e8c: a97f27aa     	ldp	x10, x9, [x29, #-0x10]
     e90: 529fe05c     	mov	w28, #0xff02            // =65282
     e94: 2a1f03f9     	mov	w25, wzr
     e98: 72bfe01c     	movk	w28, #0xff00, lsl #16
     e9c: 5280003a     	mov	w26, #0x1               // =1
     ea0: d5384114     	mrs	x20, SP_EL0
     ea4: d378dd48     	lsl	x8, x10, #8
     ea8: 93407d33     	sxtw	x19, w9
     eac: 1101fd2b     	add	w11, w9, #0x7f
     eb0: d2c01009     	mov	x9, #0x8000000000       // =549755813888
     eb4: b81ec3ab     	stur	w11, [x29, #-0x14]
     eb8: 13077d7b     	asr	w27, w11, #7
     ebc: 8a88214b     	and	x11, x10, x8, asr #8
     ec0: cb130128     	sub	x8, x9, x19
     ec4: a900a3eb     	stp	x11, x8, [sp, #0x8]
     ec8: f9405300     	ldr	x0, [x24, #0xa0]
     ecc: 94000000     	bl	0xecc <rdbg_write+0x78>
		0000000000000ecc:  R_AARCH64_CALL26	mutex_lock
     ed0: f9404709     	ldr	x9, [x24, #0x88]
     ed4: b9400128     	ldr	w8, [x9]
     ed8: 6b1c011f     	cmp	w8, w28
     edc: 54000141     	b.ne	0xf04 <rdbg_write+0xb0>
     ee0: f9403f08     	ldr	x8, [x24, #0x78]
     ee4: 39400508     	ldrb	w8, [x8, #0x1]
     ee8: 7100051f     	cmp	w8, #0x1
     eec: 540000c1     	b.ne	0xf04 <rdbg_write+0xb0>
     ef0: f9404308     	ldr	x8, [x24, #0x80]
     ef4: b940052b     	ldr	w11, [x9, #0x4]
     ef8: b940050a     	ldr	w10, [x8, #0x4]
     efc: 6b0b015f     	cmp	w10, w11
     f00: 54000260     	b.eq	0xf4c <rdbg_write+0xf8>
     f04: b940b308     	ldr	w8, [x24, #0xb0]
     f08: 7100077f     	cmp	w27, #0x1
     f0c: 540004e1     	b.ne	0xfa8 <rdbg_write+0x154>
     f10: f9405f09     	ldr	x9, [x24, #0xb8]
     f14: 2a0803f5     	mov	w21, w8
     f18: 3875492a     	ldrb	w10, [x9, w21, uxtw]
     f1c: 3400082a     	cbz	w10, 0x1020 <rdbg_write+0x1cc>
     f20: b940b70a     	ldr	w10, [x24, #0xb4]
     f24: 110006ab     	add	w11, w21, #0x1
     f28: 1aca096c     	udiv	w12, w11, w10
     f2c: 1b0aad95     	msub	w21, w12, w10, w11
     f30: 6b15011f     	cmp	w8, w21
     f34: b900b315     	str	w21, [x24, #0xb0]
     f38: 54ffff01     	b.ne	0xf18 <rdbg_write+0xc4>
     f3c: 2a1f03f5     	mov	w21, wzr
     f40: 1400009d     	b	0x11b4 <rdbg_write+0x360>
     f44: d5033d9f     	dsb	ld
     f48: a9482708     	ldp	x8, x9, [x24, #0x80]
     f4c: b840cd0a     	ldr	w10, [x8, #0xc]!
     f50: b9400d2b     	ldr	w11, [x9, #0xc]
     f54: 6b0b015f     	cmp	w10, w11
     f58: 54fffd60     	b.eq	0xf04 <rdbg_write+0xb0>
     f5c: 8b2a4929     	add	x9, x9, w10, uxtw #2
     f60: b9409b0b     	ldr	w11, [x24, #0x98]
     f64: 78410d2c     	ldrh	w12, [x9, #0x10]!
     f68: 6b0c017f     	cmp	w11, w12
     f6c: 54fffe89     	b.ls	0xf3c <rdbg_write+0xe8>
     f70: 1100054a     	add	w10, w10, #0x1
     f74: 1acb094c     	udiv	w12, w10, w11
     f78: 1b0ba98a     	msub	w10, w12, w11, w10
     f7c: b900010a     	str	w10, [x8]
     f80: 79400128     	ldrh	w8, [x9]
     f84: f9405f09     	ldr	x9, [x24, #0xb8]
     f88: 38686929     	ldrb	w9, [x9, x8]
     f8c: 34fffdc9     	cbz	w9, 0xf44 <rdbg_write+0xf0>
     f90: f9405f0a     	ldr	x10, [x24, #0xb8]
     f94: 71000529     	subs	w9, w9, #0x1
     f98: 3828695f     	strb	wzr, [x10, x8]
     f9c: 91000508     	add	x8, x8, #0x1
     fa0: 54ffff81     	b.ne	0xf90 <rdbg_write+0x13c>
     fa4: 17ffffe8     	b	0xf44 <rdbg_write+0xf0>
     fa8: b940b709     	ldr	w9, [x24, #0xb4]
     fac: f9405f0b     	ldr	x11, [x24, #0xb8]
     fb0: 2a1f03ea     	mov	w10, wzr
     fb4: 2a0803ec     	mov	w12, w8
     fb8: 2a0903ed     	mov	w13, w9
     fbc: 1400000c     	b	0xfec <rdbg_write+0x198>
     fc0: 0b0e0108     	add	w8, w8, w14
     fc4: 2a1f03ea     	mov	w10, wzr
     fc8: 2a0903f5     	mov	w21, w9
     fcc: 51000508     	sub	w8, w8, #0x1
     fd0: 11000508     	add	w8, w8, #0x1
     fd4: 1ac9090d     	udiv	w13, w8, w9
     fd8: 1b09a1a8     	msub	w8, w13, w9, w8
     fdc: 2a1503ed     	mov	w13, w21
     fe0: 6b08019f     	cmp	w12, w8
     fe4: b900b308     	str	w8, [x24, #0xb0]
     fe8: 54fffaa0     	b.eq	0xf3c <rdbg_write+0xe8>
     fec: 3868496e     	ldrb	w14, [x11, w8, uxtw]
     ff0: 35fffe8e     	cbnz	w14, 0xfc0 <rdbg_write+0x16c>
     ff4: 6b0801bf     	cmp	w13, w8
     ff8: 1a8a874a     	csinc	w10, w26, w10, hi
     ffc: 1a8c810c     	csel	w12, w8, w12, hi
    1000: 1a8831b5     	csel	w21, w13, w8, lo
    1004: 6b1b015f     	cmp	w10, w27
    1008: 54fffe41     	b.ne	0xfd0 <rdbg_write+0x17c>
    100c: b85ec3a9     	ldur	w9, [x29, #-0x14]
    1010: 7102013f     	cmp	w9, #0x80
    1014: 54000122     	b.hs	0x1038 <rdbg_write+0x1e4>
    1018: 2a1f03e9     	mov	w9, wzr
    101c: 14000012     	b	0x1064 <rdbg_write+0x210>
    1020: 3835493a     	strb	w26, [x9, w21, uxtw]
    1024: 29562708     	ldp	w8, w9, [x24, #0xb0]
    1028: 11000508     	add	w8, w8, #0x1
    102c: 1ac9090a     	udiv	w10, w8, w9
    1030: 1b09a148     	msub	w8, w10, w9, w8
    1034: 1400000e     	b	0x106c <rdbg_write+0x218>
    1038: 6b0801bf     	cmp	w13, w8
    103c: aa1b03e9     	mov	x9, x27
    1040: 1a8831a8     	csel	w8, w13, w8, lo
    1044: f9405f0a     	ldr	x10, [x24, #0xb8]
    1048: 38284949     	strb	w9, [x10, w8, uxtw]
    104c: f1000529     	subs	x9, x9, #0x1
    1050: 11000508     	add	w8, w8, #0x1
    1054: 54ffff81     	b.ne	0x1044 <rdbg_write+0x1f0>
    1058: f9405f09     	ldr	x9, [x24, #0xb8]
    105c: b940b308     	ldr	w8, [x24, #0xb0]
    1060: 38686929     	ldrb	w9, [x9, x8]
    1064: 0b090108     	add	w8, w8, w9
    1068: 51000508     	sub	w8, w8, #0x1
    106c: f9404b09     	ldr	x9, [x24, #0x90]
    1070: 531962aa     	lsl	w10, w21, #7
    1074: b900b308     	str	w8, [x24, #0xb0]
    1078: f85f83a8     	ldur	x8, [x29, #-0x8]
    107c: 8b0a0136     	add	x22, x9, x10
    1080: 37f80a88     	tbnz	w8, #0x1f, 0x11d0 <rdbg_write+0x37c>
    1084: aa1603e0     	mov	x0, x22
    1088: aa1303e1     	mov	x1, x19
    108c: 2a1f03e2     	mov	w2, wzr
    1090: 94000000     	bl	0x1090 <rdbg_write+0x23c>
		0000000000001090:  R_AARCH64_CALL26	__check_object_size
    1094: 39411a88     	ldrb	w8, [x20, #0x46]
    1098: 37280088     	tbnz	w8, #0x5, 0x10a8 <rdbg_write+0x254>
    109c: f9400289     	ldr	x9, [x20]
    10a0: f85f03a8     	ldur	x8, [x29, #-0x10]
    10a4: 36d00049     	tbz	w9, #0x1a, 0x10ac <rdbg_write+0x258>
    10a8: f94007e8     	ldr	x8, [sp, #0x8]
    10ac: f9400be9     	ldr	x9, [sp, #0x10]
    10b0: aa1303f7     	mov	x23, x19
    10b4: eb08013f     	cmp	x9, x8
    10b8: 54000222     	b.hs	0x10fc <rdbg_write+0x2a8>
    10bc: cb170268     	sub	x8, x19, x23
    10c0: 2a1f03e1     	mov	w1, wzr
    10c4: aa1703e2     	mov	x2, x23
    10c8: 8b0802c0     	add	x0, x22, x8
    10cc: 94000000     	bl	0x10cc <rdbg_write+0x278>
		00000000000010cc:  R_AARCH64_CALL26	memset
    10d0: 340004f7     	cbz	w23, 0x116c <rdbg_write+0x318>
    10d4: b4fff356     	cbz	x22, 0xf3c <rdbg_write+0xe8>
    10d8: f9405f08     	ldr	x8, [x24, #0xb8]
    10dc: 38754908     	ldrb	w8, [x8, w21, uxtw]
    10e0: 34fff2e8     	cbz	w8, 0xf3c <rdbg_write+0xe8>
    10e4: f9405f09     	ldr	x9, [x24, #0xb8]
    10e8: 71000508     	subs	w8, w8, #0x1
    10ec: 3835493f     	strb	wzr, [x9, w21, uxtw]
    10f0: 110006b5     	add	w21, w21, #0x1
    10f4: 54ffff81     	b.ne	0x10e4 <rdbg_write+0x290>
    10f8: 17ffff91     	b	0xf3c <rdbg_write+0xe8>
    10fc: d503201f     	nop
    1100: d53b4228     	mrs	x8, DAIF
    1104: d50343df     	msr	DAIFSet, #0x3
    1108: f9400689     	ldr	x9, [x20, #0x8]
    110c: d538202a     	mrs	x10, TTBR1_EL1
    1110: aa0903eb     	mov	x11, x9
    1114: b340bd4b     	bfxil	x11, x10, #0, #48
    1118: d518202b     	msr	TTBR1_EL1, x11
    111c: d5182009     	msr	TTBR0_EL1, x9
    1120: d5033fdf     	isb
    1124: d51b4228     	msr	DAIF, x8
    1128: f85f03a8     	ldur	x8, [x29, #-0x10]
    112c: 9248f901     	and	x1, x8, #0xff7fffffffffffff
    1130: aa1603e0     	mov	x0, x22
    1134: aa1303e2     	mov	x2, x19
    1138: 94000000     	bl	0x1138 <rdbg_write+0x2e4>
		0000000000001138:  R_AARCH64_CALL26	__arch_copy_from_user
    113c: aa0003f7     	mov	x23, x0
    1140: d503201f     	nop
    1144: d53b4228     	mrs	x8, DAIF
    1148: d50343df     	msr	DAIFSet, #0x3
    114c: d5382029     	mrs	x9, TTBR1_EL1
    1150: 9240bd29     	and	x9, x9, #0xffffffffffff
    1154: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
    1158: d518200a     	msr	TTBR0_EL1, x10
    115c: d5182029     	msr	TTBR1_EL1, x9
    1160: d5033fdf     	isb
    1164: d51b4228     	msr	DAIF, x8
    1168: b5fffab7     	cbnz	x23, 0x10bc <rdbg_write+0x268>
    116c: f9404308     	ldr	x8, [x24, #0x80]
    1170: b85ec3aa     	ldur	w10, [x29, #-0x14]
    1174: b9400909     	ldr	w9, [x8, #0x8]
    1178: 53077d4a     	lsr	w10, w10, #7
    117c: 8b090908     	add	x8, x8, x9, lsl #2
    1180: 79002115     	strh	w21, [x8, #0x10]
    1184: 52800035     	mov	w21, #0x1               // =1
    1188: f9404308     	ldr	x8, [x24, #0x80]
    118c: b9400909     	ldr	w9, [x8, #0x8]
    1190: 8b090908     	add	x8, x8, x9, lsl #2
    1194: 7900250a     	strh	w10, [x8, #0x12]
    1198: f9404308     	ldr	x8, [x24, #0x80]
    119c: b9409b0a     	ldr	w10, [x24, #0x98]
    11a0: b9400909     	ldr	w9, [x8, #0x8]
    11a4: 11000529     	add	w9, w9, #0x1
    11a8: 1aca092b     	udiv	w11, w9, w10
    11ac: 1b0aa569     	msub	w9, w11, w10, w9
    11b0: b9000909     	str	w9, [x8, #0x8]
    11b4: f9405300     	ldr	x0, [x24, #0xa0]
    11b8: 94000000     	bl	0x11b8 <rdbg_write+0x364>
		00000000000011b8:  R_AARCH64_CALL26	mutex_unlock
    11bc: 37000115     	tbnz	w21, #0x0, 0x11dc <rdbg_write+0x388>
    11c0: 7100533f     	cmp	w25, #0x14
    11c4: 11000739     	add	w25, w25, #0x1
    11c8: 54ffe803     	b.lo	0xec8 <rdbg_write+0x74>
    11cc: 14000004     	b	0x11dc <rdbg_write+0x388>
    11d0: d4210000     	brk	#0x800
    11d4: b5fff836     	cbnz	x22, 0x10d8 <rdbg_write+0x284>
    11d8: 17ffff59     	b	0xf3c <rdbg_write+0xe8>
    11dc: 36000435     	tbz	w21, #0x0, 0x1260 <rdbg_write+0x40c>
    11e0: b9405f15     	ldr	w21, [x24, #0x5c]
    11e4: 710082bf     	cmp	w21, #0x20
    11e8: 54000462     	b.hs	0x1274 <rdbg_write+0x420>
    11ec: b9404b08     	ldr	w8, [x24, #0x48]
    11f0: 8b150b16     	add	x22, x24, x21, lsl #2
    11f4: 52800029     	mov	w9, #0x1                // =1
    11f8: f9402b00     	ldr	x0, [x24, #0x50]
    11fc: 0b150108     	add	w8, w8, w21
    1200: b9414aca     	ldr	w10, [x22, #0x148]
    1204: 9ac82121     	lsl	x1, x9, x8
    1208: 4a010154     	eor	w20, w10, w1
    120c: 2a1403e2     	mov	w2, w20
    1210: 94000000     	bl	0x1210 <rdbg_write+0x3bc>
		0000000000001210:  R_AARCH64_CALL26	qcom_smem_state_update_bits
    1214: 110006a8     	add	w8, w21, #0x1
    1218: b9014ad4     	str	w20, [x22, #0x148]
    121c: 12001108     	and	w8, w8, #0x1f
    1220: b9005f08     	str	w8, [x24, #0x5c]
    1224: aa1303e0     	mov	x0, x19
    1228: a9484ff4     	ldp	x20, x19, [sp, #0x80]
    122c: a94757f6     	ldp	x22, x21, [sp, #0x70]
    1230: a9465ff8     	ldp	x24, x23, [sp, #0x60]
    1234: a94567fa     	ldp	x26, x25, [sp, #0x50]
    1238: a9446ffc     	ldp	x28, x27, [sp, #0x40]
    123c: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    1240: 910243ff     	add	sp, sp, #0x90
    1244: d50323bf     	autiasp
    1248: d65f03c0     	ret
    124c: 90000000     	adrp	x0, 0x1000 <rdbg_write+0x1ac>
		000000000000124c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x227
    1250: 91000000     	add	x0, x0, #0x0
		0000000000001250:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x227
    1254: 94000000     	bl	0x1254 <rdbg_write+0x400>
		0000000000001254:  R_AARCH64_CALL26	_printk
    1258: 928002b3     	mov	x19, #-0x16             // =-22
    125c: 17fffff2     	b	0x1224 <rdbg_write+0x3d0>
    1260: 90000000     	adrp	x0, 0x1000 <rdbg_write+0x1ac>
		0000000000001260:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x504
    1264: 91000000     	add	x0, x0, #0x0
		0000000000001264:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x504
    1268: 94000000     	bl	0x1268 <rdbg_write+0x414>
		0000000000001268:  R_AARCH64_CALL26	_printk
    126c: 928008b3     	mov	x19, #-0x46             // =-70
    1270: 17ffffed     	b	0x1224 <rdbg_write+0x3d0>
    1274: d42aa240     	brk	#0x5512
