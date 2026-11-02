
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000143c <zte_power_supply_uevent>:
    143c: d503233f     	paciasp
    1440: a9ba7bfd     	stp	x29, x30, [sp, #-0x60]!
    1444: a9016ffc     	stp	x28, x27, [sp, #0x10]
    1448: a90267fa     	stp	x26, x25, [sp, #0x20]
    144c: a9035ff8     	stp	x24, x23, [sp, #0x30]
    1450: a90457f6     	stp	x22, x21, [sp, #0x40]
    1454: a9054ff4     	stp	x20, x19, [sp, #0x50]
    1458: 910003fd     	mov	x29, sp
    145c: f9404c17     	ldr	x23, [x0, #0x98]
    1460: b4000797     	cbz	x23, 0x1550 <zte_power_supply_uevent+0x114>
    1464: f94002e8     	ldr	x8, [x23]
    1468: b4000748     	cbz	x8, 0x1550 <zte_power_supply_uevent+0x114>
    146c: aa0103f4     	mov	x20, x1
    1470: f9400102     	ldr	x2, [x8]
    1474: aa0003f3     	mov	x19, x0
    1478: 90000001     	adrp	x1, 0x1000 <zte_devm_power_supply_get_by_phandle+0x120>
		0000000000001478:  R_AARCH64_ADR_PREL_PG_HI21	zte_power_supply_uevent_name_format
    147c: 91000021     	add	x1, x1, #0x0
		000000000000147c:  R_AARCH64_ADD_ABS_LO12_NC	zte_power_supply_uevent_name_format
    1480: aa1403e0     	mov	x0, x20
    1484: 94000000     	bl	0x1484 <zte_power_supply_uevent+0x48>
		0000000000001484:  R_AARCH64_CALL26	add_uevent_var
    1488: 35000660     	cbnz	w0, 0x1554 <zte_power_supply_uevent+0x118>
    148c: d503201f     	nop
    1490: 52819800     	mov	w0, #0xcc0              // =3264
    1494: 94000000     	bl	0x1494 <zte_power_supply_uevent+0x58>
		0000000000001494:  R_AARCH64_CALL26	get_zeroed_page_noprof
    1498: aa0003f5     	mov	x21, x0
    149c: b4000935     	cbz	x21, 0x15c0 <zte_power_supply_uevent+0x184>
    14a0: f94002e8     	ldr	x8, [x23]
    14a4: f9401509     	ldr	x9, [x8, #0x28]
    14a8: b4000669     	cbz	x9, 0x1574 <zte_power_supply_uevent+0x138>
    14ac: aa1f03e9     	mov	x9, xzr
    14b0: 52800038     	mov	w24, #0x1               // =1
    14b4: 90000019     	adrp	x25, 0x1000 <zte_devm_power_supply_get_by_phandle+0x120>
		00000000000014b4:  R_AARCH64_ADR_PREL_PG_HI21	zte_power_supply_attrs
    14b8: 91000339     	add	x25, x25, #0x0
		00000000000014b8:  R_AARCH64_ADD_ABS_LO12_NC	zte_power_supply_attrs
    14bc: 52800b1a     	mov	w26, #0x58              // =88
    14c0: 90000016     	adrp	x22, 0x1000 <zte_devm_power_supply_get_by_phandle+0x120>
		00000000000014c0:  R_AARCH64_ADR_PREL_PG_HI21	zte_power_supply_uevent_property_format
    14c4: 910002d6     	add	x22, x22, #0x0
		00000000000014c4:  R_AARCH64_ADD_ABS_LO12_NC	zte_power_supply_uevent_property_format
    14c8: 14000007     	b	0x14e4 <zte_power_supply_uevent+0xa8>
    14cc: f94002e8     	ldr	x8, [x23]
    14d0: 93407f09     	sxtw	x9, w24
    14d4: 11000718     	add	w24, w24, #0x1
    14d8: f940150a     	ldr	x10, [x8, #0x28]
    14dc: eb09015f     	cmp	x10, x9
    14e0: 540004a9     	b.ls	0x1574 <zte_power_supply_uevent+0x138>
    14e4: f9401108     	ldr	x8, [x8, #0x20]
    14e8: b869791b     	ldr	w27, [x8, x9, lsl #2]
    14ec: 7100537f     	cmp	w27, #0x14
    14f0: 54000502     	b.hs	0x1590 <zte_power_supply_uevent+0x154>
    14f4: 9bba677c     	umaddl	x28, w27, w26, x25
    14f8: aa1303e0     	mov	x0, x19
    14fc: aa1503e2     	mov	x2, x21
    1500: 9100a381     	add	x1, x28, #0x28
    1504: 94000000     	bl	0x1504 <zte_power_supply_uevent+0xc8>
		0000000000001504:  R_AARCH64_CALL26	zte_power_supply_show_property
    1508: 3100f41f     	cmn	w0, #0x3d
    150c: 3a531804     	ccmn	w0, #0x13, #0x4, ne
    1510: 54fffde0     	b.eq	0x14cc <zte_power_supply_uevent+0x90>
    1514: 37f80320     	tbnz	w0, #0x1f, 0x1578 <zte_power_supply_uevent+0x13c>
    1518: aa1503e0     	mov	x0, x21
    151c: 52800141     	mov	w1, #0xa                // =10
    1520: 94000000     	bl	0x1520 <zte_power_supply_uevent+0xe4>
		0000000000001520:  R_AARCH64_CALL26	strchr
    1524: b4000040     	cbz	x0, 0x152c <zte_power_supply_uevent+0xf0>
    1528: 3900001f     	strb	wzr, [x0]
    152c: 71004f7f     	cmp	w27, #0x13
    1530: 54000320     	b.eq	0x1594 <zte_power_supply_uevent+0x158>
    1534: f9400382     	ldr	x2, [x28]
    1538: aa1403e0     	mov	x0, x20
    153c: aa1603e1     	mov	x1, x22
    1540: aa1503e3     	mov	x3, x21
    1544: 94000000     	bl	0x1544 <zte_power_supply_uevent+0x108>
		0000000000001544:  R_AARCH64_CALL26	add_uevent_var
    1548: 34fffc20     	cbz	w0, 0x14cc <zte_power_supply_uevent+0x90>
    154c: 1400000b     	b	0x1578 <zte_power_supply_uevent+0x13c>
    1550: 2a1f03e0     	mov	w0, wzr
    1554: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    1558: a94457f6     	ldp	x22, x21, [sp, #0x40]
    155c: a9435ff8     	ldp	x24, x23, [sp, #0x30]
    1560: a94267fa     	ldp	x26, x25, [sp, #0x20]
    1564: a9416ffc     	ldp	x28, x27, [sp, #0x10]
    1568: a8c67bfd     	ldp	x29, x30, [sp], #0x60
    156c: d50323bf     	autiasp
    1570: d65f03c0     	ret
    1574: 2a1f03e0     	mov	w0, wzr
    1578: aa0003f3     	mov	x19, x0
    157c: aa1503e0     	mov	x0, x21
    1580: 2a1f03e1     	mov	w1, wzr
    1584: 94000000     	bl	0x1584 <zte_power_supply_uevent+0x148>
		0000000000001584:  R_AARCH64_CALL26	free_pages
    1588: aa1303e0     	mov	x0, x19
    158c: 17fffff2     	b	0x1554 <zte_power_supply_uevent+0x118>
    1590: d42aa240     	brk	#0x5512
    1594: d4200020     	brk	#0x1
    1598: d5384116     	mrs	x22, SP_EL0
    159c: f9402ad8     	ldr	x24, [x22, #0x50]
    15a0: 90000008     	adrp	x8, 0x1000 <zte_devm_power_supply_get_by_phandle+0x120>
		00000000000015a0:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x50
    15a4: 91000108     	add	x8, x8, #0x0
		00000000000015a4:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x50
    15a8: 52819800     	mov	w0, #0xcc0              // =3264
    15ac: f9002ac8     	str	x8, [x22, #0x50]
    15b0: 94000000     	bl	0x15b0 <zte_power_supply_uevent+0x174>
		00000000000015b0:  R_AARCH64_CALL26	get_zeroed_page_noprof
    15b4: aa0003f5     	mov	x21, x0
    15b8: f9002ad8     	str	x24, [x22, #0x50]
    15bc: b5fff735     	cbnz	x21, 0x14a0 <zte_power_supply_uevent+0x64>
    15c0: 12800160     	mov	w0, #-0xc               // =-12
    15c4: 17ffffe4     	b	0x1554 <zte_power_supply_uevent+0x118>
