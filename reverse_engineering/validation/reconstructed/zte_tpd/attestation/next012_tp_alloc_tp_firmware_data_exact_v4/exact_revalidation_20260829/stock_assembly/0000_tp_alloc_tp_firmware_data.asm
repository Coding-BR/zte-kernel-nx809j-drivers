
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000014cc <tp_alloc_tp_firmware_data>:
    14cc: d503233f     	paciasp
    14d0: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    14d4: a90157f6     	stp	x22, x21, [sp, #0x10]
    14d8: a9024ff4     	stp	x20, x19, [sp, #0x20]
    14dc: 910003fd     	mov	x29, sp
    14e0: 90000008     	adrp	x8, 0x1000 <zlog_register_work_deinit+0x14>
		00000000000014e0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    14e4: 2a0003f3     	mov	w19, w0
    14e8: f9400114     	ldr	x20, [x8]
		00000000000014e8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    14ec: f9462e88     	ldr	x8, [x20, #0xc58]
    14f0: b4000188     	cbz	x8, 0x1520 <tp_alloc_tp_firmware_data+0x54>
    14f4: f9400500     	ldr	x0, [x8, #0x8]
    14f8: b40000e0     	cbz	x0, 0x1514 <tp_alloc_tp_firmware_data+0x48>
    14fc: 94000000     	bl	0x14fc <tp_alloc_tp_firmware_data+0x30>
		00000000000014fc:  R_AARCH64_CALL26	vfree
    1500: f9462e88     	ldr	x8, [x20, #0xc58]
    1504: f900051f     	str	xzr, [x8, #0x8]
    1508: f9462e88     	ldr	x8, [x20, #0xc58]
    150c: f900011f     	str	xzr, [x8]
    1510: f9462e88     	ldr	x8, [x20, #0xc58]
    1514: aa0803e0     	mov	x0, x8
    1518: 94000000     	bl	0x1518 <tp_alloc_tp_firmware_data+0x4c>
		0000000000001518:  R_AARCH64_CALL26	kfree
    151c: f9062e9f     	str	xzr, [x20, #0xc58]
    1520: b9044a9f     	str	wzr, [x20, #0x448]
    1524: d503201f     	nop
    1528: 90000008     	adrp	x8, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001528:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
    152c: 5281b801     	mov	w1, #0xdc0              // =3520
    1530: 52800302     	mov	w2, #0x18               // =24
    1534: f9400100     	ldr	x0, [x8]
		0000000000001534:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
    1538: 94000000     	bl	0x1538 <tp_alloc_tp_firmware_data+0x6c>
		0000000000001538:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    153c: f9062e80     	str	x0, [x20, #0xc58]
    1540: b4000580     	cbz	x0, 0x15f0 <tp_alloc_tp_firmware_data+0x124>
    1544: d503201f     	nop
    1548: 2a1303e8     	mov	w8, w19
    154c: 93407d08     	sxtw	x8, w8
    1550: 91006100     	add	x0, x8, #0x18
    1554: 94000000     	bl	0x1554 <tp_alloc_tp_firmware_data+0x88>
		0000000000001554:  R_AARCH64_CALL26	vmalloc_noprof
    1558: f9462e88     	ldr	x8, [x20, #0xc58]
    155c: f9000500     	str	x0, [x8, #0x8]
    1560: f9462e88     	ldr	x8, [x20, #0xc58]
    1564: f9400509     	ldr	x9, [x8, #0x8]
    1568: b40001c9     	cbz	x9, 0x15a0 <tp_alloc_tp_firmware_data+0xd4>
    156c: 93407e69     	sxtw	x9, w19
    1570: 2a1f03e1     	mov	w1, wzr
    1574: f9000109     	str	x9, [x8]
    1578: 91006122     	add	x2, x9, #0x18
    157c: f9462e88     	ldr	x8, [x20, #0xc58]
    1580: f9400500     	ldr	x0, [x8, #0x8]
    1584: 94000000     	bl	0x1584 <tp_alloc_tp_firmware_data+0xb8>
		0000000000001584:  R_AARCH64_CALL26	memset
    1588: 2a1f03e0     	mov	w0, wzr
    158c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1590: a94157f6     	ldp	x22, x21, [sp, #0x10]
    1594: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    1598: d50323bf     	autiasp
    159c: d65f03c0     	ret
    15a0: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		00000000000015a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa49d
    15a4: 91000000     	add	x0, x0, #0x0
		00000000000015a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa49d
    15a8: 94000000     	bl	0x15a8 <tp_alloc_tp_firmware_data+0xdc>
		00000000000015a8:  R_AARCH64_CALL26	_printk
    15ac: f9462e80     	ldr	x0, [x20, #0xc58]
    15b0: 94000000     	bl	0x15b0 <tp_alloc_tp_firmware_data+0xe4>
		00000000000015b0:  R_AARCH64_CALL26	kfree
    15b4: 12800160     	mov	w0, #-0xc               // =-12
    15b8: 17fffff5     	b	0x158c <tp_alloc_tp_firmware_data+0xc0>
    15bc: 90000008     	adrp	x8, 0x1000 <zlog_register_work_deinit+0x14>
		00000000000015bc:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
    15c0: d5384115     	mrs	x21, SP_EL0
    15c4: f9402ab6     	ldr	x22, [x21, #0x50]
    15c8: f9400100     	ldr	x0, [x8]
		00000000000015c8:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
    15cc: 90000008     	adrp	x8, 0x1000 <zlog_register_work_deinit+0x14>
		00000000000015cc:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x28
    15d0: 91000108     	add	x8, x8, #0x0
		00000000000015d0:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x28
    15d4: 5281b801     	mov	w1, #0xdc0              // =3520
    15d8: 52800302     	mov	w2, #0x18               // =24
    15dc: f9002aa8     	str	x8, [x21, #0x50]
    15e0: 94000000     	bl	0x15e0 <tp_alloc_tp_firmware_data+0x114>
		00000000000015e0:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    15e4: f9002ab6     	str	x22, [x21, #0x50]
    15e8: f9062e80     	str	x0, [x20, #0xc58]
    15ec: b5fffac0     	cbnz	x0, 0x1544 <tp_alloc_tp_firmware_data+0x78>
    15f0: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		00000000000015f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb42
    15f4: 91000000     	add	x0, x0, #0x0
		00000000000015f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb42
    15f8: 94000000     	bl	0x15f8 <tp_alloc_tp_firmware_data+0x12c>
		00000000000015f8:  R_AARCH64_CALL26	_printk
    15fc: 12800160     	mov	w0, #-0xc               // =-12
    1600: 17ffffe3     	b	0x158c <tp_alloc_tp_firmware_data+0xc0>
    1604: 93407e68     	sxtw	x8, w19
    1608: d5384115     	mrs	x21, SP_EL0
    160c: f9402ab6     	ldr	x22, [x21, #0x50]
    1610: 90000009     	adrp	x9, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001610:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x50
    1614: 91000129     	add	x9, x9, #0x0
		0000000000001614:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x50
    1618: 91006100     	add	x0, x8, #0x18
    161c: f9002aa9     	str	x9, [x21, #0x50]
    1620: 94000000     	bl	0x1620 <tp_alloc_tp_firmware_data+0x154>
		0000000000001620:  R_AARCH64_CALL26	vmalloc_noprof
    1624: f9002ab6     	str	x22, [x21, #0x50]
    1628: 17ffffcc     	b	0x1558 <tp_alloc_tp_firmware_data+0x8c>
