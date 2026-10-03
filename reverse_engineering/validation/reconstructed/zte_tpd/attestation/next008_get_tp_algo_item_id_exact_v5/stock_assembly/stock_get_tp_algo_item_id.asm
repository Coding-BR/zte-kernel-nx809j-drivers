
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000010fc <get_tp_algo_item_id>:
    10fc: d503233f     	paciasp
    1100: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    1104: f9000bf5     	str	x21, [sp, #0x10]
    1108: a9024ff4     	stp	x20, x19, [sp, #0x20]
    110c: 910003fd     	mov	x29, sp
    1110: 90000015     	adrp	x21, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001110:  R_AARCH64_ADR_PREL_PG_HI21	ztp_algo_info_l
    1114: 910002b5     	add	x21, x21, #0x0
		0000000000001114:  R_AARCH64_ADD_ABS_LO12_NC	ztp_algo_info_l
    1118: aa0003f3     	mov	x19, x0
    111c: f94006b4     	ldr	x20, [x21, #0x8]
    1120: 94000000     	bl	0x1120 <get_tp_algo_item_id+0x24>
		0000000000001120:  R_AARCH64_CALL26	strlen
    1124: aa0003e2     	mov	x2, x0
    1128: aa1303e0     	mov	x0, x19
    112c: aa1403e1     	mov	x1, x20
    1130: 94000000     	bl	0x1130 <get_tp_algo_item_id+0x34>
		0000000000001130:  R_AARCH64_CALL26	strnstr
    1134: b50007e0     	cbnz	x0, 0x1230 <get_tp_algo_item_id+0x134>
    1138: 90000015     	adrp	x21, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001138:  R_AARCH64_ADR_PREL_PG_HI21	ztp_algo_info_l+0x10
    113c: 910002b5     	add	x21, x21, #0x0
		000000000000113c:  R_AARCH64_ADD_ABS_LO12_NC	ztp_algo_info_l+0x10
    1140: aa1303e0     	mov	x0, x19
    1144: f94006b4     	ldr	x20, [x21, #0x8]
    1148: 94000000     	bl	0x1148 <get_tp_algo_item_id+0x4c>
		0000000000001148:  R_AARCH64_CALL26	strlen
    114c: aa0003e2     	mov	x2, x0
    1150: aa1303e0     	mov	x0, x19
    1154: aa1403e1     	mov	x1, x20
    1158: 94000000     	bl	0x1158 <get_tp_algo_item_id+0x5c>
		0000000000001158:  R_AARCH64_CALL26	strnstr
    115c: b50006a0     	cbnz	x0, 0x1230 <get_tp_algo_item_id+0x134>
    1160: 90000015     	adrp	x21, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001160:  R_AARCH64_ADR_PREL_PG_HI21	ztp_algo_info_l+0x20
    1164: 910002b5     	add	x21, x21, #0x0
		0000000000001164:  R_AARCH64_ADD_ABS_LO12_NC	ztp_algo_info_l+0x20
    1168: aa1303e0     	mov	x0, x19
    116c: f94006b4     	ldr	x20, [x21, #0x8]
    1170: 94000000     	bl	0x1170 <get_tp_algo_item_id+0x74>
		0000000000001170:  R_AARCH64_CALL26	strlen
    1174: aa0003e2     	mov	x2, x0
    1178: aa1303e0     	mov	x0, x19
    117c: aa1403e1     	mov	x1, x20
    1180: 94000000     	bl	0x1180 <get_tp_algo_item_id+0x84>
		0000000000001180:  R_AARCH64_CALL26	strnstr
    1184: b5000560     	cbnz	x0, 0x1230 <get_tp_algo_item_id+0x134>
    1188: 90000015     	adrp	x21, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001188:  R_AARCH64_ADR_PREL_PG_HI21	ztp_algo_info_l+0x30
    118c: 910002b5     	add	x21, x21, #0x0
		000000000000118c:  R_AARCH64_ADD_ABS_LO12_NC	ztp_algo_info_l+0x30
    1190: aa1303e0     	mov	x0, x19
    1194: f94006b4     	ldr	x20, [x21, #0x8]
    1198: 94000000     	bl	0x1198 <get_tp_algo_item_id+0x9c>
		0000000000001198:  R_AARCH64_CALL26	strlen
    119c: aa0003e2     	mov	x2, x0
    11a0: aa1303e0     	mov	x0, x19
    11a4: aa1403e1     	mov	x1, x20
    11a8: 94000000     	bl	0x11a8 <get_tp_algo_item_id+0xac>
		00000000000011a8:  R_AARCH64_CALL26	strnstr
    11ac: b5000420     	cbnz	x0, 0x1230 <get_tp_algo_item_id+0x134>
    11b0: 90000015     	adrp	x21, 0x1000 <zlog_register_work_deinit+0x14>
		00000000000011b0:  R_AARCH64_ADR_PREL_PG_HI21	ztp_algo_info_l+0x40
    11b4: 910002b5     	add	x21, x21, #0x0
		00000000000011b4:  R_AARCH64_ADD_ABS_LO12_NC	ztp_algo_info_l+0x40
    11b8: aa1303e0     	mov	x0, x19
    11bc: f94006b4     	ldr	x20, [x21, #0x8]
    11c0: 94000000     	bl	0x11c0 <get_tp_algo_item_id+0xc4>
		00000000000011c0:  R_AARCH64_CALL26	strlen
    11c4: aa0003e2     	mov	x2, x0
    11c8: aa1303e0     	mov	x0, x19
    11cc: aa1403e1     	mov	x1, x20
    11d0: 94000000     	bl	0x11d0 <get_tp_algo_item_id+0xd4>
		00000000000011d0:  R_AARCH64_CALL26	strnstr
    11d4: b50002e0     	cbnz	x0, 0x1230 <get_tp_algo_item_id+0x134>
    11d8: 90000015     	adrp	x21, 0x1000 <zlog_register_work_deinit+0x14>
		00000000000011d8:  R_AARCH64_ADR_PREL_PG_HI21	ztp_algo_info_l+0x50
    11dc: 910002b5     	add	x21, x21, #0x0
		00000000000011dc:  R_AARCH64_ADD_ABS_LO12_NC	ztp_algo_info_l+0x50
    11e0: aa1303e0     	mov	x0, x19
    11e4: f94006b4     	ldr	x20, [x21, #0x8]
    11e8: 94000000     	bl	0x11e8 <get_tp_algo_item_id+0xec>
		00000000000011e8:  R_AARCH64_CALL26	strlen
    11ec: aa0003e2     	mov	x2, x0
    11f0: aa1303e0     	mov	x0, x19
    11f4: aa1403e1     	mov	x1, x20
    11f8: 94000000     	bl	0x11f8 <get_tp_algo_item_id+0xfc>
		00000000000011f8:  R_AARCH64_CALL26	strnstr
    11fc: b50001a0     	cbnz	x0, 0x1230 <get_tp_algo_item_id+0x134>
    1200: 90000015     	adrp	x21, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001200:  R_AARCH64_ADR_PREL_PG_HI21	ztp_algo_info_l+0x60
    1204: 910002b5     	add	x21, x21, #0x0
		0000000000001204:  R_AARCH64_ADD_ABS_LO12_NC	ztp_algo_info_l+0x60
    1208: aa1303e0     	mov	x0, x19
    120c: f94006b4     	ldr	x20, [x21, #0x8]
    1210: 94000000     	bl	0x1210 <get_tp_algo_item_id+0x114>
		0000000000001210:  R_AARCH64_CALL26	strlen
    1214: aa0003e2     	mov	x2, x0
    1218: aa1303e0     	mov	x0, x19
    121c: aa1403e1     	mov	x1, x20
    1220: 94000000     	bl	0x1220 <get_tp_algo_item_id+0x124>
		0000000000001220:  R_AARCH64_CALL26	strnstr
    1224: b5000060     	cbnz	x0, 0x1230 <get_tp_algo_item_id+0x134>
    1228: 12800080     	mov	w0, #-0x5               // =-5
    122c: 14000008     	b	0x124c <get_tp_algo_item_id+0x150>
    1230: 394002a2     	ldrb	w2, [x21]
    1234: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001234:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8a74
    1238: 91000000     	add	x0, x0, #0x0
		0000000000001238:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8a74
    123c: 90000001     	adrp	x1, 0x1000 <zlog_register_work_deinit+0x14>
		000000000000123c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a41
    1240: 91000021     	add	x1, x1, #0x0
		0000000000001240:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a41
    1244: 94000000     	bl	0x1244 <get_tp_algo_item_id+0x148>
		0000000000001244:  R_AARCH64_CALL26	_printk
    1248: 394002a0     	ldrb	w0, [x21]
    124c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1250: f9400bf5     	ldr	x21, [sp, #0x10]
    1254: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    1258: d50323bf     	autiasp
    125c: d65f03c0     	ret
