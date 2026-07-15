
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000109c <__zte_power_supply_register>:
    109c: d503233f     	paciasp
    10a0: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    10a4: a9015ff8     	stp	x24, x23, [sp, #0x10]
    10a8: a90257f6     	stp	x22, x21, [sp, #0x20]
    10ac: a9034ff4     	stp	x20, x19, [sp, #0x30]
    10b0: 910003fd     	mov	x29, sp
    10b4: b4000780     	cbz	x0, 0x11a4 <__zte_power_supply_register+0x108>
    10b8: b40009a1     	cbz	x1, 0x11ec <__zte_power_supply_register+0x150>
    10bc: f9400028     	ldr	x8, [x1]
    10c0: b4000968     	cbz	x8, 0x11ec <__zte_power_supply_register+0x150>
    10c4: f9401028     	ldr	x8, [x1, #0x20]
    10c8: b4000928     	cbz	x8, 0x11ec <__zte_power_supply_register+0x150>
    10cc: f9401429     	ldr	x9, [x1, #0x28]
    10d0: b40008e9     	cbz	x9, 0x11ec <__zte_power_supply_register+0x150>
    10d4: aa1f03eb     	mov	x11, xzr
    10d8: 5280002a     	mov	w10, #0x1               // =1
    10dc: 14000005     	b	0x10f0 <__zte_power_supply_register+0x54>
    10e0: 93407d4b     	sxtw	x11, w10
    10e4: 1100054a     	add	w10, w10, #0x1
    10e8: eb0b013f     	cmp	x9, x11
    10ec: 54000129     	b.ls	0x1110 <__zte_power_supply_register+0x74>
    10f0: b86b790b     	ldr	w11, [x8, x11, lsl #2]
    10f4: 7101057f     	cmp	w11, #0x41
    10f8: 54ffff41     	b.ne	0x10e0 <__zte_power_supply_register+0x44>
    10fc: f940082b     	ldr	x11, [x1, #0x10]
    1100: b400076b     	cbz	x11, 0x11ec <__zte_power_supply_register+0x150>
    1104: f9400c2b     	ldr	x11, [x1, #0x18]
    1108: b5fffecb     	cbnz	x11, 0x10e0 <__zte_power_supply_register+0x44>
    110c: 14000038     	b	0x11ec <__zte_power_supply_register+0x150>
    1110: aa0003f7     	mov	x23, x0
    1114: aa0203f3     	mov	x19, x2
    1118: aa0103f6     	mov	x22, x1
    111c: 2a0303f5     	mov	w21, w3
    1120: d503201f     	nop
    1124: 90000008     	adrp	x8, 0x1000 <zte_power_supply_powers+0x8>
		0000000000001124:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x58
    1128: 5281b801     	mov	w1, #0xdc0              // =3520
    112c: 52809802     	mov	w2, #0x4c0              // =1216
    1130: f9400100     	ldr	x0, [x8]
		0000000000001130:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x58
    1134: 94000000     	bl	0x1134 <__zte_power_supply_register+0x98>
		0000000000001134:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    1138: b40011a0     	cbz	x0, 0x136c <__zte_power_supply_register+0x2d0>
    113c: aa0003f4     	mov	x20, x0
    1140: 9100e000     	add	x0, x0, #0x38
    1144: 94000000     	bl	0x1144 <__zte_power_supply_register+0xa8>
		0000000000001144:  R_AARCH64_CALL26	device_initialize
    1148: 90000009     	adrp	x9, 0x1000 <zte_power_supply_powers+0x8>
		0000000000001148:  R_AARCH64_ADR_PREL_PG_HI21	zte_power_supply_class
    114c: 9000000a     	adrp	x10, 0x1000 <zte_power_supply_powers+0x8>
		000000000000114c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
    1150: 9100014a     	add	x10, x10, #0x0
		0000000000001150:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x18
    1154: f9400129     	ldr	x9, [x9]
		0000000000001154:  R_AARCH64_LDST64_ABS_LO12_NC	zte_power_supply_class
    1158: aa1403e8     	mov	x8, x20
    115c: f9005a8a     	str	x10, [x20, #0xb0]
    1160: 9000000a     	adrp	x10, 0x1000 <zte_power_supply_powers+0x8>
		0000000000001160:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1638
    1164: 9100014a     	add	x10, x10, #0x0
		0000000000001164:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1638
    1168: f9004e97     	str	x23, [x20, #0x98]
    116c: f901b28a     	str	x10, [x20, #0x360]
    1170: f901aa89     	str	x9, [x20, #0x350]
    1174: f9006a94     	str	x20, [x20, #0xd0]
    1178: f9000296     	str	x22, [x20]
    117c: b40005d3     	cbz	x19, 0x1234 <__zte_power_supply_register+0x198>
    1180: a9412a6b     	ldp	x11, x10, [x19, #0x10]
    1184: f9400669     	ldr	x9, [x19, #0x8]
    1188: f901ad0a     	str	x10, [x8, #0x358]
    118c: f900190b     	str	x11, [x8, #0x30]
    1190: b40003c9     	cbz	x9, 0x1208 <__zte_power_supply_register+0x16c>
    1194: b140053f     	cmn	x9, #0x1, lsl #12       // =0x1000
    1198: 540003c9     	b.ls	0x1210 <__zte_power_supply_register+0x174>
    119c: aa1f03e9     	mov	x9, xzr
    11a0: 14000022     	b	0x1228 <__zte_power_supply_register+0x18c>
    11a4: f9400028     	ldr	x8, [x1]
    11a8: 90000009     	adrp	x9, 0x1000 <zte_power_supply_powers+0x8>
		00000000000011a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x325
    11ac: 91000129     	add	x9, x9, #0x0
		00000000000011ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x325
    11b0: 9000000a     	adrp	x10, 0x1000 <zte_power_supply_powers+0x8>
		00000000000011b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x42c
    11b4: 9100014a     	add	x10, x10, #0x0
		00000000000011b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x42c
    11b8: aa0003f3     	mov	x19, x0
    11bc: aa0903e0     	mov	x0, x9
    11c0: aa0103f4     	mov	x20, x1
    11c4: aa0a03e1     	mov	x1, x10
    11c8: aa0203f5     	mov	x21, x2
    11cc: aa0803e2     	mov	x2, x8
    11d0: 2a0303f6     	mov	w22, w3
    11d4: 94000000     	bl	0x11d4 <__zte_power_supply_register+0x138>
		00000000000011d4:  R_AARCH64_CALL26	_printk
    11d8: aa1303e0     	mov	x0, x19
    11dc: aa1503e2     	mov	x2, x21
    11e0: aa1403e1     	mov	x1, x20
    11e4: 2a1603e3     	mov	w3, w22
    11e8: b5fff6a1     	cbnz	x1, 0x10bc <__zte_power_supply_register+0x20>
    11ec: 928002a0     	mov	x0, #-0x16              // =-22
    11f0: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    11f4: a94257f6     	ldp	x22, x21, [sp, #0x20]
    11f8: a9415ff8     	ldp	x24, x23, [sp, #0x10]
    11fc: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    1200: d50323bf     	autiasp
    1204: d65f03c0     	ret
    1208: f9400269     	ldr	x9, [x19]
    120c: 14000007     	b	0x1228 <__zte_power_supply_register+0x18c>
    1210: f940052a     	ldr	x10, [x9, #0x8]
    1214: 9000000b     	adrp	x11, 0x1000 <zte_power_supply_powers+0x8>
		0000000000001214:  R_AARCH64_ADR_PREL_PG_HI21	of_fwnode_ops
    1218: 9100016b     	add	x11, x11, #0x0
		0000000000001218:  R_AARCH64_ADD_ABS_LO12_NC	of_fwnode_ops
    121c: d1006129     	sub	x9, x9, #0x18
    1220: eb0b015f     	cmp	x10, x11
    1224: 9a9f0129     	csel	x9, x9, xzr, eq
    1228: f9001509     	str	x9, [x8, #0x28]
    122c: a942266a     	ldp	x10, x9, [x19, #0x20]
    1230: a900a50a     	stp	x10, x9, [x8, #0x8]
    1234: f94002c2     	ldr	x2, [x22]
    1238: 90000001     	adrp	x1, 0x1000 <zte_power_supply_powers+0x8>
		0000000000001238:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c3
    123c: 91000021     	add	x1, x1, #0x0
		000000000000123c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c3
    1240: 9100e100     	add	x0, x8, #0x38
    1244: 94000000     	bl	0x1244 <__zte_power_supply_register+0x1a8>
		0000000000001244:  R_AARCH64_CALL26	dev_set_name
    1248: 2a0003f3     	mov	w19, w0
    124c: 35000700     	cbnz	w0, 0x132c <__zte_power_supply_register+0x290>
    1250: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
    1254: 910f4289     	add	x9, x20, #0x3d0
    1258: 90000001     	adrp	x1, 0x1000 <zte_power_supply_powers+0x8>
		0000000000001258:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
    125c: 91000021     	add	x1, x1, #0x0
		000000000000125c:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
    1260: f901e688     	str	x8, [x20, #0x3c8]
    1264: 91102280     	add	x0, x20, #0x408
    1268: f901ea89     	str	x9, [x20, #0x3d0]
    126c: 52a00402     	mov	w2, #0x200000           // =2097152
    1270: aa1f03e3     	mov	x3, xzr
    1274: f901ee89     	str	x9, [x20, #0x3d8]
    1278: 90000009     	adrp	x9, 0x1000 <zte_power_supply_powers+0x8>
		0000000000001278:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x165c
    127c: 91000129     	add	x9, x9, #0x0
		000000000000127c:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x165c
    1280: f901f688     	str	x8, [x20, #0x3e8]
    1284: 910fc288     	add	x8, x20, #0x3f0
    1288: aa1f03e4     	mov	x4, xzr
    128c: f901f289     	str	x9, [x20, #0x3e0]
    1290: f901fa88     	str	x8, [x20, #0x3f0]
    1294: f901fe88     	str	x8, [x20, #0x3f8]
    1298: 90000008     	adrp	x8, 0x1000 <zte_power_supply_powers+0x8>
		0000000000001298:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x171c
    129c: 91000108     	add	x8, x8, #0x0
		000000000000129c:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x171c
    12a0: f9020288     	str	x8, [x20, #0x400]
    12a4: 94000000     	bl	0x12a4 <__zte_power_supply_register+0x208>
		00000000000012a4:  R_AARCH64_CALL26	init_timer_key
    12a8: aa1403e0     	mov	x0, x20
    12ac: 94000146     	bl	0x17c4 <zte_power_supply_check_supplies>
    12b0: 35000340     	cbnz	w0, 0x1318 <__zte_power_supply_register+0x27c>
    12b4: 9100e280     	add	x0, x20, #0x38
    12b8: b904529f     	str	wzr, [x20, #0x450]
    12bc: 94000000     	bl	0x12bc <__zte_power_supply_register+0x220>
		00000000000012bc:  R_AARCH64_CALL26	device_add
    12c0: 2a0003f3     	mov	w19, w0
    12c4: 35000340     	cbnz	w0, 0x132c <__zte_power_supply_register+0x290>
    12c8: 9100e280     	add	x0, x20, #0x38
    12cc: 120002a1     	and	w1, w21, #0x1
    12d0: 940000c2     	bl	0x15d8 <device_init_wakeup>
    12d4: 2a0003f3     	mov	w19, w0
    12d8: 350002a0     	cbnz	w0, 0x132c <__zte_power_supply_register+0x290>
    12dc: 14000026     	b	0x1374 <__zte_power_supply_register+0x2d8>
    12e0: 91116289     	add	x9, x20, #0x458
    12e4: 5280002a     	mov	w10, #0x1               // =1
    12e8: b82a013f     	stadd	w10, [x9]
    12ec: aa1403e8     	mov	x8, x20
    12f0: 90000009     	adrp	x9, 0x1000 <zte_power_supply_powers+0x8>
		00000000000012f0:  R_AARCH64_ADR_PREL_PG_HI21	system_power_efficient_wq
    12f4: 5280002a     	mov	w10, #0x1               // =1
    12f8: 910fa102     	add	x2, x8, #0x3e8
    12fc: f9400121     	ldr	x1, [x9]
		00000000000012fc:  R_AARCH64_LDST64_ABS_LO12_NC	system_power_efficient_wq
    1300: 52800400     	mov	w0, #0x20               // =32
    1304: 52800063     	mov	w3, #0x3                // =3
    1308: 3911550a     	strb	w10, [x8, #0x455]
    130c: 94000000     	bl	0x130c <__zte_power_supply_register+0x270>
		000000000000130c:  R_AARCH64_CALL26	queue_delayed_work_on
    1310: aa1403e0     	mov	x0, x20
    1314: 17ffffb7     	b	0x11f0 <__zte_power_supply_register+0x154>
    1318: 2a0003f3     	mov	w19, w0
    131c: 90000001     	adrp	x1, 0x1000 <zte_power_supply_powers+0x8>
		000000000000131c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24
    1320: 91000021     	add	x1, x1, #0x0
		0000000000001320:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24
    1324: 9100e280     	add	x0, x20, #0x38
    1328: 94000000     	bl	0x1328 <__zte_power_supply_register+0x28c>
		0000000000001328:  R_AARCH64_CALL26	_dev_info
    132c: 9100e280     	add	x0, x20, #0x38
    1330: 94000000     	bl	0x1330 <__zte_power_supply_register+0x294>
		0000000000001330:  R_AARCH64_CALL26	put_device
    1334: 93407e60     	sxtw	x0, w19
    1338: 17ffffae     	b	0x11f0 <__zte_power_supply_register+0x154>
    133c: 90000008     	adrp	x8, 0x1000 <zte_power_supply_powers+0x8>
		000000000000133c:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags
    1340: 91000108     	add	x8, x8, #0x0
		0000000000001340:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags
    1344: d5384114     	mrs	x20, SP_EL0
    1348: f9402a98     	ldr	x24, [x20, #0x50]
    134c: f9002a88     	str	x8, [x20, #0x50]
    1350: 90000008     	adrp	x8, 0x1000 <zte_power_supply_powers+0x8>
		0000000000001350:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x58
    1354: f9400100     	ldr	x0, [x8]
		0000000000001354:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x58
    1358: 5281b801     	mov	w1, #0xdc0              // =3520
    135c: 52809802     	mov	w2, #0x4c0              // =1216
    1360: 94000000     	bl	0x1360 <__zte_power_supply_register+0x2c4>
		0000000000001360:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    1364: f9002a98     	str	x24, [x20, #0x50]
    1368: b5ffeea0     	cbnz	x0, 0x113c <__zte_power_supply_register+0xa0>
    136c: 92800160     	mov	x0, #-0xc               // =-12
    1370: 17ffffa0     	b	0x11f0 <__zte_power_supply_register+0x154>
    1374: 91116289     	add	x9, x20, #0x458
    1378: f9800131     	prfm	pstl1strm, [x9]
    137c: 885f7d2a     	ldxr	w10, [x9]
    1380: 1100054a     	add	w10, w10, #0x1
    1384: 880b7d2a     	stxr	w11, w10, [x9]
    1388: 35ffffab     	cbnz	w11, 0x137c <__zte_power_supply_register+0x2e0>
    138c: 17ffffd8     	b	0x12ec <__zte_power_supply_register+0x250>
