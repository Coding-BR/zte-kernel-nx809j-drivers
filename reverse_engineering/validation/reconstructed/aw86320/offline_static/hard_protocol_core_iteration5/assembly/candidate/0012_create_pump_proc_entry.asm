
/input/aw86320.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000011ac <create_pump_proc_entry>:
    11ac: d503233f     	paciasp
    11b0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    11b4: f9000bf3     	str	x19, [sp, #0x10]
    11b8: 910003fd     	mov	x29, sp
    11bc: 90000000     	adrp	x0, 0x1000 <irq_handle+0x1c>
		00000000000011bc:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x279
    11c0: 91000000     	add	x0, x0, #0x0
		00000000000011c0:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x279
    11c4: aa1f03e1     	mov	x1, xzr
    11c8: 94000000     	bl	0x11c8 <create_pump_proc_entry+0x1c>
		00000000000011c8:  R_AARCH64_CALL26	proc_mkdir
    11cc: 90000013     	adrp	x19, 0x1000 <irq_handle+0x1c>
		00000000000011cc:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_bss_base+0x10
    11d0: f9000260     	str	x0, [x19]
		00000000000011d0:  R_AARCH64_LDST64_ABS_LO12_NC	aw86320_bss_base+0x10
    11d4: b40007a0     	cbz	x0, 0x12c8 <create_pump_proc_entry+0x11c>
    11d8: aa0003e2     	mov	x2, x0
    11dc: 90000000     	adrp	x0, 0x1000 <irq_handle+0x1c>
		00000000000011dc:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x1d0
    11e0: 91000000     	add	x0, x0, #0x0
		00000000000011e0:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x1d0
    11e4: 90000003     	adrp	x3, 0x1000 <irq_handle+0x1c>
		00000000000011e4:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_base+0x290
    11e8: 91000063     	add	x3, x3, #0x0
		00000000000011e8:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_base+0x290
    11ec: 52803681     	mov	w1, #0x1b4              // =436
    11f0: 94000000     	bl	0x11f0 <create_pump_proc_entry+0x44>
		00000000000011f0:  R_AARCH64_CALL26	proc_create
    11f4: b40007e0     	cbz	x0, 0x12f0 <create_pump_proc_entry+0x144>
    11f8: f9400262     	ldr	x2, [x19]
		00000000000011f8:  R_AARCH64_LDST64_ABS_LO12_NC	aw86320_bss_base+0x10
    11fc: 90000000     	adrp	x0, 0x1000 <irq_handle+0x1c>
		00000000000011fc:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xf86
    1200: 91000000     	add	x0, x0, #0x0
		0000000000001200:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xf86
    1204: 90000003     	adrp	x3, 0x1000 <irq_handle+0x1c>
		0000000000001204:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_base+0x2f0
    1208: 91000063     	add	x3, x3, #0x0
		0000000000001208:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_base+0x2f0
    120c: 52803681     	mov	w1, #0x1b4              // =436
    1210: 94000000     	bl	0x1210 <create_pump_proc_entry+0x64>
		0000000000001210:  R_AARCH64_CALL26	proc_create
    1214: b4000800     	cbz	x0, 0x1314 <create_pump_proc_entry+0x168>
    1218: f9400262     	ldr	x2, [x19]
		0000000000001218:  R_AARCH64_LDST64_ABS_LO12_NC	aw86320_bss_base+0x10
    121c: 90000000     	adrp	x0, 0x1000 <irq_handle+0x1c>
		000000000000121c:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x588
    1220: 91000000     	add	x0, x0, #0x0
		0000000000001220:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x588
    1224: 90000003     	adrp	x3, 0x1000 <irq_handle+0x1c>
		0000000000001224:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_base+0x350
    1228: 91000063     	add	x3, x3, #0x0
		0000000000001228:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_base+0x350
    122c: 52803681     	mov	w1, #0x1b4              // =436
    1230: 94000000     	bl	0x1230 <create_pump_proc_entry+0x84>
		0000000000001230:  R_AARCH64_CALL26	proc_create
    1234: b4000820     	cbz	x0, 0x1338 <create_pump_proc_entry+0x18c>
    1238: f9400262     	ldr	x2, [x19]
		0000000000001238:  R_AARCH64_LDST64_ABS_LO12_NC	aw86320_bss_base+0x10
    123c: 90000000     	adrp	x0, 0x1000 <irq_handle+0x1c>
		000000000000123c:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x923
    1240: 91000000     	add	x0, x0, #0x0
		0000000000001240:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x923
    1244: 90000003     	adrp	x3, 0x1000 <irq_handle+0x1c>
		0000000000001244:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_base+0x3b0
    1248: 91000063     	add	x3, x3, #0x0
		0000000000001248:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_base+0x3b0
    124c: 52803681     	mov	w1, #0x1b4              // =436
    1250: 94000000     	bl	0x1250 <create_pump_proc_entry+0xa4>
		0000000000001250:  R_AARCH64_CALL26	proc_create
    1254: b4000840     	cbz	x0, 0x135c <create_pump_proc_entry+0x1b0>
    1258: f9400262     	ldr	x2, [x19]
		0000000000001258:  R_AARCH64_LDST64_ABS_LO12_NC	aw86320_bss_base+0x10
    125c: 90000000     	adrp	x0, 0x1000 <irq_handle+0x1c>
		000000000000125c:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x28a
    1260: 91000000     	add	x0, x0, #0x0
		0000000000001260:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x28a
    1264: 90000003     	adrp	x3, 0x1000 <irq_handle+0x1c>
		0000000000001264:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_base+0x410
    1268: 91000063     	add	x3, x3, #0x0
		0000000000001268:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_base+0x410
    126c: 52801241     	mov	w1, #0x92               // =146
    1270: 94000000     	bl	0x1270 <create_pump_proc_entry+0xc4>
		0000000000001270:  R_AARCH64_CALL26	proc_create
    1274: b4000860     	cbz	x0, 0x1380 <create_pump_proc_entry+0x1d4>
    1278: f9400262     	ldr	x2, [x19]
		0000000000001278:  R_AARCH64_LDST64_ABS_LO12_NC	aw86320_bss_base+0x10
    127c: 90000000     	adrp	x0, 0x1000 <irq_handle+0x1c>
		000000000000127c:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x9af
    1280: 91000000     	add	x0, x0, #0x0
		0000000000001280:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x9af
    1284: 90000003     	adrp	x3, 0x1000 <irq_handle+0x1c>
		0000000000001284:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_base+0x470
    1288: 91000063     	add	x3, x3, #0x0
		0000000000001288:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_base+0x470
    128c: 52801241     	mov	w1, #0x92               // =146
    1290: 94000000     	bl	0x1290 <create_pump_proc_entry+0xe4>
		0000000000001290:  R_AARCH64_CALL26	proc_create
    1294: b4000880     	cbz	x0, 0x13a4 <create_pump_proc_entry+0x1f8>
    1298: f9400262     	ldr	x2, [x19]
		0000000000001298:  R_AARCH64_LDST64_ABS_LO12_NC	aw86320_bss_base+0x10
    129c: 90000000     	adrp	x0, 0x1000 <irq_handle+0x1c>
		000000000000129c:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x2e5
    12a0: 91000000     	add	x0, x0, #0x0
		00000000000012a0:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x2e5
    12a4: 90000003     	adrp	x3, 0x1000 <irq_handle+0x1c>
		00000000000012a4:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_base+0x4d0
    12a8: 91000063     	add	x3, x3, #0x0
		00000000000012a8:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_base+0x4d0
    12ac: 52801241     	mov	w1, #0x92               // =146
    12b0: 94000000     	bl	0x12b0 <create_pump_proc_entry+0x104>
		00000000000012b0:  R_AARCH64_CALL26	proc_create
    12b4: b40008a0     	cbz	x0, 0x13c8 <create_pump_proc_entry+0x21c>
    12b8: f9400bf3     	ldr	x19, [sp, #0x10]
    12bc: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    12c0: d50323bf     	autiasp
    12c4: d65f03c0     	ret
    12c8: 90000003     	adrp	x3, 0x1000 <irq_handle+0x1c>
		00000000000012c8:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xa7f
    12cc: 91000063     	add	x3, x3, #0x0
		00000000000012cc:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xa7f
    12d0: 90000000     	adrp	x0, 0x1000 <irq_handle+0x1c>
		00000000000012d0:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x379
    12d4: 91000000     	add	x0, x0, #0x0
		00000000000012d4:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x379
    12d8: 90000001     	adrp	x1, 0x1000 <irq_handle+0x1c>
		00000000000012d8:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xb9a
    12dc: 91000021     	add	x1, x1, #0x0
		00000000000012dc:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xb9a
    12e0: 52807fc2     	mov	w2, #0x3fe              // =1022
    12e4: aa0303e4     	mov	x4, x3
    12e8: 94000000     	bl	0x12e8 <create_pump_proc_entry+0x13c>
		00000000000012e8:  R_AARCH64_CALL26	_printk
    12ec: 17fffff3     	b	0x12b8 <create_pump_proc_entry+0x10c>
    12f0: 90000000     	adrp	x0, 0x1000 <irq_handle+0x1c>
		00000000000012f0:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xe31
    12f4: 91000000     	add	x0, x0, #0x0
		00000000000012f4:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xe31
    12f8: 90000001     	adrp	x1, 0x1000 <irq_handle+0x1c>
		00000000000012f8:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xb9a
    12fc: 91000021     	add	x1, x1, #0x0
		00000000000012fc:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xb9a
    1300: 90000003     	adrp	x3, 0x1000 <irq_handle+0x1c>
		0000000000001300:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xa7f
    1304: 91000063     	add	x3, x3, #0x0
		0000000000001304:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xa7f
    1308: 528080a2     	mov	w2, #0x405              // =1029
    130c: 94000000     	bl	0x130c <create_pump_proc_entry+0x160>
		000000000000130c:  R_AARCH64_CALL26	_printk
    1310: 17ffffba     	b	0x11f8 <create_pump_proc_entry+0x4c>
    1314: 90000000     	adrp	x0, 0x1000 <irq_handle+0x1c>
		0000000000001314:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x5e
    1318: 91000000     	add	x0, x0, #0x0
		0000000000001318:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x5e
    131c: 90000001     	adrp	x1, 0x1000 <irq_handle+0x1c>
		000000000000131c:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xb9a
    1320: 91000021     	add	x1, x1, #0x0
		0000000000001320:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xb9a
    1324: 90000003     	adrp	x3, 0x1000 <irq_handle+0x1c>
		0000000000001324:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xa7f
    1328: 91000063     	add	x3, x3, #0x0
		0000000000001328:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xa7f
    132c: 52808142     	mov	w2, #0x40a              // =1034
    1330: 94000000     	bl	0x1330 <create_pump_proc_entry+0x184>
		0000000000001330:  R_AARCH64_CALL26	_printk
    1334: 17ffffb9     	b	0x1218 <create_pump_proc_entry+0x6c>
    1338: 90000000     	adrp	x0, 0x1000 <irq_handle+0x1c>
		0000000000001338:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x8b
    133c: 91000000     	add	x0, x0, #0x0
		000000000000133c:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x8b
    1340: 90000001     	adrp	x1, 0x1000 <irq_handle+0x1c>
		0000000000001340:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xb9a
    1344: 91000021     	add	x1, x1, #0x0
		0000000000001344:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xb9a
    1348: 90000003     	adrp	x3, 0x1000 <irq_handle+0x1c>
		0000000000001348:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xa7f
    134c: 91000063     	add	x3, x3, #0x0
		000000000000134c:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xa7f
    1350: 528081e2     	mov	w2, #0x40f              // =1039
    1354: 94000000     	bl	0x1354 <create_pump_proc_entry+0x1a8>
		0000000000001354:  R_AARCH64_CALL26	_printk
    1358: 17ffffb8     	b	0x1238 <create_pump_proc_entry+0x8c>
    135c: 90000000     	adrp	x0, 0x1000 <irq_handle+0x1c>
		000000000000135c:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x815
    1360: 91000000     	add	x0, x0, #0x0
		0000000000001360:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x815
    1364: 90000001     	adrp	x1, 0x1000 <irq_handle+0x1c>
		0000000000001364:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xb9a
    1368: 91000021     	add	x1, x1, #0x0
		0000000000001368:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xb9a
    136c: 90000003     	adrp	x3, 0x1000 <irq_handle+0x1c>
		000000000000136c:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xa7f
    1370: 91000063     	add	x3, x3, #0x0
		0000000000001370:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xa7f
    1374: 52808282     	mov	w2, #0x414              // =1044
    1378: 94000000     	bl	0x1378 <create_pump_proc_entry+0x1cc>
		0000000000001378:  R_AARCH64_CALL26	_printk
    137c: 17ffffb7     	b	0x1258 <create_pump_proc_entry+0xac>
    1380: 90000000     	adrp	x0, 0x1000 <irq_handle+0x1c>
		0000000000001380:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x28e
    1384: 91000000     	add	x0, x0, #0x0
		0000000000001384:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x28e
    1388: 90000001     	adrp	x1, 0x1000 <irq_handle+0x1c>
		0000000000001388:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xb9a
    138c: 91000021     	add	x1, x1, #0x0
		000000000000138c:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xb9a
    1390: 90000003     	adrp	x3, 0x1000 <irq_handle+0x1c>
		0000000000001390:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xa7f
    1394: 91000063     	add	x3, x3, #0x0
		0000000000001394:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xa7f
    1398: 52808322     	mov	w2, #0x419              // =1049
    139c: 94000000     	bl	0x139c <create_pump_proc_entry+0x1f0>
		000000000000139c:  R_AARCH64_CALL26	_printk
    13a0: 17ffffb6     	b	0x1278 <create_pump_proc_entry+0xcc>
    13a4: 90000000     	adrp	x0, 0x1000 <irq_handle+0x1c>
		00000000000013a4:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x2b8
    13a8: 91000000     	add	x0, x0, #0x0
		00000000000013a8:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x2b8
    13ac: 90000001     	adrp	x1, 0x1000 <irq_handle+0x1c>
		00000000000013ac:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xb9a
    13b0: 91000021     	add	x1, x1, #0x0
		00000000000013b0:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xb9a
    13b4: 90000003     	adrp	x3, 0x1000 <irq_handle+0x1c>
		00000000000013b4:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xa7f
    13b8: 91000063     	add	x3, x3, #0x0
		00000000000013b8:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xa7f
    13bc: 528083c2     	mov	w2, #0x41e              // =1054
    13c0: 94000000     	bl	0x13c0 <create_pump_proc_entry+0x214>
		00000000000013c0:  R_AARCH64_CALL26	_printk
    13c4: 17ffffb5     	b	0x1298 <create_pump_proc_entry+0xec>
    13c8: 90000000     	adrp	x0, 0x1000 <irq_handle+0x1c>
		00000000000013c8:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xe31
    13cc: 91000000     	add	x0, x0, #0x0
		00000000000013cc:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xe31
    13d0: 90000001     	adrp	x1, 0x1000 <irq_handle+0x1c>
		00000000000013d0:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xb9a
    13d4: 91000021     	add	x1, x1, #0x0
		00000000000013d4:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xb9a
    13d8: 90000003     	adrp	x3, 0x1000 <irq_handle+0x1c>
		00000000000013d8:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xa7f
    13dc: 91000063     	add	x3, x3, #0x0
		00000000000013dc:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xa7f
    13e0: 52808462     	mov	w2, #0x423              // =1059
    13e4: 94000000     	bl	0x13e4 <create_pump_proc_entry+0x238>
		00000000000013e4:  R_AARCH64_CALL26	_printk
    13e8: 17ffffb4     	b	0x12b8 <create_pump_proc_entry+0x10c>
