
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001940 <zte_touch_pdev_register>:
    1940: d503233f     	paciasp
    1944: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1948: a9014ff4     	stp	x20, x19, [sp, #0x10]
    194c: 910003fd     	mov	x29, sp
    1950: 90000008     	adrp	x8, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001950:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    1954: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001954:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6819
    1958: 91000000     	add	x0, x0, #0x0
		0000000000001958:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6819
    195c: f9400114     	ldr	x20, [x8]
		000000000000195c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    1960: 90000001     	adrp	x1, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001960:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6823
    1964: 91000021     	add	x1, x1, #0x0
		0000000000001964:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6823
    1968: 94000000     	bl	0x1968 <zte_touch_pdev_register+0x28>
		0000000000001968:  R_AARCH64_CALL26	_printk
    196c: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		000000000000196c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8aad
    1970: 91000000     	add	x0, x0, #0x0
		0000000000001970:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8aad
    1974: 12800001     	mov	w1, #-0x1               // =-1
    1978: 94000000     	bl	0x1978 <zte_touch_pdev_register+0x38>
		0000000000001978:  R_AARCH64_CALL26	platform_device_alloc
    197c: f906ea80     	str	x0, [x20, #0xdd0]
    1980: b4000160     	cbz	x0, 0x19ac <zte_touch_pdev_register+0x6c>
    1984: 94000000     	bl	0x1984 <zte_touch_pdev_register+0x44>
		0000000000001984:  R_AARCH64_CALL26	platform_device_add
    1988: 37f80220     	tbnz	w0, #0x1f, 0x19cc <zte_touch_pdev_register+0x8c>
    198c: 2a1f03e0     	mov	w0, wzr
    1990: 90000008     	adrp	x8, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001990:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1a24
    1994: 91000108     	add	x8, x8, #0x0
		0000000000001994:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1a24
    1998: f9075288     	str	x8, [x20, #0xea0]
    199c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    19a0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    19a4: d50323bf     	autiasp
    19a8: d65f03c0     	ret
    19ac: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		00000000000019ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb74
    19b0: 91000000     	add	x0, x0, #0x0
		00000000000019b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb74
    19b4: 90000001     	adrp	x1, 0x1000 <zlog_register_work_deinit+0x14>
		00000000000019b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6823
    19b8: 91000021     	add	x1, x1, #0x0
		00000000000019b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6823
    19bc: 94000000     	bl	0x19bc <zte_touch_pdev_register+0x7c>
		00000000000019bc:  R_AARCH64_CALL26	_printk
    19c0: aa1f03e8     	mov	x8, xzr
    19c4: 12800160     	mov	w0, #-0xc               // =-12
    19c8: 17fffff4     	b	0x1998 <zte_touch_pdev_register+0x58>
    19cc: 90000008     	adrp	x8, 0x1000 <zlog_register_work_deinit+0x14>
		00000000000019cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9d4b
    19d0: 91000108     	add	x8, x8, #0x0
		00000000000019d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9d4b
    19d4: 2a0003f3     	mov	w19, w0
    19d8: 90000001     	adrp	x1, 0x1000 <zlog_register_work_deinit+0x14>
		00000000000019d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6823
    19dc: 91000021     	add	x1, x1, #0x0
		00000000000019dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6823
    19e0: aa0803e0     	mov	x0, x8
    19e4: 2a1303e2     	mov	w2, w19
    19e8: 94000000     	bl	0x19e8 <zte_touch_pdev_register+0xa8>
		00000000000019e8:  R_AARCH64_CALL26	_printk
    19ec: f946ea88     	ldr	x8, [x20, #0xdd0]
    19f0: f9419d09     	ldr	x9, [x8, #0x338]
    19f4: 91004100     	add	x0, x8, #0x10
    19f8: b85fc130     	ldur	w16, [x9, #-0x4]
    19fc: 72971911     	movk	w17, #0xb8c8
    1a00: 72ad9031     	movk	w17, #0x6c81, lsl #16
    1a04: 6b11021f     	cmp	w16, w17
    1a08: 54000040     	b.eq	0x1a10 <zte_touch_pdev_register+0xd0>
    1a0c: d4304520     	brk	#0x8229
    1a10: d63f0120     	blr	x9
    1a14: 2a1303e0     	mov	w0, w19
    1a18: aa1f03e8     	mov	x8, xzr
    1a1c: 17ffffdf     	b	0x1998 <zte_touch_pdev_register+0x58>
