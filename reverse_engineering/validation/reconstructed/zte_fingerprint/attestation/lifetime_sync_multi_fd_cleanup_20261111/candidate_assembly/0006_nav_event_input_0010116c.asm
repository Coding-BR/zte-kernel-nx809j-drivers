
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001254 <nav_event_input>:
    1254: d503233f     	paciasp
    1258: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    125c: a9014ff4     	stp	x20, x19, [sp, #0x10]
    1260: 910003fd     	mov	x29, sp
    1264: 2a0003e2     	mov	w2, w0
    1268: 7100141f     	cmp	w0, #0x5
    126c: 540000ec     	b.gt	0x1288 <nav_event_input+0x34>
    1270: 7100085f     	cmp	w2, #0x2
    1274: 540005ed     	b.le	0x1330 <nav_event_input+0xdc>
    1278: 71000c5f     	cmp	w2, #0x3
    127c: 54000681     	b.ne	0x134c <nav_event_input+0xf8>
    1280: 52800cf3     	mov	w19, #0x67              // =103
    1284: 14000005     	b	0x1298 <nav_event_input+0x44>
    1288: 71001c5f     	cmp	w2, #0x7
    128c: 5400038c     	b.gt	0x12fc <nav_event_input+0xa8>
    1290: 54000741     	b.ne	0x1378 <nav_event_input+0x124>
    1294: 52800e53     	mov	w19, #0x72              // =114
    1298: 90000014     	adrp	x20, 0x1000 <gf_ioctl+0x3b8>
		0000000000001298:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x48
    129c: 52800021     	mov	w1, #0x1                // =1
    12a0: 2a1303e2     	mov	w2, w19
    12a4: f9400280     	ldr	x0, [x20]
		00000000000012a4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    12a8: 52800023     	mov	w3, #0x1                // =1
    12ac: 94000000     	bl	0x12ac <nav_event_input+0x58>
		00000000000012ac:  R_AARCH64_CALL26	input_event
    12b0: f9400280     	ldr	x0, [x20]
		00000000000012b0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    12b4: 2a1f03e1     	mov	w1, wzr
    12b8: 2a1f03e2     	mov	w2, wzr
    12bc: 2a1f03e3     	mov	w3, wzr
    12c0: 94000000     	bl	0x12c0 <nav_event_input+0x6c>
		00000000000012c0:  R_AARCH64_CALL26	input_event
    12c4: f9400280     	ldr	x0, [x20]
		00000000000012c4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    12c8: 52800021     	mov	w1, #0x1                // =1
    12cc: 2a1303e2     	mov	w2, w19
    12d0: 2a1f03e3     	mov	w3, wzr
    12d4: 94000000     	bl	0x12d4 <nav_event_input+0x80>
		00000000000012d4:  R_AARCH64_CALL26	input_event
    12d8: f9400280     	ldr	x0, [x20]
		00000000000012d8:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    12dc: 2a1f03e1     	mov	w1, wzr
    12e0: 2a1f03e2     	mov	w2, wzr
    12e4: 2a1f03e3     	mov	w3, wzr
    12e8: 94000000     	bl	0x12e8 <nav_event_input+0x94>
		00000000000012e8:  R_AARCH64_CALL26	input_event
    12ec: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    12f0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    12f4: d50323bf     	autiasp
    12f8: d65f03c0     	ret
    12fc: 7100205f     	cmp	w2, #0x8
    1300: 54000760     	b.eq	0x13ec <nav_event_input+0x198>
    1304: 7100245f     	cmp	w2, #0x9
    1308: 540004a0     	b.eq	0x139c <nav_event_input+0x148>
    130c: 7100285f     	cmp	w2, #0xa
    1310: 540007c1     	b.ne	0x1408 <nav_event_input+0x1b4>
    1314: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3b8>
		0000000000001314:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xde0
    1318: 91000000     	add	x0, x0, #0x0
		0000000000001318:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xde0
    131c: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3b8>
		000000000000131c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfe0
    1320: 91000021     	add	x1, x1, #0x0
		0000000000001320:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfe0
    1324: 94000000     	bl	0x1324 <nav_event_input+0xd0>
		0000000000001324:  R_AARCH64_CALL26	_printk
    1328: 52800e73     	mov	w19, #0x73              // =115
    132c: 17ffffdb     	b	0x1298 <nav_event_input+0x44>
    1330: 7100045f     	cmp	w2, #0x1
    1334: 54000420     	b.eq	0x13b8 <nav_event_input+0x164>
    1338: 7100085f     	cmp	w2, #0x2
    133c: 54000661     	b.ne	0x1408 <nav_event_input+0x1b4>
    1340: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3b8>
		0000000000001340:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1550
    1344: 91000000     	add	x0, x0, #0x0
		0000000000001344:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1550
    1348: 1400001e     	b	0x13c0 <nav_event_input+0x16c>
    134c: 7100105f     	cmp	w2, #0x4
    1350: 54000400     	b.eq	0x13d0 <nav_event_input+0x17c>
    1354: 7100145f     	cmp	w2, #0x5
    1358: 54000581     	b.ne	0x1408 <nav_event_input+0x1b4>
    135c: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3b8>
		000000000000135c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa0f
    1360: 91000000     	add	x0, x0, #0x0
		0000000000001360:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa0f
    1364: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3b8>
		0000000000001364:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfe0
    1368: 91000021     	add	x1, x1, #0x0
		0000000000001368:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfe0
    136c: 94000000     	bl	0x136c <nav_event_input+0x118>
		000000000000136c:  R_AARCH64_CALL26	_printk
    1370: 52800d33     	mov	w19, #0x69              // =105
    1374: 17ffffc9     	b	0x1298 <nav_event_input+0x44>
    1378: 7100185f     	cmp	w2, #0x6
    137c: 54000461     	b.ne	0x1408 <nav_event_input+0x1b4>
    1380: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3b8>
		0000000000001380:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xff0
    1384: 91000000     	add	x0, x0, #0x0
		0000000000001384:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xff0
    1388: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3b8>
		0000000000001388:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfe0
    138c: 91000021     	add	x1, x1, #0x0
		000000000000138c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfe0
    1390: 94000000     	bl	0x1390 <nav_event_input+0x13c>
		0000000000001390:  R_AARCH64_CALL26	_printk
    1394: 52800d53     	mov	w19, #0x6a              // =106
    1398: 17ffffc0     	b	0x1298 <nav_event_input+0x44>
    139c: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3b8>
		000000000000139c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1577
    13a0: 91000000     	add	x0, x0, #0x0
		00000000000013a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1577
    13a4: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3b8>
		00000000000013a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfe0
    13a8: 91000021     	add	x1, x1, #0x0
		00000000000013a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfe0
    13ac: 94000000     	bl	0x13ac <nav_event_input+0x158>
		00000000000013ac:  R_AARCH64_CALL26	_printk
    13b0: 52801b33     	mov	w19, #0xd9              // =217
    13b4: 17ffffb9     	b	0x1298 <nav_event_input+0x44>
    13b8: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3b8>
		00000000000013b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x242
    13bc: 91000000     	add	x0, x0, #0x0
		00000000000013bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x242
    13c0: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3b8>
		00000000000013c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfe0
    13c4: 91000021     	add	x1, x1, #0x0
		00000000000013c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfe0
    13c8: 94000000     	bl	0x13c8 <nav_event_input+0x174>
		00000000000013c8:  R_AARCH64_CALL26	_printk
    13cc: 17ffffc8     	b	0x12ec <nav_event_input+0x98>
    13d0: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3b8>
		00000000000013d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x837
    13d4: 91000000     	add	x0, x0, #0x0
		00000000000013d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x837
    13d8: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3b8>
		00000000000013d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfe0
    13dc: 91000021     	add	x1, x1, #0x0
		00000000000013dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfe0
    13e0: 94000000     	bl	0x13e0 <nav_event_input+0x18c>
		00000000000013e0:  R_AARCH64_CALL26	_printk
    13e4: 52800d93     	mov	w19, #0x6c              // =108
    13e8: 17ffffac     	b	0x1298 <nav_event_input+0x44>
    13ec: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3b8>
		00000000000013ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1380
    13f0: 91000000     	add	x0, x0, #0x0
		00000000000013f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1380
    13f4: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3b8>
		00000000000013f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfe0
    13f8: 91000021     	add	x1, x1, #0x0
		00000000000013f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfe0
    13fc: 94000000     	bl	0x13fc <nav_event_input+0x1a8>
		00000000000013fc:  R_AARCH64_CALL26	_printk
    1400: 52801b13     	mov	w19, #0xd8              // =216
    1404: 17ffffa5     	b	0x1298 <nav_event_input+0x44>
    1408: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3b8>
		0000000000001408:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbb
    140c: 91000000     	add	x0, x0, #0x0
		000000000000140c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbb
    1410: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3b8>
		0000000000001410:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfe0
    1414: 91000021     	add	x1, x1, #0x0
		0000000000001414:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfe0
    1418: 94000000     	bl	0x1418 <nav_event_input+0x1c4>
		0000000000001418:  R_AARCH64_CALL26	_printk
    141c: 2a1f03f3     	mov	w19, wzr
    1420: 17ffff9e     	b	0x1298 <nav_event_input+0x44>
