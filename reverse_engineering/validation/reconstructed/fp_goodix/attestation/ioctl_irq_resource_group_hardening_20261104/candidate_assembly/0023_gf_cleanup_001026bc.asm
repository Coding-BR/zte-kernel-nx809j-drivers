
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000016a8 <gf_cleanup>:
    16a8: d503233f     	paciasp
    16ac: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    16b0: f9000bf3     	str	x19, [sp, #0x10]
    16b4: 910003fd     	mov	x29, sp
    16b8: aa0003f3     	mov	x19, x0
    16bc: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		00000000000016bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11fa
    16c0: 91000000     	add	x0, x0, #0x0
		00000000000016c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11fa
    16c4: 90000001     	adrp	x1, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		00000000000016c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbc4
    16c8: 91000021     	add	x1, x1, #0x0
		00000000000016c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbc4
    16cc: 94000000     	bl	0x16cc <gf_cleanup+0x24>
		00000000000016cc:  R_AARCH64_CALL26	_printk
    16d0: f9404e60     	ldr	x0, [x19, #0x98]
    16d4: b4000060     	cbz	x0, 0x16e0 <gf_cleanup+0x38>
    16d8: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
    16dc: 54000229     	b.ls	0x1720 <gf_cleanup+0x78>
    16e0: f9408a61     	ldr	x1, [x19, #0x110]
    16e4: b40000c1     	cbz	x1, 0x16fc <gf_cleanup+0x54>
    16e8: f9400e68     	ldr	x8, [x19, #0x18]
    16ec: b4000088     	cbz	x8, 0x16fc <gf_cleanup+0x54>
    16f0: 91004100     	add	x0, x8, #0x10
    16f4: 94000000     	bl	0x16f4 <gf_cleanup+0x4c>
		00000000000016f4:  R_AARCH64_CALL26	devres_release_group
    16f8: f9008a7f     	str	xzr, [x19, #0x110]
    16fc: 928002a8     	mov	x8, #-0x16              // =-22
    1700: a9097e7f     	stp	xzr, xzr, [x19, #0x90]
    1704: f2dffd48     	movk	x8, #0xffea, lsl #32
    1708: a9087e7f     	stp	xzr, xzr, [x19, #0x80]
    170c: f803c268     	stur	x8, [x19, #0x3c]
    1710: f9400bf3     	ldr	x19, [sp, #0x10]
    1714: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1718: d50323bf     	autiasp
    171c: d65f03c0     	ret
    1720: 94000000     	bl	0x1720 <gf_cleanup+0x78>
		0000000000001720:  R_AARCH64_CALL26	regulator_is_enabled
    1724: 7100041f     	cmp	w0, #0x1
    1728: 540000eb     	b.lt	0x1744 <gf_cleanup+0x9c>
    172c: f9404e60     	ldr	x0, [x19, #0x98]
    1730: 94000000     	bl	0x1730 <gf_cleanup+0x88>
		0000000000001730:  R_AARCH64_CALL26	regulator_disable
    1734: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001734:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x120e
    1738: 91000000     	add	x0, x0, #0x0
		0000000000001738:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x120e
    173c: 94000000     	bl	0x173c <gf_cleanup+0x94>
		000000000000173c:  R_AARCH64_CALL26	_printk
    1740: 17ffffe8     	b	0x16e0 <gf_cleanup+0x38>
    1744: 2a0003e1     	mov	w1, w0
    1748: 350000a0     	cbnz	w0, 0x175c <gf_cleanup+0xb4>
    174c: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		000000000000174c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1197
    1750: 91000000     	add	x0, x0, #0x0
		0000000000001750:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1197
    1754: 94000000     	bl	0x1754 <gf_cleanup+0xac>
		0000000000001754:  R_AARCH64_CALL26	_printk
    1758: 17ffffe2     	b	0x16e0 <gf_cleanup+0x38>
    175c: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		000000000000175c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe29
    1760: 91000000     	add	x0, x0, #0x0
		0000000000001760:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe29
    1764: 94000000     	bl	0x1764 <gf_cleanup+0xbc>
		0000000000001764:  R_AARCH64_CALL26	_printk
    1768: 17ffffde     	b	0x16e0 <gf_cleanup+0x38>
