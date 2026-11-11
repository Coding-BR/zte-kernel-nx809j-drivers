
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001148 <gf_remove>:
    1148: d503233f     	paciasp
    114c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1150: f9000bf3     	str	x19, [sp, #0x10]
    1154: 910003fd     	mov	x29, sp
    1158: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		0000000000001158:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x454
    115c: 91000000     	add	x0, x0, #0x0
		000000000000115c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x454
    1160: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2cc>
		0000000000001160:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x143b
    1164: 91000021     	add	x1, x1, #0x0
		0000000000001164:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x143b
    1168: 94000000     	bl	0x1168 <gf_remove+0x20>
		0000000000001168:  R_AARCH64_CALL26	_printk
    116c: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		000000000000116c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x120
    1170: 91000000     	add	x0, x0, #0x0
		0000000000001170:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x120
    1174: 94000000     	bl	0x1174 <gf_remove+0x2c>
		0000000000001174:  R_AARCH64_CALL26	wakeup_source_remove
    1178: 90000013     	adrp	x19, 0x1000 <gf_probe+0x2cc>
		0000000000001178:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x40
    117c: f9400260     	ldr	x0, [x19]
		000000000000117c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
    1180: b4000060     	cbz	x0, 0x118c <gf_remove+0x44>
    1184: 94000000     	bl	0x1184 <gf_remove+0x3c>
		0000000000001184:  R_AARCH64_CALL26	input_unregister_device
    1188: f9400260     	ldr	x0, [x19]
		0000000000001188:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
    118c: 94000000     	bl	0x118c <gf_remove+0x44>
		000000000000118c:  R_AARCH64_CALL26	input_free_device
    1190: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		0000000000001190:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
    1194: 91000000     	add	x0, x0, #0x0
		0000000000001194:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
    1198: 94000000     	bl	0x1198 <gf_remove+0x50>
		0000000000001198:  R_AARCH64_CALL26	mutex_lock
    119c: 90000009     	adrp	x9, 0x1000 <gf_probe+0x2cc>
		000000000000119c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
    11a0: 91000129     	add	x9, x9, #0x0
		00000000000011a0:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x18
    11a4: f9400528     	ldr	x8, [x9, #0x8]
    11a8: f940010a     	ldr	x10, [x8]
    11ac: eb09015f     	cmp	x10, x9
    11b0: 540005c1     	b.ne	0x1268 <gf_remove+0x120>
    11b4: f940012a     	ldr	x10, [x9]
    11b8: f940054b     	ldr	x11, [x10, #0x8]
    11bc: eb09017f     	cmp	x11, x9
    11c0: 54000541     	b.ne	0x1268 <gf_remove+0x120>
    11c4: f9000548     	str	x8, [x10, #0x8]
    11c8: f900010a     	str	x10, [x8]
    11cc: 90000013     	adrp	x19, 0x1000 <gf_probe+0x2cc>
		00000000000011cc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x10
    11d0: 91000273     	add	x19, x19, #0x0
		00000000000011d0:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x10
    11d4: d2802008     	mov	x8, #0x100              // =256
    11d8: 9000000a     	adrp	x10, 0x1000 <gf_probe+0x2cc>
		00000000000011d8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
    11dc: f2fbd5a8     	movk	x8, #0xdead, lsl #48
    11e0: 52800449     	mov	w9, #0x22               // =34
    11e4: f9400140     	ldr	x0, [x10]
		00000000000011e4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8
    11e8: b9400261     	ldr	w1, [x19]
    11ec: aa090109     	orr	x9, x8, x9
    11f0: a900a668     	stp	x8, x9, [x19, #0x8]
    11f4: 94000000     	bl	0x11f4 <gf_remove+0xac>
		00000000000011f4:  R_AARCH64_CALL26	device_destroy
    11f8: b9400268     	ldr	w8, [x19]
    11fc: 5280002a     	mov	w10, #0x1               // =1
    1200: d3464d09     	ubfx	x9, x8, #6, #14
    1204: 9ac82148     	lsl	x8, x10, x8
    1208: 1400001c     	b	0x1278 <gf_remove+0x130>
    120c: 9000000a     	adrp	x10, 0x1000 <gf_probe+0x2cc>
		000000000000120c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1e0
    1210: 9100014a     	add	x10, x10, #0x0
		0000000000001210:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1e0
    1214: 8b090d49     	add	x9, x10, x9, lsl #3
    1218: f828113f     	stclr	x8, [x9]
    121c: 90000008     	adrp	x8, 0x1000 <gf_probe+0x2cc>
		000000000000121c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0xb0
    1220: f9400108     	ldr	x8, [x8]
		0000000000001220:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0xb0
    1224: b4000148     	cbz	x8, 0x124c <gf_remove+0x104>
    1228: 90000008     	adrp	x8, 0x1000 <gf_probe+0x2cc>
		0000000000001228:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f0
    122c: f9400100     	ldr	x0, [x8]
		000000000000122c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f0
    1230: 94000000     	bl	0x1230 <gf_remove+0xe8>
		0000000000001230:  R_AARCH64_CALL26	panel_event_notifier_unregister
    1234: 90000013     	adrp	x19, 0x1000 <gf_probe+0x2cc>
		0000000000001234:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0xb0
    1238: 91000273     	add	x19, x19, #0x0
		0000000000001238:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0xb0
    123c: 91002260     	add	x0, x19, #0x8
    1240: 94000000     	bl	0x1240 <gf_remove+0xf8>
		0000000000001240:  R_AARCH64_CALL26	cancel_delayed_work_sync
    1244: f9400260     	ldr	x0, [x19]
    1248: 94000000     	bl	0x1248 <gf_remove+0x100>
		0000000000001248:  R_AARCH64_CALL26	destroy_workqueue
    124c: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		000000000000124c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
    1250: 91000000     	add	x0, x0, #0x0
		0000000000001250:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
    1254: 94000000     	bl	0x1254 <gf_remove+0x10c>
		0000000000001254:  R_AARCH64_CALL26	mutex_unlock
    1258: f9400bf3     	ldr	x19, [sp, #0x10]
    125c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1260: d50323bf     	autiasp
    1264: d65f03c0     	ret
    1268: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		0000000000001268:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
    126c: 91000000     	add	x0, x0, #0x0
		000000000000126c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x18
    1270: 94000000     	bl	0x1270 <gf_remove+0x128>
		0000000000001270:  R_AARCH64_CALL26	__list_del_entry_valid_or_report
    1274: 17ffffd6     	b	0x11cc <gf_remove+0x84>
    1278: 9000000a     	adrp	x10, 0x1000 <gf_probe+0x2cc>
		0000000000001278:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1e0
    127c: 9100014a     	add	x10, x10, #0x0
		000000000000127c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1e0
    1280: 8b090d49     	add	x9, x10, x9, lsl #3
    1284: f9800131     	prfm	pstl1strm, [x9]
    1288: c85f7d2a     	ldxr	x10, [x9]
    128c: 8a28014a     	bic	x10, x10, x8
    1290: c80b7d2a     	stxr	w11, x10, [x9]
    1294: 35ffffab     	cbnz	w11, 0x1288 <gf_remove+0x140>
    1298: 17ffffe1     	b	0x121c <gf_remove+0xd4>
