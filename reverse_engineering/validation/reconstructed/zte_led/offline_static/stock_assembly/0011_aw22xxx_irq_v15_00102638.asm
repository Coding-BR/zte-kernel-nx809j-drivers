
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001158 <aw22xxx_irq_v15>:
    1158: d503233f     	paciasp
    115c: d10143ff     	sub	sp, sp, #0x50
    1160: a9037bfd     	stp	x29, x30, [sp, #0x30]
    1164: a9044ff4     	stp	x20, x19, [sp, #0x40]
    1168: 9100c3fd     	add	x29, sp, #0x30
    116c: d5384108     	mrs	x8, SP_EL0
    1170: aa0103f3     	mov	x19, x1
    1174: 910033e2     	add	x2, sp, #0xc
    1178: f9438908     	ldr	x8, [x8, #0x710]
    117c: aa0103e0     	mov	x0, x1
    1180: 52800141     	mov	w1, #0xa                // =10
    1184: f81f83a8     	stur	x8, [x29, #-0x8]
    1188: 390033ff     	strb	wzr, [sp, #0xc]
    118c: 97fffcf0     	bl	0x54c <aw22xxx_i2c_read>
    1190: 394033e2     	ldrb	w2, [sp, #0xc]
    1194: 90000000     	adrp	x0, 0x1000 <aw22xxx_read_chipid+0x17c>
		0000000000001194:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x387
    1198: 91000000     	add	x0, x0, #0x0
		0000000000001198:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x387
    119c: 90000001     	adrp	x1, 0x1000 <aw22xxx_read_chipid+0x17c>
		000000000000119c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd74
    11a0: 91000021     	add	x1, x1, #0x0
		00000000000011a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd74
    11a4: 94000000     	bl	0x11a4 <aw22xxx_irq_v15+0x4c>
		00000000000011a4:  R_AARCH64_CALL26	_printk
    11a8: 394033e8     	ldrb	w8, [sp, #0xc]
    11ac: 370001a8     	tbnz	w8, #0x0, 0x11e0 <aw22xxx_irq_v15+0x88>
    11b0: 37200908     	tbnz	w8, #0x4, 0x12d0 <aw22xxx_irq_v15+0x178>
    11b4: d5384108     	mrs	x8, SP_EL0
    11b8: f9438908     	ldr	x8, [x8, #0x710]
    11bc: f85f83a9     	ldur	x9, [x29, #-0x8]
    11c0: eb09011f     	cmp	x8, x9
    11c4: 54000ea1     	b.ne	0x1398 <aw22xxx_irq_v15+0x240>
    11c8: 52800020     	mov	w0, #0x1                // =1
    11cc: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    11d0: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    11d4: 910143ff     	add	sp, sp, #0x50
    11d8: d50323bf     	autiasp
    11dc: d65f03c0     	ret
    11e0: 90000014     	adrp	x20, 0x1000 <aw22xxx_read_chipid+0x17c>
		00000000000011e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd74
    11e4: 91000294     	add	x20, x20, #0x0
		00000000000011e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd74
    11e8: 90000000     	adrp	x0, 0x1000 <aw22xxx_read_chipid+0x17c>
		00000000000011e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5a6
    11ec: 91000000     	add	x0, x0, #0x0
		00000000000011ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5a6
    11f0: aa1403e1     	mov	x1, x20
    11f4: 94000000     	bl	0x11f4 <aw22xxx_irq_v15+0x9c>
		00000000000011f4:  R_AARCH64_CALL26	_printk
    11f8: aa1303e0     	mov	x0, x19
    11fc: 52801fe1     	mov	w1, #0xff               // =255
    1200: 2a1f03e2     	mov	w2, wzr
    1204: 97fffc86     	bl	0x41c <aw22xxx_i2c_write>
    1208: 910043e2     	add	x2, sp, #0x10
    120c: aa1303e0     	mov	x0, x19
    1210: 52800081     	mov	w1, #0x4                // =4
    1214: 390043ff     	strb	wzr, [sp, #0x10]
    1218: 97fffccd     	bl	0x54c <aw22xxx_i2c_read>
    121c: 394043e8     	ldrb	w8, [sp, #0x10]
    1220: aa1303e0     	mov	x0, x19
    1224: 52800081     	mov	w1, #0x4                // =4
    1228: 121e7902     	and	w2, w8, #0xfffffffd
    122c: 390043e2     	strb	w2, [sp, #0x10]
    1230: 97fffc7b     	bl	0x41c <aw22xxx_i2c_write>
    1234: 910053e2     	add	x2, sp, #0x14
    1238: aa1303e0     	mov	x0, x19
    123c: 52800081     	mov	w1, #0x4                // =4
    1240: 390053ff     	strb	wzr, [sp, #0x14]
    1244: 97fffcc2     	bl	0x54c <aw22xxx_i2c_read>
    1248: 394053e8     	ldrb	w8, [sp, #0x14]
    124c: aa1303e0     	mov	x0, x19
    1250: 52800081     	mov	w1, #0x4                // =4
    1254: 121f7902     	and	w2, w8, #0xfffffffe
    1258: 390053e2     	strb	w2, [sp, #0x14]
    125c: 97fffc70     	bl	0x41c <aw22xxx_i2c_write>
    1260: 90000000     	adrp	x0, 0x1000 <aw22xxx_read_chipid+0x17c>
		0000000000001260:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x148c
    1264: 91000000     	add	x0, x0, #0x0
		0000000000001264:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x148c
    1268: 90000001     	adrp	x1, 0x1000 <aw22xxx_read_chipid+0x17c>
		0000000000001268:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x181c
    126c: 91000021     	add	x1, x1, #0x0
		000000000000126c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x181c
    1270: 52803542     	mov	w2, #0x1aa              // =426
    1274: 2a1f03e3     	mov	w3, wzr
    1278: 94000000     	bl	0x1278 <aw22xxx_irq_v15+0x120>
		0000000000001278:  R_AARCH64_CALL26	_printk
    127c: 910063e2     	add	x2, sp, #0x18
    1280: aa1303e0     	mov	x0, x19
    1284: 52800041     	mov	w1, #0x2                // =2
    1288: 390063ff     	strb	wzr, [sp, #0x18]
    128c: 97fffcb0     	bl	0x54c <aw22xxx_i2c_read>
    1290: 394063e8     	ldrb	w8, [sp, #0x18]
    1294: aa1303e0     	mov	x0, x19
    1298: 52800041     	mov	w1, #0x2                // =2
    129c: 121f7902     	and	w2, w8, #0xfffffffe
    12a0: 390063e2     	strb	w2, [sp, #0x18]
    12a4: 97fffc5e     	bl	0x41c <aw22xxx_i2c_write>
    12a8: 5280fa00     	mov	w0, #0x7d0              // =2000
    12ac: 52817701     	mov	w1, #0xbb8              // =3000
    12b0: 52800042     	mov	w2, #0x2                // =2
    12b4: 94000000     	bl	0x12b4 <aw22xxx_irq_v15+0x15c>
		00000000000012b4:  R_AARCH64_CALL26	usleep_range_state
    12b8: 90000000     	adrp	x0, 0x1000 <aw22xxx_read_chipid+0x17c>
		00000000000012b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7b1
    12bc: 91000000     	add	x0, x0, #0x0
		00000000000012bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7b1
    12c0: aa1403e1     	mov	x1, x20
    12c4: 94000000     	bl	0x12c4 <aw22xxx_irq_v15+0x16c>
		00000000000012c4:  R_AARCH64_CALL26	_printk
    12c8: 394033e8     	ldrb	w8, [sp, #0xc]
    12cc: 3627f748     	tbz	w8, #0x4, 0x11b4 <aw22xxx_irq_v15+0x5c>
    12d0: 90000000     	adrp	x0, 0x1000 <aw22xxx_read_chipid+0x17c>
		00000000000012d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8ea
    12d4: 91000000     	add	x0, x0, #0x0
		00000000000012d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8ea
    12d8: 90000001     	adrp	x1, 0x1000 <aw22xxx_read_chipid+0x17c>
		00000000000012d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd74
    12dc: 91000021     	add	x1, x1, #0x0
		00000000000012dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd74
    12e0: 94000000     	bl	0x12e0 <aw22xxx_irq_v15+0x188>
		00000000000012e0:  R_AARCH64_CALL26	_printk
    12e4: aa1303e0     	mov	x0, x19
    12e8: 52801fe1     	mov	w1, #0xff               // =255
    12ec: 2a1f03e2     	mov	w2, wzr
    12f0: 97fffc4b     	bl	0x41c <aw22xxx_i2c_write>
    12f4: d10053a2     	sub	x2, x29, #0x14
    12f8: aa1303e0     	mov	x0, x19
    12fc: 52800081     	mov	w1, #0x4                // =4
    1300: 381ec3bf     	sturb	wzr, [x29, #-0x14]
    1304: 97fffc92     	bl	0x54c <aw22xxx_i2c_read>
    1308: 385ec3a8     	ldurb	w8, [x29, #-0x14]
    130c: aa1303e0     	mov	x0, x19
    1310: 52800081     	mov	w1, #0x4                // =4
    1314: 121e7902     	and	w2, w8, #0xfffffffd
    1318: 381ec3a2     	sturb	w2, [x29, #-0x14]
    131c: 97fffc40     	bl	0x41c <aw22xxx_i2c_write>
    1320: d10043a2     	sub	x2, x29, #0x10
    1324: aa1303e0     	mov	x0, x19
    1328: 52800081     	mov	w1, #0x4                // =4
    132c: 381f03bf     	sturb	wzr, [x29, #-0x10]
    1330: 97fffc87     	bl	0x54c <aw22xxx_i2c_read>
    1334: 385f03a8     	ldurb	w8, [x29, #-0x10]
    1338: aa1303e0     	mov	x0, x19
    133c: 52800081     	mov	w1, #0x4                // =4
    1340: 321f0102     	orr	w2, w8, #0x2
    1344: 381f03a2     	sturb	w2, [x29, #-0x10]
    1348: 97fffc35     	bl	0x41c <aw22xxx_i2c_write>
    134c: d10033a2     	sub	x2, x29, #0xc
    1350: aa1303e0     	mov	x0, x19
    1354: 52800081     	mov	w1, #0x4                // =4
    1358: 381f43bf     	sturb	wzr, [x29, #-0xc]
    135c: 97fffc7c     	bl	0x54c <aw22xxx_i2c_read>
    1360: 385f43a8     	ldurb	w8, [x29, #-0xc]
    1364: aa1303e0     	mov	x0, x19
    1368: 52800081     	mov	w1, #0x4                // =4
    136c: 32000102     	orr	w2, w8, #0x1
    1370: 381f43a2     	sturb	w2, [x29, #-0xc]
    1374: 97fffc2a     	bl	0x41c <aw22xxx_i2c_write>
    1378: b9430268     	ldr	w8, [x19, #0x300]
    137c: 34fff1c8     	cbz	w8, 0x11b4 <aw22xxx_irq_v15+0x5c>
    1380: 90000008     	adrp	x8, 0x1000 <aw22xxx_read_chipid+0x17c>
		0000000000001380:  R_AARCH64_ADR_PREL_PG_HI21	system_wq
    1384: 9108c262     	add	x2, x19, #0x230
    1388: 52800400     	mov	w0, #0x20               // =32
    138c: f9400101     	ldr	x1, [x8]
		000000000000138c:  R_AARCH64_LDST64_ABS_LO12_NC	system_wq
    1390: 94000000     	bl	0x1390 <aw22xxx_irq_v15+0x238>
		0000000000001390:  R_AARCH64_CALL26	queue_work_on
    1394: 17ffff88     	b	0x11b4 <aw22xxx_irq_v15+0x5c>
    1398: 94000000     	bl	0x1398 <aw22xxx_irq_v15+0x240>
		0000000000001398:  R_AARCH64_CALL26	__stack_chk_fail
