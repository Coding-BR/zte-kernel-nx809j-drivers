
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000113c <gf_remove>:
    113c: d503233f     	paciasp
    1140: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1144: f9000bf3     	str	x19, [sp, #0x10]
    1148: 910003fd     	mov	x29, sp
    114c: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		000000000000114c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa02
    1150: 91000000     	add	x0, x0, #0x0
		0000000000001150:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa02
    1154: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2d8>
		0000000000001154:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1259
    1158: 91000021     	add	x1, x1, #0x0
		0000000000001158:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1259
    115c: 94000000     	bl	0x115c <gf_remove+0x20>
		000000000000115c:  R_AARCH64_CALL26	_printk
    1160: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		0000000000001160:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x120
    1164: 91000000     	add	x0, x0, #0x0
		0000000000001164:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x120
    1168: 94000000     	bl	0x1168 <gf_remove+0x2c>
		0000000000001168:  R_AARCH64_CALL26	wakeup_source_remove
    116c: 90000013     	adrp	x19, 0x1000 <gf_probe+0x2d8>
		000000000000116c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x40
    1170: f9400260     	ldr	x0, [x19]
		0000000000001170:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
    1174: b4000060     	cbz	x0, 0x1180 <gf_remove+0x44>
    1178: 94000000     	bl	0x1178 <gf_remove+0x3c>
		0000000000001178:  R_AARCH64_CALL26	input_unregister_device
    117c: f9400260     	ldr	x0, [x19]
		000000000000117c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
    1180: 94000000     	bl	0x1180 <gf_remove+0x44>
		0000000000001180:  R_AARCH64_CALL26	input_free_device
    1184: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		0000000000001184:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
    1188: 91000000     	add	x0, x0, #0x0
		0000000000001188:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
    118c: 94000000     	bl	0x118c <gf_remove+0x50>
		000000000000118c:  R_AARCH64_CALL26	mutex_lock
    1190: 90000009     	adrp	x9, 0x1000 <gf_probe+0x2d8>
		0000000000001190:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
    1194: 91000129     	add	x9, x9, #0x0
		0000000000001194:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x18
    1198: f9400528     	ldr	x8, [x9, #0x8]
    119c: f940010a     	ldr	x10, [x8]
    11a0: eb09015f     	cmp	x10, x9
    11a4: 540005c1     	b.ne	0x125c <gf_remove+0x120>
    11a8: f940012a     	ldr	x10, [x9]
    11ac: f940054b     	ldr	x11, [x10, #0x8]
    11b0: eb09017f     	cmp	x11, x9
    11b4: 54000541     	b.ne	0x125c <gf_remove+0x120>
    11b8: f9000548     	str	x8, [x10, #0x8]
    11bc: f900010a     	str	x10, [x8]
    11c0: 90000013     	adrp	x19, 0x1000 <gf_probe+0x2d8>
		00000000000011c0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x10
    11c4: 91000273     	add	x19, x19, #0x0
		00000000000011c4:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x10
    11c8: d2802008     	mov	x8, #0x100              // =256
    11cc: 9000000a     	adrp	x10, 0x1000 <gf_probe+0x2d8>
		00000000000011cc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
    11d0: f2fbd5a8     	movk	x8, #0xdead, lsl #48
    11d4: 52800449     	mov	w9, #0x22               // =34
    11d8: f9400140     	ldr	x0, [x10]
		00000000000011d8:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8
    11dc: b9400261     	ldr	w1, [x19]
    11e0: aa090109     	orr	x9, x8, x9
    11e4: a900a668     	stp	x8, x9, [x19, #0x8]
    11e8: 94000000     	bl	0x11e8 <gf_remove+0xac>
		00000000000011e8:  R_AARCH64_CALL26	device_destroy
    11ec: b9400268     	ldr	w8, [x19]
    11f0: 5280002a     	mov	w10, #0x1               // =1
    11f4: d3464d09     	ubfx	x9, x8, #6, #14
    11f8: 9ac82148     	lsl	x8, x10, x8
    11fc: 1400001c     	b	0x126c <gf_remove+0x130>
    1200: 9000000a     	adrp	x10, 0x1000 <gf_probe+0x2d8>
		0000000000001200:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1e0
    1204: 9100014a     	add	x10, x10, #0x0
		0000000000001204:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1e0
    1208: 8b090d49     	add	x9, x10, x9, lsl #3
    120c: f828113f     	stclr	x8, [x9]
    1210: 90000008     	adrp	x8, 0x1000 <gf_probe+0x2d8>
		0000000000001210:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0xb0
    1214: f9400108     	ldr	x8, [x8]
		0000000000001214:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0xb0
    1218: b4000148     	cbz	x8, 0x1240 <gf_remove+0x104>
    121c: 90000008     	adrp	x8, 0x1000 <gf_probe+0x2d8>
		000000000000121c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f0
    1220: f9400100     	ldr	x0, [x8]
		0000000000001220:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f0
    1224: 94000000     	bl	0x1224 <gf_remove+0xe8>
		0000000000001224:  R_AARCH64_CALL26	panel_event_notifier_unregister
    1228: 90000013     	adrp	x19, 0x1000 <gf_probe+0x2d8>
		0000000000001228:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0xb0
    122c: 91000273     	add	x19, x19, #0x0
		000000000000122c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0xb0
    1230: 91002260     	add	x0, x19, #0x8
    1234: 94000000     	bl	0x1234 <gf_remove+0xf8>
		0000000000001234:  R_AARCH64_CALL26	cancel_delayed_work_sync
    1238: f9400260     	ldr	x0, [x19]
    123c: 94000000     	bl	0x123c <gf_remove+0x100>
		000000000000123c:  R_AARCH64_CALL26	destroy_workqueue
    1240: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		0000000000001240:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
    1244: 91000000     	add	x0, x0, #0x0
		0000000000001244:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
    1248: 94000000     	bl	0x1248 <gf_remove+0x10c>
		0000000000001248:  R_AARCH64_CALL26	mutex_unlock
    124c: f9400bf3     	ldr	x19, [sp, #0x10]
    1250: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1254: d50323bf     	autiasp
    1258: d65f03c0     	ret
    125c: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		000000000000125c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
    1260: 91000000     	add	x0, x0, #0x0
		0000000000001260:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x18
    1264: 94000000     	bl	0x1264 <gf_remove+0x128>
		0000000000001264:  R_AARCH64_CALL26	__list_del_entry_valid_or_report
    1268: 17ffffd6     	b	0x11c0 <gf_remove+0x84>
    126c: 9000000a     	adrp	x10, 0x1000 <gf_probe+0x2d8>
		000000000000126c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1e0
    1270: 9100014a     	add	x10, x10, #0x0
		0000000000001270:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1e0
    1274: 8b090d49     	add	x9, x10, x9, lsl #3
    1278: f9800131     	prfm	pstl1strm, [x9]
    127c: c85f7d2a     	ldxr	x10, [x9]
    1280: 8a28014a     	bic	x10, x10, x8
    1284: c80b7d2a     	stxr	w11, x10, [x9]
    1288: 35ffffab     	cbnz	w11, 0x127c <gf_remove+0x140>
    128c: 17ffffe1     	b	0x1210 <gf_remove+0xd4>
