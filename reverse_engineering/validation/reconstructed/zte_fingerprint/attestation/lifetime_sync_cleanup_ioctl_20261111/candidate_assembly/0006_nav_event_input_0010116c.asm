
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001220 <nav_event_input>:
    1220: d503233f     	paciasp
    1224: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1228: a9014ff4     	stp	x20, x19, [sp, #0x10]
    122c: 910003fd     	mov	x29, sp
    1230: 2a0003e2     	mov	w2, w0
    1234: 7100141f     	cmp	w0, #0x5
    1238: 540000ec     	b.gt	0x1254 <nav_event_input+0x34>
    123c: 7100085f     	cmp	w2, #0x2
    1240: 540005ed     	b.le	0x12fc <nav_event_input+0xdc>
    1244: 71000c5f     	cmp	w2, #0x3
    1248: 54000681     	b.ne	0x1318 <nav_event_input+0xf8>
    124c: 52800cf3     	mov	w19, #0x67              // =103
    1250: 14000005     	b	0x1264 <nav_event_input+0x44>
    1254: 71001c5f     	cmp	w2, #0x7
    1258: 5400038c     	b.gt	0x12c8 <nav_event_input+0xa8>
    125c: 54000741     	b.ne	0x1344 <nav_event_input+0x124>
    1260: 52800e53     	mov	w19, #0x72              // =114
    1264: 90000014     	adrp	x20, 0x1000 <gf_ioctl+0x3ec>
		0000000000001264:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x48
    1268: 52800021     	mov	w1, #0x1                // =1
    126c: 2a1303e2     	mov	w2, w19
    1270: f9400280     	ldr	x0, [x20]
		0000000000001270:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    1274: 52800023     	mov	w3, #0x1                // =1
    1278: 94000000     	bl	0x1278 <nav_event_input+0x58>
		0000000000001278:  R_AARCH64_CALL26	input_event
    127c: f9400280     	ldr	x0, [x20]
		000000000000127c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    1280: 2a1f03e1     	mov	w1, wzr
    1284: 2a1f03e2     	mov	w2, wzr
    1288: 2a1f03e3     	mov	w3, wzr
    128c: 94000000     	bl	0x128c <nav_event_input+0x6c>
		000000000000128c:  R_AARCH64_CALL26	input_event
    1290: f9400280     	ldr	x0, [x20]
		0000000000001290:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    1294: 52800021     	mov	w1, #0x1                // =1
    1298: 2a1303e2     	mov	w2, w19
    129c: 2a1f03e3     	mov	w3, wzr
    12a0: 94000000     	bl	0x12a0 <nav_event_input+0x80>
		00000000000012a0:  R_AARCH64_CALL26	input_event
    12a4: f9400280     	ldr	x0, [x20]
		00000000000012a4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    12a8: 2a1f03e1     	mov	w1, wzr
    12ac: 2a1f03e2     	mov	w2, wzr
    12b0: 2a1f03e3     	mov	w3, wzr
    12b4: 94000000     	bl	0x12b4 <nav_event_input+0x94>
		00000000000012b4:  R_AARCH64_CALL26	input_event
    12b8: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    12bc: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    12c0: d50323bf     	autiasp
    12c4: d65f03c0     	ret
    12c8: 7100205f     	cmp	w2, #0x8
    12cc: 54000760     	b.eq	0x13b8 <nav_event_input+0x198>
    12d0: 7100245f     	cmp	w2, #0x9
    12d4: 540004a0     	b.eq	0x1368 <nav_event_input+0x148>
    12d8: 7100285f     	cmp	w2, #0xa
    12dc: 540007c1     	b.ne	0x13d4 <nav_event_input+0x1b4>
    12e0: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3ec>
		00000000000012e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe12
    12e4: 91000000     	add	x0, x0, #0x0
		00000000000012e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe12
    12e8: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3ec>
		00000000000012e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1012
    12ec: 91000021     	add	x1, x1, #0x0
		00000000000012ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1012
    12f0: 94000000     	bl	0x12f0 <nav_event_input+0xd0>
		00000000000012f0:  R_AARCH64_CALL26	_printk
    12f4: 52800e73     	mov	w19, #0x73              // =115
    12f8: 17ffffdb     	b	0x1264 <nav_event_input+0x44>
    12fc: 7100045f     	cmp	w2, #0x1
    1300: 54000420     	b.eq	0x1384 <nav_event_input+0x164>
    1304: 7100085f     	cmp	w2, #0x2
    1308: 54000661     	b.ne	0x13d4 <nav_event_input+0x1b4>
    130c: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3ec>
		000000000000130c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1582
    1310: 91000000     	add	x0, x0, #0x0
		0000000000001310:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1582
    1314: 1400001e     	b	0x138c <nav_event_input+0x16c>
    1318: 7100105f     	cmp	w2, #0x4
    131c: 54000400     	b.eq	0x139c <nav_event_input+0x17c>
    1320: 7100145f     	cmp	w2, #0x5
    1324: 54000581     	b.ne	0x13d4 <nav_event_input+0x1b4>
    1328: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3ec>
		0000000000001328:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa41
    132c: 91000000     	add	x0, x0, #0x0
		000000000000132c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa41
    1330: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3ec>
		0000000000001330:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1012
    1334: 91000021     	add	x1, x1, #0x0
		0000000000001334:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1012
    1338: 94000000     	bl	0x1338 <nav_event_input+0x118>
		0000000000001338:  R_AARCH64_CALL26	_printk
    133c: 52800d33     	mov	w19, #0x69              // =105
    1340: 17ffffc9     	b	0x1264 <nav_event_input+0x44>
    1344: 7100185f     	cmp	w2, #0x6
    1348: 54000461     	b.ne	0x13d4 <nav_event_input+0x1b4>
    134c: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3ec>
		000000000000134c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1022
    1350: 91000000     	add	x0, x0, #0x0
		0000000000001350:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1022
    1354: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3ec>
		0000000000001354:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1012
    1358: 91000021     	add	x1, x1, #0x0
		0000000000001358:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1012
    135c: 94000000     	bl	0x135c <nav_event_input+0x13c>
		000000000000135c:  R_AARCH64_CALL26	_printk
    1360: 52800d53     	mov	w19, #0x6a              // =106
    1364: 17ffffc0     	b	0x1264 <nav_event_input+0x44>
    1368: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3ec>
		0000000000001368:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15a9
    136c: 91000000     	add	x0, x0, #0x0
		000000000000136c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15a9
    1370: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3ec>
		0000000000001370:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1012
    1374: 91000021     	add	x1, x1, #0x0
		0000000000001374:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1012
    1378: 94000000     	bl	0x1378 <nav_event_input+0x158>
		0000000000001378:  R_AARCH64_CALL26	_printk
    137c: 52801b33     	mov	w19, #0xd9              // =217
    1380: 17ffffb9     	b	0x1264 <nav_event_input+0x44>
    1384: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3ec>
		0000000000001384:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x274
    1388: 91000000     	add	x0, x0, #0x0
		0000000000001388:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x274
    138c: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3ec>
		000000000000138c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1012
    1390: 91000021     	add	x1, x1, #0x0
		0000000000001390:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1012
    1394: 94000000     	bl	0x1394 <nav_event_input+0x174>
		0000000000001394:  R_AARCH64_CALL26	_printk
    1398: 17ffffc8     	b	0x12b8 <nav_event_input+0x98>
    139c: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3ec>
		000000000000139c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x869
    13a0: 91000000     	add	x0, x0, #0x0
		00000000000013a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x869
    13a4: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3ec>
		00000000000013a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1012
    13a8: 91000021     	add	x1, x1, #0x0
		00000000000013a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1012
    13ac: 94000000     	bl	0x13ac <nav_event_input+0x18c>
		00000000000013ac:  R_AARCH64_CALL26	_printk
    13b0: 52800d93     	mov	w19, #0x6c              // =108
    13b4: 17ffffac     	b	0x1264 <nav_event_input+0x44>
    13b8: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3ec>
		00000000000013b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13b2
    13bc: 91000000     	add	x0, x0, #0x0
		00000000000013bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13b2
    13c0: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3ec>
		00000000000013c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1012
    13c4: 91000021     	add	x1, x1, #0x0
		00000000000013c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1012
    13c8: 94000000     	bl	0x13c8 <nav_event_input+0x1a8>
		00000000000013c8:  R_AARCH64_CALL26	_printk
    13cc: 52801b13     	mov	w19, #0xd8              // =216
    13d0: 17ffffa5     	b	0x1264 <nav_event_input+0x44>
    13d4: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3ec>
		00000000000013d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xed
    13d8: 91000000     	add	x0, x0, #0x0
		00000000000013d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xed
    13dc: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3ec>
		00000000000013dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1012
    13e0: 91000021     	add	x1, x1, #0x0
		00000000000013e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1012
    13e4: 94000000     	bl	0x13e4 <nav_event_input+0x1c4>
		00000000000013e4:  R_AARCH64_CALL26	_printk
    13e8: 2a1f03f3     	mov	w19, wzr
    13ec: 17ffff9e     	b	0x1264 <nav_event_input+0x44>
