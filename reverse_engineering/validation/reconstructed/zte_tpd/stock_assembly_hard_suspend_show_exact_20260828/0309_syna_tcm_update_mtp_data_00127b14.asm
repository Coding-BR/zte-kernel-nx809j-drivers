
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000002128c <syna_tcm_update_mtp_data>:
   2128c: d503233f     	paciasp
   21290: d103c3ff     	sub	sp, sp, #0xf0
   21294: a90a7bfd     	stp	x29, x30, [sp, #0xa0]
   21298: a90b67fa     	stp	x26, x25, [sp, #0xb0]
   2129c: a90c5ff8     	stp	x24, x23, [sp, #0xc0]
   212a0: a90d57f6     	stp	x22, x21, [sp, #0xd0]
   212a4: a90e4ff4     	stp	x20, x19, [sp, #0xe0]
   212a8: 910283fd     	add	x29, sp, #0xa0
   212ac: d5384108     	mrs	x8, SP_EL0
   212b0: f9438908     	ldr	x8, [x8, #0x710]
   212b4: f81f83a8     	stur	x8, [x29, #-0x8]
   212b8: a908ffff     	stp	xzr, xzr, [sp, #0x88]
   212bc: a907ffff     	stp	xzr, xzr, [sp, #0x78]
   212c0: a906ffff     	stp	xzr, xzr, [sp, #0x68]
   212c4: a905ffff     	stp	xzr, xzr, [sp, #0x58]
   212c8: a904ffff     	stp	xzr, xzr, [sp, #0x48]
   212cc: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   212d0: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   212d4: a901ffff     	stp	xzr, xzr, [sp, #0x18]
   212d8: a900ffff     	stp	xzr, xzr, [sp, #0x8]
   212dc: f90003ff     	str	xzr, [sp]
   212e0: b4000d80     	cbz	x0, 0x21490 <syna_tcm_update_mtp_data+0x204>
   212e4: aa0103f7     	mov	x23, x1
   212e8: b4000da1     	cbz	x1, 0x2149c <syna_tcm_update_mtp_data+0x210>
   212ec: 2a0203f6     	mov	w22, w2
   212f0: 34000d62     	cbz	w2, 0x2149c <syna_tcm_update_mtp_data+0x210>
   212f4: 2a0403f5     	mov	w21, w4
   212f8: 2a0303f9     	mov	w25, w3
   212fc: aa0003f3     	mov	x19, x0
   21300: 34000084     	cbz	w4, 0x21310 <syna_tcm_update_mtp_data+0x84>
   21304: b9420e78     	ldr	w24, [x19, #0x20c]
   21308: b941ea74     	ldr	w20, [x19, #0x1e8]
   2130c: 14000003     	b	0x21318 <syna_tcm_update_mtp_data+0x8c>
   21310: 2a1f03f4     	mov	w20, wzr
   21314: 2a1f03f8     	mov	w24, wzr
   21318: 910003e8     	mov	x8, sp
   2131c: 90000001     	adrp	x1, 0x21000 <syna_tcm_read_cs_data+0x8c>
		000000000002131c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad58
   21320: 91000021     	add	x1, x1, #0x0
		0000000000021320:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad58
   21324: 90000002     	adrp	x2, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021324:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x964
   21328: 91000042     	add	x2, x2, #0x0
		0000000000021328:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x964
   2132c: 91014100     	add	x0, x8, #0x50
   21330: a9047fff     	stp	xzr, xzr, [sp, #0x40]
   21334: 94000000     	bl	0x21334 <syna_tcm_update_mtp_data+0xa8>
		0000000000021334:  R_AARCH64_CALL26	__mutex_init
   21338: 52800028     	mov	w8, #0x1                // =1
   2133c: 910003e1     	mov	x1, sp
   21340: aa1303e0     	mov	x0, x19
   21344: 2a1803e2     	mov	w2, w24
   21348: 2a1403e3     	mov	w3, w20
   2134c: b9038a68     	str	w8, [x19, #0x388]
   21350: 97fff243     	bl	0x1dc5c <syna_tcm_set_up_flash_access>
   21354: 2a0003f8     	mov	w24, w0
   21358: 37f80b00     	tbnz	w0, #0x1f, 0x214b8 <syna_tcm_update_mtp_data+0x22c>
   2135c: f94013e8     	ldr	x8, [sp, #0x20]
   21360: 39400102     	ldrb	w2, [x8]
   21364: 7100085f     	cmp	w2, #0x2
   21368: 54000c69     	b.ls	0x214f4 <syna_tcm_update_mtp_data+0x268>
   2136c: b9402fe8     	ldr	w8, [sp, #0x2c]
   21370: 34000ce8     	cbz	w8, 0x2150c <syna_tcm_update_mtp_data+0x280>
   21374: 340000d9     	cbz	w25, 0x2138c <syna_tcm_update_mtp_data+0x100>
   21378: 0b080329     	add	w9, w25, w8
   2137c: 51000529     	sub	w9, w9, #0x1
   21380: 1ac80929     	udiv	w9, w9, w8
   21384: 1b087d3a     	mul	w26, w9, w8
   21388: 14000002     	b	0x21390 <syna_tcm_update_mtp_data+0x104>
   2138c: 2a1f03fa     	mov	w26, wzr
   21390: 0b0802c9     	add	w9, w22, w8
   21394: 51000529     	sub	w9, w9, #0x1
   21398: 1ac80929     	udiv	w9, w9, w8
   2139c: 1b087d39     	mul	w25, w9, w8
   213a0: b9008ff9     	str	w25, [sp, #0x8c]
   213a4: 94000000     	bl	0x213a4 <syna_tcm_update_mtp_data+0x118>
		00000000000213a4:  R_AARCH64_CALL26	syna_request_managed_device
   213a8: b4000be0     	cbz	x0, 0x21524 <syna_tcm_update_mtp_data+0x298>
   213ac: 7100073f     	cmp	w25, #0x1
   213b0: 54000c0b     	b.lt	0x21530 <syna_tcm_update_mtp_data+0x2a4>
   213b4: aa1903e1     	mov	x1, x25
   213b8: 5281b802     	mov	w2, #0xdc0              // =3520
   213bc: 94000000     	bl	0x213bc <syna_tcm_update_mtp_data+0x130>
		00000000000213bc:  R_AARCH64_CALL26	devm_kmalloc
   213c0: b4000c20     	cbz	x0, 0x21544 <syna_tcm_update_mtp_data+0x2b8>
   213c4: b9408fe3     	ldr	w3, [sp, #0x8c]
   213c8: aa0003f8     	mov	x24, x0
   213cc: 6b16007f     	cmp	w3, w22
   213d0: 54000c83     	b.lo	0x21560 <syna_tcm_update_mtp_data+0x2d4>
   213d4: 6b16033f     	cmp	w25, w22
   213d8: 2a1603e2     	mov	w2, w22
   213dc: 54000d43     	b.lo	0x21584 <syna_tcm_update_mtp_data+0x2f8>
   213e0: aa1803e0     	mov	x0, x24
   213e4: aa1703e1     	mov	x1, x23
   213e8: 94000000     	bl	0x213e8 <syna_tcm_update_mtp_data+0x15c>
		00000000000213e8:  R_AARCH64_CALL26	memcpy
   213ec: b9403fe8     	ldr	w8, [sp, #0x3c]
   213f0: b9408fe4     	ldr	w4, [sp, #0x8c]
   213f4: 910003e1     	mov	x1, sp
   213f8: aa1303e0     	mov	x0, x19
   213fc: aa1803e3     	mov	x3, x24
   21400: 2a1503e5     	mov	w5, w21
   21404: 0b1a0102     	add	w2, w8, w26
   21408: 97fffcef     	bl	0x207c4 <syna_tcm_write_flash>
   2140c: b9408fe8     	ldr	w8, [sp, #0x8c]
   21410: 7100001f     	cmp	w0, #0x0
   21414: 1a88b018     	csel	w24, w0, w8, lt
   21418: 39402668     	ldrb	w8, [x19, #0x9]
   2141c: 71002d1f     	cmp	w8, #0xb
   21420: 540000a1     	b.ne	0x21434 <syna_tcm_update_mtp_data+0x1a8>
   21424: aa1303e0     	mov	x0, x19
   21428: 52800021     	mov	w1, #0x1                // =1
   2142c: 2a1403e2     	mov	w2, w20
   21430: 94000000     	bl	0x21430 <syna_tcm_update_mtp_data+0x1a4>
		0000000000021430:  R_AARCH64_CALL26	syna_tcm_switch_fw_mode
   21434: b9038a7f     	str	wzr, [x19, #0x388]
   21438: 394203e2     	ldrb	w2, [sp, #0x80]
   2143c: 35000442     	cbnz	w2, 0x214c4 <syna_tcm_update_mtp_data+0x238>
   21440: f94023f3     	ldr	x19, [sp, #0x40]
   21444: 94000000     	bl	0x21444 <syna_tcm_update_mtp_data+0x1b8>
		0000000000021444:  R_AARCH64_CALL26	syna_request_managed_device
   21448: b40004a0     	cbz	x0, 0x214dc <syna_tcm_update_mtp_data+0x250>
   2144c: b4000073     	cbz	x19, 0x21458 <syna_tcm_update_mtp_data+0x1cc>
   21450: aa1303e1     	mov	x1, x19
   21454: 94000000     	bl	0x21454 <syna_tcm_update_mtp_data+0x1c8>
		0000000000021454:  R_AARCH64_CALL26	devm_kfree
   21458: d5384108     	mrs	x8, SP_EL0
   2145c: f9438908     	ldr	x8, [x8, #0x710]
   21460: f85f83a9     	ldur	x9, [x29, #-0x8]
   21464: eb09011f     	cmp	x8, x9
   21468: 540008c1     	b.ne	0x21580 <syna_tcm_update_mtp_data+0x2f4>
   2146c: 2a1803e0     	mov	w0, w24
   21470: a94e4ff4     	ldp	x20, x19, [sp, #0xe0]
   21474: a94d57f6     	ldp	x22, x21, [sp, #0xd0]
   21478: a94c5ff8     	ldp	x24, x23, [sp, #0xc0]
   2147c: a94b67fa     	ldp	x26, x25, [sp, #0xb0]
   21480: a94a7bfd     	ldp	x29, x30, [sp, #0xa0]
   21484: 9103c3ff     	add	sp, sp, #0xf0
   21488: d50323bf     	autiasp
   2148c: d65f03c0     	ret
   21490: 90000000     	adrp	x0, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021490:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2055
   21494: 91000000     	add	x0, x0, #0x0
		0000000000021494:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2055
   21498: 14000003     	b	0x214a4 <syna_tcm_update_mtp_data+0x218>
   2149c: 90000000     	adrp	x0, 0x21000 <syna_tcm_read_cs_data+0x8c>
		000000000002149c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5e9b
   214a0: 91000000     	add	x0, x0, #0x0
		00000000000214a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5e9b
   214a4: 90000001     	adrp	x1, 0x21000 <syna_tcm_read_cs_data+0x8c>
		00000000000214a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1be7
   214a8: 91000021     	add	x1, x1, #0x0
		00000000000214a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1be7
   214ac: 94000000     	bl	0x214ac <syna_tcm_update_mtp_data+0x220>
		00000000000214ac:  R_AARCH64_CALL26	_printk
   214b0: 12801e18     	mov	w24, #-0xf1             // =-241
   214b4: 17ffffe9     	b	0x21458 <syna_tcm_update_mtp_data+0x1cc>
   214b8: 90000000     	adrp	x0, 0x21000 <syna_tcm_read_cs_data+0x8c>
		00000000000214b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1506
   214bc: 91000000     	add	x0, x0, #0x0
		00000000000214bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1506
   214c0: 14000015     	b	0x21514 <syna_tcm_update_mtp_data+0x288>
   214c4: 90000000     	adrp	x0, 0x21000 <syna_tcm_read_cs_data+0x8c>
		00000000000214c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3313
   214c8: 91000000     	add	x0, x0, #0x0
		00000000000214c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3313
   214cc: 90000001     	adrp	x1, 0x21000 <syna_tcm_read_cs_data+0x8c>
		00000000000214cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a45
   214d0: 91000021     	add	x1, x1, #0x0
		00000000000214d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a45
   214d4: 94000000     	bl	0x214d4 <syna_tcm_update_mtp_data+0x248>
		00000000000214d4:  R_AARCH64_CALL26	_printk
   214d8: 17ffffda     	b	0x21440 <syna_tcm_update_mtp_data+0x1b4>
   214dc: 90000000     	adrp	x0, 0x21000 <syna_tcm_read_cs_data+0x8c>
		00000000000214dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   214e0: 91000000     	add	x0, x0, #0x0
		00000000000214e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   214e4: 90000001     	adrp	x1, 0x21000 <syna_tcm_read_cs_data+0x8c>
		00000000000214e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   214e8: 91000021     	add	x1, x1, #0x0
		00000000000214e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   214ec: 94000000     	bl	0x214ec <syna_tcm_update_mtp_data+0x260>
		00000000000214ec:  R_AARCH64_CALL26	_printk
   214f0: 17ffffda     	b	0x21458 <syna_tcm_update_mtp_data+0x1cc>
   214f4: 90000000     	adrp	x0, 0x21000 <syna_tcm_read_cs_data+0x8c>
		00000000000214f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2eac
   214f8: 91000000     	add	x0, x0, #0x0
		00000000000214f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2eac
   214fc: 90000001     	adrp	x1, 0x21000 <syna_tcm_read_cs_data+0x8c>
		00000000000214fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1be7
   21500: 91000021     	add	x1, x1, #0x0
		0000000000021500:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1be7
   21504: 94000000     	bl	0x21504 <syna_tcm_update_mtp_data+0x278>
		0000000000021504:  R_AARCH64_CALL26	_printk
   21508: 17ffffc4     	b	0x21418 <syna_tcm_update_mtp_data+0x18c>
   2150c: 90000000     	adrp	x0, 0x21000 <syna_tcm_read_cs_data+0x8c>
		000000000002150c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3580
   21510: 91000000     	add	x0, x0, #0x0
		0000000000021510:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3580
   21514: 90000001     	adrp	x1, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021514:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1be7
   21518: 91000021     	add	x1, x1, #0x0
		0000000000021518:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1be7
   2151c: 94000000     	bl	0x2151c <syna_tcm_update_mtp_data+0x290>
		000000000002151c:  R_AARCH64_CALL26	_printk
   21520: 17ffffbe     	b	0x21418 <syna_tcm_update_mtp_data+0x18c>
   21524: 90000000     	adrp	x0, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021524:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   21528: 91000000     	add	x0, x0, #0x0
		0000000000021528:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   2152c: 14000003     	b	0x21538 <syna_tcm_update_mtp_data+0x2ac>
   21530: 90000000     	adrp	x0, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021530:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f17
   21534: 91000000     	add	x0, x0, #0x0
		0000000000021534:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f17
   21538: 90000001     	adrp	x1, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021538:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ae7
   2153c: 91000021     	add	x1, x1, #0x0
		000000000002153c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ae7
   21540: 94000000     	bl	0x21540 <syna_tcm_update_mtp_data+0x2b4>
		0000000000021540:  R_AARCH64_CALL26	_printk
   21544: 90000000     	adrp	x0, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021544:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1506
   21548: 91000000     	add	x0, x0, #0x0
		0000000000021548:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1506
   2154c: 90000001     	adrp	x1, 0x21000 <syna_tcm_read_cs_data+0x8c>
		000000000002154c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1be7
   21550: 91000021     	add	x1, x1, #0x0
		0000000000021550:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1be7
   21554: 94000000     	bl	0x21554 <syna_tcm_update_mtp_data+0x2c8>
		0000000000021554:  R_AARCH64_CALL26	_printk
   21558: 12801e58     	mov	w24, #-0xf3             // =-243
   2155c: 17ffffaf     	b	0x21418 <syna_tcm_update_mtp_data+0x18c>
   21560: 90000000     	adrp	x0, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021560:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81f1
   21564: 91000000     	add	x0, x0, #0x0
		0000000000021564:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81f1
   21568: 90000001     	adrp	x1, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021568:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a25
   2156c: 91000021     	add	x1, x1, #0x0
		000000000002156c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a25
   21570: 2a1603e2     	mov	w2, w22
   21574: 2a1603e4     	mov	w4, w22
   21578: 94000000     	bl	0x21578 <syna_tcm_update_mtp_data+0x2ec>
		0000000000021578:  R_AARCH64_CALL26	_printk
   2157c: 17ffff9c     	b	0x213ec <syna_tcm_update_mtp_data+0x160>
   21580: 94000000     	bl	0x21580 <syna_tcm_update_mtp_data+0x2f4>
		0000000000021580:  R_AARCH64_CALL26	__stack_chk_fail
   21584: 52800220     	mov	w0, #0x11               // =17
   21588: aa1903e1     	mov	x1, x25
   2158c: 94000000     	bl	0x2158c <syna_tcm_update_mtp_data+0x300>
		000000000002158c:  R_AARCH64_CALL26	__fortify_panic
