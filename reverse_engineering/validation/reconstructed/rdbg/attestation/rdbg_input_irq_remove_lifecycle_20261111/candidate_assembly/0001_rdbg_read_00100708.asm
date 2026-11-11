
/input/rdbg.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000fc0 <rdbg_read>:
     fc0: d503233f     	paciasp
     fc4: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
     fc8: a9015ff8     	stp	x24, x23, [sp, #0x10]
     fcc: a90257f6     	stp	x22, x21, [sp, #0x20]
     fd0: a9034ff4     	stp	x20, x19, [sp, #0x30]
     fd4: 910003fd     	mov	x29, sp
     fd8: f9401016     	ldr	x22, [x0, #0x20]
     fdc: b40019b6     	cbz	x22, 0x1310 <rdbg_read+0x350>
     fe0: f94002d7     	ldr	x23, [x22]
     fe4: b4001977     	cbz	x23, 0x1310 <rdbg_read+0x350>
     fe8: b9403ac8     	ldr	w8, [x22, #0x38]
     fec: 37f81828     	tbnz	w8, #0x1f, 0x12f0 <rdbg_read+0x330>
     ff0: 910022e0     	add	x0, x23, #0x8
     ff4: aa0203f4     	mov	x20, x2
     ff8: aa0103f3     	mov	x19, x1
     ffc: 94000000     	bl	0xffc <rdbg_read+0x3c>
		0000000000000ffc:  R_AARCH64_CALL26	wait_for_completion_interruptible
    1000: 35001a00     	cbnz	w0, 0x1340 <rdbg_read+0x380>
    1004: b9403ac8     	ldr	w8, [x22, #0x38]
    1008: 37f81748     	tbnz	w8, #0x1f, 0x12f0 <rdbg_read+0x330>
    100c: 529fe038     	mov	w24, #0xff01            // =65281
    1010: 910022c0     	add	x0, x22, #0x8
    1014: 72bfe018     	movk	w24, #0xff00, lsl #16
    1018: 94000000     	bl	0x1018 <rdbg_read+0x58>
		0000000000001018:  R_AARCH64_CALL26	mutex_lock
    101c: b94112e8     	ldr	w8, [x23, #0x110]
    1020: 7100091f     	cmp	w8, #0x2
    1024: 54000861     	b.ne	0x1130 <rdbg_read+0x170>
    1028: f9406ae8     	ldr	x8, [x23, #0xd0]
    102c: b9400109     	ldr	w9, [x8]
    1030: 6b18013f     	cmp	w9, w24
    1034: 540007e1     	b.ne	0x1130 <rdbg_read+0x170>
    1038: f94066e9     	ldr	x9, [x23, #0xc8]
    103c: 39400129     	ldrb	w9, [x9]
    1040: 7100053f     	cmp	w9, #0x1
    1044: 54000761     	b.ne	0x1130 <rdbg_read+0x170>
    1048: f9406ee9     	ldr	x9, [x23, #0xd8]
    104c: b9400515     	ldr	w21, [x8, #0x4]
    1050: b9400528     	ldr	w8, [x9, #0x4]
    1054: 6b15011f     	cmp	w8, w21
    1058: 540006c0     	b.eq	0x1130 <rdbg_read+0x170>
    105c: b9000535     	str	w21, [x9, #0x4]
    1060: b940eae8     	ldr	w8, [x23, #0xe8]
    1064: 34000168     	cbz	w8, 0x1090 <rdbg_read+0xd0>
    1068: aa1f03e8     	mov	x8, xzr
    106c: 52800209     	mov	w9, #0x10               // =16
    1070: 529fffea     	mov	w10, #0xffff            // =65535
    1074: f9406eeb     	ldr	x11, [x23, #0xd8]
    1078: 91000508     	add	x8, x8, #0x1
    107c: 7829696a     	strh	w10, [x11, x9]
    1080: 91001129     	add	x9, x9, #0x4
    1084: b940eaeb     	ldr	w11, [x23, #0xe8]
    1088: eb0b011f     	cmp	x8, x11
    108c: 54ffff43     	b.lo	0x1074 <rdbg_read+0xb4>
    1090: f9406ee8     	ldr	x8, [x23, #0xd8]
    1094: b900091f     	str	wzr, [x8, #0x8]
    1098: f9406ee8     	ldr	x8, [x23, #0xd8]
    109c: b9000d1f     	str	wzr, [x8, #0xc]
    10a0: b940c2e8     	ldr	w8, [x23, #0xc0]
    10a4: 7100051f     	cmp	w8, #0x1
    10a8: 54000441     	b.ne	0x1130 <rdbg_read+0x170>
    10ac: f94052e0     	ldr	x0, [x23, #0xa0]
    10b0: 94000000     	bl	0x10b0 <rdbg_read+0xf0>
		00000000000010b0:  R_AARCH64_CALL26	mutex_lock
    10b4: f94042e8     	ldr	x8, [x23, #0x80]
    10b8: b9400509     	ldr	w9, [x8, #0x4]
    10bc: 6b15013f     	cmp	w9, w21
    10c0: 54000340     	b.eq	0x1128 <rdbg_read+0x168>
    10c4: b9000515     	str	w21, [x8, #0x4]
    10c8: b9409ae8     	ldr	w8, [x23, #0x98]
    10cc: 34000168     	cbz	w8, 0x10f8 <rdbg_read+0x138>
    10d0: aa1f03e8     	mov	x8, xzr
    10d4: 52800209     	mov	w9, #0x10               // =16
    10d8: 529fffea     	mov	w10, #0xffff            // =65535
    10dc: f94042eb     	ldr	x11, [x23, #0x80]
    10e0: 91000508     	add	x8, x8, #0x1
    10e4: 7829696a     	strh	w10, [x11, x9]
    10e8: 91001129     	add	x9, x9, #0x4
    10ec: b9409aeb     	ldr	w11, [x23, #0x98]
    10f0: eb0b011f     	cmp	x8, x11
    10f4: 54ffff43     	b.lo	0x10dc <rdbg_read+0x11c>
    10f8: f9405ee8     	ldr	x8, [x23, #0xb8]
    10fc: b40000e8     	cbz	x8, 0x1118 <rdbg_read+0x158>
    1100: b940b6e8     	ldr	w8, [x23, #0xb4]
    1104: f9405ee0     	ldr	x0, [x23, #0xb8]
    1108: 2a1f03e1     	mov	w1, wzr
    110c: 11000502     	add	w2, w8, #0x1
    1110: 94000000     	bl	0x1110 <rdbg_read+0x150>
		0000000000001110:  R_AARCH64_CALL26	memset
    1114: b900b2ff     	str	wzr, [x23, #0xb0]
    1118: f94042e8     	ldr	x8, [x23, #0x80]
    111c: b900091f     	str	wzr, [x8, #0x8]
    1120: f94042e8     	ldr	x8, [x23, #0x80]
    1124: b9000d1f     	str	wzr, [x8, #0xc]
    1128: f94052e0     	ldr	x0, [x23, #0xa0]
    112c: 94000000     	bl	0x112c <rdbg_read+0x16c>
		000000000000112c:  R_AARCH64_CALL26	mutex_unlock
    1130: a94ca6e8     	ldp	x8, x9, [x23, #0xc8]
    1134: 39400108     	ldrb	w8, [x8]
    1138: 7100051f     	cmp	w8, #0x1
    113c: 54000080     	b.eq	0x114c <rdbg_read+0x18c>
    1140: b9400128     	ldr	w8, [x9]
    1144: 6b18011f     	cmp	w8, w24
    1148: 54000ee1     	b.ne	0x1324 <rdbg_read+0x364>
    114c: f9406ee8     	ldr	x8, [x23, #0xd8]
    1150: b940092b     	ldr	w11, [x9, #0x8]
    1154: b940090a     	ldr	w10, [x8, #0x8]
    1158: 6b0b015f     	cmp	w10, w11
    115c: 54000e40     	b.eq	0x1324 <rdbg_read+0x364>
    1160: 8b0a0929     	add	x9, x9, x10, lsl #2
    1164: b940eaeb     	ldr	w11, [x23, #0xe8]
    1168: 78410d2c     	ldrh	w12, [x9, #0x10]!
    116c: 6b0c017f     	cmp	w11, w12
    1170: 54000da9     	b.ls	0x1324 <rdbg_read+0x364>
    1174: 1100054a     	add	w10, w10, #0x1
    1178: 52800022     	mov	w2, #0x1                // =1
    117c: 1acb094c     	udiv	w12, w10, w11
    1180: 1b0ba98a     	msub	w10, w12, w11, w10
    1184: b900090a     	str	w10, [x8, #0x8]
    1188: 79400528     	ldrh	w8, [x9, #0x2]
    118c: f94072ea     	ldr	x10, [x23, #0xe0]
    1190: 79400129     	ldrh	w9, [x9]
    1194: d5033d9f     	dsb	ld
    1198: d379e108     	lsl	x8, x8, #7
    119c: 8b091d55     	add	x21, x10, x9, lsl #7
    11a0: eb14011f     	cmp	x8, x20
    11a4: aa1503e0     	mov	x0, x21
    11a8: 9a943114     	csel	x20, x8, x20, lo
    11ac: aa1403e1     	mov	x1, x20
    11b0: 94000000     	bl	0x11b0 <rdbg_read+0x1f0>
		00000000000011b0:  R_AARCH64_CALL26	__check_object_size
    11b4: d5384108     	mrs	x8, SP_EL0
    11b8: 39411909     	ldrb	w9, [x8, #0x46]
    11bc: 37280089     	tbnz	w9, #0x5, 0x11cc <rdbg_read+0x20c>
    11c0: f940010a     	ldr	x10, [x8]
    11c4: aa1303e9     	mov	x9, x19
    11c8: 36d0006a     	tbz	w10, #0x1a, 0x11d4 <rdbg_read+0x214>
    11cc: d378de69     	lsl	x9, x19, #8
    11d0: 8a892269     	and	x9, x19, x9, asr #8
    11d4: d2c0100a     	mov	x10, #0x8000000000      // =549755813888
    11d8: aa1403e3     	mov	x3, x20
    11dc: cb14014a     	sub	x10, x10, x20
    11e0: eb09015f     	cmp	x10, x9
    11e4: 54000363     	b.lo	0x1250 <rdbg_read+0x290>
    11e8: d503201f     	nop
    11ec: d53b4229     	mrs	x9, DAIF
    11f0: d50343df     	msr	DAIFSet, #0x3
    11f4: f9400508     	ldr	x8, [x8, #0x8]
    11f8: d538202a     	mrs	x10, TTBR1_EL1
    11fc: aa0803eb     	mov	x11, x8
    1200: b340bd4b     	bfxil	x11, x10, #0, #48
    1204: d518202b     	msr	TTBR1_EL1, x11
    1208: d5182008     	msr	TTBR0_EL1, x8
    120c: d5033fdf     	isb
    1210: d51b4229     	msr	DAIF, x9
    1214: 9248fa60     	and	x0, x19, #0xff7fffffffffffff
    1218: aa1503e1     	mov	x1, x21
    121c: aa1403e2     	mov	x2, x20
    1220: 94000000     	bl	0x1220 <rdbg_read+0x260>
		0000000000001220:  R_AARCH64_CALL26	__arch_copy_to_user
    1224: aa0003e3     	mov	x3, x0
    1228: d503201f     	nop
    122c: d53b4228     	mrs	x8, DAIF
    1230: d50343df     	msr	DAIFSet, #0x3
    1234: d5382029     	mrs	x9, TTBR1_EL1
    1238: 9240bd29     	and	x9, x9, #0xffffffffffff
    123c: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
    1240: d518200a     	msr	TTBR0_EL1, x10
    1244: d5182029     	msr	TTBR1_EL1, x9
    1248: d5033fdf     	isb
    124c: d51b4228     	msr	DAIF, x8
    1250: 35000883     	cbnz	w3, 0x1360 <rdbg_read+0x3a0>
    1254: f9407ae0     	ldr	x0, [x23, #0xf0]
    1258: b4000040     	cbz	x0, 0x1260 <rdbg_read+0x2a0>
    125c: 94000000     	bl	0x125c <rdbg_read+0x29c>
		000000000000125c:  R_AARCH64_CALL26	mutex_lock
    1260: f94066e8     	ldr	x8, [x23, #0xc8]
    1264: 39400108     	ldrb	w8, [x8]
    1268: 7100051f     	cmp	w8, #0x1
    126c: 540000a0     	b.eq	0x1280 <rdbg_read+0x2c0>
    1270: f9406ae8     	ldr	x8, [x23, #0xd0]
    1274: b9400108     	ldr	w8, [x8]
    1278: 6b18011f     	cmp	w8, w24
    127c: 540002c1     	b.ne	0x12d4 <rdbg_read+0x314>
    1280: f94072e8     	ldr	x8, [x23, #0xe0]
    1284: cb0802a8     	sub	x8, x21, x8
    1288: 9101fd09     	add	x9, x8, #0x7f
    128c: f100011f     	cmp	x8, #0x0
    1290: 9a88b128     	csel	x8, x9, x8, lt
    1294: b940eae9     	ldr	w9, [x23, #0xe8]
    1298: 9347fd08     	asr	x8, x8, #7
    129c: 6b08013f     	cmp	w9, w8
    12a0: 540001a9     	b.ls	0x12d4 <rdbg_read+0x314>
    12a4: f9406ee9     	ldr	x9, [x23, #0xd8]
    12a8: b9400d2a     	ldr	w10, [x9, #0xc]
    12ac: 8b0a0929     	add	x9, x9, x10, lsl #2
    12b0: 79002128     	strh	w8, [x9, #0x10]
    12b4: 7900253f     	strh	wzr, [x9, #0x12]
    12b8: f9406ee8     	ldr	x8, [x23, #0xd8]
    12bc: b940eaea     	ldr	w10, [x23, #0xe8]
    12c0: b9400d09     	ldr	w9, [x8, #0xc]
    12c4: 11000529     	add	w9, w9, #0x1
    12c8: 1aca092b     	udiv	w11, w9, w10
    12cc: 1b0aa569     	msub	w9, w11, w10, w9
    12d0: b9000d09     	str	w9, [x8, #0xc]
    12d4: f9407ae0     	ldr	x0, [x23, #0xf0]
    12d8: b4000040     	cbz	x0, 0x12e0 <rdbg_read+0x320>
    12dc: 94000000     	bl	0x12dc <rdbg_read+0x31c>
		00000000000012dc:  R_AARCH64_CALL26	mutex_unlock
    12e0: 2a1403f5     	mov	w21, w20
    12e4: 910022c0     	add	x0, x22, #0x8
    12e8: 94000000     	bl	0x12e8 <rdbg_read+0x328>
		00000000000012e8:  R_AARCH64_CALL26	mutex_unlock
    12ec: 14000002     	b	0x12f4 <rdbg_read+0x334>
    12f0: 12800255     	mov	w21, #-0x13             // =-19
    12f4: 93407ea0     	sxtw	x0, w21
    12f8: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    12fc: a94257f6     	ldp	x22, x21, [sp, #0x20]
    1300: a9415ff8     	ldp	x24, x23, [sp, #0x10]
    1304: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    1308: d50323bf     	autiasp
    130c: d65f03c0     	ret
    1310: 90000000     	adrp	x0, 0x1000 <rdbg_read+0x40>
		0000000000001310:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26d
    1314: 91000000     	add	x0, x0, #0x0
		0000000000001314:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26d
    1318: 94000000     	bl	0x1318 <rdbg_read+0x358>
		0000000000001318:  R_AARCH64_CALL26	_printk
    131c: 128002b5     	mov	w21, #-0x16             // =-22
    1320: 17fffff5     	b	0x12f4 <rdbg_read+0x334>
    1324: f94002e0     	ldr	x0, [x23]
    1328: 90000001     	adrp	x1, 0x1000 <rdbg_read+0x40>
		0000000000001328:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x436
    132c: 91000021     	add	x1, x1, #0x0
		000000000000132c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x436
    1330: 90000002     	adrp	x2, 0x1000 <rdbg_read+0x40>
		0000000000001330:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a8
    1334: 91000042     	add	x2, x2, #0x0
		0000000000001334:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a8
    1338: 2a1f03e3     	mov	w3, wzr
    133c: 1400000e     	b	0x1374 <rdbg_read+0x3b4>
    1340: 2a0003f5     	mov	w21, w0
    1344: f94002e0     	ldr	x0, [x23]
    1348: 90000001     	adrp	x1, 0x1000 <rdbg_read+0x40>
		0000000000001348:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5
    134c: 91000021     	add	x1, x1, #0x0
		000000000000134c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5
    1350: 90000002     	adrp	x2, 0x1000 <rdbg_read+0x40>
		0000000000001350:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a8
    1354: 91000042     	add	x2, x2, #0x0
		0000000000001354:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a8
    1358: 94000000     	bl	0x1358 <rdbg_read+0x398>
		0000000000001358:  R_AARCH64_CALL26	_dev_err
    135c: 17ffffe6     	b	0x12f4 <rdbg_read+0x334>
    1360: f94002e0     	ldr	x0, [x23]
    1364: 90000001     	adrp	x1, 0x1000 <rdbg_read+0x40>
		0000000000001364:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4b1
    1368: 91000021     	add	x1, x1, #0x0
		0000000000001368:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4b1
    136c: 90000002     	adrp	x2, 0x1000 <rdbg_read+0x40>
		000000000000136c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a8
    1370: 91000042     	add	x2, x2, #0x0
		0000000000001370:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a8
    1374: 94000000     	bl	0x1374 <rdbg_read+0x3b4>
		0000000000001374:  R_AARCH64_CALL26	_dev_err
    1378: 12800795     	mov	w21, #-0x3d             // =-61
    137c: 17ffffda     	b	0x12e4 <rdbg_read+0x324>
