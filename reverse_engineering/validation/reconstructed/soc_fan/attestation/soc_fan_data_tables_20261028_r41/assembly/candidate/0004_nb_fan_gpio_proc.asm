
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000010b4 <nb_fan_gpio_proc>:
    10b4: f9400408     	ldr	x8, [x0, #0x8]
    10b8: b5000068     	cbnz	x8, 0x10c4 <nb_fan_gpio_proc+0x10>
    10bc: 12800240     	mov	w0, #-0x13              // =-19
    10c0: d65f03c0     	ret
    10c4: d503233f     	paciasp
    10c8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    10cc: f9000bf5     	str	x21, [sp, #0x10]
    10d0: a9024ff4     	stp	x20, x19, [sp, #0x20]
    10d4: 910003fd     	mov	x29, sp
    10d8: f9400008     	ldr	x8, [x0]
    10dc: 90000001     	adrp	x1, 0x1000 <nb_fan_parse_dt+0x268>
		00000000000010dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x53d
    10e0: 91000021     	add	x1, x1, #0x0
		00000000000010e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x53d
    10e4: aa0003f4     	mov	x20, x0
    10e8: 2a1f03e2     	mov	w2, wzr
    10ec: f9417513     	ldr	x19, [x8, #0x2e8]
    10f0: aa1303e0     	mov	x0, x19
    10f4: 94000000     	bl	0x10f4 <nb_fan_gpio_proc+0x40>
		00000000000010f4:  R_AARCH64_CALL26	of_get_named_gpio
    10f8: f9400688     	ldr	x8, [x20, #0x8]
    10fc: aa1403f5     	mov	x21, x20
    1100: b9001500     	str	w0, [x8, #0x14]
    1104: f9400688     	ldr	x8, [x20, #0x8]
    1108: b9401500     	ldr	w0, [x8, #0x14]
    110c: 36f80180     	tbz	w0, #0x1f, 0x113c <nb_fan_gpio_proc+0x88>
    1110: 90000000     	adrp	x0, 0x1000 <nb_fan_parse_dt+0x268>
		0000000000001110:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x109
    1114: 91000000     	add	x0, x0, #0x0
		0000000000001114:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x109
    1118: 90000001     	adrp	x1, 0x1000 <nb_fan_parse_dt+0x268>
		0000000000001118:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
    111c: 91000021     	add	x1, x1, #0x0
		000000000000111c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
    1120: 90000002     	adrp	x2, 0x1000 <nb_fan_parse_dt+0x268>
		0000000000001120:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x168
    1124: 91000042     	add	x2, x2, #0x0
		0000000000001124:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x168
    1128: 52806863     	mov	w3, #0x343              // =835
    112c: 94000000     	bl	0x112c <nb_fan_gpio_proc+0x78>
		000000000000112c:  R_AARCH64_CALL26	_printk
    1130: f94006a8     	ldr	x8, [x21, #0x8]
    1134: b9401500     	ldr	w0, [x8, #0x14]
    1138: 14000029     	b	0x11dc <nb_fan_gpio_proc+0x128>
    113c: 90000001     	adrp	x1, 0x1000 <nb_fan_parse_dt+0x268>
		000000000000113c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6fe
    1140: 91000021     	add	x1, x1, #0x0
		0000000000001140:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6fe
    1144: 94000000     	bl	0x1144 <nb_fan_gpio_proc+0x90>
		0000000000001144:  R_AARCH64_CALL26	gpio_request
    1148: f94006a8     	ldr	x8, [x21, #0x8]
    114c: b9401504     	ldr	w4, [x8, #0x14]
    1150: 35000300     	cbnz	w0, 0x11b0 <nb_fan_gpio_proc+0xfc>
    1154: 2a0403e0     	mov	w0, w4
    1158: 94000000     	bl	0x1158 <nb_fan_gpio_proc+0xa4>
		0000000000001158:  R_AARCH64_CALL26	gpio_to_desc
    115c: 94000000     	bl	0x115c <nb_fan_gpio_proc+0xa8>
		000000000000115c:  R_AARCH64_CALL26	gpiod_to_irq
    1160: f94006a8     	ldr	x8, [x21, #0x8]
    1164: 52800043     	mov	w3, #0x2                // =2
    1168: 90000001     	adrp	x1, 0x1000 <nb_fan_parse_dt+0x268>
		0000000000001168:  R_AARCH64_ADR_PREL_PG_HI21	.text+0xd5c
    116c: 91000021     	add	x1, x1, #0x0
		000000000000116c:  R_AARCH64_ADD_ABS_LO12_NC	.text+0xd5c
    1170: 90000004     	adrp	x4, 0x1000 <nb_fan_parse_dt+0x268>
		0000000000001170:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f1
    1174: 91000084     	add	x4, x4, #0x0
		0000000000001174:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f1
    1178: b9001d00     	str	w0, [x8, #0x1c]
    117c: aa1f03e2     	mov	x2, xzr
    1180: 72a00403     	movk	w3, #0x20, lsl #16
    1184: f94006a8     	ldr	x8, [x21, #0x8]
    1188: aa1503e5     	mov	x5, x21
    118c: b9401d00     	ldr	w0, [x8, #0x1c]
    1190: 94000000     	bl	0x1190 <nb_fan_gpio_proc+0xdc>
		0000000000001190:  R_AARCH64_CALL26	request_threaded_irq
    1194: 36f802e0     	tbz	w0, #0x1f, 0x11f0 <nb_fan_gpio_proc+0x13c>
    1198: 90000008     	adrp	x8, 0x1000 <nb_fan_parse_dt+0x268>
		0000000000001198:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70d
    119c: 91000108     	add	x8, x8, #0x0
		000000000000119c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70d
    11a0: 2a0003f3     	mov	w19, w0
    11a4: aa0803e0     	mov	x0, x8
    11a8: 94000000     	bl	0x11a8 <nb_fan_gpio_proc+0xf4>
		00000000000011a8:  R_AARCH64_CALL26	_printk
    11ac: 1400000b     	b	0x11d8 <nb_fan_gpio_proc+0x124>
    11b0: 90000008     	adrp	x8, 0x1000 <nb_fan_parse_dt+0x268>
		00000000000011b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9f8
    11b4: 91000108     	add	x8, x8, #0x0
		00000000000011b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9f8
    11b8: 90000001     	adrp	x1, 0x1000 <nb_fan_parse_dt+0x268>
		00000000000011b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
    11bc: 91000021     	add	x1, x1, #0x0
		00000000000011bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
    11c0: 90000002     	adrp	x2, 0x1000 <nb_fan_parse_dt+0x268>
		00000000000011c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x168
    11c4: 91000042     	add	x2, x2, #0x0
		00000000000011c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x168
    11c8: 2a0003f3     	mov	w19, w0
    11cc: aa0803e0     	mov	x0, x8
    11d0: 52806903     	mov	w3, #0x348              // =840
    11d4: 94000000     	bl	0x11d4 <nb_fan_gpio_proc+0x120>
		00000000000011d4:  R_AARCH64_CALL26	_printk
    11d8: 2a1303e0     	mov	w0, w19
    11dc: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    11e0: f9400bf5     	ldr	x21, [sp, #0x10]
    11e4: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    11e8: d50323bf     	autiasp
    11ec: d65f03c0     	ret
    11f0: f94006a8     	ldr	x8, [x21, #0x8]
    11f4: b9401d00     	ldr	w0, [x8, #0x1c]
    11f8: 94000000     	bl	0x11f8 <nb_fan_gpio_proc+0x144>
		00000000000011f8:  R_AARCH64_CALL26	disable_irq
    11fc: 90000001     	adrp	x1, 0x1000 <nb_fan_parse_dt+0x268>
		00000000000011fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x964
    1200: 91000021     	add	x1, x1, #0x0
		0000000000001200:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x964
    1204: aa1303e0     	mov	x0, x19
    1208: 2a1f03e2     	mov	w2, wzr
    120c: 94000000     	bl	0x120c <nb_fan_gpio_proc+0x158>
		000000000000120c:  R_AARCH64_CALL26	of_get_named_gpio
    1210: f94006a9     	ldr	x9, [x21, #0x8]
    1214: b9001120     	str	w0, [x9, #0x10]
    1218: f94006a9     	ldr	x9, [x21, #0x8]
    121c: b9401120     	ldr	w0, [x9, #0x10]
    1220: 36f80180     	tbz	w0, #0x1f, 0x1250 <nb_fan_gpio_proc+0x19c>
    1224: 90000000     	adrp	x0, 0x1000 <nb_fan_parse_dt+0x268>
		0000000000001224:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81e
    1228: 91000000     	add	x0, x0, #0x0
		0000000000001228:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81e
    122c: 90000001     	adrp	x1, 0x1000 <nb_fan_parse_dt+0x268>
		000000000000122c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
    1230: 91000021     	add	x1, x1, #0x0
		0000000000001230:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
    1234: 90000002     	adrp	x2, 0x1000 <nb_fan_parse_dt+0x268>
		0000000000001234:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x168
    1238: 91000042     	add	x2, x2, #0x0
		0000000000001238:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x168
    123c: 52806aa3     	mov	w3, #0x355              // =853
    1240: 94000000     	bl	0x1240 <nb_fan_gpio_proc+0x18c>
		0000000000001240:  R_AARCH64_CALL26	_printk
    1244: f94006a8     	ldr	x8, [x21, #0x8]
    1248: b9401100     	ldr	w0, [x8, #0x10]
    124c: 17ffffe4     	b	0x11dc <nb_fan_gpio_proc+0x128>
    1250: 94000000     	bl	0x1250 <nb_fan_gpio_proc+0x19c>
		0000000000001250:  R_AARCH64_CALL26	gpio_to_desc
    1254: 94000000     	bl	0x1254 <nb_fan_gpio_proc+0x1a0>
		0000000000001254:  R_AARCH64_CALL26	gpiod_get_raw_value
    1258: 2a0003e4     	mov	w4, w0
    125c: 90000000     	adrp	x0, 0x1000 <nb_fan_parse_dt+0x268>
		000000000000125c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa75
    1260: 91000000     	add	x0, x0, #0x0
		0000000000001260:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa75
    1264: 90000001     	adrp	x1, 0x1000 <nb_fan_parse_dt+0x268>
		0000000000001264:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
    1268: 91000021     	add	x1, x1, #0x0
		0000000000001268:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
    126c: 90000002     	adrp	x2, 0x1000 <nb_fan_parse_dt+0x268>
		000000000000126c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x168
    1270: 91000042     	add	x2, x2, #0x0
		0000000000001270:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x168
    1274: 52806b03     	mov	w3, #0x358              // =856
    1278: 94000000     	bl	0x1278 <nb_fan_gpio_proc+0x1c4>
		0000000000001278:  R_AARCH64_CALL26	_printk
    127c: 2a1f03e0     	mov	w0, wzr
    1280: 17ffffd7     	b	0x11dc <nb_fan_gpio_proc+0x128>
