
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000016dc <aw8693x_get_lra_resistance>:
    16dc: d503233f     	paciasp
    16e0: d10103ff     	sub	sp, sp, #0x40
    16e4: a9017bfd     	stp	x29, x30, [sp, #0x10]
    16e8: f90013f5     	str	x21, [sp, #0x20]
    16ec: a9034ff4     	stp	x20, x19, [sp, #0x30]
    16f0: 910043fd     	add	x29, sp, #0x10
    16f4: d5384108     	mrs	x8, SP_EL0
    16f8: aa0003f3     	mov	x19, x0
    16fc: f9438908     	ldr	x8, [x8, #0x710]
    1700: f90007e8     	str	x8, [sp, #0x8]
    1704: 390003ff     	strb	wzr, [sp]
    1708: 79000bff     	strh	wzr, [sp, #0x4]
    170c: 97fffe08     	bl	0xf2c <aw8693x_stop>
    1710: aa1303e0     	mov	x0, x19
    1714: 528008a1     	mov	w1, #0x45               // =69
    1718: 12800082     	mov	w2, #-0x5               // =-5
    171c: 52800083     	mov	w3, #0x4                // =4
    1720: 94000000     	bl	0x1720 <aw8693x_get_lra_resistance+0x44>
		0000000000001720:  R_AARCH64_CALL26	i2c_w_bits
    1724: 52803e80     	mov	w0, #0x1f4              // =500
    1728: 52804b01     	mov	w1, #0x258              // =600
    172c: 52800042     	mov	w2, #0x2                // =2
    1730: 94000000     	bl	0x1730 <aw8693x_get_lra_resistance+0x54>
		0000000000001730:  R_AARCH64_CALL26	usleep_range_state
    1734: aa1303e0     	mov	x0, x19
    1738: 528009c1     	mov	w1, #0x4e               // =78
    173c: 12800f02     	mov	w2, #-0x79              // =-121
    1740: 52800303     	mov	w3, #0x18               // =24
    1744: 94000000     	bl	0x1744 <aw8693x_get_lra_resistance+0x68>
		0000000000001744:  R_AARCH64_CALL26	i2c_w_bits
    1748: 910003e2     	mov	x2, sp
    174c: aa1303e0     	mov	x0, x19
    1750: 528009a1     	mov	w1, #0x4d               // =77
    1754: 52800023     	mov	w3, #0x1                // =1
    1758: 94000000     	bl	0x1758 <aw8693x_get_lra_resistance+0x7c>
		0000000000001758:  R_AARCH64_CALL26	i2c_r_bytes
    175c: 394003f4     	ldrb	w20, [sp]
    1760: 910003e2     	mov	x2, sp
    1764: aa1303e0     	mov	x0, x19
    1768: 528009c1     	mov	w1, #0x4e               // =78
    176c: 52800023     	mov	w3, #0x1                // =1
    1770: 94000000     	bl	0x1770 <aw8693x_get_lra_resistance+0x94>
		0000000000001770:  R_AARCH64_CALL26	i2c_r_bytes
    1774: 394003f5     	ldrb	w21, [sp]
    1778: aa1303e0     	mov	x0, x19
    177c: 528009c1     	mov	w1, #0x4e               // =78
    1780: 128000e2     	mov	w2, #-0x8               // =-8
    1784: 52800083     	mov	w3, #0x4                // =4
    1788: 94000000     	bl	0x1788 <aw8693x_get_lra_resistance+0xac>
		0000000000001788:  R_AARCH64_CALL26	i2c_w_bits
    178c: aa1303e0     	mov	x0, x19
    1790: 528009a1     	mov	w1, #0x4d               // =77
    1794: 128001e2     	mov	w2, #-0x10              // =-16
    1798: 528000a3     	mov	w3, #0x5                // =5
    179c: 94000000     	bl	0x179c <aw8693x_get_lra_resistance+0xc0>
		000000000000179c:  R_AARCH64_CALL26	i2c_w_bits
    17a0: 52817700     	mov	w0, #0xbb8              // =3000
    17a4: 5281b581     	mov	w1, #0xdac              // =3500
    17a8: 52800042     	mov	w2, #0x2                // =2
    17ac: 94000000     	bl	0x17ac <aw8693x_get_lra_resistance+0xd0>
		00000000000017ac:  R_AARCH64_CALL26	usleep_range_state
    17b0: aa1303e0     	mov	x0, x19
    17b4: 528009a1     	mov	w1, #0x4d               // =77
    17b8: 12800062     	mov	w2, #-0x4               // =-4
    17bc: 2a1f03e3     	mov	w3, wzr
    17c0: 94000000     	bl	0x17c0 <aw8693x_get_lra_resistance+0xe4>
		00000000000017c0:  R_AARCH64_CALL26	i2c_w_bits
    17c4: aa1303e0     	mov	x0, x19
    17c8: 528008a1     	mov	w1, #0x45               // =69
    17cc: 12800082     	mov	w2, #-0x5               // =-5
    17d0: 2a1f03e3     	mov	w3, wzr
    17d4: 94000000     	bl	0x17d4 <aw8693x_get_lra_resistance+0xf8>
		00000000000017d4:  R_AARCH64_CALL26	i2c_w_bits
    17d8: 121e0683     	and	w3, w20, #0xc
    17dc: aa1303e0     	mov	x0, x19
    17e0: 528009a1     	mov	w1, #0x4d               // =77
    17e4: 12800182     	mov	w2, #-0xd               // =-13
    17e8: 94000000     	bl	0x17e8 <aw8693x_get_lra_resistance+0x10c>
		00000000000017e8:  R_AARCH64_CALL26	i2c_w_bits
    17ec: 12000aa3     	and	w3, w21, #0x7
    17f0: aa1303e0     	mov	x0, x19
    17f4: 528009c1     	mov	w1, #0x4e               // =78
    17f8: 128000e2     	mov	w2, #-0x8               // =-8
    17fc: 94000000     	bl	0x17fc <aw8693x_get_lra_resistance+0x120>
		00000000000017fc:  R_AARCH64_CALL26	i2c_w_bits
    1800: 910013e2     	add	x2, sp, #0x4
    1804: aa1303e0     	mov	x0, x19
    1808: 528009e1     	mov	w1, #0x4f               // =79
    180c: 52800043     	mov	w3, #0x2                // =2
    1810: 94000000     	bl	0x1810 <aw8693x_get_lra_resistance+0x134>
		0000000000001810:  R_AARCH64_CALL26	i2c_r_bytes
    1814: 394013e8     	ldrb	w8, [sp, #0x4]
    1818: 394017e9     	ldrb	w9, [sp, #0x5]
    181c: 33180509     	bfi	w9, w8, #8, #2
    1820: 5289da08     	mov	w8, #0x4ed0             // =20176
    1824: 72a00128     	movk	w8, #0x9, lsl #16
    1828: 1b087d28     	mul	w8, w9, w8
    182c: 5280cd29     	mov	w9, #0x669              // =1641
    1830: 72acd009     	movk	w9, #0x6680, lsl #16
    1834: 9ba97d08     	umull	x8, w8, w9
    1838: d36cfd08     	lsr	x8, x8, #44
    183c: b9006668     	str	w8, [x19, #0x64]
    1840: d5384108     	mrs	x8, SP_EL0
    1844: f9438908     	ldr	x8, [x8, #0x710]
    1848: f94007e9     	ldr	x9, [sp, #0x8]
    184c: eb09011f     	cmp	x8, x9
    1850: 540000e1     	b.ne	0x186c <aw8693x_get_lra_resistance+0x190>
    1854: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    1858: f94013f5     	ldr	x21, [sp, #0x20]
    185c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1860: 910103ff     	add	sp, sp, #0x40
    1864: d50323bf     	autiasp
    1868: d65f03c0     	ret
    186c: 94000000     	bl	0x186c <aw8693x_get_lra_resistance+0x190>
		000000000000186c:  R_AARCH64_CALL26	__stack_chk_fail
