
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000015ec <zte_goodix_pinctrl_select>:
    15ec: d503233f     	paciasp
    15f0: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    15f4: f9000bf5     	str	x21, [sp, #0x10]
    15f8: a9024ff4     	stp	x20, x19, [sp, #0x20]
    15fc: 910003fd     	mov	x29, sp
    1600: 2a0103f3     	mov	w19, w1
    1604: aa0003f4     	mov	x20, x0
    1608: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001608:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14c
    160c: 91000000     	add	x0, x0, #0x0
		000000000000160c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14c
    1610: 90000001     	adrp	x1, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001610:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a0
    1614: 91000021     	add	x1, x1, #0x0
		0000000000001614:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a0
    1618: 72000262     	ands	w2, w19, #0x1
    161c: 52801208     	mov	w8, #0x90               // =144
    1620: 52801109     	mov	w9, #0x88               // =136
    1624: 9a881135     	csel	x21, x9, x8, ne
    1628: 94000000     	bl	0x1628 <zte_goodix_pinctrl_select+0x3c>
		0000000000001628:  R_AARCH64_CALL26	_printk
    162c: f8756a88     	ldr	x8, [x20, x21]
    1630: 128002a0     	mov	w0, #-0x16              // =-22
    1634: 90000001     	adrp	x1, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001634:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf20
    1638: 91000021     	add	x1, x1, #0x0
		0000000000001638:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf20
    163c: b40001c8     	cbz	x8, 0x1674 <zte_goodix_pinctrl_select+0x88>
    1640: b140051f     	cmn	x8, #0x1, lsl #12       // =0x1000
    1644: 54000188     	b.hi	0x1674 <zte_goodix_pinctrl_select+0x88>
    1648: f9404280     	ldr	x0, [x20, #0x80]
    164c: aa0803e1     	mov	x1, x8
    1650: 94000000     	bl	0x1650 <zte_goodix_pinctrl_select+0x64>
		0000000000001650:  R_AARCH64_CALL26	pinctrl_select_state
    1654: 350000c0     	cbnz	w0, 0x166c <zte_goodix_pinctrl_select+0x80>
    1658: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    165c: f9400bf5     	ldr	x21, [sp, #0x10]
    1660: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    1664: d50323bf     	autiasp
    1668: d65f03c0     	ret
    166c: 90000001     	adrp	x1, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		000000000000166c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x974
    1670: 91000021     	add	x1, x1, #0x0
		0000000000001670:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x974
    1674: f9400e88     	ldr	x8, [x20, #0x18]
    1678: 90000009     	adrp	x9, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001678:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x132e
    167c: 91000129     	add	x9, x9, #0x0
		000000000000167c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x132e
    1680: 7200027f     	tst	w19, #0x1
    1684: 9000000a     	adrp	x10, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001684:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1320
    1688: 9100014a     	add	x10, x10, #0x0
		0000000000001688:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1320
    168c: 9a891142     	csel	x2, x10, x9, ne
    1690: 2a0003f3     	mov	w19, w0
    1694: 91004100     	add	x0, x8, #0x10
    1698: 94000000     	bl	0x1698 <zte_goodix_pinctrl_select+0xac>
		0000000000001698:  R_AARCH64_CALL26	_dev_err
    169c: 2a1303e0     	mov	w0, w19
    16a0: 17ffffee     	b	0x1658 <zte_goodix_pinctrl_select+0x6c>
