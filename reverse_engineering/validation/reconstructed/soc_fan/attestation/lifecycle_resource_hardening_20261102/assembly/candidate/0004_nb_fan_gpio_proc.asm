
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
    10e4: aa0003f5     	mov	x21, x0
    10e8: 2a1f03e2     	mov	w2, wzr
    10ec: f9417513     	ldr	x19, [x8, #0x2e8]
    10f0: aa1303e0     	mov	x0, x19
    10f4: 94000000     	bl	0x10f4 <nb_fan_gpio_proc+0x40>
		00000000000010f4:  R_AARCH64_CALL26	of_get_named_gpio
    10f8: f94006a9     	ldr	x9, [x21, #0x8]
    10fc: aa1503e8     	mov	x8, x21
    1100: b9001520     	str	w0, [x9, #0x14]
    1104: f94006a9     	ldr	x9, [x21, #0x8]
    1108: b9401521     	ldr	w1, [x9, #0x14]
    110c: 36f801a1     	tbz	w1, #0x1f, 0x1140 <nb_fan_gpio_proc+0x8c>
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
    112c: aa0803f3     	mov	x19, x8
    1130: 94000000     	bl	0x1130 <nb_fan_gpio_proc+0x7c>
		0000000000001130:  R_AARCH64_CALL26	_printk
    1134: f9400668     	ldr	x8, [x19, #0x8]
    1138: b9401500     	ldr	w0, [x8, #0x14]
    113c: 1400002a     	b	0x11e4 <nb_fan_gpio_proc+0x130>
    1140: f9400100     	ldr	x0, [x8]
    1144: 90000002     	adrp	x2, 0x1000 <nb_fan_parse_dt+0x268>
		0000000000001144:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6fe
    1148: 91000042     	add	x2, x2, #0x0
		0000000000001148:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6fe
    114c: 94000000     	bl	0x114c <nb_fan_gpio_proc+0x98>
		000000000000114c:  R_AARCH64_CALL26	devm_gpio_request
    1150: f94006a8     	ldr	x8, [x21, #0x8]
    1154: b9401504     	ldr	w4, [x8, #0x14]
    1158: 35000300     	cbnz	w0, 0x11b8 <nb_fan_gpio_proc+0x104>
    115c: 2a0403e0     	mov	w0, w4
    1160: 94000000     	bl	0x1160 <nb_fan_gpio_proc+0xac>
		0000000000001160:  R_AARCH64_CALL26	gpio_to_desc
    1164: 94000000     	bl	0x1164 <nb_fan_gpio_proc+0xb0>
		0000000000001164:  R_AARCH64_CALL26	gpiod_to_irq
    1168: f94006a8     	ldr	x8, [x21, #0x8]
    116c: 52800044     	mov	w4, #0x2                // =2
    1170: 90000002     	adrp	x2, 0x1000 <nb_fan_parse_dt+0x268>
		0000000000001170:  R_AARCH64_ADR_PREL_PG_HI21	.text+0xd5c
    1174: 91000042     	add	x2, x2, #0x0
		0000000000001174:  R_AARCH64_ADD_ABS_LO12_NC	.text+0xd5c
    1178: 90000005     	adrp	x5, 0x1000 <nb_fan_parse_dt+0x268>
		0000000000001178:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f1
    117c: 910000a5     	add	x5, x5, #0x0
		000000000000117c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f1
    1180: b9001d00     	str	w0, [x8, #0x1c]
    1184: aa1f03e3     	mov	x3, xzr
    1188: 72a00404     	movk	w4, #0x20, lsl #16
    118c: a94022a0     	ldp	x0, x8, [x21]
    1190: aa1503e6     	mov	x6, x21
    1194: b9401d01     	ldr	w1, [x8, #0x1c]
    1198: 94000000     	bl	0x1198 <nb_fan_gpio_proc+0xe4>
		0000000000001198:  R_AARCH64_CALL26	devm_request_threaded_irq
    119c: 36f802e0     	tbz	w0, #0x1f, 0x11f8 <nb_fan_gpio_proc+0x144>
    11a0: 90000008     	adrp	x8, 0x1000 <nb_fan_parse_dt+0x268>
		00000000000011a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70d
    11a4: 91000108     	add	x8, x8, #0x0
		00000000000011a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70d
    11a8: 2a0003f3     	mov	w19, w0
    11ac: aa0803e0     	mov	x0, x8
    11b0: 94000000     	bl	0x11b0 <nb_fan_gpio_proc+0xfc>
		00000000000011b0:  R_AARCH64_CALL26	_printk
    11b4: 1400000b     	b	0x11e0 <nb_fan_gpio_proc+0x12c>
    11b8: 90000008     	adrp	x8, 0x1000 <nb_fan_parse_dt+0x268>
		00000000000011b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9f8
    11bc: 91000108     	add	x8, x8, #0x0
		00000000000011bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9f8
    11c0: 90000001     	adrp	x1, 0x1000 <nb_fan_parse_dt+0x268>
		00000000000011c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
    11c4: 91000021     	add	x1, x1, #0x0
		00000000000011c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
    11c8: 90000002     	adrp	x2, 0x1000 <nb_fan_parse_dt+0x268>
		00000000000011c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x168
    11cc: 91000042     	add	x2, x2, #0x0
		00000000000011cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x168
    11d0: 2a0003f3     	mov	w19, w0
    11d4: aa0803e0     	mov	x0, x8
    11d8: 52806903     	mov	w3, #0x348              // =840
    11dc: 94000000     	bl	0x11dc <nb_fan_gpio_proc+0x128>
		00000000000011dc:  R_AARCH64_CALL26	_printk
    11e0: 2a1303e0     	mov	w0, w19
    11e4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    11e8: f9400bf5     	ldr	x21, [sp, #0x10]
    11ec: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    11f0: d50323bf     	autiasp
    11f4: d65f03c0     	ret
    11f8: f94006a8     	ldr	x8, [x21, #0x8]
    11fc: b9401d00     	ldr	w0, [x8, #0x1c]
    1200: 94000000     	bl	0x1200 <nb_fan_gpio_proc+0x14c>
		0000000000001200:  R_AARCH64_CALL26	disable_irq
    1204: 90000001     	adrp	x1, 0x1000 <nb_fan_parse_dt+0x268>
		0000000000001204:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x964
    1208: 91000021     	add	x1, x1, #0x0
		0000000000001208:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x964
    120c: aa1303e0     	mov	x0, x19
    1210: 2a1f03e2     	mov	w2, wzr
    1214: 94000000     	bl	0x1214 <nb_fan_gpio_proc+0x160>
		0000000000001214:  R_AARCH64_CALL26	of_get_named_gpio
    1218: f94006a9     	ldr	x9, [x21, #0x8]
    121c: b9001120     	str	w0, [x9, #0x10]
    1220: f94006a9     	ldr	x9, [x21, #0x8]
    1224: b9401120     	ldr	w0, [x9, #0x10]
    1228: 36f80180     	tbz	w0, #0x1f, 0x1258 <nb_fan_gpio_proc+0x1a4>
    122c: 90000000     	adrp	x0, 0x1000 <nb_fan_parse_dt+0x268>
		000000000000122c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81e
    1230: 91000000     	add	x0, x0, #0x0
		0000000000001230:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81e
    1234: 90000001     	adrp	x1, 0x1000 <nb_fan_parse_dt+0x268>
		0000000000001234:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
    1238: 91000021     	add	x1, x1, #0x0
		0000000000001238:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
    123c: 90000002     	adrp	x2, 0x1000 <nb_fan_parse_dt+0x268>
		000000000000123c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x168
    1240: 91000042     	add	x2, x2, #0x0
		0000000000001240:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x168
    1244: 52806aa3     	mov	w3, #0x355              // =853
    1248: 94000000     	bl	0x1248 <nb_fan_gpio_proc+0x194>
		0000000000001248:  R_AARCH64_CALL26	_printk
    124c: f94006a8     	ldr	x8, [x21, #0x8]
    1250: b9401100     	ldr	w0, [x8, #0x10]
    1254: 17ffffe4     	b	0x11e4 <nb_fan_gpio_proc+0x130>
    1258: 94000000     	bl	0x1258 <nb_fan_gpio_proc+0x1a4>
		0000000000001258:  R_AARCH64_CALL26	gpio_to_desc
    125c: 94000000     	bl	0x125c <nb_fan_gpio_proc+0x1a8>
		000000000000125c:  R_AARCH64_CALL26	gpiod_get_raw_value
    1260: 2a0003e4     	mov	w4, w0
    1264: 90000000     	adrp	x0, 0x1000 <nb_fan_parse_dt+0x268>
		0000000000001264:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa75
    1268: 91000000     	add	x0, x0, #0x0
		0000000000001268:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa75
    126c: 90000001     	adrp	x1, 0x1000 <nb_fan_parse_dt+0x268>
		000000000000126c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
    1270: 91000021     	add	x1, x1, #0x0
		0000000000001270:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
    1274: 90000002     	adrp	x2, 0x1000 <nb_fan_parse_dt+0x268>
		0000000000001274:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x168
    1278: 91000042     	add	x2, x2, #0x0
		0000000000001278:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x168
    127c: 52806b03     	mov	w3, #0x358              // =856
    1280: 94000000     	bl	0x1280 <nb_fan_gpio_proc+0x1cc>
		0000000000001280:  R_AARCH64_CALL26	_printk
    1284: 2a1f03e0     	mov	w0, wzr
    1288: 17ffffd7     	b	0x11e4 <nb_fan_gpio_proc+0x130>
