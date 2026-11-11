
/input/rdbg.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000e9c <rdbg_write>:
     e9c: d503233f     	paciasp
     ea0: d10243ff     	sub	sp, sp, #0x90
     ea4: a9037bfd     	stp	x29, x30, [sp, #0x30]
     ea8: a9046ffc     	stp	x28, x27, [sp, #0x40]
     eac: a90567fa     	stp	x26, x25, [sp, #0x50]
     eb0: a9065ff8     	stp	x24, x23, [sp, #0x60]
     eb4: a90757f6     	stp	x22, x21, [sp, #0x70]
     eb8: a9084ff4     	stp	x20, x19, [sp, #0x80]
     ebc: 9100c3fd     	add	x29, sp, #0x30
     ec0: f9401008     	ldr	x8, [x0, #0x20]
     ec4: a93f0ba1     	stp	x1, x2, [x29, #-0x10]
     ec8: b4001f88     	cbz	x8, 0x12b8 <rdbg_write+0x41c>
     ecc: f9400118     	ldr	x24, [x8]
     ed0: b4001f58     	cbz	x24, 0x12b8 <rdbg_write+0x41c>
     ed4: a97f27aa     	ldp	x10, x9, [x29, #-0x10]
     ed8: 529fe05c     	mov	w28, #0xff02            // =65282
     edc: 2a1f03f9     	mov	w25, wzr
     ee0: 72bfe01c     	movk	w28, #0xff00, lsl #16
     ee4: 5280003a     	mov	w26, #0x1               // =1
     ee8: d5384114     	mrs	x20, SP_EL0
     eec: d378dd48     	lsl	x8, x10, #8
     ef0: 93407d33     	sxtw	x19, w9
     ef4: 1101fd2b     	add	w11, w9, #0x7f
     ef8: d2c01009     	mov	x9, #0x8000000000       // =549755813888
     efc: b81ec3ab     	stur	w11, [x29, #-0x14]
     f00: 13077d7b     	asr	w27, w11, #7
     f04: 8a88214b     	and	x11, x10, x8, asr #8
     f08: cb130128     	sub	x8, x9, x19
     f0c: a900a3eb     	stp	x11, x8, [sp, #0x8]
     f10: f9405300     	ldr	x0, [x24, #0xa0]
     f14: 94000000     	bl	0xf14 <rdbg_write+0x78>
		0000000000000f14:  R_AARCH64_CALL26	mutex_lock
     f18: f9404709     	ldr	x9, [x24, #0x88]
     f1c: b9400128     	ldr	w8, [x9]
     f20: 6b1c011f     	cmp	w8, w28
     f24: 54000141     	b.ne	0xf4c <rdbg_write+0xb0>
     f28: f9403f08     	ldr	x8, [x24, #0x78]
     f2c: 39400508     	ldrb	w8, [x8, #0x1]
     f30: 7100051f     	cmp	w8, #0x1
     f34: 540000c1     	b.ne	0xf4c <rdbg_write+0xb0>
     f38: f9404308     	ldr	x8, [x24, #0x80]
     f3c: b940052b     	ldr	w11, [x9, #0x4]
     f40: b940050a     	ldr	w10, [x8, #0x4]
     f44: 6b0b015f     	cmp	w10, w11
     f48: 54000260     	b.eq	0xf94 <rdbg_write+0xf8>
     f4c: b940b308     	ldr	w8, [x24, #0xb0]
     f50: 7100077f     	cmp	w27, #0x1
     f54: 540004e1     	b.ne	0xff0 <rdbg_write+0x154>
     f58: f9405f09     	ldr	x9, [x24, #0xb8]
     f5c: 2a0803f5     	mov	w21, w8
     f60: 3875492a     	ldrb	w10, [x9, w21, uxtw]
     f64: 3400082a     	cbz	w10, 0x1068 <rdbg_write+0x1cc>
     f68: b940b70a     	ldr	w10, [x24, #0xb4]
     f6c: 110006ab     	add	w11, w21, #0x1
     f70: 1aca096c     	udiv	w12, w11, w10
     f74: 1b0aad95     	msub	w21, w12, w10, w11
     f78: 6b15011f     	cmp	w8, w21
     f7c: b900b315     	str	w21, [x24, #0xb0]
     f80: 54ffff01     	b.ne	0xf60 <rdbg_write+0xc4>
     f84: 2a1f03f5     	mov	w21, wzr
     f88: 1400009d     	b	0x11fc <rdbg_write+0x360>
     f8c: d5033d9f     	dsb	ld
     f90: a9482708     	ldp	x8, x9, [x24, #0x80]
     f94: b840cd0a     	ldr	w10, [x8, #0xc]!
     f98: b9400d2b     	ldr	w11, [x9, #0xc]
     f9c: 6b0b015f     	cmp	w10, w11
     fa0: 54fffd60     	b.eq	0xf4c <rdbg_write+0xb0>
     fa4: 8b2a4929     	add	x9, x9, w10, uxtw #2
     fa8: b9409b0b     	ldr	w11, [x24, #0x98]
     fac: 78410d2c     	ldrh	w12, [x9, #0x10]!
     fb0: 6b0c017f     	cmp	w11, w12
     fb4: 54fffe89     	b.ls	0xf84 <rdbg_write+0xe8>
     fb8: 1100054a     	add	w10, w10, #0x1
     fbc: 1acb094c     	udiv	w12, w10, w11
     fc0: 1b0ba98a     	msub	w10, w12, w11, w10
     fc4: b900010a     	str	w10, [x8]
     fc8: 79400128     	ldrh	w8, [x9]
     fcc: f9405f09     	ldr	x9, [x24, #0xb8]
     fd0: 38686929     	ldrb	w9, [x9, x8]
     fd4: 34fffdc9     	cbz	w9, 0xf8c <rdbg_write+0xf0>
     fd8: f9405f0a     	ldr	x10, [x24, #0xb8]
     fdc: 71000529     	subs	w9, w9, #0x1
     fe0: 3828695f     	strb	wzr, [x10, x8]
     fe4: 91000508     	add	x8, x8, #0x1
     fe8: 54ffff81     	b.ne	0xfd8 <rdbg_write+0x13c>
     fec: 17ffffe8     	b	0xf8c <rdbg_write+0xf0>
     ff0: b940b709     	ldr	w9, [x24, #0xb4]
     ff4: f9405f0b     	ldr	x11, [x24, #0xb8]
     ff8: 2a1f03ea     	mov	w10, wzr
     ffc: 2a0803ec     	mov	w12, w8
    1000: 2a0903ed     	mov	w13, w9
    1004: 1400000c     	b	0x1034 <rdbg_write+0x198>
    1008: 0b0e0108     	add	w8, w8, w14
    100c: 2a1f03ea     	mov	w10, wzr
    1010: 2a0903f5     	mov	w21, w9
    1014: 51000508     	sub	w8, w8, #0x1
    1018: 11000508     	add	w8, w8, #0x1
    101c: 1ac9090d     	udiv	w13, w8, w9
    1020: 1b09a1a8     	msub	w8, w13, w9, w8
    1024: 2a1503ed     	mov	w13, w21
    1028: 6b08019f     	cmp	w12, w8
    102c: b900b308     	str	w8, [x24, #0xb0]
    1030: 54fffaa0     	b.eq	0xf84 <rdbg_write+0xe8>
    1034: 3868496e     	ldrb	w14, [x11, w8, uxtw]
    1038: 35fffe8e     	cbnz	w14, 0x1008 <rdbg_write+0x16c>
    103c: 6b0801bf     	cmp	w13, w8
    1040: 1a8a874a     	csinc	w10, w26, w10, hi
    1044: 1a8c810c     	csel	w12, w8, w12, hi
    1048: 1a8831b5     	csel	w21, w13, w8, lo
    104c: 6b1b015f     	cmp	w10, w27
    1050: 54fffe41     	b.ne	0x1018 <rdbg_write+0x17c>
    1054: b85ec3a9     	ldur	w9, [x29, #-0x14]
    1058: 7102013f     	cmp	w9, #0x80
    105c: 54000122     	b.hs	0x1080 <rdbg_write+0x1e4>
    1060: 2a1f03e9     	mov	w9, wzr
    1064: 14000012     	b	0x10ac <rdbg_write+0x210>
    1068: 3835493a     	strb	w26, [x9, w21, uxtw]
    106c: 29562708     	ldp	w8, w9, [x24, #0xb0]
    1070: 11000508     	add	w8, w8, #0x1
    1074: 1ac9090a     	udiv	w10, w8, w9
    1078: 1b09a148     	msub	w8, w10, w9, w8
    107c: 1400000e     	b	0x10b4 <rdbg_write+0x218>
    1080: 6b0801bf     	cmp	w13, w8
    1084: aa1b03e9     	mov	x9, x27
    1088: 1a8831a8     	csel	w8, w13, w8, lo
    108c: f9405f0a     	ldr	x10, [x24, #0xb8]
    1090: 38284949     	strb	w9, [x10, w8, uxtw]
    1094: f1000529     	subs	x9, x9, #0x1
    1098: 11000508     	add	w8, w8, #0x1
    109c: 54ffff81     	b.ne	0x108c <rdbg_write+0x1f0>
    10a0: f9405f09     	ldr	x9, [x24, #0xb8]
    10a4: b940b308     	ldr	w8, [x24, #0xb0]
    10a8: 38686929     	ldrb	w9, [x9, x8]
    10ac: 0b090108     	add	w8, w8, w9
    10b0: 51000508     	sub	w8, w8, #0x1
    10b4: f9404b09     	ldr	x9, [x24, #0x90]
    10b8: 531962aa     	lsl	w10, w21, #7
    10bc: b900b308     	str	w8, [x24, #0xb0]
    10c0: f85f83a8     	ldur	x8, [x29, #-0x8]
    10c4: 8b0a0136     	add	x22, x9, x10
    10c8: 37f80a88     	tbnz	w8, #0x1f, 0x1218 <rdbg_write+0x37c>
    10cc: aa1603e0     	mov	x0, x22
    10d0: aa1303e1     	mov	x1, x19
    10d4: 2a1f03e2     	mov	w2, wzr
    10d8: 94000000     	bl	0x10d8 <rdbg_write+0x23c>
		00000000000010d8:  R_AARCH64_CALL26	__check_object_size
    10dc: 39411a88     	ldrb	w8, [x20, #0x46]
    10e0: 37280088     	tbnz	w8, #0x5, 0x10f0 <rdbg_write+0x254>
    10e4: f9400289     	ldr	x9, [x20]
    10e8: f85f03a8     	ldur	x8, [x29, #-0x10]
    10ec: 36d00049     	tbz	w9, #0x1a, 0x10f4 <rdbg_write+0x258>
    10f0: f94007e8     	ldr	x8, [sp, #0x8]
    10f4: f9400be9     	ldr	x9, [sp, #0x10]
    10f8: aa1303f7     	mov	x23, x19
    10fc: eb08013f     	cmp	x9, x8
    1100: 54000222     	b.hs	0x1144 <rdbg_write+0x2a8>
    1104: cb170268     	sub	x8, x19, x23
    1108: 2a1f03e1     	mov	w1, wzr
    110c: aa1703e2     	mov	x2, x23
    1110: 8b0802c0     	add	x0, x22, x8
    1114: 94000000     	bl	0x1114 <rdbg_write+0x278>
		0000000000001114:  R_AARCH64_CALL26	memset
    1118: 340004f7     	cbz	w23, 0x11b4 <rdbg_write+0x318>
    111c: b4fff356     	cbz	x22, 0xf84 <rdbg_write+0xe8>
    1120: f9405f08     	ldr	x8, [x24, #0xb8]
    1124: 38754908     	ldrb	w8, [x8, w21, uxtw]
    1128: 34fff2e8     	cbz	w8, 0xf84 <rdbg_write+0xe8>
    112c: f9405f09     	ldr	x9, [x24, #0xb8]
    1130: 71000508     	subs	w8, w8, #0x1
    1134: 3835493f     	strb	wzr, [x9, w21, uxtw]
    1138: 110006b5     	add	w21, w21, #0x1
    113c: 54ffff81     	b.ne	0x112c <rdbg_write+0x290>
    1140: 17ffff91     	b	0xf84 <rdbg_write+0xe8>
    1144: d503201f     	nop
    1148: d53b4228     	mrs	x8, DAIF
    114c: d50343df     	msr	DAIFSet, #0x3
    1150: f9400689     	ldr	x9, [x20, #0x8]
    1154: d538202a     	mrs	x10, TTBR1_EL1
    1158: aa0903eb     	mov	x11, x9
    115c: b340bd4b     	bfxil	x11, x10, #0, #48
    1160: d518202b     	msr	TTBR1_EL1, x11
    1164: d5182009     	msr	TTBR0_EL1, x9
    1168: d5033fdf     	isb
    116c: d51b4228     	msr	DAIF, x8
    1170: f85f03a8     	ldur	x8, [x29, #-0x10]
    1174: 9248f901     	and	x1, x8, #0xff7fffffffffffff
    1178: aa1603e0     	mov	x0, x22
    117c: aa1303e2     	mov	x2, x19
    1180: 94000000     	bl	0x1180 <rdbg_write+0x2e4>
		0000000000001180:  R_AARCH64_CALL26	__arch_copy_from_user
    1184: aa0003f7     	mov	x23, x0
    1188: d503201f     	nop
    118c: d53b4228     	mrs	x8, DAIF
    1190: d50343df     	msr	DAIFSet, #0x3
    1194: d5382029     	mrs	x9, TTBR1_EL1
    1198: 9240bd29     	and	x9, x9, #0xffffffffffff
    119c: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
    11a0: d518200a     	msr	TTBR0_EL1, x10
    11a4: d5182029     	msr	TTBR1_EL1, x9
    11a8: d5033fdf     	isb
    11ac: d51b4228     	msr	DAIF, x8
    11b0: b5fffab7     	cbnz	x23, 0x1104 <rdbg_write+0x268>
    11b4: f9404308     	ldr	x8, [x24, #0x80]
    11b8: b85ec3aa     	ldur	w10, [x29, #-0x14]
    11bc: b9400909     	ldr	w9, [x8, #0x8]
    11c0: 53077d4a     	lsr	w10, w10, #7
    11c4: 8b090908     	add	x8, x8, x9, lsl #2
    11c8: 79002115     	strh	w21, [x8, #0x10]
    11cc: 52800035     	mov	w21, #0x1               // =1
    11d0: f9404308     	ldr	x8, [x24, #0x80]
    11d4: b9400909     	ldr	w9, [x8, #0x8]
    11d8: 8b090908     	add	x8, x8, x9, lsl #2
    11dc: 7900250a     	strh	w10, [x8, #0x12]
    11e0: f9404308     	ldr	x8, [x24, #0x80]
    11e4: b9409b0a     	ldr	w10, [x24, #0x98]
    11e8: b9400909     	ldr	w9, [x8, #0x8]
    11ec: 11000529     	add	w9, w9, #0x1
    11f0: 1aca092b     	udiv	w11, w9, w10
    11f4: 1b0aa569     	msub	w9, w11, w10, w9
    11f8: b9000909     	str	w9, [x8, #0x8]
    11fc: f9405300     	ldr	x0, [x24, #0xa0]
    1200: 94000000     	bl	0x1200 <rdbg_write+0x364>
		0000000000001200:  R_AARCH64_CALL26	mutex_unlock
    1204: 37000115     	tbnz	w21, #0x0, 0x1224 <rdbg_write+0x388>
    1208: 7100533f     	cmp	w25, #0x14
    120c: 11000739     	add	w25, w25, #0x1
    1210: 54ffe803     	b.lo	0xf10 <rdbg_write+0x74>
    1214: 14000004     	b	0x1224 <rdbg_write+0x388>
    1218: d4210000     	brk	#0x800
    121c: b5fff836     	cbnz	x22, 0x1120 <rdbg_write+0x284>
    1220: 17ffff59     	b	0xf84 <rdbg_write+0xe8>
    1224: 36000555     	tbz	w21, #0x0, 0x12cc <rdbg_write+0x430>
    1228: 90000000     	adrp	x0, 0x1000 <rdbg_write+0x164>
		0000000000001228:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_smem_state_lock
    122c: 91000000     	add	x0, x0, #0x0
		000000000000122c:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_smem_state_lock
    1230: 94000000     	bl	0x1230 <rdbg_write+0x394>
		0000000000001230:  R_AARCH64_CALL26	mutex_lock
    1234: f9402b00     	ldr	x0, [x24, #0x50]
    1238: b4000260     	cbz	x0, 0x1284 <rdbg_write+0x3e8>
    123c: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
    1240: 54000228     	b.hi	0x1284 <rdbg_write+0x3e8>
    1244: b9405f15     	ldr	w21, [x24, #0x5c]
    1248: 710082bf     	cmp	w21, #0x20
    124c: 540004a2     	b.hs	0x12e0 <rdbg_write+0x444>
    1250: b9404b08     	ldr	w8, [x24, #0x48]
    1254: 91052316     	add	x22, x24, #0x148
    1258: 52800029     	mov	w9, #0x1                // =1
    125c: b8757aca     	ldr	w10, [x22, x21, lsl #2]
    1260: 0b150108     	add	w8, w8, w21
    1264: 9ac82121     	lsl	x1, x9, x8
    1268: 4a010154     	eor	w20, w10, w1
    126c: 2a1403e2     	mov	w2, w20
    1270: 94000000     	bl	0x1270 <rdbg_write+0x3d4>
		0000000000001270:  R_AARCH64_CALL26	qcom_smem_state_update_bits
    1274: 110006a8     	add	w8, w21, #0x1
    1278: b8357ad4     	str	w20, [x22, x21, lsl #2]
    127c: 12001108     	and	w8, w8, #0x1f
    1280: b9005f08     	str	w8, [x24, #0x5c]
    1284: 90000000     	adrp	x0, 0x1000 <rdbg_write+0x164>
		0000000000001284:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_smem_state_lock
    1288: 91000000     	add	x0, x0, #0x0
		0000000000001288:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_smem_state_lock
    128c: 94000000     	bl	0x128c <rdbg_write+0x3f0>
		000000000000128c:  R_AARCH64_CALL26	mutex_unlock
    1290: aa1303e0     	mov	x0, x19
    1294: a9484ff4     	ldp	x20, x19, [sp, #0x80]
    1298: a94757f6     	ldp	x22, x21, [sp, #0x70]
    129c: a9465ff8     	ldp	x24, x23, [sp, #0x60]
    12a0: a94567fa     	ldp	x26, x25, [sp, #0x50]
    12a4: a9446ffc     	ldp	x28, x27, [sp, #0x40]
    12a8: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    12ac: 910243ff     	add	sp, sp, #0x90
    12b0: d50323bf     	autiasp
    12b4: d65f03c0     	ret
    12b8: 90000000     	adrp	x0, 0x1000 <rdbg_write+0x164>
		00000000000012b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x227
    12bc: 91000000     	add	x0, x0, #0x0
		00000000000012bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x227
    12c0: 94000000     	bl	0x12c0 <rdbg_write+0x424>
		00000000000012c0:  R_AARCH64_CALL26	_printk
    12c4: 928002b3     	mov	x19, #-0x16             // =-22
    12c8: 17fffff2     	b	0x1290 <rdbg_write+0x3f4>
    12cc: 90000000     	adrp	x0, 0x1000 <rdbg_write+0x164>
		00000000000012cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x504
    12d0: 91000000     	add	x0, x0, #0x0
		00000000000012d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x504
    12d4: 94000000     	bl	0x12d4 <rdbg_write+0x438>
		00000000000012d4:  R_AARCH64_CALL26	_printk
    12d8: 928008b3     	mov	x19, #-0x46             // =-70
    12dc: 17ffffed     	b	0x1290 <rdbg_write+0x3f4>
    12e0: 90000000     	adrp	x0, 0x1000 <rdbg_write+0x164>
		00000000000012e0:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_smem_state_lock
    12e4: 91000000     	add	x0, x0, #0x0
		00000000000012e4:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_smem_state_lock
    12e8: 94000000     	bl	0x12e8 <rdbg_write+0x44c>
		00000000000012e8:  R_AARCH64_CALL26	mutex_unlock
    12ec: d42aa240     	brk	#0x5512
