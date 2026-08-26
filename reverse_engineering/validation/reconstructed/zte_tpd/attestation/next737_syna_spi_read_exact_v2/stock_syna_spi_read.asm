
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000012f78 <syna_spi_read>:
   12f78: d503233f     	paciasp
   12f7c: d10303ff     	sub	sp, sp, #0xc0
   12f80: a9087bfd     	stp	x29, x30, [sp, #0x80]
   12f84: a9095ff8     	stp	x24, x23, [sp, #0x90]
   12f88: a90a57f6     	stp	x22, x21, [sp, #0xa0]
   12f8c: a90b4ff4     	stp	x20, x19, [sp, #0xb0]
   12f90: 910203fd     	add	x29, sp, #0x80
   12f94: d5384108     	mrs	x8, SP_EL0
   12f98: f9438908     	ldr	x8, [x8, #0x710]
   12f9c: f81f83a8     	stur	x8, [x29, #-0x8]
   12fa0: f9400016     	ldr	x22, [x0]
   12fa4: a906ffff     	stp	xzr, xzr, [sp, #0x68]
   12fa8: a905ffff     	stp	xzr, xzr, [sp, #0x58]
   12fac: a904ffff     	stp	xzr, xzr, [sp, #0x48]
   12fb0: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   12fb4: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   12fb8: a901ffff     	stp	xzr, xzr, [sp, #0x18]
   12fbc: a900ffff     	stp	xzr, xzr, [sp, #0x8]
   12fc0: b4000f36     	cbz	x22, 0x131a4 <syna_spi_read+0x22c>
   12fc4: f94002d5     	ldr	x21, [x22]
   12fc8: b4000f55     	cbz	x21, 0x131b0 <syna_spi_read+0x238>
   12fcc: 9101c2c0     	add	x0, x22, #0x70
   12fd0: 2a0203f3     	mov	w19, w2
   12fd4: aa0103f4     	mov	x20, x1
   12fd8: 94000000     	bl	0x12fd8 <syna_spi_read+0x60>
		0000000000012fd8:  R_AARCH64_CALL26	mutex_lock
   12fdc: 529fffe8     	mov	w8, #0xffff             // =65535
   12fe0: 6a33011f     	bics	wzr, w8, w19
   12fe4: 54000f40     	b.eq	0x131cc <syna_spi_read+0x254>
   12fe8: 910023e8     	add	x8, sp, #0x8
   12fec: a906ffff     	stp	xzr, xzr, [sp, #0x68]
   12ff0: 2a1303e1     	mov	w1, w19
   12ff4: a905ffff     	stp	xzr, xzr, [sp, #0x58]
   12ff8: a904ffff     	stp	xzr, xzr, [sp, #0x48]
   12ffc: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   13000: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   13004: a901ffff     	stp	xzr, xzr, [sp, #0x18]
   13008: f90007e8     	str	x8, [sp, #0x8]
   1300c: f9000be8     	str	x8, [sp, #0x10]
   13010: 91016108     	add	x8, x8, #0x58
   13014: f90033e8     	str	x8, [sp, #0x60]
   13018: f90037e8     	str	x8, [sp, #0x68]
   1301c: b94066c8     	ldr	w8, [x22, #0x64]
   13020: 7100011f     	cmp	w8, #0x0
   13024: 1a9f1660     	csinc	w0, w19, wzr, ne
   13028: 9400020d     	bl	0x1385c <syna_spi_alloc_mem>
   1302c: 37f80de0     	tbnz	w0, #0x1f, 0x131e8 <syna_spi_read+0x270>
   13030: 90000018     	adrp	x24, 0x13000 <syna_spi_read+0x88>
		0000000000013030:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8a8
   13034: b94066c8     	ldr	w8, [x22, #0x64]
   13038: 90000017     	adrp	x23, 0x13000 <syna_spi_read+0x88>
		0000000000013038:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8a0
   1303c: f9400300     	ldr	x0, [x24]
		000000000001303c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8a8
   13040: 340004e8     	cbz	w8, 0x130dc <syna_spi_read+0x164>
   13044: 52801fe8     	mov	w8, #0xff               // =255
   13048: 39000008     	strb	w8, [x0]
   1304c: 340007b3     	cbz	w19, 0x13140 <syna_spi_read+0x1c8>
   13050: aa1f03e9     	mov	x9, xzr
   13054: 2a1303ea     	mov	w10, w19
   13058: 52800e0b     	mov	w11, #0x70              // =112
   1305c: 9000000c     	adrp	x12, 0x13000 <syna_spi_read+0x88>
		000000000001305c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8b0
   13060: 5280002d     	mov	w13, #0x1               // =1
   13064: 910023ee     	add	x14, sp, #0x8
   13068: f9400188     	ldr	x8, [x12]
		0000000000013068:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8b0
   1306c: 8b0b0100     	add	x0, x8, x11
   13070: b81a000d     	stur	w13, [x0, #-0x60]
   13074: f940030f     	ldr	x15, [x24]
		0000000000013074:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8a8
   13078: f819000f     	stur	x15, [x0, #-0x70]
   1307c: f94002ef     	ldr	x15, [x23]
		000000000001307c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8a0
   13080: 8b0901ef     	add	x15, x15, x9
   13084: f819800f     	stur	x15, [x0, #-0x68]
   13088: f9400be1     	ldr	x1, [sp, #0x10]
   1308c: f940002f     	ldr	x15, [x1]
   13090: eb0e01ff     	cmp	x15, x14
   13094: 1a9f17ef     	cset	w15, eq
   13098: eb0e001f     	cmp	x0, x14
   1309c: 540001a0     	b.eq	0x130d0 <syna_spi_read+0x158>
   130a0: eb01001f     	cmp	x0, x1
   130a4: 54000160     	b.eq	0x130d0 <syna_spi_read+0x158>
   130a8: 3600014f     	tbz	w15, #0x0, 0x130d0 <syna_spi_read+0x158>
   130ac: 8b0b0108     	add	x8, x8, x11
   130b0: f9000be0     	str	x0, [sp, #0x10]
   130b4: a900050e     	stp	x14, x1, [x8]
   130b8: f9000020     	str	x0, [x1]
   130bc: 91000529     	add	x9, x9, #0x1
   130c0: 9102216b     	add	x11, x11, #0x88
   130c4: eb09015f     	cmp	x10, x9
   130c8: 54fffd01     	b.ne	0x13068 <syna_spi_read+0xf0>
   130cc: 1400001d     	b	0x13140 <syna_spi_read+0x1c8>
   130d0: 910023e2     	add	x2, sp, #0x8
   130d4: 94000000     	bl	0x130d4 <syna_spi_read+0x15c>
		00000000000130d4:  R_AARCH64_CALL26	__list_add_valid_or_report
   130d8: 17fffff9     	b	0x130bc <syna_spi_read+0x144>
   130dc: 2a1303e2     	mov	w2, w19
   130e0: 52801fe1     	mov	w1, #0xff               // =255
   130e4: 94000000     	bl	0x130e4 <syna_spi_read+0x16c>
		00000000000130e4:  R_AARCH64_CALL26	memset
   130e8: 90000008     	adrp	x8, 0x13000 <syna_spi_read+0x88>
		00000000000130e8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8b0
   130ec: f9400309     	ldr	x9, [x24]
		00000000000130ec:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8a8
   130f0: 910023ea     	add	x10, sp, #0x8
   130f4: f9400108     	ldr	x8, [x8]
		00000000000130f4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8b0
   130f8: f9000109     	str	x9, [x8]
   130fc: 9101c100     	add	x0, x8, #0x70
   13100: f94002e9     	ldr	x9, [x23]
		0000000000013100:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8a0
   13104: b9001113     	str	w19, [x8, #0x10]
   13108: f9000509     	str	x9, [x8, #0x8]
   1310c: f9400be1     	ldr	x1, [sp, #0x10]
   13110: f9400029     	ldr	x9, [x1]
   13114: eb0a013f     	cmp	x9, x10
   13118: 1a9f17e9     	cset	w9, eq
   1311c: eb0a001f     	cmp	x0, x10
   13120: 54000960     	b.eq	0x1324c <syna_spi_read+0x2d4>
   13124: eb00003f     	cmp	x1, x0
   13128: 54000920     	b.eq	0x1324c <syna_spi_read+0x2d4>
   1312c: 36000909     	tbz	w9, #0x0, 0x1324c <syna_spi_read+0x2d4>
   13130: 910023e9     	add	x9, sp, #0x8
   13134: f9000be0     	str	x0, [sp, #0x10]
   13138: a9070509     	stp	x9, x1, [x8, #0x70]
   1313c: f9000020     	str	x0, [x1]
   13140: 910023e1     	add	x1, sp, #0x8
   13144: aa1503e0     	mov	x0, x21
   13148: 94000000     	bl	0x13148 <syna_spi_read+0x1d0>
		0000000000013148:  R_AARCH64_CALL26	spi_sync
   1314c: 350005e0     	cbnz	w0, 0x13208 <syna_spi_read+0x290>
   13150: b40006f4     	cbz	x20, 0x1322c <syna_spi_read+0x2b4>
   13154: f94002e1     	ldr	x1, [x23]
		0000000000013154:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8a0
   13158: b40006a1     	cbz	x1, 0x1322c <syna_spi_read+0x2b4>
   1315c: 2a1303e2     	mov	w2, w19
   13160: aa1403e0     	mov	x0, x20
   13164: 94000000     	bl	0x13164 <syna_spi_read+0x1ec>
		0000000000013164:  R_AARCH64_CALL26	memcpy
   13168: 9101c2c0     	add	x0, x22, #0x70
   1316c: 94000000     	bl	0x1316c <syna_spi_read+0x1f4>
		000000000001316c:  R_AARCH64_CALL26	mutex_unlock
   13170: d5384108     	mrs	x8, SP_EL0
   13174: f9438908     	ldr	x8, [x8, #0x710]
   13178: f85f83a9     	ldur	x9, [x29, #-0x8]
   1317c: eb09011f     	cmp	x8, x9
   13180: 54000641     	b.ne	0x13248 <syna_spi_read+0x2d0>
   13184: 2a1303e0     	mov	w0, w19
   13188: a94b4ff4     	ldp	x20, x19, [sp, #0xb0]
   1318c: a94a57f6     	ldp	x22, x21, [sp, #0xa0]
   13190: a9495ff8     	ldp	x24, x23, [sp, #0x90]
   13194: a9487bfd     	ldp	x29, x30, [sp, #0x80]
   13198: 910303ff     	add	sp, sp, #0xc0
   1319c: d50323bf     	autiasp
   131a0: d65f03c0     	ret
   131a4: 90000000     	adrp	x0, 0x13000 <syna_spi_read+0x88>
		00000000000131a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9230
   131a8: 91000000     	add	x0, x0, #0x0
		00000000000131a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9230
   131ac: 14000003     	b	0x131b8 <syna_spi_read+0x240>
   131b0: 90000000     	adrp	x0, 0x13000 <syna_spi_read+0x88>
		00000000000131b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8bb4
   131b4: 91000000     	add	x0, x0, #0x0
		00000000000131b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8bb4
   131b8: 90000001     	adrp	x1, 0x13000 <syna_spi_read+0x88>
		00000000000131b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb48b
   131bc: 91000021     	add	x1, x1, #0x0
		00000000000131bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb48b
   131c0: 94000000     	bl	0x131c0 <syna_spi_read+0x248>
		00000000000131c0:  R_AARCH64_CALL26	_printk
   131c4: 128000b3     	mov	w19, #-0x6              // =-6
   131c8: 17ffffea     	b	0x13170 <syna_spi_read+0x1f8>
   131cc: 90000000     	adrp	x0, 0x13000 <syna_spi_read+0x88>
		00000000000131cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe95
   131d0: 91000000     	add	x0, x0, #0x0
		00000000000131d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe95
   131d4: 90000001     	adrp	x1, 0x13000 <syna_spi_read+0x88>
		00000000000131d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb48b
   131d8: 91000021     	add	x1, x1, #0x0
		00000000000131d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb48b
   131dc: 529fffe2     	mov	w2, #0xffff             // =65535
   131e0: 94000000     	bl	0x131e0 <syna_spi_read+0x268>
		00000000000131e0:  R_AARCH64_CALL26	_printk
   131e4: 14000017     	b	0x13240 <syna_spi_read+0x2c8>
   131e8: 90000008     	adrp	x8, 0x13000 <syna_spi_read+0x88>
		00000000000131e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaedf
   131ec: 91000108     	add	x8, x8, #0x0
		00000000000131ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaedf
   131f0: 90000001     	adrp	x1, 0x13000 <syna_spi_read+0x88>
		00000000000131f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb48b
   131f4: 91000021     	add	x1, x1, #0x0
		00000000000131f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb48b
   131f8: 2a0003f3     	mov	w19, w0
   131fc: aa0803e0     	mov	x0, x8
   13200: 94000000     	bl	0x13200 <syna_spi_read+0x288>
		0000000000013200:  R_AARCH64_CALL26	_printk
   13204: 17ffffd9     	b	0x13168 <syna_spi_read+0x1f0>
   13208: 90000008     	adrp	x8, 0x13000 <syna_spi_read+0x88>
		0000000000013208:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4125
   1320c: 91000108     	add	x8, x8, #0x0
		000000000001320c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4125
   13210: 2a0003f3     	mov	w19, w0
   13214: 90000001     	adrp	x1, 0x13000 <syna_spi_read+0x88>
		0000000000013214:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb48b
   13218: 91000021     	add	x1, x1, #0x0
		0000000000013218:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb48b
   1321c: aa0803e0     	mov	x0, x8
   13220: 2a1303e2     	mov	w2, w19
   13224: 94000000     	bl	0x13224 <syna_spi_read+0x2ac>
		0000000000013224:  R_AARCH64_CALL26	_printk
   13228: 17ffffd0     	b	0x13168 <syna_spi_read+0x1f0>
   1322c: 90000000     	adrp	x0, 0x13000 <syna_spi_read+0x88>
		000000000001322c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9939
   13230: 91000000     	add	x0, x0, #0x0
		0000000000013230:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9939
   13234: 90000001     	adrp	x1, 0x13000 <syna_spi_read+0x88>
		0000000000013234:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb48b
   13238: 91000021     	add	x1, x1, #0x0
		0000000000013238:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb48b
   1323c: 94000000     	bl	0x1323c <syna_spi_read+0x2c4>
		000000000001323c:  R_AARCH64_CALL26	_printk
   13240: 128002b3     	mov	w19, #-0x16             // =-22
   13244: 17ffffc9     	b	0x13168 <syna_spi_read+0x1f0>
   13248: 94000000     	bl	0x13248 <syna_spi_read+0x2d0>
		0000000000013248:  R_AARCH64_CALL26	__stack_chk_fail
   1324c: 910023e2     	add	x2, sp, #0x8
   13250: 94000000     	bl	0x13250 <syna_spi_read+0x2d8>
		0000000000013250:  R_AARCH64_CALL26	__list_add_valid_or_report
   13254: 17ffffbb     	b	0x13140 <syna_spi_read+0x1c8>
