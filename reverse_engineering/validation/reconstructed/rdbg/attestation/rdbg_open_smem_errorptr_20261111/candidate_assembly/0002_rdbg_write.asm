
/input/rdbg.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000f00 <rdbg_write>:
     f00: d503233f     	paciasp
     f04: d10243ff     	sub	sp, sp, #0x90
     f08: a9037bfd     	stp	x29, x30, [sp, #0x30]
     f0c: a9046ffc     	stp	x28, x27, [sp, #0x40]
     f10: a90567fa     	stp	x26, x25, [sp, #0x50]
     f14: a9065ff8     	stp	x24, x23, [sp, #0x60]
     f18: a90757f6     	stp	x22, x21, [sp, #0x70]
     f1c: a9084ff4     	stp	x20, x19, [sp, #0x80]
     f20: 9100c3fd     	add	x29, sp, #0x30
     f24: f9401008     	ldr	x8, [x0, #0x20]
     f28: a93f0ba1     	stp	x1, x2, [x29, #-0x10]
     f2c: b4001f88     	cbz	x8, 0x131c <rdbg_write+0x41c>
     f30: f9400118     	ldr	x24, [x8]
     f34: b4001f58     	cbz	x24, 0x131c <rdbg_write+0x41c>
     f38: a97f27aa     	ldp	x10, x9, [x29, #-0x10]
     f3c: 529fe05c     	mov	w28, #0xff02            // =65282
     f40: 2a1f03f9     	mov	w25, wzr
     f44: 72bfe01c     	movk	w28, #0xff00, lsl #16
     f48: 5280003a     	mov	w26, #0x1               // =1
     f4c: d5384114     	mrs	x20, SP_EL0
     f50: d378dd48     	lsl	x8, x10, #8
     f54: 93407d33     	sxtw	x19, w9
     f58: 1101fd2b     	add	w11, w9, #0x7f
     f5c: d2c01009     	mov	x9, #0x8000000000       // =549755813888
     f60: b81ec3ab     	stur	w11, [x29, #-0x14]
     f64: 13077d7b     	asr	w27, w11, #7
     f68: 8a88214b     	and	x11, x10, x8, asr #8
     f6c: cb130128     	sub	x8, x9, x19
     f70: a900a3eb     	stp	x11, x8, [sp, #0x8]
     f74: f9405300     	ldr	x0, [x24, #0xa0]
     f78: 94000000     	bl	0xf78 <rdbg_write+0x78>
		0000000000000f78:  R_AARCH64_CALL26	mutex_lock
     f7c: f9404709     	ldr	x9, [x24, #0x88]
     f80: b9400128     	ldr	w8, [x9]
     f84: 6b1c011f     	cmp	w8, w28
     f88: 54000141     	b.ne	0xfb0 <rdbg_write+0xb0>
     f8c: f9403f08     	ldr	x8, [x24, #0x78]
     f90: 39400508     	ldrb	w8, [x8, #0x1]
     f94: 7100051f     	cmp	w8, #0x1
     f98: 540000c1     	b.ne	0xfb0 <rdbg_write+0xb0>
     f9c: f9404308     	ldr	x8, [x24, #0x80]
     fa0: b940052b     	ldr	w11, [x9, #0x4]
     fa4: b940050a     	ldr	w10, [x8, #0x4]
     fa8: 6b0b015f     	cmp	w10, w11
     fac: 54000260     	b.eq	0xff8 <rdbg_write+0xf8>
     fb0: b940b308     	ldr	w8, [x24, #0xb0]
     fb4: 7100077f     	cmp	w27, #0x1
     fb8: 540004e1     	b.ne	0x1054 <rdbg_write+0x154>
     fbc: f9405f09     	ldr	x9, [x24, #0xb8]
     fc0: 2a0803f5     	mov	w21, w8
     fc4: 3875492a     	ldrb	w10, [x9, w21, uxtw]
     fc8: 3400082a     	cbz	w10, 0x10cc <rdbg_write+0x1cc>
     fcc: b940b70a     	ldr	w10, [x24, #0xb4]
     fd0: 110006ab     	add	w11, w21, #0x1
     fd4: 1aca096c     	udiv	w12, w11, w10
     fd8: 1b0aad95     	msub	w21, w12, w10, w11
     fdc: 6b15011f     	cmp	w8, w21
     fe0: b900b315     	str	w21, [x24, #0xb0]
     fe4: 54ffff01     	b.ne	0xfc4 <rdbg_write+0xc4>
     fe8: 2a1f03f5     	mov	w21, wzr
     fec: 1400009d     	b	0x1260 <rdbg_write+0x360>
     ff0: d5033d9f     	dsb	ld
     ff4: a9482708     	ldp	x8, x9, [x24, #0x80]
     ff8: b840cd0a     	ldr	w10, [x8, #0xc]!
     ffc: b9400d2b     	ldr	w11, [x9, #0xc]
    1000: 6b0b015f     	cmp	w10, w11
    1004: 54fffd60     	b.eq	0xfb0 <rdbg_write+0xb0>
    1008: 8b2a4929     	add	x9, x9, w10, uxtw #2
    100c: b9409b0b     	ldr	w11, [x24, #0x98]
    1010: 78410d2c     	ldrh	w12, [x9, #0x10]!
    1014: 6b0c017f     	cmp	w11, w12
    1018: 54fffe89     	b.ls	0xfe8 <rdbg_write+0xe8>
    101c: 1100054a     	add	w10, w10, #0x1
    1020: 1acb094c     	udiv	w12, w10, w11
    1024: 1b0ba98a     	msub	w10, w12, w11, w10
    1028: b900010a     	str	w10, [x8]
    102c: 79400128     	ldrh	w8, [x9]
    1030: f9405f09     	ldr	x9, [x24, #0xb8]
    1034: 38686929     	ldrb	w9, [x9, x8]
    1038: 34fffdc9     	cbz	w9, 0xff0 <rdbg_write+0xf0>
    103c: f9405f0a     	ldr	x10, [x24, #0xb8]
    1040: 71000529     	subs	w9, w9, #0x1
    1044: 3828695f     	strb	wzr, [x10, x8]
    1048: 91000508     	add	x8, x8, #0x1
    104c: 54ffff81     	b.ne	0x103c <rdbg_write+0x13c>
    1050: 17ffffe8     	b	0xff0 <rdbg_write+0xf0>
    1054: b940b709     	ldr	w9, [x24, #0xb4]
    1058: f9405f0b     	ldr	x11, [x24, #0xb8]
    105c: 2a1f03ea     	mov	w10, wzr
    1060: 2a0803ec     	mov	w12, w8
    1064: 2a0903ed     	mov	w13, w9
    1068: 1400000c     	b	0x1098 <rdbg_write+0x198>
    106c: 0b0e0108     	add	w8, w8, w14
    1070: 2a1f03ea     	mov	w10, wzr
    1074: 2a0903f5     	mov	w21, w9
    1078: 51000508     	sub	w8, w8, #0x1
    107c: 11000508     	add	w8, w8, #0x1
    1080: 1ac9090d     	udiv	w13, w8, w9
    1084: 1b09a1a8     	msub	w8, w13, w9, w8
    1088: 2a1503ed     	mov	w13, w21
    108c: 6b08019f     	cmp	w12, w8
    1090: b900b308     	str	w8, [x24, #0xb0]
    1094: 54fffaa0     	b.eq	0xfe8 <rdbg_write+0xe8>
    1098: 3868496e     	ldrb	w14, [x11, w8, uxtw]
    109c: 35fffe8e     	cbnz	w14, 0x106c <rdbg_write+0x16c>
    10a0: 6b0801bf     	cmp	w13, w8
    10a4: 1a8a874a     	csinc	w10, w26, w10, hi
    10a8: 1a8c810c     	csel	w12, w8, w12, hi
    10ac: 1a8831b5     	csel	w21, w13, w8, lo
    10b0: 6b1b015f     	cmp	w10, w27
    10b4: 54fffe41     	b.ne	0x107c <rdbg_write+0x17c>
    10b8: b85ec3a9     	ldur	w9, [x29, #-0x14]
    10bc: 7102013f     	cmp	w9, #0x80
    10c0: 54000122     	b.hs	0x10e4 <rdbg_write+0x1e4>
    10c4: 2a1f03e9     	mov	w9, wzr
    10c8: 14000012     	b	0x1110 <rdbg_write+0x210>
    10cc: 3835493a     	strb	w26, [x9, w21, uxtw]
    10d0: 29562708     	ldp	w8, w9, [x24, #0xb0]
    10d4: 11000508     	add	w8, w8, #0x1
    10d8: 1ac9090a     	udiv	w10, w8, w9
    10dc: 1b09a148     	msub	w8, w10, w9, w8
    10e0: 1400000e     	b	0x1118 <rdbg_write+0x218>
    10e4: 6b0801bf     	cmp	w13, w8
    10e8: aa1b03e9     	mov	x9, x27
    10ec: 1a8831a8     	csel	w8, w13, w8, lo
    10f0: f9405f0a     	ldr	x10, [x24, #0xb8]
    10f4: 38284949     	strb	w9, [x10, w8, uxtw]
    10f8: f1000529     	subs	x9, x9, #0x1
    10fc: 11000508     	add	w8, w8, #0x1
    1100: 54ffff81     	b.ne	0x10f0 <rdbg_write+0x1f0>
    1104: f9405f09     	ldr	x9, [x24, #0xb8]
    1108: b940b308     	ldr	w8, [x24, #0xb0]
    110c: 38686929     	ldrb	w9, [x9, x8]
    1110: 0b090108     	add	w8, w8, w9
    1114: 51000508     	sub	w8, w8, #0x1
    1118: f9404b09     	ldr	x9, [x24, #0x90]
    111c: 531962aa     	lsl	w10, w21, #7
    1120: b900b308     	str	w8, [x24, #0xb0]
    1124: f85f83a8     	ldur	x8, [x29, #-0x8]
    1128: 8b0a0136     	add	x22, x9, x10
    112c: 37f80a88     	tbnz	w8, #0x1f, 0x127c <rdbg_write+0x37c>
    1130: aa1603e0     	mov	x0, x22
    1134: aa1303e1     	mov	x1, x19
    1138: 2a1f03e2     	mov	w2, wzr
    113c: 94000000     	bl	0x113c <rdbg_write+0x23c>
		000000000000113c:  R_AARCH64_CALL26	__check_object_size
    1140: 39411a88     	ldrb	w8, [x20, #0x46]
    1144: 37280088     	tbnz	w8, #0x5, 0x1154 <rdbg_write+0x254>
    1148: f9400289     	ldr	x9, [x20]
    114c: f85f03a8     	ldur	x8, [x29, #-0x10]
    1150: 36d00049     	tbz	w9, #0x1a, 0x1158 <rdbg_write+0x258>
    1154: f94007e8     	ldr	x8, [sp, #0x8]
    1158: f9400be9     	ldr	x9, [sp, #0x10]
    115c: aa1303f7     	mov	x23, x19
    1160: eb08013f     	cmp	x9, x8
    1164: 54000222     	b.hs	0x11a8 <rdbg_write+0x2a8>
    1168: cb170268     	sub	x8, x19, x23
    116c: 2a1f03e1     	mov	w1, wzr
    1170: aa1703e2     	mov	x2, x23
    1174: 8b0802c0     	add	x0, x22, x8
    1178: 94000000     	bl	0x1178 <rdbg_write+0x278>
		0000000000001178:  R_AARCH64_CALL26	memset
    117c: 340004f7     	cbz	w23, 0x1218 <rdbg_write+0x318>
    1180: b4fff356     	cbz	x22, 0xfe8 <rdbg_write+0xe8>
    1184: f9405f08     	ldr	x8, [x24, #0xb8]
    1188: 38754908     	ldrb	w8, [x8, w21, uxtw]
    118c: 34fff2e8     	cbz	w8, 0xfe8 <rdbg_write+0xe8>
    1190: f9405f09     	ldr	x9, [x24, #0xb8]
    1194: 71000508     	subs	w8, w8, #0x1
    1198: 3835493f     	strb	wzr, [x9, w21, uxtw]
    119c: 110006b5     	add	w21, w21, #0x1
    11a0: 54ffff81     	b.ne	0x1190 <rdbg_write+0x290>
    11a4: 17ffff91     	b	0xfe8 <rdbg_write+0xe8>
    11a8: d503201f     	nop
    11ac: d53b4228     	mrs	x8, DAIF
    11b0: d50343df     	msr	DAIFSet, #0x3
    11b4: f9400689     	ldr	x9, [x20, #0x8]
    11b8: d538202a     	mrs	x10, TTBR1_EL1
    11bc: aa0903eb     	mov	x11, x9
    11c0: b340bd4b     	bfxil	x11, x10, #0, #48
    11c4: d518202b     	msr	TTBR1_EL1, x11
    11c8: d5182009     	msr	TTBR0_EL1, x9
    11cc: d5033fdf     	isb
    11d0: d51b4228     	msr	DAIF, x8
    11d4: f85f03a8     	ldur	x8, [x29, #-0x10]
    11d8: 9248f901     	and	x1, x8, #0xff7fffffffffffff
    11dc: aa1603e0     	mov	x0, x22
    11e0: aa1303e2     	mov	x2, x19
    11e4: 94000000     	bl	0x11e4 <rdbg_write+0x2e4>
		00000000000011e4:  R_AARCH64_CALL26	__arch_copy_from_user
    11e8: aa0003f7     	mov	x23, x0
    11ec: d503201f     	nop
    11f0: d53b4228     	mrs	x8, DAIF
    11f4: d50343df     	msr	DAIFSet, #0x3
    11f8: d5382029     	mrs	x9, TTBR1_EL1
    11fc: 9240bd29     	and	x9, x9, #0xffffffffffff
    1200: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
    1204: d518200a     	msr	TTBR0_EL1, x10
    1208: d5182029     	msr	TTBR1_EL1, x9
    120c: d5033fdf     	isb
    1210: d51b4228     	msr	DAIF, x8
    1214: b5fffab7     	cbnz	x23, 0x1168 <rdbg_write+0x268>
    1218: f9404308     	ldr	x8, [x24, #0x80]
    121c: b85ec3aa     	ldur	w10, [x29, #-0x14]
    1220: b9400909     	ldr	w9, [x8, #0x8]
    1224: 53077d4a     	lsr	w10, w10, #7
    1228: 8b090908     	add	x8, x8, x9, lsl #2
    122c: 79002115     	strh	w21, [x8, #0x10]
    1230: 52800035     	mov	w21, #0x1               // =1
    1234: f9404308     	ldr	x8, [x24, #0x80]
    1238: b9400909     	ldr	w9, [x8, #0x8]
    123c: 8b090908     	add	x8, x8, x9, lsl #2
    1240: 7900250a     	strh	w10, [x8, #0x12]
    1244: f9404308     	ldr	x8, [x24, #0x80]
    1248: b9409b0a     	ldr	w10, [x24, #0x98]
    124c: b9400909     	ldr	w9, [x8, #0x8]
    1250: 11000529     	add	w9, w9, #0x1
    1254: 1aca092b     	udiv	w11, w9, w10
    1258: 1b0aa569     	msub	w9, w11, w10, w9
    125c: b9000909     	str	w9, [x8, #0x8]
    1260: f9405300     	ldr	x0, [x24, #0xa0]
    1264: 94000000     	bl	0x1264 <rdbg_write+0x364>
		0000000000001264:  R_AARCH64_CALL26	mutex_unlock
    1268: 37000115     	tbnz	w21, #0x0, 0x1288 <rdbg_write+0x388>
    126c: 7100533f     	cmp	w25, #0x14
    1270: 11000739     	add	w25, w25, #0x1
    1274: 54ffe803     	b.lo	0xf74 <rdbg_write+0x74>
    1278: 14000004     	b	0x1288 <rdbg_write+0x388>
    127c: d4210000     	brk	#0x800
    1280: b5fff836     	cbnz	x22, 0x1184 <rdbg_write+0x284>
    1284: 17ffff59     	b	0xfe8 <rdbg_write+0xe8>
    1288: 36000555     	tbz	w21, #0x0, 0x1330 <rdbg_write+0x430>
    128c: 90000000     	adrp	x0, 0x1000 <rdbg_write+0x100>
		000000000000128c:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_smem_state_lock
    1290: 91000000     	add	x0, x0, #0x0
		0000000000001290:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_smem_state_lock
    1294: 94000000     	bl	0x1294 <rdbg_write+0x394>
		0000000000001294:  R_AARCH64_CALL26	mutex_lock
    1298: f9402b00     	ldr	x0, [x24, #0x50]
    129c: b4000260     	cbz	x0, 0x12e8 <rdbg_write+0x3e8>
    12a0: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
    12a4: 54000228     	b.hi	0x12e8 <rdbg_write+0x3e8>
    12a8: b9405f15     	ldr	w21, [x24, #0x5c]
    12ac: 710082bf     	cmp	w21, #0x20
    12b0: 540004a2     	b.hs	0x1344 <rdbg_write+0x444>
    12b4: b9404b08     	ldr	w8, [x24, #0x48]
    12b8: 91052316     	add	x22, x24, #0x148
    12bc: 52800029     	mov	w9, #0x1                // =1
    12c0: b8757aca     	ldr	w10, [x22, x21, lsl #2]
    12c4: 0b150108     	add	w8, w8, w21
    12c8: 9ac82121     	lsl	x1, x9, x8
    12cc: 4a010154     	eor	w20, w10, w1
    12d0: 2a1403e2     	mov	w2, w20
    12d4: 94000000     	bl	0x12d4 <rdbg_write+0x3d4>
		00000000000012d4:  R_AARCH64_CALL26	qcom_smem_state_update_bits
    12d8: 110006a8     	add	w8, w21, #0x1
    12dc: b8357ad4     	str	w20, [x22, x21, lsl #2]
    12e0: 12001108     	and	w8, w8, #0x1f
    12e4: b9005f08     	str	w8, [x24, #0x5c]
    12e8: 90000000     	adrp	x0, 0x1000 <rdbg_write+0x100>
		00000000000012e8:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_smem_state_lock
    12ec: 91000000     	add	x0, x0, #0x0
		00000000000012ec:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_smem_state_lock
    12f0: 94000000     	bl	0x12f0 <rdbg_write+0x3f0>
		00000000000012f0:  R_AARCH64_CALL26	mutex_unlock
    12f4: aa1303e0     	mov	x0, x19
    12f8: a9484ff4     	ldp	x20, x19, [sp, #0x80]
    12fc: a94757f6     	ldp	x22, x21, [sp, #0x70]
    1300: a9465ff8     	ldp	x24, x23, [sp, #0x60]
    1304: a94567fa     	ldp	x26, x25, [sp, #0x50]
    1308: a9446ffc     	ldp	x28, x27, [sp, #0x40]
    130c: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    1310: 910243ff     	add	sp, sp, #0x90
    1314: d50323bf     	autiasp
    1318: d65f03c0     	ret
    131c: 90000000     	adrp	x0, 0x1000 <rdbg_write+0x100>
		000000000000131c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x249
    1320: 91000000     	add	x0, x0, #0x0
		0000000000001320:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x249
    1324: 94000000     	bl	0x1324 <rdbg_write+0x424>
		0000000000001324:  R_AARCH64_CALL26	_printk
    1328: 928002b3     	mov	x19, #-0x16             // =-22
    132c: 17fffff2     	b	0x12f4 <rdbg_write+0x3f4>
    1330: 90000000     	adrp	x0, 0x1000 <rdbg_write+0x100>
		0000000000001330:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x526
    1334: 91000000     	add	x0, x0, #0x0
		0000000000001334:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x526
    1338: 94000000     	bl	0x1338 <rdbg_write+0x438>
		0000000000001338:  R_AARCH64_CALL26	_printk
    133c: 928008b3     	mov	x19, #-0x46             // =-70
    1340: 17ffffed     	b	0x12f4 <rdbg_write+0x3f4>
    1344: 90000000     	adrp	x0, 0x1000 <rdbg_write+0x100>
		0000000000001344:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_smem_state_lock
    1348: 91000000     	add	x0, x0, #0x0
		0000000000001348:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_smem_state_lock
    134c: 94000000     	bl	0x134c <rdbg_write+0x44c>
		000000000000134c:  R_AARCH64_CALL26	mutex_unlock
    1350: d42aa240     	brk	#0x5512
