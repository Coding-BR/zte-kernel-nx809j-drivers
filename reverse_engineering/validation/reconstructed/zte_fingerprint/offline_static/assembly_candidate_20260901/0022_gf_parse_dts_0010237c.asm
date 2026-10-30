
/input/zte_fingerprint_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000010cc <gf_parse_dts>:
    10cc: b4000200     	cbz	x0, 0x110c <gf_parse_dts+0x40>
    10d0: f9400c08     	ldr	x8, [x0, #0x18]
    10d4: b40001c8     	cbz	x8, 0x110c <gf_parse_dts+0x40>
    10d8: d503233f     	paciasp
    10dc: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    10e0: f9000bf5     	str	x21, [sp, #0x10]
    10e4: a9024ff4     	stp	x20, x19, [sp, #0x20]
    10e8: 910003fd     	mov	x29, sp
    10ec: f9417d13     	ldr	x19, [x8, #0x2f8]
    10f0: b5000133     	cbnz	x19, 0x1114 <gf_parse_dts+0x48>
    10f4: 12800240     	mov	w0, #-0x13              // =-19
    10f8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    10fc: f9400bf5     	ldr	x21, [sp, #0x10]
    1100: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    1104: d50323bf     	autiasp
    1108: d65f03c0     	ret
    110c: 128002a0     	mov	w0, #-0x16              // =-22
    1110: d65f03c0     	ret
    1114: aa0003f4     	mov	x20, x0
    1118: 940000f9     	bl	0x14fc <zte_goodix_pinctrl_init>
    111c: 340000e0     	cbz	w0, 0x1138 <gf_parse_dts+0x6c>
    1120: 2a0003e2     	mov	w2, w0
    1124: 90000000     	adrp	x0, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001124:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa8b
    1128: 91000000     	add	x0, x0, #0x0
		0000000000001128:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa8b
    112c: 90000001     	adrp	x1, 0x1000 <_inline_copy_from_user+0x20>
		000000000000112c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x229
    1130: 91000021     	add	x1, x1, #0x0
		0000000000001130:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x229
    1134: 94000000     	bl	0x1134 <gf_parse_dts+0x68>
		0000000000001134:  R_AARCH64_CALL26	_printk
    1138: f9404280     	ldr	x0, [x20, #0x80]
    113c: aa1403e8     	mov	x8, x20
    1140: b50002a0     	cbnz	x0, 0x1194 <gf_parse_dts+0xc8>
    1144: 5284e200     	mov	w0, #0x2710             // =10000
    1148: 5284ee81     	mov	w1, #0x2774             // =10100
    114c: 52800042     	mov	w2, #0x2                // =2
    1150: aa0803f5     	mov	x21, x8
    1154: 94000000     	bl	0x1154 <gf_parse_dts+0x88>
		0000000000001154:  R_AARCH64_CALL26	usleep_range_state
    1158: f9400ea8     	ldr	x8, [x21, #0x18]
    115c: 90000001     	adrp	x1, 0x1000 <_inline_copy_from_user+0x20>
		000000000000115c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ef
    1160: 91000021     	add	x1, x1, #0x0
		0000000000001160:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ef
    1164: 91004100     	add	x0, x8, #0x10
    1168: 94000000     	bl	0x1168 <gf_parse_dts+0x9c>
		0000000000001168:  R_AARCH64_CALL26	devm_regulator_get
    116c: b13ffc1f     	cmn	x0, #0xfff
    1170: f9004ea0     	str	x0, [x21, #0x98]
    1174: 540002a3     	b.lo	0x11c8 <gf_parse_dts+0xfc>
    1178: 90000000     	adrp	x0, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001178:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdc1
    117c: 91000000     	add	x0, x0, #0x0
		000000000000117c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdc1
    1180: 90000001     	adrp	x1, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001180:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x229
    1184: 91000021     	add	x1, x1, #0x0
		0000000000001184:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x229
    1188: 94000000     	bl	0x1188 <gf_parse_dts+0xbc>
		0000000000001188:  R_AARCH64_CALL26	_printk
    118c: b9409a80     	ldr	w0, [x20, #0x98]
    1190: 17ffffda     	b	0x10f8 <gf_parse_dts+0x2c>
    1194: f9404901     	ldr	x1, [x8, #0x90]
    1198: b4000aa1     	cbz	x1, 0x12ec <gf_parse_dts+0x220>
    119c: b13ffc3f     	cmn	x1, #0xfff
    11a0: 54000a62     	b.hs	0x12ec <gf_parse_dts+0x220>
    11a4: 94000000     	bl	0x11a4 <gf_parse_dts+0xd8>
		00000000000011a4:  R_AARCH64_CALL26	pinctrl_select_state
    11a8: 35000c40     	cbnz	w0, 0x1330 <gf_parse_dts+0x264>
    11ac: 90000000     	adrp	x0, 0x1000 <_inline_copy_from_user+0x20>
		00000000000011ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x258
    11b0: 91000000     	add	x0, x0, #0x0
		00000000000011b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x258
    11b4: 90000001     	adrp	x1, 0x1000 <_inline_copy_from_user+0x20>
		00000000000011b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x229
    11b8: 91000021     	add	x1, x1, #0x0
		00000000000011b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x229
    11bc: 94000000     	bl	0x11bc <gf_parse_dts+0xf0>
		00000000000011bc:  R_AARCH64_CALL26	_printk
    11c0: aa1403e8     	mov	x8, x20
    11c4: 17ffffe0     	b	0x1144 <gf_parse_dts+0x78>
    11c8: 90000000     	adrp	x0, 0x1000 <_inline_copy_from_user+0x20>
		00000000000011c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xde1
    11cc: 91000000     	add	x0, x0, #0x0
		00000000000011cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xde1
    11d0: 90000001     	adrp	x1, 0x1000 <_inline_copy_from_user+0x20>
		00000000000011d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x229
    11d4: 91000021     	add	x1, x1, #0x0
		00000000000011d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x229
    11d8: 94000000     	bl	0x11d8 <gf_parse_dts+0x10c>
		00000000000011d8:  R_AARCH64_CALL26	_printk
    11dc: f9404e80     	ldr	x0, [x20, #0x98]
    11e0: 94000000     	bl	0x11e0 <gf_parse_dts+0x114>
		00000000000011e0:  R_AARCH64_CALL26	regulator_enable
    11e4: 35000920     	cbnz	w0, 0x1308 <gf_parse_dts+0x23c>
    11e8: 90000000     	adrp	x0, 0x1000 <_inline_copy_from_user+0x20>
		00000000000011e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x859
    11ec: 91000000     	add	x0, x0, #0x0
		00000000000011ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x859
    11f0: 90000001     	adrp	x1, 0x1000 <_inline_copy_from_user+0x20>
		00000000000011f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x229
    11f4: 91000021     	add	x1, x1, #0x0
		00000000000011f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x229
    11f8: 94000000     	bl	0x11f8 <gf_parse_dts+0x12c>
		00000000000011f8:  R_AARCH64_CALL26	_printk
    11fc: 90000001     	adrp	x1, 0x1000 <_inline_copy_from_user+0x20>
		00000000000011fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdfb
    1200: 91000021     	add	x1, x1, #0x0
		0000000000001200:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdfb
    1204: aa1303e0     	mov	x0, x19
    1208: 2a1f03e2     	mov	w2, wzr
    120c: 94000000     	bl	0x120c <gf_parse_dts+0x140>
		000000000000120c:  R_AARCH64_CALL26	of_get_named_gpio
    1210: b9004280     	str	w0, [x20, #0x40]
    1214: 37f809e0     	tbnz	w0, #0x1f, 0x1350 <gf_parse_dts+0x284>
    1218: 2a0003e2     	mov	w2, w0
    121c: 90000000     	adrp	x0, 0x1000 <_inline_copy_from_user+0x20>
		000000000000121c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe8b
    1220: 91000000     	add	x0, x0, #0x0
		0000000000001220:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe8b
    1224: 90000001     	adrp	x1, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001224:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x229
    1228: 91000021     	add	x1, x1, #0x0
		0000000000001228:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x229
    122c: 94000000     	bl	0x122c <gf_parse_dts+0x160>
		000000000000122c:  R_AARCH64_CALL26	_printk
    1230: f9400e88     	ldr	x8, [x20, #0x18]
    1234: b9404281     	ldr	w1, [x20, #0x40]
    1238: 90000002     	adrp	x2, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001238:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x278
    123c: 91000042     	add	x2, x2, #0x0
		000000000000123c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x278
    1240: 91004100     	add	x0, x8, #0x10
    1244: 94000000     	bl	0x1244 <gf_parse_dts+0x178>
		0000000000001244:  R_AARCH64_CALL26	devm_gpio_request
    1248: 35000920     	cbnz	w0, 0x136c <gf_parse_dts+0x2a0>
    124c: 90000000     	adrp	x0, 0x1000 <_inline_copy_from_user+0x20>
		000000000000124c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d7
    1250: 91000000     	add	x0, x0, #0x0
		0000000000001250:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d7
    1254: 90000001     	adrp	x1, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001254:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x229
    1258: 91000021     	add	x1, x1, #0x0
		0000000000001258:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x229
    125c: 94000000     	bl	0x125c <gf_parse_dts+0x190>
		000000000000125c:  R_AARCH64_CALL26	_printk
    1260: 90000001     	adrp	x1, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001260:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb02
    1264: 91000021     	add	x1, x1, #0x0
		0000000000001264:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb02
    1268: aa1303e0     	mov	x0, x19
    126c: 2a1f03e2     	mov	w2, wzr
    1270: 94000000     	bl	0x1270 <gf_parse_dts+0x1a4>
		0000000000001270:  R_AARCH64_CALL26	of_get_named_gpio
    1274: b9003e80     	str	w0, [x20, #0x3c]
    1278: 37f809c0     	tbnz	w0, #0x1f, 0x13b0 <gf_parse_dts+0x2e4>
    127c: 2a0003e2     	mov	w2, w0
    1280: 90000000     	adrp	x0, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001280:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd73
    1284: 91000000     	add	x0, x0, #0x0
		0000000000001284:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd73
    1288: 90000001     	adrp	x1, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001288:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x229
    128c: 91000021     	add	x1, x1, #0x0
		000000000000128c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x229
    1290: 94000000     	bl	0x1290 <gf_parse_dts+0x1c4>
		0000000000001290:  R_AARCH64_CALL26	_printk
    1294: f9400e88     	ldr	x8, [x20, #0x18]
    1298: b9403e81     	ldr	w1, [x20, #0x3c]
    129c: 90000002     	adrp	x2, 0x1000 <_inline_copy_from_user+0x20>
		000000000000129c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x236
    12a0: 91000042     	add	x2, x2, #0x0
		00000000000012a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x236
    12a4: 91004100     	add	x0, x8, #0x10
    12a8: 94000000     	bl	0x12a8 <gf_parse_dts+0x1dc>
		00000000000012a8:  R_AARCH64_CALL26	devm_gpio_request
    12ac: 35000880     	cbnz	w0, 0x13bc <gf_parse_dts+0x2f0>
    12b0: 90000013     	adrp	x19, 0x1000 <_inline_copy_from_user+0x20>
		00000000000012b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x229
    12b4: 91000273     	add	x19, x19, #0x0
		00000000000012b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x229
    12b8: 90000000     	adrp	x0, 0x1000 <_inline_copy_from_user+0x20>
		00000000000012b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8d
    12bc: 91000000     	add	x0, x0, #0x0
		00000000000012bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8d
    12c0: aa1303e1     	mov	x1, x19
    12c4: 94000000     	bl	0x12c4 <gf_parse_dts+0x1f8>
		00000000000012c4:  R_AARCH64_CALL26	_printk
    12c8: b9403e80     	ldr	w0, [x20, #0x3c]
    12cc: 94000000     	bl	0x12cc <gf_parse_dts+0x200>
		00000000000012cc:  R_AARCH64_CALL26	gpio_to_desc
    12d0: 94000000     	bl	0x12d0 <gf_parse_dts+0x204>
		00000000000012d0:  R_AARCH64_CALL26	gpiod_direction_input
    12d4: 90000000     	adrp	x0, 0x1000 <_inline_copy_from_user+0x20>
		00000000000012d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16a
    12d8: 91000000     	add	x0, x0, #0x0
		00000000000012d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16a
    12dc: aa1303e1     	mov	x1, x19
    12e0: 94000000     	bl	0x12e0 <gf_parse_dts+0x214>
		00000000000012e0:  R_AARCH64_CALL26	_printk
    12e4: 2a1f03e0     	mov	w0, wzr
    12e8: 17ffff84     	b	0x10f8 <gf_parse_dts+0x2c>
    12ec: f9400d08     	ldr	x8, [x8, #0x18]
    12f0: 90000001     	adrp	x1, 0x1000 <_inline_copy_from_user+0x20>
		00000000000012f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xef8
    12f4: 91000021     	add	x1, x1, #0x0
		00000000000012f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xef8
    12f8: 91004100     	add	x0, x8, #0x10
    12fc: 94000000     	bl	0x12fc <gf_parse_dts+0x230>
		00000000000012fc:  R_AARCH64_CALL26	_dev_err
    1300: 128002a0     	mov	w0, #-0x16              // =-22
    1304: 17ffff7d     	b	0x10f8 <gf_parse_dts+0x2c>
    1308: 2a0003f3     	mov	w19, w0
    130c: 90000000     	adrp	x0, 0x1000 <_inline_copy_from_user+0x20>
		000000000000130c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x837
    1310: 91000000     	add	x0, x0, #0x0
		0000000000001310:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x837
    1314: 90000001     	adrp	x1, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001314:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x229
    1318: 91000021     	add	x1, x1, #0x0
		0000000000001318:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x229
    131c: 94000000     	bl	0x131c <gf_parse_dts+0x250>
		000000000000131c:  R_AARCH64_CALL26	_printk
    1320: f9403e80     	ldr	x0, [x20, #0x78]
    1324: b50006e0     	cbnz	x0, 0x1400 <gf_parse_dts+0x334>
    1328: 2a1303e0     	mov	w0, w19
    132c: 17ffff73     	b	0x10f8 <gf_parse_dts+0x2c>
    1330: f9400e88     	ldr	x8, [x20, #0x18]
    1334: 90000001     	adrp	x1, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001334:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ce
    1338: 91000021     	add	x1, x1, #0x0
		0000000000001338:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ce
    133c: 2a0003f3     	mov	w19, w0
    1340: 91004100     	add	x0, x8, #0x10
    1344: 94000000     	bl	0x1344 <gf_parse_dts+0x278>
		0000000000001344:  R_AARCH64_CALL26	_dev_err
    1348: 2a1303e0     	mov	w0, w19
    134c: 17ffff6b     	b	0x10f8 <gf_parse_dts+0x2c>
    1350: 90000000     	adrp	x0, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001350:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc92
    1354: 91000000     	add	x0, x0, #0x0
		0000000000001354:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc92
    1358: 90000001     	adrp	x1, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001358:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x229
    135c: 91000021     	add	x1, x1, #0x0
		000000000000135c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x229
    1360: 94000000     	bl	0x1360 <gf_parse_dts+0x294>
		0000000000001360:  R_AARCH64_CALL26	_printk
    1364: 128002a0     	mov	w0, #-0x16              // =-22
    1368: 17ffff64     	b	0x10f8 <gf_parse_dts+0x2c>
    136c: 2a0003f3     	mov	w19, w0
    1370: 90000000     	adrp	x0, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001370:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x44f
    1374: 91000000     	add	x0, x0, #0x0
		0000000000001374:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x44f
    1378: 90000001     	adrp	x1, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001378:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x229
    137c: 91000021     	add	x1, x1, #0x0
		000000000000137c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x229
    1380: 94000000     	bl	0x1380 <gf_parse_dts+0x2b4>
		0000000000001380:  R_AARCH64_CALL26	_printk
    1384: f9403e80     	ldr	x0, [x20, #0x78]
    1388: b4fffd00     	cbz	x0, 0x1328 <gf_parse_dts+0x25c>
    138c: 90000001     	adrp	x1, 0x1000 <_inline_copy_from_user+0x20>
		000000000000138c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7b2
    1390: 91000021     	add	x1, x1, #0x0
		0000000000001390:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7b2
    1394: 94000000     	bl	0x1394 <gf_parse_dts+0x2c8>
		0000000000001394:  R_AARCH64_CALL26	zlog_client_record
    1398: f9403e80     	ldr	x0, [x20, #0x78]
    139c: 52802021     	mov	w1, #0x101              // =257
    13a0: 94000000     	bl	0x13a0 <gf_parse_dts+0x2d4>
		00000000000013a0:  R_AARCH64_CALL26	zlog_client_notify
    13a4: 90000000     	adrp	x0, 0x1000 <_inline_copy_from_user+0x20>
		00000000000013a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf1f
    13a8: 91000000     	add	x0, x0, #0x0
		00000000000013a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf1f
    13ac: 1400001d     	b	0x1420 <gf_parse_dts+0x354>
    13b0: 90000000     	adrp	x0, 0x1000 <_inline_copy_from_user+0x20>
		00000000000013b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x329
    13b4: 91000000     	add	x0, x0, #0x0
		00000000000013b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x329
    13b8: 17ffffe8     	b	0x1358 <gf_parse_dts+0x28c>
    13bc: 2a0003f3     	mov	w19, w0
    13c0: 90000000     	adrp	x0, 0x1000 <_inline_copy_from_user+0x20>
		00000000000013c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x148
    13c4: 91000000     	add	x0, x0, #0x0
		00000000000013c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x148
    13c8: 90000001     	adrp	x1, 0x1000 <_inline_copy_from_user+0x20>
		00000000000013c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x229
    13cc: 91000021     	add	x1, x1, #0x0
		00000000000013cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x229
    13d0: 94000000     	bl	0x13d0 <gf_parse_dts+0x304>
		00000000000013d0:  R_AARCH64_CALL26	_printk
    13d4: f9403e80     	ldr	x0, [x20, #0x78]
    13d8: b4fffa80     	cbz	x0, 0x1328 <gf_parse_dts+0x25c>
    13dc: 90000001     	adrp	x1, 0x1000 <_inline_copy_from_user+0x20>
		00000000000013dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf40
    13e0: 91000021     	add	x1, x1, #0x0
		00000000000013e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf40
    13e4: 94000000     	bl	0x13e4 <gf_parse_dts+0x318>
		00000000000013e4:  R_AARCH64_CALL26	zlog_client_record
    13e8: f9403e80     	ldr	x0, [x20, #0x78]
    13ec: 52802001     	mov	w1, #0x100              // =256
    13f0: 94000000     	bl	0x13f0 <gf_parse_dts+0x324>
		00000000000013f0:  R_AARCH64_CALL26	zlog_client_notify
    13f4: 90000000     	adrp	x0, 0x1000 <_inline_copy_from_user+0x20>
		00000000000013f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11
    13f8: 91000000     	add	x0, x0, #0x0
		00000000000013f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11
    13fc: 14000009     	b	0x1420 <gf_parse_dts+0x354>
    1400: 90000001     	adrp	x1, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001400:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf65
    1404: 91000021     	add	x1, x1, #0x0
		0000000000001404:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf65
    1408: 94000000     	bl	0x1408 <gf_parse_dts+0x33c>
		0000000000001408:  R_AARCH64_CALL26	zlog_client_record
    140c: f9403e80     	ldr	x0, [x20, #0x78]
    1410: 52802041     	mov	w1, #0x102              // =258
    1414: 94000000     	bl	0x1414 <gf_parse_dts+0x348>
		0000000000001414:  R_AARCH64_CALL26	zlog_client_notify
    1418: 90000000     	adrp	x0, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001418:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x390
    141c: 91000000     	add	x0, x0, #0x0
		000000000000141c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x390
    1420: 90000001     	adrp	x1, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001420:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x229
    1424: 91000021     	add	x1, x1, #0x0
		0000000000001424:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x229
    1428: 94000000     	bl	0x1428 <gf_parse_dts+0x35c>
		0000000000001428:  R_AARCH64_CALL26	_printk
    142c: 2a1303e0     	mov	w0, w19
    1430: 17ffff32     	b	0x10f8 <gf_parse_dts+0x2c>
