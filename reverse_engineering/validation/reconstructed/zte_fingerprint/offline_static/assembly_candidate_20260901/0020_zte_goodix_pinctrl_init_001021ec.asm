
/input/zte_fingerprint_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000014fc <zte_goodix_pinctrl_init>:
    14fc: f9400c08     	ldr	x8, [x0, #0x18]
    1500: b5000068     	cbnz	x8, 0x150c <zte_goodix_pinctrl_init+0x10>
    1504: 128002a0     	mov	w0, #-0x16              // =-22
    1508: d65f03c0     	ret
    150c: d503233f     	paciasp
    1510: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1514: a9014ff4     	stp	x20, x19, [sp, #0x10]
    1518: 910003fd     	mov	x29, sp
    151c: 90000008     	adrp	x8, 0x1000 <_inline_copy_from_user+0x20>
		000000000000151c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fd
    1520: 91000108     	add	x8, x8, #0x0
		0000000000001520:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fd
    1524: 90000001     	adrp	x1, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001524:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xea0
    1528: 91000021     	add	x1, x1, #0x0
		0000000000001528:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xea0
    152c: aa0003f3     	mov	x19, x0
    1530: aa0803e0     	mov	x0, x8
    1534: 94000000     	bl	0x1534 <zte_goodix_pinctrl_init+0x38>
		0000000000001534:  R_AARCH64_CALL26	_printk
    1538: f9400e68     	ldr	x8, [x19, #0x18]
    153c: 91004100     	add	x0, x8, #0x10
    1540: 94000000     	bl	0x1540 <zte_goodix_pinctrl_init+0x44>
		0000000000001540:  R_AARCH64_CALL26	devm_pinctrl_get
    1544: aa1303e8     	mov	x8, x19
    1548: 90000002     	adrp	x2, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001548:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x285
    154c: 91000042     	add	x2, x2, #0x0
		000000000000154c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x285
    1550: f9004260     	str	x0, [x19, #0x80]
    1554: b40003a0     	cbz	x0, 0x15c8 <zte_goodix_pinctrl_init+0xcc>
    1558: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
    155c: 54000368     	b.hi	0x15c8 <zte_goodix_pinctrl_init+0xcc>
    1560: 90000001     	adrp	x1, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001560:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf94
    1564: 91000021     	add	x1, x1, #0x0
		0000000000001564:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf94
    1568: 94000000     	bl	0x1568 <zte_goodix_pinctrl_init+0x6c>
		0000000000001568:  R_AARCH64_CALL26	pinctrl_lookup_state
    156c: aa1303e8     	mov	x8, x19
    1570: 90000002     	adrp	x2, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001570:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa1b
    1574: 91000042     	add	x2, x2, #0x0
		0000000000001574:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa1b
    1578: f9004660     	str	x0, [x19, #0x88]
    157c: b4000260     	cbz	x0, 0x15c8 <zte_goodix_pinctrl_init+0xcc>
    1580: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
    1584: 54000228     	b.hi	0x15c8 <zte_goodix_pinctrl_init+0xcc>
    1588: f9404100     	ldr	x0, [x8, #0x80]
    158c: 90000001     	adrp	x1, 0x1000 <_inline_copy_from_user+0x20>
		000000000000158c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfa2
    1590: 91000021     	add	x1, x1, #0x0
		0000000000001590:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfa2
    1594: 94000000     	bl	0x1594 <zte_goodix_pinctrl_init+0x98>
		0000000000001594:  R_AARCH64_CALL26	pinctrl_lookup_state
    1598: aa1303e8     	mov	x8, x19
    159c: 90000002     	adrp	x2, 0x1000 <_inline_copy_from_user+0x20>
		000000000000159c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x191
    15a0: 91000042     	add	x2, x2, #0x0
		00000000000015a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x191
    15a4: f9004a60     	str	x0, [x19, #0x90]
    15a8: b4000100     	cbz	x0, 0x15c8 <zte_goodix_pinctrl_init+0xcc>
    15ac: b13ffc1f     	cmn	x0, #0xfff
    15b0: 540000c2     	b.hs	0x15c8 <zte_goodix_pinctrl_init+0xcc>
    15b4: 2a1f03e0     	mov	w0, wzr
    15b8: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    15bc: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    15c0: d50323bf     	autiasp
    15c4: d65f03c0     	ret
    15c8: f9400d09     	ldr	x9, [x8, #0x18]
    15cc: 90000001     	adrp	x1, 0x1000 <_inline_copy_from_user+0x20>
		00000000000015cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x671
    15d0: 91000021     	add	x1, x1, #0x0
		00000000000015d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x671
    15d4: aa0003f3     	mov	x19, x0
    15d8: aa0803f4     	mov	x20, x8
    15dc: 91004120     	add	x0, x9, #0x10
    15e0: 94000000     	bl	0x15e0 <zte_goodix_pinctrl_init+0xe4>
		00000000000015e0:  R_AARCH64_CALL26	_dev_err
    15e4: aa1303e0     	mov	x0, x19
    15e8: f900429f     	str	xzr, [x20, #0x80]
    15ec: 17fffff3     	b	0x15b8 <zte_goodix_pinctrl_init+0xbc>
