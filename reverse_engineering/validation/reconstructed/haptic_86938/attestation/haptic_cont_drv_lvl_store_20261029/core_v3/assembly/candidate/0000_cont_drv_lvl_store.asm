
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000016d4 <cont_drv_lvl_store>:
    16d4: d503233f     	paciasp
    16d8: d10143ff     	sub	sp, sp, #0x50
    16dc: a9027bfd     	stp	x29, x30, [sp, #0x20]
    16e0: f9001bf5     	str	x21, [sp, #0x30]
    16e4: a9044ff4     	stp	x20, x19, [sp, #0x40]
    16e8: 910083fd     	add	x29, sp, #0x20
    16ec: d5384109     	mrs	x9, SP_EL0
    16f0: aa0203e8     	mov	x8, x2
    16f4: aa0303f3     	mov	x19, x3
    16f8: f9438929     	ldr	x9, [x9, #0x710]
    16fc: 90000001     	adrp	x1, 0x1000 <aw8693x_set_bst_vol+0x18>
		00000000000016fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20b
    1700: 91000021     	add	x1, x1, #0x0
		0000000000001700:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20b
    1704: 910043e2     	add	x2, sp, #0x10
    1708: f81f83a9     	stur	x9, [x29, #-0x8]
    170c: 910043e9     	add	x9, sp, #0x10
    1710: f9404c15     	ldr	x21, [x0, #0x98]
    1714: b27e0123     	orr	x3, x9, #0x4
    1718: aa0803e0     	mov	x0, x8
    171c: f9000bff     	str	xzr, [sp, #0x10]
    1720: 79001bff     	strh	wzr, [sp, #0xc]
    1724: 94000000     	bl	0x1724 <cont_drv_lvl_store+0x50>
		0000000000001724:  R_AARCH64_CALL26	sscanf
    1728: 7100081f     	cmp	w0, #0x2
    172c: 54000361     	b.ne	0x1798 <cont_drv_lvl_store+0xc4>
    1730: b94013e8     	ldr	w8, [sp, #0x10]
    1734: 910922a0     	add	x0, x21, #0x248
    1738: d102a2b4     	sub	x20, x21, #0xa8
    173c: 390fcaa8     	strb	w8, [x21, #0x3f2]
    1740: b94017e8     	ldr	w8, [sp, #0x14]
    1744: 390fcea8     	strb	w8, [x21, #0x3f3]
    1748: 94000000     	bl	0x1748 <cont_drv_lvl_store+0x74>
		0000000000001748:  R_AARCH64_CALL26	mutex_lock
    174c: 910033e2     	add	x2, sp, #0xc
    1750: aa1403e0     	mov	x0, x20
    1754: 528003a1     	mov	w1, #0x1d               // =29
    1758: 52800023     	mov	w3, #0x1                // =1
    175c: 94000000     	bl	0x175c <cont_drv_lvl_store+0x88>
		000000000000175c:  R_AARCH64_CALL26	i2c_r_bytes
    1760: 394033e8     	ldrb	w8, [sp, #0xc]
    1764: 394fcaa9     	ldrb	w9, [x21, #0x3f2]
    1768: 910033e2     	add	x2, sp, #0xc
    176c: aa1403e0     	mov	x0, x20
    1770: 528003a1     	mov	w1, #0x1d               // =29
    1774: 52800043     	mov	w3, #0x2                // =2
    1778: 12190108     	and	w8, w8, #0x80
    177c: 2a090108     	orr	w8, w8, w9
    1780: 390033e8     	strb	w8, [sp, #0xc]
    1784: 394fcea8     	ldrb	w8, [x21, #0x3f3]
    1788: 390037e8     	strb	w8, [sp, #0xd]
    178c: 94000000     	bl	0x178c <cont_drv_lvl_store+0xb8>
		000000000000178c:  R_AARCH64_CALL26	i2c_w_bytes
    1790: 910922a0     	add	x0, x21, #0x248
    1794: 94000000     	bl	0x1794 <cont_drv_lvl_store+0xc0>
		0000000000001794:  R_AARCH64_CALL26	mutex_unlock
    1798: d5384108     	mrs	x8, SP_EL0
    179c: f9438908     	ldr	x8, [x8, #0x710]
    17a0: f85f83a9     	ldur	x9, [x29, #-0x8]
    17a4: eb09011f     	cmp	x8, x9
    17a8: 54000101     	b.ne	0x17c8 <cont_drv_lvl_store+0xf4>
    17ac: aa1303e0     	mov	x0, x19
    17b0: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    17b4: f9401bf5     	ldr	x21, [sp, #0x30]
    17b8: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    17bc: 910143ff     	add	sp, sp, #0x50
    17c0: d50323bf     	autiasp
    17c4: d65f03c0     	ret
    17c8: 94000000     	bl	0x17c8 <cont_drv_lvl_store+0xf4>
		00000000000017c8:  R_AARCH64_CALL26	__stack_chk_fail
