
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001518 <zte_goodix_pinctrl_init>:
    1518: d503233f     	paciasp
    151c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1520: a9014ff4     	stp	x20, x19, [sp, #0x10]
    1524: 910003fd     	mov	x29, sp
    1528: aa0003f3     	mov	x19, x0
    152c: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		000000000000152c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7c0
    1530: 91000000     	add	x0, x0, #0x0
		0000000000001530:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7c0
    1534: 90000001     	adrp	x1, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001534:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10a0
    1538: 91000021     	add	x1, x1, #0x0
		0000000000001538:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10a0
    153c: 94000000     	bl	0x153c <zte_goodix_pinctrl_init+0x24>
		000000000000153c:  R_AARCH64_CALL26	_printk
    1540: f9400e68     	ldr	x8, [x19, #0x18]
    1544: 91004100     	add	x0, x8, #0x10
    1548: 94000000     	bl	0x1548 <zte_goodix_pinctrl_init+0x30>
		0000000000001548:  R_AARCH64_CALL26	devm_pinctrl_get
    154c: aa1303f4     	mov	x20, x19
    1550: 90000001     	adrp	x1, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001550:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x417
    1554: 91000021     	add	x1, x1, #0x0
		0000000000001554:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x417
    1558: f8080e80     	str	x0, [x20, #0x80]!
    155c: b40003a0     	cbz	x0, 0x15d0 <zte_goodix_pinctrl_init+0xb8>
    1560: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
    1564: 54000368     	b.hi	0x15d0 <zte_goodix_pinctrl_init+0xb8>
    1568: 90000001     	adrp	x1, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001568:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1320
    156c: 91000021     	add	x1, x1, #0x0
		000000000000156c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1320
    1570: 94000000     	bl	0x1570 <zte_goodix_pinctrl_init+0x58>
		0000000000001570:  R_AARCH64_CALL26	pinctrl_lookup_state
    1574: aa1303f4     	mov	x20, x19
    1578: 90000001     	adrp	x1, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001578:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc25
    157c: 91000021     	add	x1, x1, #0x0
		000000000000157c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc25
    1580: f8088e80     	str	x0, [x20, #0x88]!
    1584: b4000260     	cbz	x0, 0x15d0 <zte_goodix_pinctrl_init+0xb8>
    1588: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
    158c: 54000228     	b.hi	0x15d0 <zte_goodix_pinctrl_init+0xb8>
    1590: f9404260     	ldr	x0, [x19, #0x80]
    1594: 90000001     	adrp	x1, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001594:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x132e
    1598: 91000021     	add	x1, x1, #0x0
		0000000000001598:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x132e
    159c: 94000000     	bl	0x159c <zte_goodix_pinctrl_init+0x84>
		000000000000159c:  R_AARCH64_CALL26	pinctrl_lookup_state
    15a0: aa1303f4     	mov	x20, x19
    15a4: 90000001     	adrp	x1, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		00000000000015a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x22f
    15a8: 91000021     	add	x1, x1, #0x0
		00000000000015a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x22f
    15ac: f8090e80     	str	x0, [x20, #0x90]!
    15b0: b4000100     	cbz	x0, 0x15d0 <zte_goodix_pinctrl_init+0xb8>
    15b4: b13ffc1f     	cmn	x0, #0xfff
    15b8: 540000c2     	b.hs	0x15d0 <zte_goodix_pinctrl_init+0xb8>
    15bc: 2a1f03e0     	mov	w0, wzr
    15c0: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    15c4: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    15c8: d50323bf     	autiasp
    15cc: d65f03c0     	ret
    15d0: f9400e68     	ldr	x8, [x19, #0x18]
    15d4: 91004100     	add	x0, x8, #0x10
    15d8: 94000000     	bl	0x15d8 <zte_goodix_pinctrl_init+0xc0>
		00000000000015d8:  R_AARCH64_CALL26	_dev_err
    15dc: b9400280     	ldr	w0, [x20]
    15e0: f900427f     	str	xzr, [x19, #0x80]
    15e4: 17fffff7     	b	0x15c0 <zte_goodix_pinctrl_init+0xa8>
