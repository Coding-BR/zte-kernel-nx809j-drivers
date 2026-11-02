
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001325c <syna_spi_write>:
   1325c: d503233f     	paciasp
   13260: d10303ff     	sub	sp, sp, #0xc0
   13264: a9087bfd     	stp	x29, x30, [sp, #0x80]
   13268: a9095ff8     	stp	x24, x23, [sp, #0x90]
   1326c: a90a57f6     	stp	x22, x21, [sp, #0xa0]
   13270: a90b4ff4     	stp	x20, x19, [sp, #0xb0]
   13274: 910203fd     	add	x29, sp, #0x80
   13278: d5384108     	mrs	x8, SP_EL0
   1327c: f9438908     	ldr	x8, [x8, #0x710]
   13280: f81f83a8     	stur	x8, [x29, #-0x8]
   13284: f9400017     	ldr	x23, [x0]
   13288: a906ffff     	stp	xzr, xzr, [sp, #0x68]
   1328c: a905ffff     	stp	xzr, xzr, [sp, #0x58]
   13290: a904ffff     	stp	xzr, xzr, [sp, #0x48]
   13294: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   13298: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   1329c: a901ffff     	stp	xzr, xzr, [sp, #0x18]
   132a0: a900ffff     	stp	xzr, xzr, [sp, #0x8]
   132a4: b4000dd7     	cbz	x23, 0x1345c <syna_spi_write+0x200>
   132a8: f94002f4     	ldr	x20, [x23]
   132ac: b4000df4     	cbz	x20, 0x13468 <syna_spi_write+0x20c>
   132b0: 9101c2e0     	add	x0, x23, #0x70
   132b4: 2a0203f3     	mov	w19, w2
   132b8: aa0103f5     	mov	x21, x1
   132bc: 94000000     	bl	0x132bc <syna_spi_write+0x60>
		00000000000132bc:  R_AARCH64_CALL26	mutex_lock
   132c0: 529fffe8     	mov	w8, #0xffff             // =65535
   132c4: 6a33011f     	bics	wzr, w8, w19
   132c8: 54000de0     	b.eq	0x13484 <syna_spi_write+0x228>
   132cc: 910023e8     	add	x8, sp, #0x8
   132d0: a906ffff     	stp	xzr, xzr, [sp, #0x68]
   132d4: 2a1303e1     	mov	w1, w19
   132d8: a905ffff     	stp	xzr, xzr, [sp, #0x58]
   132dc: a904ffff     	stp	xzr, xzr, [sp, #0x48]
   132e0: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   132e4: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   132e8: a901ffff     	stp	xzr, xzr, [sp, #0x18]
   132ec: f90007e8     	str	x8, [sp, #0x8]
   132f0: f9000be8     	str	x8, [sp, #0x10]
   132f4: 91016108     	add	x8, x8, #0x58
   132f8: f90033e8     	str	x8, [sp, #0x60]
   132fc: f90037e8     	str	x8, [sp, #0x68]
   13300: b94066e8     	ldr	w8, [x23, #0x64]
   13304: 7100011f     	cmp	w8, #0x0
   13308: 1a9f1660     	csinc	w0, w19, wzr, ne
   1330c: 94000154     	bl	0x1385c <syna_spi_alloc_mem>
   13310: 37f80ca0     	tbnz	w0, #0x1f, 0x134a4 <syna_spi_write+0x248>
   13314: b4000d95     	cbz	x21, 0x134c4 <syna_spi_write+0x268>
   13318: 90000018     	adrp	x24, 0x13000 <syna_spi_read+0x88>
		0000000000013318:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8a8
   1331c: f9400300     	ldr	x0, [x24]
		000000000001331c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8a8
   13320: b4000d20     	cbz	x0, 0x134c4 <syna_spi_write+0x268>
   13324: 2a1303f6     	mov	w22, w19
   13328: aa1503e1     	mov	x1, x21
   1332c: aa1603e2     	mov	x2, x22
   13330: 94000000     	bl	0x13330 <syna_spi_write+0xd4>
		0000000000013330:  R_AARCH64_CALL26	memcpy
   13334: b94066e8     	ldr	w8, [x23, #0x64]
   13338: 34000448     	cbz	w8, 0x133c0 <syna_spi_write+0x164>
   1333c: 340006b3     	cbz	w19, 0x13410 <syna_spi_write+0x1b4>
   13340: aa1f03e9     	mov	x9, xzr
   13344: 52800e0a     	mov	w10, #0x70              // =112
   13348: 9000000b     	adrp	x11, 0x13000 <syna_spi_read+0x88>
		0000000000013348:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8b0
   1334c: 5280002c     	mov	w12, #0x1               // =1
   13350: 910023ed     	add	x13, sp, #0x8
   13354: f9400168     	ldr	x8, [x11]
		0000000000013354:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8b0
   13358: 8b0a0100     	add	x0, x8, x10
   1335c: b81a000c     	stur	w12, [x0, #-0x60]
   13360: f940030e     	ldr	x14, [x24]
		0000000000013360:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8a8
   13364: 8b0901ce     	add	x14, x14, x9
   13368: f819000e     	stur	x14, [x0, #-0x70]
   1336c: f9400be1     	ldr	x1, [sp, #0x10]
   13370: f940002e     	ldr	x14, [x1]
   13374: eb0d01df     	cmp	x14, x13
   13378: 1a9f17ee     	cset	w14, eq
   1337c: eb0d001f     	cmp	x0, x13
   13380: 540001a0     	b.eq	0x133b4 <syna_spi_write+0x158>
   13384: eb01001f     	cmp	x0, x1
   13388: 54000160     	b.eq	0x133b4 <syna_spi_write+0x158>
   1338c: 3600014e     	tbz	w14, #0x0, 0x133b4 <syna_spi_write+0x158>
   13390: 8b0a0108     	add	x8, x8, x10
   13394: f9000be0     	str	x0, [sp, #0x10]
   13398: a900050d     	stp	x13, x1, [x8]
   1339c: f9000020     	str	x0, [x1]
   133a0: 91000529     	add	x9, x9, #0x1
   133a4: 9102214a     	add	x10, x10, #0x88
   133a8: eb0902df     	cmp	x22, x9
   133ac: 54fffd41     	b.ne	0x13354 <syna_spi_write+0xf8>
   133b0: 14000018     	b	0x13410 <syna_spi_write+0x1b4>
   133b4: 910023e2     	add	x2, sp, #0x8
   133b8: 94000000     	bl	0x133b8 <syna_spi_write+0x15c>
		00000000000133b8:  R_AARCH64_CALL26	__list_add_valid_or_report
   133bc: 17fffff9     	b	0x133a0 <syna_spi_write+0x144>
   133c0: 90000008     	adrp	x8, 0x13000 <syna_spi_read+0x88>
		00000000000133c0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8b0
   133c4: f9400309     	ldr	x9, [x24]
		00000000000133c4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8a8
   133c8: 910023ea     	add	x10, sp, #0x8
   133cc: f9400108     	ldr	x8, [x8]
		00000000000133cc:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8b0
   133d0: f9000109     	str	x9, [x8]
   133d4: 9101c100     	add	x0, x8, #0x70
   133d8: f9400be1     	ldr	x1, [sp, #0x10]
   133dc: b9001113     	str	w19, [x8, #0x10]
   133e0: f9400029     	ldr	x9, [x1]
   133e4: eb0a013f     	cmp	x9, x10
   133e8: 1a9f17e9     	cset	w9, eq
   133ec: eb0a001f     	cmp	x0, x10
   133f0: 540008c0     	b.eq	0x13508 <syna_spi_write+0x2ac>
   133f4: eb00003f     	cmp	x1, x0
   133f8: 54000880     	b.eq	0x13508 <syna_spi_write+0x2ac>
   133fc: 36000869     	tbz	w9, #0x0, 0x13508 <syna_spi_write+0x2ac>
   13400: 910023e9     	add	x9, sp, #0x8
   13404: f9000be0     	str	x0, [sp, #0x10]
   13408: a9070509     	stp	x9, x1, [x8, #0x70]
   1340c: f9000020     	str	x0, [x1]
   13410: 910023e1     	add	x1, sp, #0x8
   13414: aa1403e0     	mov	x0, x20
   13418: 94000000     	bl	0x13418 <syna_spi_write+0x1bc>
		0000000000013418:  R_AARCH64_CALL26	spi_sync
   1341c: 35000620     	cbnz	w0, 0x134e0 <syna_spi_write+0x284>
   13420: 9101c2e0     	add	x0, x23, #0x70
   13424: 94000000     	bl	0x13424 <syna_spi_write+0x1c8>
		0000000000013424:  R_AARCH64_CALL26	mutex_unlock
   13428: d5384108     	mrs	x8, SP_EL0
   1342c: f9438908     	ldr	x8, [x8, #0x710]
   13430: f85f83a9     	ldur	x9, [x29, #-0x8]
   13434: eb09011f     	cmp	x8, x9
   13438: 54000661     	b.ne	0x13504 <syna_spi_write+0x2a8>
   1343c: 2a1303e0     	mov	w0, w19
   13440: a94b4ff4     	ldp	x20, x19, [sp, #0xb0]
   13444: a94a57f6     	ldp	x22, x21, [sp, #0xa0]
   13448: a9495ff8     	ldp	x24, x23, [sp, #0x90]
   1344c: a9487bfd     	ldp	x29, x30, [sp, #0x80]
   13450: 910303ff     	add	sp, sp, #0xc0
   13454: d50323bf     	autiasp
   13458: d65f03c0     	ret
   1345c: 90000000     	adrp	x0, 0x13000 <syna_spi_read+0x88>
		000000000001345c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9230
   13460: 91000000     	add	x0, x0, #0x0
		0000000000013460:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9230
   13464: 14000003     	b	0x13470 <syna_spi_write+0x214>
   13468: 90000000     	adrp	x0, 0x13000 <syna_spi_read+0x88>
		0000000000013468:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8bb4
   1346c: 91000000     	add	x0, x0, #0x0
		000000000001346c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8bb4
   13470: 90000001     	adrp	x1, 0x13000 <syna_spi_read+0x88>
		0000000000013470:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc237
   13474: 91000021     	add	x1, x1, #0x0
		0000000000013474:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc237
   13478: 94000000     	bl	0x13478 <syna_spi_write+0x21c>
		0000000000013478:  R_AARCH64_CALL26	_printk
   1347c: 128000b3     	mov	w19, #-0x6              // =-6
   13480: 17ffffea     	b	0x13428 <syna_spi_write+0x1cc>
   13484: 90000000     	adrp	x0, 0x13000 <syna_spi_read+0x88>
		0000000000013484:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5cdf
   13488: 91000000     	add	x0, x0, #0x0
		0000000000013488:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5cdf
   1348c: 90000001     	adrp	x1, 0x13000 <syna_spi_read+0x88>
		000000000001348c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc237
   13490: 91000021     	add	x1, x1, #0x0
		0000000000013490:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc237
   13494: 529fffe2     	mov	w2, #0xffff             // =65535
   13498: 94000000     	bl	0x13498 <syna_spi_write+0x23c>
		0000000000013498:  R_AARCH64_CALL26	_printk
   1349c: 128002b3     	mov	w19, #-0x16             // =-22
   134a0: 17ffffe0     	b	0x13420 <syna_spi_write+0x1c4>
   134a4: 90000008     	adrp	x8, 0x13000 <syna_spi_read+0x88>
		00000000000134a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x469e
   134a8: 91000108     	add	x8, x8, #0x0
		00000000000134a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x469e
   134ac: 90000001     	adrp	x1, 0x13000 <syna_spi_read+0x88>
		00000000000134ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc237
   134b0: 91000021     	add	x1, x1, #0x0
		00000000000134b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc237
   134b4: 2a0003f3     	mov	w19, w0
   134b8: aa0803e0     	mov	x0, x8
   134bc: 94000000     	bl	0x134bc <syna_spi_write+0x260>
		00000000000134bc:  R_AARCH64_CALL26	_printk
   134c0: 17ffffd8     	b	0x13420 <syna_spi_write+0x1c4>
   134c4: 90000000     	adrp	x0, 0x13000 <syna_spi_read+0x88>
		00000000000134c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7bbf
   134c8: 91000000     	add	x0, x0, #0x0
		00000000000134c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7bbf
   134cc: 90000001     	adrp	x1, 0x13000 <syna_spi_read+0x88>
		00000000000134cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc237
   134d0: 91000021     	add	x1, x1, #0x0
		00000000000134d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc237
   134d4: 94000000     	bl	0x134d4 <syna_spi_write+0x278>
		00000000000134d4:  R_AARCH64_CALL26	_printk
   134d8: 128002b3     	mov	w19, #-0x16             // =-22
   134dc: 17ffffd1     	b	0x13420 <syna_spi_write+0x1c4>
   134e0: 90000008     	adrp	x8, 0x13000 <syna_spi_read+0x88>
		00000000000134e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x829f
   134e4: 91000108     	add	x8, x8, #0x0
		00000000000134e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x829f
   134e8: 2a0003f3     	mov	w19, w0
   134ec: 90000001     	adrp	x1, 0x13000 <syna_spi_read+0x88>
		00000000000134ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc237
   134f0: 91000021     	add	x1, x1, #0x0
		00000000000134f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc237
   134f4: aa0803e0     	mov	x0, x8
   134f8: 2a1303e2     	mov	w2, w19
   134fc: 94000000     	bl	0x134fc <syna_spi_write+0x2a0>
		00000000000134fc:  R_AARCH64_CALL26	_printk
   13500: 17ffffc8     	b	0x13420 <syna_spi_write+0x1c4>
   13504: 94000000     	bl	0x13504 <syna_spi_write+0x2a8>
		0000000000013504:  R_AARCH64_CALL26	__stack_chk_fail
   13508: 910023e2     	add	x2, sp, #0x8
   1350c: 94000000     	bl	0x1350c <syna_spi_write+0x2b0>
		000000000001350c:  R_AARCH64_CALL26	__list_add_valid_or_report
   13510: 17ffffc0     	b	0x13410 <syna_spi_write+0x1b4>
