
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001224 <nav_event_input>:
    1224: d503233f     	paciasp
    1228: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    122c: a9014ff4     	stp	x20, x19, [sp, #0x10]
    1230: 910003fd     	mov	x29, sp
    1234: 2a0003e2     	mov	w2, w0
    1238: 7100141f     	cmp	w0, #0x5
    123c: 540000ec     	b.gt	0x1258 <nav_event_input+0x34>
    1240: 7100085f     	cmp	w2, #0x2
    1244: 540005ed     	b.le	0x1300 <nav_event_input+0xdc>
    1248: 71000c5f     	cmp	w2, #0x3
    124c: 54000681     	b.ne	0x131c <nav_event_input+0xf8>
    1250: 52800cf3     	mov	w19, #0x67              // =103
    1254: 14000005     	b	0x1268 <nav_event_input+0x44>
    1258: 71001c5f     	cmp	w2, #0x7
    125c: 5400038c     	b.gt	0x12cc <nav_event_input+0xa8>
    1260: 54000741     	b.ne	0x1348 <nav_event_input+0x124>
    1264: 52800e53     	mov	w19, #0x72              // =114
    1268: 90000014     	adrp	x20, 0x1000 <gf_release+0xd8>
		0000000000001268:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x40
    126c: 52800021     	mov	w1, #0x1                // =1
    1270: 2a1303e2     	mov	w2, w19
    1274: f9400280     	ldr	x0, [x20]
		0000000000001274:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
    1278: 52800023     	mov	w3, #0x1                // =1
    127c: 94000000     	bl	0x127c <nav_event_input+0x58>
		000000000000127c:  R_AARCH64_CALL26	input_event
    1280: f9400280     	ldr	x0, [x20]
		0000000000001280:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
    1284: 2a1f03e1     	mov	w1, wzr
    1288: 2a1f03e2     	mov	w2, wzr
    128c: 2a1f03e3     	mov	w3, wzr
    1290: 94000000     	bl	0x1290 <nav_event_input+0x6c>
		0000000000001290:  R_AARCH64_CALL26	input_event
    1294: f9400280     	ldr	x0, [x20]
		0000000000001294:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
    1298: 52800021     	mov	w1, #0x1                // =1
    129c: 2a1303e2     	mov	w2, w19
    12a0: 2a1f03e3     	mov	w3, wzr
    12a4: 94000000     	bl	0x12a4 <nav_event_input+0x80>
		00000000000012a4:  R_AARCH64_CALL26	input_event
    12a8: f9400280     	ldr	x0, [x20]
		00000000000012a8:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
    12ac: 2a1f03e1     	mov	w1, wzr
    12b0: 2a1f03e2     	mov	w2, wzr
    12b4: 2a1f03e3     	mov	w3, wzr
    12b8: 94000000     	bl	0x12b8 <nav_event_input+0x94>
		00000000000012b8:  R_AARCH64_CALL26	input_event
    12bc: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    12c0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    12c4: d50323bf     	autiasp
    12c8: d65f03c0     	ret
    12cc: 7100205f     	cmp	w2, #0x8
    12d0: 54000760     	b.eq	0x13bc <nav_event_input+0x198>
    12d4: 7100245f     	cmp	w2, #0x9
    12d8: 540004a0     	b.eq	0x136c <nav_event_input+0x148>
    12dc: 7100285f     	cmp	w2, #0xa
    12e0: 540007c1     	b.ne	0x13d8 <nav_event_input+0x1b4>
    12e4: 90000000     	adrp	x0, 0x1000 <gf_release+0xd8>
		00000000000012e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9b0
    12e8: 91000000     	add	x0, x0, #0x0
		00000000000012e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9b0
    12ec: 90000001     	adrp	x1, 0x1000 <gf_release+0xd8>
		00000000000012ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbef
    12f0: 91000021     	add	x1, x1, #0x0
		00000000000012f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbef
    12f4: 94000000     	bl	0x12f4 <nav_event_input+0xd0>
		00000000000012f4:  R_AARCH64_CALL26	_printk
    12f8: 52800e73     	mov	w19, #0x73              // =115
    12fc: 17ffffdb     	b	0x1268 <nav_event_input+0x44>
    1300: 7100045f     	cmp	w2, #0x1
    1304: 54000420     	b.eq	0x1388 <nav_event_input+0x164>
    1308: 7100085f     	cmp	w2, #0x2
    130c: 54000661     	b.ne	0x13d8 <nav_event_input+0x1b4>
    1310: 90000000     	adrp	x0, 0x1000 <gf_release+0xd8>
		0000000000001310:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1091
    1314: 91000000     	add	x0, x0, #0x0
		0000000000001314:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1091
    1318: 1400001e     	b	0x1390 <nav_event_input+0x16c>
    131c: 7100105f     	cmp	w2, #0x4
    1320: 54000400     	b.eq	0x13a0 <nav_event_input+0x17c>
    1324: 7100145f     	cmp	w2, #0x5
    1328: 54000581     	b.ne	0x13d8 <nav_event_input+0x1b4>
    132c: 90000000     	adrp	x0, 0x1000 <gf_release+0xd8>
		000000000000132c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x67b
    1330: 91000000     	add	x0, x0, #0x0
		0000000000001330:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x67b
    1334: 90000001     	adrp	x1, 0x1000 <gf_release+0xd8>
		0000000000001334:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbef
    1338: 91000021     	add	x1, x1, #0x0
		0000000000001338:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbef
    133c: 94000000     	bl	0x133c <nav_event_input+0x118>
		000000000000133c:  R_AARCH64_CALL26	_printk
    1340: 52800d33     	mov	w19, #0x69              // =105
    1344: 17ffffc9     	b	0x1268 <nav_event_input+0x44>
    1348: 7100185f     	cmp	w2, #0x6
    134c: 54000461     	b.ne	0x13d8 <nav_event_input+0x1b4>
    1350: 90000000     	adrp	x0, 0x1000 <gf_release+0xd8>
		0000000000001350:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbff
    1354: 91000000     	add	x0, x0, #0x0
		0000000000001354:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbff
    1358: 90000001     	adrp	x1, 0x1000 <gf_release+0xd8>
		0000000000001358:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbef
    135c: 91000021     	add	x1, x1, #0x0
		000000000000135c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbef
    1360: 94000000     	bl	0x1360 <nav_event_input+0x13c>
		0000000000001360:  R_AARCH64_CALL26	_printk
    1364: 52800d53     	mov	w19, #0x6a              // =106
    1368: 17ffffc0     	b	0x1268 <nav_event_input+0x44>
    136c: 90000000     	adrp	x0, 0x1000 <gf_release+0xd8>
		000000000000136c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10b8
    1370: 91000000     	add	x0, x0, #0x0
		0000000000001370:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10b8
    1374: 90000001     	adrp	x1, 0x1000 <gf_release+0xd8>
		0000000000001374:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbef
    1378: 91000021     	add	x1, x1, #0x0
		0000000000001378:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbef
    137c: 94000000     	bl	0x137c <nav_event_input+0x158>
		000000000000137c:  R_AARCH64_CALL26	_printk
    1380: 52801b33     	mov	w19, #0xd9              // =217
    1384: 17ffffb9     	b	0x1268 <nav_event_input+0x44>
    1388: 90000000     	adrp	x0, 0x1000 <gf_release+0xd8>
		0000000000001388:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x139
    138c: 91000000     	add	x0, x0, #0x0
		000000000000138c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x139
    1390: 90000001     	adrp	x1, 0x1000 <gf_release+0xd8>
		0000000000001390:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbef
    1394: 91000021     	add	x1, x1, #0x0
		0000000000001394:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbef
    1398: 94000000     	bl	0x1398 <nav_event_input+0x174>
		0000000000001398:  R_AARCH64_CALL26	_printk
    139c: 17ffffc8     	b	0x12bc <nav_event_input+0x98>
    13a0: 90000000     	adrp	x0, 0x1000 <gf_release+0xd8>
		00000000000013a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4a1
    13a4: 91000000     	add	x0, x0, #0x0
		00000000000013a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4a1
    13a8: 90000001     	adrp	x1, 0x1000 <gf_release+0xd8>
		00000000000013a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbef
    13ac: 91000021     	add	x1, x1, #0x0
		00000000000013ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbef
    13b0: 94000000     	bl	0x13b0 <nav_event_input+0x18c>
		00000000000013b0:  R_AARCH64_CALL26	_printk
    13b4: 52800d93     	mov	w19, #0x6c              // =108
    13b8: 17ffffac     	b	0x1268 <nav_event_input+0x44>
    13bc: 90000000     	adrp	x0, 0x1000 <gf_release+0xd8>
		00000000000013bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf6f
    13c0: 91000000     	add	x0, x0, #0x0
		00000000000013c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf6f
    13c4: 90000001     	adrp	x1, 0x1000 <gf_release+0xd8>
		00000000000013c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbef
    13c8: 91000021     	add	x1, x1, #0x0
		00000000000013c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbef
    13cc: 94000000     	bl	0x13cc <nav_event_input+0x1a8>
		00000000000013cc:  R_AARCH64_CALL26	_printk
    13d0: 52801b13     	mov	w19, #0xd8              // =216
    13d4: 17ffffa5     	b	0x1268 <nav_event_input+0x44>
    13d8: 90000000     	adrp	x0, 0x1000 <gf_release+0xd8>
		00000000000013d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa7
    13dc: 91000000     	add	x0, x0, #0x0
		00000000000013dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa7
    13e0: 90000001     	adrp	x1, 0x1000 <gf_release+0xd8>
		00000000000013e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbef
    13e4: 91000021     	add	x1, x1, #0x0
		00000000000013e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbef
    13e8: 94000000     	bl	0x13e8 <nav_event_input+0x1c4>
		00000000000013e8:  R_AARCH64_CALL26	_printk
    13ec: 2a1f03f3     	mov	w19, wzr
    13f0: 17ffff9e     	b	0x1268 <nav_event_input+0x44>
