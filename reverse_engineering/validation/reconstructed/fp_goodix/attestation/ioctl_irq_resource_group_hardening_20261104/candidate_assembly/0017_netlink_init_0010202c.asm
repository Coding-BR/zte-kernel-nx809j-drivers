
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001358 <netlink_init>:
    1358: d503233f     	paciasp
    135c: d10103ff     	sub	sp, sp, #0x40
    1360: a9037bfd     	stp	x29, x30, [sp, #0x30]
    1364: 9100c3fd     	add	x29, sp, #0x30
    1368: d5384108     	mrs	x8, SP_EL0
    136c: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		000000000000136c:  R_AARCH64_ADR_PREL_PG_HI21	init_net
    1370: 91000000     	add	x0, x0, #0x0
		0000000000001370:  R_AARCH64_ADD_ABS_LO12_NC	init_net
    1374: f9438908     	ldr	x8, [x8, #0x710]
    1378: 90000002     	adrp	x2, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001378:  R_AARCH64_ADR_PREL_PG_HI21	__this_module
    137c: 91000042     	add	x2, x2, #0x0
		000000000000137c:  R_AARCH64_ADD_ABS_LO12_NC	__this_module
    1380: 910003e3     	mov	x3, sp
    1384: 52800321     	mov	w1, #0x19               // =25
    1388: f81f83a8     	stur	x8, [x29, #-0x8]
    138c: 90000008     	adrp	x8, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		000000000000138c:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x13f4
    1390: 91000108     	add	x8, x8, #0x0
		0000000000001390:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x13f4
    1394: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    1398: f90003ff     	str	xzr, [sp]
    139c: a900ffe8     	stp	x8, xzr, [sp, #0x8]
    13a0: 94000000     	bl	0x13a0 <netlink_init+0x48>
		00000000000013a0:  R_AARCH64_CALL26	__netlink_kernel_create
    13a4: 90000008     	adrp	x8, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		00000000000013a4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x208
    13a8: f9000100     	str	x0, [x8]
		00000000000013a8:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x208
    13ac: b4000160     	cbz	x0, 0x13d8 <netlink_init+0x80>
    13b0: 2a1f03e0     	mov	w0, wzr
    13b4: d5384108     	mrs	x8, SP_EL0
    13b8: f9438908     	ldr	x8, [x8, #0x710]
    13bc: f85f83a9     	ldur	x9, [x29, #-0x8]
    13c0: eb09011f     	cmp	x8, x9
    13c4: 54000141     	b.ne	0x13ec <netlink_init+0x94>
    13c8: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    13cc: 910103ff     	add	sp, sp, #0x40
    13d0: d50323bf     	autiasp
    13d4: d65f03c0     	ret
    13d8: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		00000000000013d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a8
    13dc: 91000000     	add	x0, x0, #0x0
		00000000000013dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a8
    13e0: 94000000     	bl	0x13e0 <netlink_init+0x88>
		00000000000013e0:  R_AARCH64_CALL26	_printk
    13e4: 52800020     	mov	w0, #0x1                // =1
    13e8: 17fffff3     	b	0x13b4 <netlink_init+0x5c>
    13ec: 94000000     	bl	0x13ec <netlink_init+0x94>
		00000000000013ec:  R_AARCH64_CALL26	__stack_chk_fail
