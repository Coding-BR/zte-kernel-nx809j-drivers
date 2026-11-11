
/input/rdbg.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000ed8 <rdbg_write>:
     ed8: d503233f     	paciasp
     edc: d10243ff     	sub	sp, sp, #0x90
     ee0: a9037bfd     	stp	x29, x30, [sp, #0x30]
     ee4: a9046ffc     	stp	x28, x27, [sp, #0x40]
     ee8: a90567fa     	stp	x26, x25, [sp, #0x50]
     eec: a9065ff8     	stp	x24, x23, [sp, #0x60]
     ef0: a90757f6     	stp	x22, x21, [sp, #0x70]
     ef4: a9084ff4     	stp	x20, x19, [sp, #0x80]
     ef8: 9100c3fd     	add	x29, sp, #0x30
     efc: f9401008     	ldr	x8, [x0, #0x20]
     f00: a93f0ba1     	stp	x1, x2, [x29, #-0x10]
     f04: b4001f88     	cbz	x8, 0x12f4 <rdbg_write+0x41c>
     f08: f9400118     	ldr	x24, [x8]
     f0c: b4001f58     	cbz	x24, 0x12f4 <rdbg_write+0x41c>
     f10: a97f27aa     	ldp	x10, x9, [x29, #-0x10]
     f14: 529fe05c     	mov	w28, #0xff02            // =65282
     f18: 2a1f03f9     	mov	w25, wzr
     f1c: 72bfe01c     	movk	w28, #0xff00, lsl #16
     f20: 5280003a     	mov	w26, #0x1               // =1
     f24: d5384114     	mrs	x20, SP_EL0
     f28: d378dd48     	lsl	x8, x10, #8
     f2c: 93407d33     	sxtw	x19, w9
     f30: 1101fd2b     	add	w11, w9, #0x7f
     f34: d2c01009     	mov	x9, #0x8000000000       // =549755813888
     f38: b81ec3ab     	stur	w11, [x29, #-0x14]
     f3c: 13077d7b     	asr	w27, w11, #7
     f40: 8a88214b     	and	x11, x10, x8, asr #8
     f44: cb130128     	sub	x8, x9, x19
     f48: a900a3eb     	stp	x11, x8, [sp, #0x8]
     f4c: f9405300     	ldr	x0, [x24, #0xa0]
     f50: 94000000     	bl	0xf50 <rdbg_write+0x78>
		0000000000000f50:  R_AARCH64_CALL26	mutex_lock
     f54: f9404709     	ldr	x9, [x24, #0x88]
     f58: b9400128     	ldr	w8, [x9]
     f5c: 6b1c011f     	cmp	w8, w28
     f60: 54000141     	b.ne	0xf88 <rdbg_write+0xb0>
     f64: f9403f08     	ldr	x8, [x24, #0x78]
     f68: 39400508     	ldrb	w8, [x8, #0x1]
     f6c: 7100051f     	cmp	w8, #0x1
     f70: 540000c1     	b.ne	0xf88 <rdbg_write+0xb0>
     f74: f9404308     	ldr	x8, [x24, #0x80]
     f78: b940052b     	ldr	w11, [x9, #0x4]
     f7c: b940050a     	ldr	w10, [x8, #0x4]
     f80: 6b0b015f     	cmp	w10, w11
     f84: 54000260     	b.eq	0xfd0 <rdbg_write+0xf8>
     f88: b940b308     	ldr	w8, [x24, #0xb0]
     f8c: 7100077f     	cmp	w27, #0x1
     f90: 540004e1     	b.ne	0x102c <rdbg_write+0x154>
     f94: f9405f09     	ldr	x9, [x24, #0xb8]
     f98: 2a0803f5     	mov	w21, w8
     f9c: 3875492a     	ldrb	w10, [x9, w21, uxtw]
     fa0: 3400082a     	cbz	w10, 0x10a4 <rdbg_write+0x1cc>
     fa4: b940b70a     	ldr	w10, [x24, #0xb4]
     fa8: 110006ab     	add	w11, w21, #0x1
     fac: 1aca096c     	udiv	w12, w11, w10
     fb0: 1b0aad95     	msub	w21, w12, w10, w11
     fb4: 6b15011f     	cmp	w8, w21
     fb8: b900b315     	str	w21, [x24, #0xb0]
     fbc: 54ffff01     	b.ne	0xf9c <rdbg_write+0xc4>
     fc0: 2a1f03f5     	mov	w21, wzr
     fc4: 1400009d     	b	0x1238 <rdbg_write+0x360>
     fc8: d5033d9f     	dsb	ld
     fcc: a9482708     	ldp	x8, x9, [x24, #0x80]
     fd0: b840cd0a     	ldr	w10, [x8, #0xc]!
     fd4: b9400d2b     	ldr	w11, [x9, #0xc]
     fd8: 6b0b015f     	cmp	w10, w11
     fdc: 54fffd60     	b.eq	0xf88 <rdbg_write+0xb0>
     fe0: 8b2a4929     	add	x9, x9, w10, uxtw #2
     fe4: b9409b0b     	ldr	w11, [x24, #0x98]
     fe8: 78410d2c     	ldrh	w12, [x9, #0x10]!
     fec: 6b0c017f     	cmp	w11, w12
     ff0: 54fffe89     	b.ls	0xfc0 <rdbg_write+0xe8>
     ff4: 1100054a     	add	w10, w10, #0x1
     ff8: 1acb094c     	udiv	w12, w10, w11
     ffc: 1b0ba98a     	msub	w10, w12, w11, w10
    1000: b900010a     	str	w10, [x8]
    1004: 79400128     	ldrh	w8, [x9]
    1008: f9405f09     	ldr	x9, [x24, #0xb8]
    100c: 38686929     	ldrb	w9, [x9, x8]
    1010: 34fffdc9     	cbz	w9, 0xfc8 <rdbg_write+0xf0>
    1014: f9405f0a     	ldr	x10, [x24, #0xb8]
    1018: 71000529     	subs	w9, w9, #0x1
    101c: 3828695f     	strb	wzr, [x10, x8]
    1020: 91000508     	add	x8, x8, #0x1
    1024: 54ffff81     	b.ne	0x1014 <rdbg_write+0x13c>
    1028: 17ffffe8     	b	0xfc8 <rdbg_write+0xf0>
    102c: b940b709     	ldr	w9, [x24, #0xb4]
    1030: f9405f0b     	ldr	x11, [x24, #0xb8]
    1034: 2a1f03ea     	mov	w10, wzr
    1038: 2a0803ec     	mov	w12, w8
    103c: 2a0903ed     	mov	w13, w9
    1040: 1400000c     	b	0x1070 <rdbg_write+0x198>
    1044: 0b0e0108     	add	w8, w8, w14
    1048: 2a1f03ea     	mov	w10, wzr
    104c: 2a0903f5     	mov	w21, w9
    1050: 51000508     	sub	w8, w8, #0x1
    1054: 11000508     	add	w8, w8, #0x1
    1058: 1ac9090d     	udiv	w13, w8, w9
    105c: 1b09a1a8     	msub	w8, w13, w9, w8
    1060: 2a1503ed     	mov	w13, w21
    1064: 6b08019f     	cmp	w12, w8
    1068: b900b308     	str	w8, [x24, #0xb0]
    106c: 54fffaa0     	b.eq	0xfc0 <rdbg_write+0xe8>
    1070: 3868496e     	ldrb	w14, [x11, w8, uxtw]
    1074: 35fffe8e     	cbnz	w14, 0x1044 <rdbg_write+0x16c>
    1078: 6b0801bf     	cmp	w13, w8
    107c: 1a8a874a     	csinc	w10, w26, w10, hi
    1080: 1a8c810c     	csel	w12, w8, w12, hi
    1084: 1a8831b5     	csel	w21, w13, w8, lo
    1088: 6b1b015f     	cmp	w10, w27
    108c: 54fffe41     	b.ne	0x1054 <rdbg_write+0x17c>
    1090: b85ec3a9     	ldur	w9, [x29, #-0x14]
    1094: 7102013f     	cmp	w9, #0x80
    1098: 54000122     	b.hs	0x10bc <rdbg_write+0x1e4>
    109c: 2a1f03e9     	mov	w9, wzr
    10a0: 14000012     	b	0x10e8 <rdbg_write+0x210>
    10a4: 3835493a     	strb	w26, [x9, w21, uxtw]
    10a8: 29562708     	ldp	w8, w9, [x24, #0xb0]
    10ac: 11000508     	add	w8, w8, #0x1
    10b0: 1ac9090a     	udiv	w10, w8, w9
    10b4: 1b09a148     	msub	w8, w10, w9, w8
    10b8: 1400000e     	b	0x10f0 <rdbg_write+0x218>
    10bc: 6b0801bf     	cmp	w13, w8
    10c0: aa1b03e9     	mov	x9, x27
    10c4: 1a8831a8     	csel	w8, w13, w8, lo
    10c8: f9405f0a     	ldr	x10, [x24, #0xb8]
    10cc: 38284949     	strb	w9, [x10, w8, uxtw]
    10d0: f1000529     	subs	x9, x9, #0x1
    10d4: 11000508     	add	w8, w8, #0x1
    10d8: 54ffff81     	b.ne	0x10c8 <rdbg_write+0x1f0>
    10dc: f9405f09     	ldr	x9, [x24, #0xb8]
    10e0: b940b308     	ldr	w8, [x24, #0xb0]
    10e4: 38686929     	ldrb	w9, [x9, x8]
    10e8: 0b090108     	add	w8, w8, w9
    10ec: 51000508     	sub	w8, w8, #0x1
    10f0: f9404b09     	ldr	x9, [x24, #0x90]
    10f4: 531962aa     	lsl	w10, w21, #7
    10f8: b900b308     	str	w8, [x24, #0xb0]
    10fc: f85f83a8     	ldur	x8, [x29, #-0x8]
    1100: 8b0a0136     	add	x22, x9, x10
    1104: 37f80a88     	tbnz	w8, #0x1f, 0x1254 <rdbg_write+0x37c>
    1108: aa1603e0     	mov	x0, x22
    110c: aa1303e1     	mov	x1, x19
    1110: 2a1f03e2     	mov	w2, wzr
    1114: 94000000     	bl	0x1114 <rdbg_write+0x23c>
		0000000000001114:  R_AARCH64_CALL26	__check_object_size
    1118: 39411a88     	ldrb	w8, [x20, #0x46]
    111c: 37280088     	tbnz	w8, #0x5, 0x112c <rdbg_write+0x254>
    1120: f9400289     	ldr	x9, [x20]
    1124: f85f03a8     	ldur	x8, [x29, #-0x10]
    1128: 36d00049     	tbz	w9, #0x1a, 0x1130 <rdbg_write+0x258>
    112c: f94007e8     	ldr	x8, [sp, #0x8]
    1130: f9400be9     	ldr	x9, [sp, #0x10]
    1134: aa1303f7     	mov	x23, x19
    1138: eb08013f     	cmp	x9, x8
    113c: 54000222     	b.hs	0x1180 <rdbg_write+0x2a8>
    1140: cb170268     	sub	x8, x19, x23
    1144: 2a1f03e1     	mov	w1, wzr
    1148: aa1703e2     	mov	x2, x23
    114c: 8b0802c0     	add	x0, x22, x8
    1150: 94000000     	bl	0x1150 <rdbg_write+0x278>
		0000000000001150:  R_AARCH64_CALL26	memset
    1154: 340004f7     	cbz	w23, 0x11f0 <rdbg_write+0x318>
    1158: b4fff356     	cbz	x22, 0xfc0 <rdbg_write+0xe8>
    115c: f9405f08     	ldr	x8, [x24, #0xb8]
    1160: 38754908     	ldrb	w8, [x8, w21, uxtw]
    1164: 34fff2e8     	cbz	w8, 0xfc0 <rdbg_write+0xe8>
    1168: f9405f09     	ldr	x9, [x24, #0xb8]
    116c: 71000508     	subs	w8, w8, #0x1
    1170: 3835493f     	strb	wzr, [x9, w21, uxtw]
    1174: 110006b5     	add	w21, w21, #0x1
    1178: 54ffff81     	b.ne	0x1168 <rdbg_write+0x290>
    117c: 17ffff91     	b	0xfc0 <rdbg_write+0xe8>
    1180: d503201f     	nop
    1184: d53b4228     	mrs	x8, DAIF
    1188: d50343df     	msr	DAIFSet, #0x3
    118c: f9400689     	ldr	x9, [x20, #0x8]
    1190: d538202a     	mrs	x10, TTBR1_EL1
    1194: aa0903eb     	mov	x11, x9
    1198: b340bd4b     	bfxil	x11, x10, #0, #48
    119c: d518202b     	msr	TTBR1_EL1, x11
    11a0: d5182009     	msr	TTBR0_EL1, x9
    11a4: d5033fdf     	isb
    11a8: d51b4228     	msr	DAIF, x8
    11ac: f85f03a8     	ldur	x8, [x29, #-0x10]
    11b0: 9248f901     	and	x1, x8, #0xff7fffffffffffff
    11b4: aa1603e0     	mov	x0, x22
    11b8: aa1303e2     	mov	x2, x19
    11bc: 94000000     	bl	0x11bc <rdbg_write+0x2e4>
		00000000000011bc:  R_AARCH64_CALL26	__arch_copy_from_user
    11c0: aa0003f7     	mov	x23, x0
    11c4: d503201f     	nop
    11c8: d53b4228     	mrs	x8, DAIF
    11cc: d50343df     	msr	DAIFSet, #0x3
    11d0: d5382029     	mrs	x9, TTBR1_EL1
    11d4: 9240bd29     	and	x9, x9, #0xffffffffffff
    11d8: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
    11dc: d518200a     	msr	TTBR0_EL1, x10
    11e0: d5182029     	msr	TTBR1_EL1, x9
    11e4: d5033fdf     	isb
    11e8: d51b4228     	msr	DAIF, x8
    11ec: b5fffab7     	cbnz	x23, 0x1140 <rdbg_write+0x268>
    11f0: f9404308     	ldr	x8, [x24, #0x80]
    11f4: b85ec3aa     	ldur	w10, [x29, #-0x14]
    11f8: b9400909     	ldr	w9, [x8, #0x8]
    11fc: 53077d4a     	lsr	w10, w10, #7
    1200: 8b090908     	add	x8, x8, x9, lsl #2
    1204: 79002115     	strh	w21, [x8, #0x10]
    1208: 52800035     	mov	w21, #0x1               // =1
    120c: f9404308     	ldr	x8, [x24, #0x80]
    1210: b9400909     	ldr	w9, [x8, #0x8]
    1214: 8b090908     	add	x8, x8, x9, lsl #2
    1218: 7900250a     	strh	w10, [x8, #0x12]
    121c: f9404308     	ldr	x8, [x24, #0x80]
    1220: b9409b0a     	ldr	w10, [x24, #0x98]
    1224: b9400909     	ldr	w9, [x8, #0x8]
    1228: 11000529     	add	w9, w9, #0x1
    122c: 1aca092b     	udiv	w11, w9, w10
    1230: 1b0aa569     	msub	w9, w11, w10, w9
    1234: b9000909     	str	w9, [x8, #0x8]
    1238: f9405300     	ldr	x0, [x24, #0xa0]
    123c: 94000000     	bl	0x123c <rdbg_write+0x364>
		000000000000123c:  R_AARCH64_CALL26	mutex_unlock
    1240: 37000115     	tbnz	w21, #0x0, 0x1260 <rdbg_write+0x388>
    1244: 7100533f     	cmp	w25, #0x14
    1248: 11000739     	add	w25, w25, #0x1
    124c: 54ffe803     	b.lo	0xf4c <rdbg_write+0x74>
    1250: 14000004     	b	0x1260 <rdbg_write+0x388>
    1254: d4210000     	brk	#0x800
    1258: b5fff836     	cbnz	x22, 0x115c <rdbg_write+0x284>
    125c: 17ffff59     	b	0xfc0 <rdbg_write+0xe8>
    1260: 36000555     	tbz	w21, #0x0, 0x1308 <rdbg_write+0x430>
    1264: 90000000     	adrp	x0, 0x1000 <rdbg_write+0x128>
		0000000000001264:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_smem_state_lock
    1268: 91000000     	add	x0, x0, #0x0
		0000000000001268:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_smem_state_lock
    126c: 94000000     	bl	0x126c <rdbg_write+0x394>
		000000000000126c:  R_AARCH64_CALL26	mutex_lock
    1270: f9402b00     	ldr	x0, [x24, #0x50]
    1274: b4000260     	cbz	x0, 0x12c0 <rdbg_write+0x3e8>
    1278: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
    127c: 54000228     	b.hi	0x12c0 <rdbg_write+0x3e8>
    1280: b9405f15     	ldr	w21, [x24, #0x5c]
    1284: 710082bf     	cmp	w21, #0x20
    1288: 540004a2     	b.hs	0x131c <rdbg_write+0x444>
    128c: b9404b08     	ldr	w8, [x24, #0x48]
    1290: 91052316     	add	x22, x24, #0x148
    1294: 52800029     	mov	w9, #0x1                // =1
    1298: b8757aca     	ldr	w10, [x22, x21, lsl #2]
    129c: 0b150108     	add	w8, w8, w21
    12a0: 9ac82121     	lsl	x1, x9, x8
    12a4: 4a010154     	eor	w20, w10, w1
    12a8: 2a1403e2     	mov	w2, w20
    12ac: 94000000     	bl	0x12ac <rdbg_write+0x3d4>
		00000000000012ac:  R_AARCH64_CALL26	qcom_smem_state_update_bits
    12b0: 110006a8     	add	w8, w21, #0x1
    12b4: b8357ad4     	str	w20, [x22, x21, lsl #2]
    12b8: 12001108     	and	w8, w8, #0x1f
    12bc: b9005f08     	str	w8, [x24, #0x5c]
    12c0: 90000000     	adrp	x0, 0x1000 <rdbg_write+0x128>
		00000000000012c0:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_smem_state_lock
    12c4: 91000000     	add	x0, x0, #0x0
		00000000000012c4:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_smem_state_lock
    12c8: 94000000     	bl	0x12c8 <rdbg_write+0x3f0>
		00000000000012c8:  R_AARCH64_CALL26	mutex_unlock
    12cc: aa1303e0     	mov	x0, x19
    12d0: a9484ff4     	ldp	x20, x19, [sp, #0x80]
    12d4: a94757f6     	ldp	x22, x21, [sp, #0x70]
    12d8: a9465ff8     	ldp	x24, x23, [sp, #0x60]
    12dc: a94567fa     	ldp	x26, x25, [sp, #0x50]
    12e0: a9446ffc     	ldp	x28, x27, [sp, #0x40]
    12e4: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    12e8: 910243ff     	add	sp, sp, #0x90
    12ec: d50323bf     	autiasp
    12f0: d65f03c0     	ret
    12f4: 90000000     	adrp	x0, 0x1000 <rdbg_write+0x128>
		00000000000012f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x227
    12f8: 91000000     	add	x0, x0, #0x0
		00000000000012f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x227
    12fc: 94000000     	bl	0x12fc <rdbg_write+0x424>
		00000000000012fc:  R_AARCH64_CALL26	_printk
    1300: 928002b3     	mov	x19, #-0x16             // =-22
    1304: 17fffff2     	b	0x12cc <rdbg_write+0x3f4>
    1308: 90000000     	adrp	x0, 0x1000 <rdbg_write+0x128>
		0000000000001308:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x504
    130c: 91000000     	add	x0, x0, #0x0
		000000000000130c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x504
    1310: 94000000     	bl	0x1310 <rdbg_write+0x438>
		0000000000001310:  R_AARCH64_CALL26	_printk
    1314: 928008b3     	mov	x19, #-0x46             // =-70
    1318: 17ffffed     	b	0x12cc <rdbg_write+0x3f4>
    131c: 90000000     	adrp	x0, 0x1000 <rdbg_write+0x128>
		000000000000131c:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_smem_state_lock
    1320: 91000000     	add	x0, x0, #0x0
		0000000000001320:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_smem_state_lock
    1324: 94000000     	bl	0x1324 <rdbg_write+0x44c>
		0000000000001324:  R_AARCH64_CALL26	mutex_unlock
    1328: d42aa240     	brk	#0x5512
