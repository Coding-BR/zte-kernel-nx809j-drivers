
/input/rdbg.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000f2c <rdbg_write>:
     f2c: d503233f     	paciasp
     f30: d10243ff     	sub	sp, sp, #0x90
     f34: a9037bfd     	stp	x29, x30, [sp, #0x30]
     f38: a9046ffc     	stp	x28, x27, [sp, #0x40]
     f3c: a90567fa     	stp	x26, x25, [sp, #0x50]
     f40: a9065ff8     	stp	x24, x23, [sp, #0x60]
     f44: a90757f6     	stp	x22, x21, [sp, #0x70]
     f48: a9084ff4     	stp	x20, x19, [sp, #0x80]
     f4c: 9100c3fd     	add	x29, sp, #0x30
     f50: f9401008     	ldr	x8, [x0, #0x20]
     f54: a93f0ba1     	stp	x1, x2, [x29, #-0x10]
     f58: b4001fa8     	cbz	x8, 0x134c <rdbg_write+0x420>
     f5c: f9400118     	ldr	x24, [x8]
     f60: b4001f78     	cbz	x24, 0x134c <rdbg_write+0x420>
     f64: a97f27aa     	ldp	x10, x9, [x29, #-0x10]
     f68: 529fe05c     	mov	w28, #0xff02            // =65282
     f6c: 2a1f03f9     	mov	w25, wzr
     f70: 72bfe01c     	movk	w28, #0xff00, lsl #16
     f74: 5280003a     	mov	w26, #0x1               // =1
     f78: d5384114     	mrs	x20, SP_EL0
     f7c: d378dd48     	lsl	x8, x10, #8
     f80: 93407d33     	sxtw	x19, w9
     f84: 1101fd2b     	add	w11, w9, #0x7f
     f88: d2c01009     	mov	x9, #0x8000000000       // =549755813888
     f8c: b81ec3ab     	stur	w11, [x29, #-0x14]
     f90: 13077d7b     	asr	w27, w11, #7
     f94: 8a88214b     	and	x11, x10, x8, asr #8
     f98: cb130128     	sub	x8, x9, x19
     f9c: a900a3eb     	stp	x11, x8, [sp, #0x8]
     fa0: f9405300     	ldr	x0, [x24, #0xa0]
     fa4: 94000000     	bl	0xfa4 <rdbg_write+0x78>
		0000000000000fa4:  R_AARCH64_CALL26	mutex_lock
     fa8: f9404709     	ldr	x9, [x24, #0x88]
     fac: b9400128     	ldr	w8, [x9]
     fb0: 6b1c011f     	cmp	w8, w28
     fb4: 54000141     	b.ne	0xfdc <rdbg_write+0xb0>
     fb8: f9403f08     	ldr	x8, [x24, #0x78]
     fbc: 39400508     	ldrb	w8, [x8, #0x1]
     fc0: 7100051f     	cmp	w8, #0x1
     fc4: 540000c1     	b.ne	0xfdc <rdbg_write+0xb0>
     fc8: f9404308     	ldr	x8, [x24, #0x80]
     fcc: b940052b     	ldr	w11, [x9, #0x4]
     fd0: b940050a     	ldr	w10, [x8, #0x4]
     fd4: 6b0b015f     	cmp	w10, w11
     fd8: 54000260     	b.eq	0x1024 <rdbg_write+0xf8>
     fdc: b940b308     	ldr	w8, [x24, #0xb0]
     fe0: 7100077f     	cmp	w27, #0x1
     fe4: 540004e1     	b.ne	0x1080 <rdbg_write+0x154>
     fe8: f9405f09     	ldr	x9, [x24, #0xb8]
     fec: 2a0803f5     	mov	w21, w8
     ff0: 3875492a     	ldrb	w10, [x9, w21, uxtw]
     ff4: 3400082a     	cbz	w10, 0x10f8 <rdbg_write+0x1cc>
     ff8: b940b70a     	ldr	w10, [x24, #0xb4]
     ffc: 110006ab     	add	w11, w21, #0x1
    1000: 1aca096c     	udiv	w12, w11, w10
    1004: 1b0aad95     	msub	w21, w12, w10, w11
    1008: 6b15011f     	cmp	w8, w21
    100c: b900b315     	str	w21, [x24, #0xb0]
    1010: 54ffff01     	b.ne	0xff0 <rdbg_write+0xc4>
    1014: 2a1f03f5     	mov	w21, wzr
    1018: 1400009d     	b	0x128c <rdbg_write+0x360>
    101c: d5033d9f     	dsb	ld
    1020: a9482708     	ldp	x8, x9, [x24, #0x80]
    1024: b840cd0a     	ldr	w10, [x8, #0xc]!
    1028: b9400d2b     	ldr	w11, [x9, #0xc]
    102c: 6b0b015f     	cmp	w10, w11
    1030: 54fffd60     	b.eq	0xfdc <rdbg_write+0xb0>
    1034: 8b2a4929     	add	x9, x9, w10, uxtw #2
    1038: b9409b0b     	ldr	w11, [x24, #0x98]
    103c: 78410d2c     	ldrh	w12, [x9, #0x10]!
    1040: 6b0c017f     	cmp	w11, w12
    1044: 54fffe89     	b.ls	0x1014 <rdbg_write+0xe8>
    1048: 1100054a     	add	w10, w10, #0x1
    104c: 1acb094c     	udiv	w12, w10, w11
    1050: 1b0ba98a     	msub	w10, w12, w11, w10
    1054: b900010a     	str	w10, [x8]
    1058: 79400128     	ldrh	w8, [x9]
    105c: f9405f09     	ldr	x9, [x24, #0xb8]
    1060: 38686929     	ldrb	w9, [x9, x8]
    1064: 34fffdc9     	cbz	w9, 0x101c <rdbg_write+0xf0>
    1068: f9405f0a     	ldr	x10, [x24, #0xb8]
    106c: 71000529     	subs	w9, w9, #0x1
    1070: 3828695f     	strb	wzr, [x10, x8]
    1074: 91000508     	add	x8, x8, #0x1
    1078: 54ffff81     	b.ne	0x1068 <rdbg_write+0x13c>
    107c: 17ffffe8     	b	0x101c <rdbg_write+0xf0>
    1080: b940b709     	ldr	w9, [x24, #0xb4]
    1084: f9405f0b     	ldr	x11, [x24, #0xb8]
    1088: 2a1f03ea     	mov	w10, wzr
    108c: 2a0803ec     	mov	w12, w8
    1090: 2a0903ed     	mov	w13, w9
    1094: 1400000c     	b	0x10c4 <rdbg_write+0x198>
    1098: 0b0e0108     	add	w8, w8, w14
    109c: 2a1f03ea     	mov	w10, wzr
    10a0: 2a0903f5     	mov	w21, w9
    10a4: 51000508     	sub	w8, w8, #0x1
    10a8: 11000508     	add	w8, w8, #0x1
    10ac: 1ac9090d     	udiv	w13, w8, w9
    10b0: 1b09a1a8     	msub	w8, w13, w9, w8
    10b4: 2a1503ed     	mov	w13, w21
    10b8: 6b08019f     	cmp	w12, w8
    10bc: b900b308     	str	w8, [x24, #0xb0]
    10c0: 54fffaa0     	b.eq	0x1014 <rdbg_write+0xe8>
    10c4: 3868496e     	ldrb	w14, [x11, w8, uxtw]
    10c8: 35fffe8e     	cbnz	w14, 0x1098 <rdbg_write+0x16c>
    10cc: 6b0801bf     	cmp	w13, w8
    10d0: 1a8a874a     	csinc	w10, w26, w10, hi
    10d4: 1a8c810c     	csel	w12, w8, w12, hi
    10d8: 1a8831b5     	csel	w21, w13, w8, lo
    10dc: 6b1b015f     	cmp	w10, w27
    10e0: 54fffe41     	b.ne	0x10a8 <rdbg_write+0x17c>
    10e4: b85ec3a9     	ldur	w9, [x29, #-0x14]
    10e8: 7102013f     	cmp	w9, #0x80
    10ec: 54000122     	b.hs	0x1110 <rdbg_write+0x1e4>
    10f0: 2a1f03e9     	mov	w9, wzr
    10f4: 14000012     	b	0x113c <rdbg_write+0x210>
    10f8: 3835493a     	strb	w26, [x9, w21, uxtw]
    10fc: 29562708     	ldp	w8, w9, [x24, #0xb0]
    1100: 11000508     	add	w8, w8, #0x1
    1104: 1ac9090a     	udiv	w10, w8, w9
    1108: 1b09a148     	msub	w8, w10, w9, w8
    110c: 1400000e     	b	0x1144 <rdbg_write+0x218>
    1110: 6b0801bf     	cmp	w13, w8
    1114: aa1b03e9     	mov	x9, x27
    1118: 1a8831a8     	csel	w8, w13, w8, lo
    111c: f9405f0a     	ldr	x10, [x24, #0xb8]
    1120: 38284949     	strb	w9, [x10, w8, uxtw]
    1124: f1000529     	subs	x9, x9, #0x1
    1128: 11000508     	add	w8, w8, #0x1
    112c: 54ffff81     	b.ne	0x111c <rdbg_write+0x1f0>
    1130: f9405f09     	ldr	x9, [x24, #0xb8]
    1134: b940b308     	ldr	w8, [x24, #0xb0]
    1138: 38686929     	ldrb	w9, [x9, x8]
    113c: 0b090108     	add	w8, w8, w9
    1140: 51000508     	sub	w8, w8, #0x1
    1144: f9404b09     	ldr	x9, [x24, #0x90]
    1148: 531962aa     	lsl	w10, w21, #7
    114c: b900b308     	str	w8, [x24, #0xb0]
    1150: f85f83a8     	ldur	x8, [x29, #-0x8]
    1154: 8b0a0136     	add	x22, x9, x10
    1158: 37f80a88     	tbnz	w8, #0x1f, 0x12a8 <rdbg_write+0x37c>
    115c: aa1603e0     	mov	x0, x22
    1160: aa1303e1     	mov	x1, x19
    1164: 2a1f03e2     	mov	w2, wzr
    1168: 94000000     	bl	0x1168 <rdbg_write+0x23c>
		0000000000001168:  R_AARCH64_CALL26	__check_object_size
    116c: 39411a88     	ldrb	w8, [x20, #0x46]
    1170: 37280088     	tbnz	w8, #0x5, 0x1180 <rdbg_write+0x254>
    1174: f9400289     	ldr	x9, [x20]
    1178: f85f03a8     	ldur	x8, [x29, #-0x10]
    117c: 36d00049     	tbz	w9, #0x1a, 0x1184 <rdbg_write+0x258>
    1180: f94007e8     	ldr	x8, [sp, #0x8]
    1184: f9400be9     	ldr	x9, [sp, #0x10]
    1188: aa1303f7     	mov	x23, x19
    118c: eb08013f     	cmp	x9, x8
    1190: 54000222     	b.hs	0x11d4 <rdbg_write+0x2a8>
    1194: cb170268     	sub	x8, x19, x23
    1198: 2a1f03e1     	mov	w1, wzr
    119c: aa1703e2     	mov	x2, x23
    11a0: 8b0802c0     	add	x0, x22, x8
    11a4: 94000000     	bl	0x11a4 <rdbg_write+0x278>
		00000000000011a4:  R_AARCH64_CALL26	memset
    11a8: 340004f7     	cbz	w23, 0x1244 <rdbg_write+0x318>
    11ac: b4fff356     	cbz	x22, 0x1014 <rdbg_write+0xe8>
    11b0: f9405f08     	ldr	x8, [x24, #0xb8]
    11b4: 38754908     	ldrb	w8, [x8, w21, uxtw]
    11b8: 34fff2e8     	cbz	w8, 0x1014 <rdbg_write+0xe8>
    11bc: f9405f09     	ldr	x9, [x24, #0xb8]
    11c0: 71000508     	subs	w8, w8, #0x1
    11c4: 3835493f     	strb	wzr, [x9, w21, uxtw]
    11c8: 110006b5     	add	w21, w21, #0x1
    11cc: 54ffff81     	b.ne	0x11bc <rdbg_write+0x290>
    11d0: 17ffff91     	b	0x1014 <rdbg_write+0xe8>
    11d4: d503201f     	nop
    11d8: d53b4228     	mrs	x8, DAIF
    11dc: d50343df     	msr	DAIFSet, #0x3
    11e0: f9400689     	ldr	x9, [x20, #0x8]
    11e4: d538202a     	mrs	x10, TTBR1_EL1
    11e8: aa0903eb     	mov	x11, x9
    11ec: b340bd4b     	bfxil	x11, x10, #0, #48
    11f0: d518202b     	msr	TTBR1_EL1, x11
    11f4: d5182009     	msr	TTBR0_EL1, x9
    11f8: d5033fdf     	isb
    11fc: d51b4228     	msr	DAIF, x8
    1200: f85f03a8     	ldur	x8, [x29, #-0x10]
    1204: 9248f901     	and	x1, x8, #0xff7fffffffffffff
    1208: aa1603e0     	mov	x0, x22
    120c: aa1303e2     	mov	x2, x19
    1210: 94000000     	bl	0x1210 <rdbg_write+0x2e4>
		0000000000001210:  R_AARCH64_CALL26	__arch_copy_from_user
    1214: aa0003f7     	mov	x23, x0
    1218: d503201f     	nop
    121c: d53b4228     	mrs	x8, DAIF
    1220: d50343df     	msr	DAIFSet, #0x3
    1224: d5382029     	mrs	x9, TTBR1_EL1
    1228: 9240bd29     	and	x9, x9, #0xffffffffffff
    122c: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
    1230: d518200a     	msr	TTBR0_EL1, x10
    1234: d5182029     	msr	TTBR1_EL1, x9
    1238: d5033fdf     	isb
    123c: d51b4228     	msr	DAIF, x8
    1240: b5fffab7     	cbnz	x23, 0x1194 <rdbg_write+0x268>
    1244: f9404308     	ldr	x8, [x24, #0x80]
    1248: b85ec3aa     	ldur	w10, [x29, #-0x14]
    124c: b9400909     	ldr	w9, [x8, #0x8]
    1250: 53077d4a     	lsr	w10, w10, #7
    1254: 8b090908     	add	x8, x8, x9, lsl #2
    1258: 79002115     	strh	w21, [x8, #0x10]
    125c: 52800035     	mov	w21, #0x1               // =1
    1260: f9404308     	ldr	x8, [x24, #0x80]
    1264: b9400909     	ldr	w9, [x8, #0x8]
    1268: 8b090908     	add	x8, x8, x9, lsl #2
    126c: 7900250a     	strh	w10, [x8, #0x12]
    1270: f9404308     	ldr	x8, [x24, #0x80]
    1274: b9409b0a     	ldr	w10, [x24, #0x98]
    1278: b9400909     	ldr	w9, [x8, #0x8]
    127c: 11000529     	add	w9, w9, #0x1
    1280: 1aca092b     	udiv	w11, w9, w10
    1284: 1b0aa569     	msub	w9, w11, w10, w9
    1288: b9000909     	str	w9, [x8, #0x8]
    128c: f9405300     	ldr	x0, [x24, #0xa0]
    1290: 94000000     	bl	0x1290 <rdbg_write+0x364>
		0000000000001290:  R_AARCH64_CALL26	mutex_unlock
    1294: 37000115     	tbnz	w21, #0x0, 0x12b4 <rdbg_write+0x388>
    1298: 7100533f     	cmp	w25, #0x14
    129c: 11000739     	add	w25, w25, #0x1
    12a0: 54ffe803     	b.lo	0xfa0 <rdbg_write+0x74>
    12a4: 14000004     	b	0x12b4 <rdbg_write+0x388>
    12a8: d4210000     	brk	#0x800
    12ac: b5fff836     	cbnz	x22, 0x11b0 <rdbg_write+0x284>
    12b0: 17ffff59     	b	0x1014 <rdbg_write+0xe8>
    12b4: 36000575     	tbz	w21, #0x0, 0x1360 <rdbg_write+0x434>
    12b8: 90000000     	adrp	x0, 0x1000 <rdbg_write+0xd4>
		00000000000012b8:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_smem_state_lock
    12bc: 91000000     	add	x0, x0, #0x0
		00000000000012bc:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_smem_state_lock
    12c0: 94000000     	bl	0x12c0 <rdbg_write+0x394>
		00000000000012c0:  R_AARCH64_CALL26	mutex_lock
    12c4: f9402b00     	ldr	x0, [x24, #0x50]
    12c8: b4000280     	cbz	x0, 0x1318 <rdbg_write+0x3ec>
    12cc: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
    12d0: 54000248     	b.hi	0x1318 <rdbg_write+0x3ec>
    12d4: b9405f15     	ldr	w21, [x24, #0x5c]
    12d8: 710082bf     	cmp	w21, #0x20
    12dc: 540004c2     	b.hs	0x1374 <rdbg_write+0x448>
    12e0: b9404b08     	ldr	w8, [x24, #0x48]
    12e4: 91052316     	add	x22, x24, #0x148
    12e8: 52800029     	mov	w9, #0x1                // =1
    12ec: b8757aca     	ldr	w10, [x22, x21, lsl #2]
    12f0: 0b150108     	add	w8, w8, w21
    12f4: 9ac82121     	lsl	x1, x9, x8
    12f8: 4a010154     	eor	w20, w10, w1
    12fc: 2a1403e2     	mov	w2, w20
    1300: 94000000     	bl	0x1300 <rdbg_write+0x3d4>
		0000000000001300:  R_AARCH64_CALL26	qcom_smem_state_update_bits
    1304: 350000a0     	cbnz	w0, 0x1318 <rdbg_write+0x3ec>
    1308: 110006a8     	add	w8, w21, #0x1
    130c: b8357ad4     	str	w20, [x22, x21, lsl #2]
    1310: 12001108     	and	w8, w8, #0x1f
    1314: b9005f08     	str	w8, [x24, #0x5c]
    1318: 90000000     	adrp	x0, 0x1000 <rdbg_write+0xd4>
		0000000000001318:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_smem_state_lock
    131c: 91000000     	add	x0, x0, #0x0
		000000000000131c:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_smem_state_lock
    1320: 94000000     	bl	0x1320 <rdbg_write+0x3f4>
		0000000000001320:  R_AARCH64_CALL26	mutex_unlock
    1324: aa1303e0     	mov	x0, x19
    1328: a9484ff4     	ldp	x20, x19, [sp, #0x80]
    132c: a94757f6     	ldp	x22, x21, [sp, #0x70]
    1330: a9465ff8     	ldp	x24, x23, [sp, #0x60]
    1334: a94567fa     	ldp	x26, x25, [sp, #0x50]
    1338: a9446ffc     	ldp	x28, x27, [sp, #0x40]
    133c: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    1340: 910243ff     	add	sp, sp, #0x90
    1344: d50323bf     	autiasp
    1348: d65f03c0     	ret
    134c: 90000000     	adrp	x0, 0x1000 <rdbg_write+0xd4>
		000000000000134c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x249
    1350: 91000000     	add	x0, x0, #0x0
		0000000000001350:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x249
    1354: 94000000     	bl	0x1354 <rdbg_write+0x428>
		0000000000001354:  R_AARCH64_CALL26	_printk
    1358: 928002b3     	mov	x19, #-0x16             // =-22
    135c: 17fffff2     	b	0x1324 <rdbg_write+0x3f8>
    1360: 90000000     	adrp	x0, 0x1000 <rdbg_write+0xd4>
		0000000000001360:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x526
    1364: 91000000     	add	x0, x0, #0x0
		0000000000001364:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x526
    1368: 94000000     	bl	0x1368 <rdbg_write+0x43c>
		0000000000001368:  R_AARCH64_CALL26	_printk
    136c: 928008b3     	mov	x19, #-0x46             // =-70
    1370: 17ffffed     	b	0x1324 <rdbg_write+0x3f8>
    1374: 90000000     	adrp	x0, 0x1000 <rdbg_write+0xd4>
		0000000000001374:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_smem_state_lock
    1378: 91000000     	add	x0, x0, #0x0
		0000000000001378:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_smem_state_lock
    137c: 94000000     	bl	0x137c <rdbg_write+0x450>
		000000000000137c:  R_AARCH64_CALL26	mutex_unlock
    1380: d42aa240     	brk	#0x5512
