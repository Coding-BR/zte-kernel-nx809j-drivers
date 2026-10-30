
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000010f4 <aw8693x_get_vbat>:
    10f4: d503233f     	paciasp
    10f8: d100c3ff     	sub	sp, sp, #0x30
    10fc: a9017bfd     	stp	x29, x30, [sp, #0x10]
    1100: a9024ff4     	stp	x20, x19, [sp, #0x20]
    1104: 910043fd     	add	x29, sp, #0x10
    1108: d5384108     	mrs	x8, SP_EL0
    110c: aa0003f3     	mov	x19, x0
    1110: f9438908     	ldr	x8, [x8, #0x710]
    1114: f90007e8     	str	x8, [sp, #0x8]
    1118: 79000bff     	strh	wzr, [sp, #0x4]
    111c: 97ffff84     	bl	0xf2c <aw8693x_stop>
    1120: aa1303e0     	mov	x0, x19
    1124: 528008a1     	mov	w1, #0x45               // =69
    1128: 12800082     	mov	w2, #-0x5               // =-5
    112c: 52800083     	mov	w3, #0x4                // =4
    1130: 94000000     	bl	0x1130 <aw8693x_get_vbat+0x3c>
		0000000000001130:  R_AARCH64_CALL26	i2c_w_bits
    1134: 52803e80     	mov	w0, #0x1f4              // =500
    1138: 52804b01     	mov	w1, #0x258              // =600
    113c: 52800042     	mov	w2, #0x2                // =2
    1140: 94000000     	bl	0x1140 <aw8693x_get_vbat+0x4c>
		0000000000001140:  R_AARCH64_CALL26	usleep_range_state
    1144: aa1303e0     	mov	x0, x19
    1148: 528009c1     	mov	w1, #0x4e               // =78
    114c: 12800f02     	mov	w2, #-0x79              // =-121
    1150: 2a1f03e3     	mov	w3, wzr
    1154: 94000000     	bl	0x1154 <aw8693x_get_vbat+0x60>
		0000000000001154:  R_AARCH64_CALL26	i2c_w_bits
    1158: aa1303e0     	mov	x0, x19
    115c: 528009a1     	mov	w1, #0x4d               // =77
    1160: 12800062     	mov	w2, #-0x4               // =-4
    1164: 52800023     	mov	w3, #0x1                // =1
    1168: 94000000     	bl	0x1168 <aw8693x_get_vbat+0x74>
		0000000000001168:  R_AARCH64_CALL26	i2c_w_bits
    116c: 52817700     	mov	w0, #0xbb8              // =3000
    1170: 5281b581     	mov	w1, #0xdac              // =3500
    1174: 52800042     	mov	w2, #0x2                // =2
    1178: 94000000     	bl	0x1178 <aw8693x_get_vbat+0x84>
		0000000000001178:  R_AARCH64_CALL26	usleep_range_state
    117c: aa1303e0     	mov	x0, x19
    1180: 528009a1     	mov	w1, #0x4d               // =77
    1184: 12800062     	mov	w2, #-0x4               // =-4
    1188: 2a1f03e3     	mov	w3, wzr
    118c: 94000000     	bl	0x118c <aw8693x_get_vbat+0x98>
		000000000000118c:  R_AARCH64_CALL26	i2c_w_bits
    1190: 910013e2     	add	x2, sp, #0x4
    1194: aa1303e0     	mov	x0, x19
    1198: 528009e1     	mov	w1, #0x4f               // =79
    119c: 52800043     	mov	w3, #0x2                // =2
    11a0: 94000000     	bl	0x11a0 <aw8693x_get_vbat+0xac>
		00000000000011a0:  R_AARCH64_CALL26	i2c_r_bytes
    11a4: aa1303e0     	mov	x0, x19
    11a8: 528008a1     	mov	w1, #0x45               // =69
    11ac: 12800082     	mov	w2, #-0x5               // =-5
    11b0: 2a1f03e3     	mov	w3, wzr
    11b4: 94000000     	bl	0x11b4 <aw8693x_get_vbat+0xc0>
		00000000000011b4:  R_AARCH64_CALL26	i2c_w_bits
    11b8: 394013e8     	ldrb	w8, [sp, #0x4]
    11bc: 394017f4     	ldrb	w20, [sp, #0x5]
    11c0: 52840129     	mov	w9, #0x2009             // =8201
    11c4: 72a01009     	movk	w9, #0x80, lsl #16
    11c8: 33180514     	bfi	w20, w8, #8, #2
    11cc: 5282fa88     	mov	w8, #0x17d4             // =6100
    11d0: 1b087e88     	mul	w8, w20, w8
    11d4: 710bce9f     	cmp	w20, #0x2f3
    11d8: 9ba97d08     	umull	x8, w8, w9
    11dc: d361fd04     	lsr	x4, x8, #33
    11e0: b9006a64     	str	w4, [x19, #0x68]
    11e4: 540001a3     	b.lo	0x1218 <aw8693x_get_vbat+0x124>
    11e8: 52823288     	mov	w8, #0x1194             // =4500
    11ec: 90000000     	adrp	x0, 0x1000 <aw8693x_stop+0xd4>
		00000000000011ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2be5
    11f0: 91000000     	add	x0, x0, #0x0
		00000000000011f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2be5
    11f4: 90000001     	adrp	x1, 0x1000 <aw8693x_stop+0xd4>
		00000000000011f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    11f8: 91000021     	add	x1, x1, #0x0
		00000000000011f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    11fc: 90000003     	adrp	x3, 0x1000 <aw8693x_stop+0xd4>
		00000000000011fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ef3
    1200: 91000063     	add	x3, x3, #0x0
		0000000000001200:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ef3
    1204: 5280bae2     	mov	w2, #0x5d7              // =1495
    1208: 52823284     	mov	w4, #0x1194             // =4500
    120c: b9006a68     	str	w8, [x19, #0x68]
    1210: 94000000     	bl	0x1210 <aw8693x_get_vbat+0x11c>
		0000000000001210:  R_AARCH64_CALL26	_printk
    1214: b9406a64     	ldr	w4, [x19, #0x68]
    1218: 712edc9f     	cmp	w4, #0xbb7
    121c: 540001a8     	b.hi	0x1250 <aw8693x_get_vbat+0x15c>
    1220: 52817708     	mov	w8, #0xbb8              // =3000
    1224: 90000000     	adrp	x0, 0x1000 <aw8693x_stop+0xd4>
		0000000000001224:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x105c
    1228: 91000000     	add	x0, x0, #0x0
		0000000000001228:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x105c
    122c: 90000001     	adrp	x1, 0x1000 <aw8693x_stop+0xd4>
		000000000000122c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    1230: 91000021     	add	x1, x1, #0x0
		0000000000001230:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    1234: 90000003     	adrp	x3, 0x1000 <aw8693x_stop+0xd4>
		0000000000001234:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ef3
    1238: 91000063     	add	x3, x3, #0x0
		0000000000001238:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ef3
    123c: 5280bb62     	mov	w2, #0x5db              // =1499
    1240: 52817704     	mov	w4, #0xbb8              // =3000
    1244: b9006a68     	str	w8, [x19, #0x68]
    1248: 94000000     	bl	0x1248 <aw8693x_get_vbat+0x154>
		0000000000001248:  R_AARCH64_CALL26	_printk
    124c: b9406a64     	ldr	w4, [x19, #0x68]
    1250: 90000000     	adrp	x0, 0x1000 <aw8693x_stop+0xd4>
		0000000000001250:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1465
    1254: 91000000     	add	x0, x0, #0x0
		0000000000001254:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1465
    1258: 90000001     	adrp	x1, 0x1000 <aw8693x_stop+0xd4>
		0000000000001258:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    125c: 91000021     	add	x1, x1, #0x0
		000000000000125c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    1260: 90000003     	adrp	x3, 0x1000 <aw8693x_stop+0xd4>
		0000000000001260:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ef3
    1264: 91000063     	add	x3, x3, #0x0
		0000000000001264:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ef3
    1268: 5280bba2     	mov	w2, #0x5dd              // =1501
    126c: 2a1403e5     	mov	w5, w20
    1270: 94000000     	bl	0x1270 <aw8693x_get_vbat+0x17c>
		0000000000001270:  R_AARCH64_CALL26	_printk
    1274: d5384108     	mrs	x8, SP_EL0
    1278: f9438908     	ldr	x8, [x8, #0x710]
    127c: f94007e9     	ldr	x9, [sp, #0x8]
    1280: eb09011f     	cmp	x8, x9
    1284: 540000c1     	b.ne	0x129c <aw8693x_get_vbat+0x1a8>
    1288: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    128c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1290: 9100c3ff     	add	sp, sp, #0x30
    1294: d50323bf     	autiasp
    1298: d65f03c0     	ret
    129c: 94000000     	bl	0x129c <aw8693x_get_vbat+0x1a8>
		000000000000129c:  R_AARCH64_CALL26	__stack_chk_fail
