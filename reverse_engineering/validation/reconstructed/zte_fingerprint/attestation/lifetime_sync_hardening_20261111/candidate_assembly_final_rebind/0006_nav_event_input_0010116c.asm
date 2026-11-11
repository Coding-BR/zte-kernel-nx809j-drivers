
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001240 <nav_event_input>:
    1240: d503233f     	paciasp
    1244: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1248: a9014ff4     	stp	x20, x19, [sp, #0x10]
    124c: 910003fd     	mov	x29, sp
    1250: 2a0003e2     	mov	w2, w0
    1254: 7100141f     	cmp	w0, #0x5
    1258: 540000ec     	b.gt	0x1274 <nav_event_input+0x34>
    125c: 7100085f     	cmp	w2, #0x2
    1260: 540005ed     	b.le	0x131c <nav_event_input+0xdc>
    1264: 71000c5f     	cmp	w2, #0x3
    1268: 54000681     	b.ne	0x1338 <nav_event_input+0xf8>
    126c: 52800cf3     	mov	w19, #0x67              // =103
    1270: 14000005     	b	0x1284 <nav_event_input+0x44>
    1274: 71001c5f     	cmp	w2, #0x7
    1278: 5400038c     	b.gt	0x12e8 <nav_event_input+0xa8>
    127c: 54000741     	b.ne	0x1364 <nav_event_input+0x124>
    1280: 52800e53     	mov	w19, #0x72              // =114
    1284: 90000014     	adrp	x20, 0x1000 <gf_ioctl+0x3cc>
		0000000000001284:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x48
    1288: 52800021     	mov	w1, #0x1                // =1
    128c: 2a1303e2     	mov	w2, w19
    1290: f9400280     	ldr	x0, [x20]
		0000000000001290:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    1294: 52800023     	mov	w3, #0x1                // =1
    1298: 94000000     	bl	0x1298 <nav_event_input+0x58>
		0000000000001298:  R_AARCH64_CALL26	input_event
    129c: f9400280     	ldr	x0, [x20]
		000000000000129c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    12a0: 2a1f03e1     	mov	w1, wzr
    12a4: 2a1f03e2     	mov	w2, wzr
    12a8: 2a1f03e3     	mov	w3, wzr
    12ac: 94000000     	bl	0x12ac <nav_event_input+0x6c>
		00000000000012ac:  R_AARCH64_CALL26	input_event
    12b0: f9400280     	ldr	x0, [x20]
		00000000000012b0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    12b4: 52800021     	mov	w1, #0x1                // =1
    12b8: 2a1303e2     	mov	w2, w19
    12bc: 2a1f03e3     	mov	w3, wzr
    12c0: 94000000     	bl	0x12c0 <nav_event_input+0x80>
		00000000000012c0:  R_AARCH64_CALL26	input_event
    12c4: f9400280     	ldr	x0, [x20]
		00000000000012c4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    12c8: 2a1f03e1     	mov	w1, wzr
    12cc: 2a1f03e2     	mov	w2, wzr
    12d0: 2a1f03e3     	mov	w3, wzr
    12d4: 94000000     	bl	0x12d4 <nav_event_input+0x94>
		00000000000012d4:  R_AARCH64_CALL26	input_event
    12d8: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    12dc: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    12e0: d50323bf     	autiasp
    12e4: d65f03c0     	ret
    12e8: 7100205f     	cmp	w2, #0x8
    12ec: 54000760     	b.eq	0x13d8 <nav_event_input+0x198>
    12f0: 7100245f     	cmp	w2, #0x9
    12f4: 540004a0     	b.eq	0x1388 <nav_event_input+0x148>
    12f8: 7100285f     	cmp	w2, #0xa
    12fc: 540007c1     	b.ne	0x13f4 <nav_event_input+0x1b4>
    1300: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3cc>
		0000000000001300:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xde0
    1304: 91000000     	add	x0, x0, #0x0
		0000000000001304:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xde0
    1308: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3cc>
		0000000000001308:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfe0
    130c: 91000021     	add	x1, x1, #0x0
		000000000000130c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfe0
    1310: 94000000     	bl	0x1310 <nav_event_input+0xd0>
		0000000000001310:  R_AARCH64_CALL26	_printk
    1314: 52800e73     	mov	w19, #0x73              // =115
    1318: 17ffffdb     	b	0x1284 <nav_event_input+0x44>
    131c: 7100045f     	cmp	w2, #0x1
    1320: 54000420     	b.eq	0x13a4 <nav_event_input+0x164>
    1324: 7100085f     	cmp	w2, #0x2
    1328: 54000661     	b.ne	0x13f4 <nav_event_input+0x1b4>
    132c: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3cc>
		000000000000132c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1550
    1330: 91000000     	add	x0, x0, #0x0
		0000000000001330:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1550
    1334: 1400001e     	b	0x13ac <nav_event_input+0x16c>
    1338: 7100105f     	cmp	w2, #0x4
    133c: 54000400     	b.eq	0x13bc <nav_event_input+0x17c>
    1340: 7100145f     	cmp	w2, #0x5
    1344: 54000581     	b.ne	0x13f4 <nav_event_input+0x1b4>
    1348: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3cc>
		0000000000001348:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa0f
    134c: 91000000     	add	x0, x0, #0x0
		000000000000134c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa0f
    1350: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3cc>
		0000000000001350:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfe0
    1354: 91000021     	add	x1, x1, #0x0
		0000000000001354:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfe0
    1358: 94000000     	bl	0x1358 <nav_event_input+0x118>
		0000000000001358:  R_AARCH64_CALL26	_printk
    135c: 52800d33     	mov	w19, #0x69              // =105
    1360: 17ffffc9     	b	0x1284 <nav_event_input+0x44>
    1364: 7100185f     	cmp	w2, #0x6
    1368: 54000461     	b.ne	0x13f4 <nav_event_input+0x1b4>
    136c: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3cc>
		000000000000136c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xff0
    1370: 91000000     	add	x0, x0, #0x0
		0000000000001370:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xff0
    1374: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3cc>
		0000000000001374:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfe0
    1378: 91000021     	add	x1, x1, #0x0
		0000000000001378:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfe0
    137c: 94000000     	bl	0x137c <nav_event_input+0x13c>
		000000000000137c:  R_AARCH64_CALL26	_printk
    1380: 52800d53     	mov	w19, #0x6a              // =106
    1384: 17ffffc0     	b	0x1284 <nav_event_input+0x44>
    1388: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3cc>
		0000000000001388:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1577
    138c: 91000000     	add	x0, x0, #0x0
		000000000000138c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1577
    1390: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3cc>
		0000000000001390:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfe0
    1394: 91000021     	add	x1, x1, #0x0
		0000000000001394:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfe0
    1398: 94000000     	bl	0x1398 <nav_event_input+0x158>
		0000000000001398:  R_AARCH64_CALL26	_printk
    139c: 52801b33     	mov	w19, #0xd9              // =217
    13a0: 17ffffb9     	b	0x1284 <nav_event_input+0x44>
    13a4: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3cc>
		00000000000013a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x242
    13a8: 91000000     	add	x0, x0, #0x0
		00000000000013a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x242
    13ac: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3cc>
		00000000000013ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfe0
    13b0: 91000021     	add	x1, x1, #0x0
		00000000000013b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfe0
    13b4: 94000000     	bl	0x13b4 <nav_event_input+0x174>
		00000000000013b4:  R_AARCH64_CALL26	_printk
    13b8: 17ffffc8     	b	0x12d8 <nav_event_input+0x98>
    13bc: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3cc>
		00000000000013bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x837
    13c0: 91000000     	add	x0, x0, #0x0
		00000000000013c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x837
    13c4: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3cc>
		00000000000013c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfe0
    13c8: 91000021     	add	x1, x1, #0x0
		00000000000013c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfe0
    13cc: 94000000     	bl	0x13cc <nav_event_input+0x18c>
		00000000000013cc:  R_AARCH64_CALL26	_printk
    13d0: 52800d93     	mov	w19, #0x6c              // =108
    13d4: 17ffffac     	b	0x1284 <nav_event_input+0x44>
    13d8: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3cc>
		00000000000013d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1380
    13dc: 91000000     	add	x0, x0, #0x0
		00000000000013dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1380
    13e0: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3cc>
		00000000000013e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfe0
    13e4: 91000021     	add	x1, x1, #0x0
		00000000000013e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfe0
    13e8: 94000000     	bl	0x13e8 <nav_event_input+0x1a8>
		00000000000013e8:  R_AARCH64_CALL26	_printk
    13ec: 52801b13     	mov	w19, #0xd8              // =216
    13f0: 17ffffa5     	b	0x1284 <nav_event_input+0x44>
    13f4: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3cc>
		00000000000013f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbb
    13f8: 91000000     	add	x0, x0, #0x0
		00000000000013f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbb
    13fc: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3cc>
		00000000000013fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfe0
    1400: 91000021     	add	x1, x1, #0x0
		0000000000001400:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfe0
    1404: 94000000     	bl	0x1404 <nav_event_input+0x1c4>
		0000000000001404:  R_AARCH64_CALL26	_printk
    1408: 2a1f03f3     	mov	w19, wzr
    140c: 17ffff9e     	b	0x1284 <nav_event_input+0x44>
