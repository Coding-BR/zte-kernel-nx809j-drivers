
/input/aw86320.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002610 <ram_update_store>:
    2610: d503233f     	paciasp
    2614: d10143ff     	sub	sp, sp, #0x50
    2618: a9027bfd     	stp	x29, x30, [sp, #0x20]
    261c: f9001bf5     	str	x21, [sp, #0x30]
    2620: a9044ff4     	stp	x20, x19, [sp, #0x40]
    2624: 910083fd     	add	x29, sp, #0x20
    2628: d5384108     	mrs	x8, SP_EL0
    262c: aa0103f5     	mov	x21, x1
    2630: 910023e0     	add	x0, sp, #0x8
    2634: f9438908     	ldr	x8, [x8, #0x710]
    2638: f100245f     	cmp	x2, #0x9
    263c: f81f83a8     	stur	x8, [x29, #-0x8]
    2640: 90000008     	adrp	x8, 0x2000 <speed_store+0x8>
		0000000000002640:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_bss_base
    2644: f9400114     	ldr	x20, [x8]
		0000000000002644:  R_AARCH64_LDST64_ABS_LO12_NC	aw86320_bss_base
    2648: 52800128     	mov	w8, #0x9                // =9
    264c: b90007ff     	str	wzr, [sp, #0x4]
    2650: 9a883053     	csel	x19, x2, x8, lo
    2654: 2a1f03e2     	mov	w2, wzr
    2658: 790023ff     	strh	wzr, [sp, #0x10]
    265c: aa1303e1     	mov	x1, x19
    2660: f90007ff     	str	xzr, [sp, #0x8]
    2664: 94000000     	bl	0x2664 <ram_update_store+0x54>
		0000000000002664:  R_AARCH64_CALL26	__check_object_size
    2668: 910023e0     	add	x0, sp, #0x8
    266c: aa1503e1     	mov	x1, x21
    2670: aa1303e2     	mov	x2, x19
    2674: 97fffdea     	bl	0x1e1c <_inline_copy_from_user>
		0000000000002674:  R_AARCH64_CALL26	_inline_copy_from_user
    2678: 350000c0     	cbnz	w0, 0x2690 <ram_update_store+0x80>
    267c: 910023e0     	add	x0, sp, #0x8
    2680: 910013e2     	add	x2, sp, #0x4
    2684: 2a1f03e1     	mov	w1, wzr
    2688: 94000000     	bl	0x2688 <ram_update_store+0x78>
		0000000000002688:  R_AARCH64_CALL26	kstrtouint
    268c: 340001c0     	cbz	w0, 0x26c4 <ram_update_store+0xb4>
    2690: 928002b3     	mov	x19, #-0x16             // =-22
    2694: d5384108     	mrs	x8, SP_EL0
    2698: f9438908     	ldr	x8, [x8, #0x710]
    269c: f85f83a9     	ldur	x9, [x29, #-0x8]
    26a0: eb09011f     	cmp	x8, x9
    26a4: 54000421     	b.ne	0x2728 <ram_update_store+0x118>
    26a8: aa1303e0     	mov	x0, x19
    26ac: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    26b0: f9401bf5     	ldr	x21, [sp, #0x30]
    26b4: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    26b8: 910143ff     	add	sp, sp, #0x50
    26bc: d50323bf     	autiasp
    26c0: d65f03c0     	ret
    26c4: b94007e5     	ldr	w5, [sp, #0x4]
    26c8: 90000003     	adrp	x3, 0x2000 <speed_store+0x8>
		00000000000026c8:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x84d
    26cc: 91000063     	add	x3, x3, #0x0
		00000000000026cc:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x84d
    26d0: 90000000     	adrp	x0, 0x2000 <speed_store+0x8>
		00000000000026d0:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x67c
    26d4: 91000000     	add	x0, x0, #0x0
		00000000000026d4:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x67c
    26d8: 90000001     	adrp	x1, 0x2000 <speed_store+0x8>
		00000000000026d8:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xb9a
    26dc: 91000021     	add	x1, x1, #0x0
		00000000000026dc:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xb9a
    26e0: 52805a82     	mov	w2, #0x2d4              // =724
    26e4: aa0303e4     	mov	x4, x3
    26e8: 94000000     	bl	0x26e8 <ram_update_store+0xd8>
		00000000000026e8:  R_AARCH64_CALL26	_printk
    26ec: b94007e8     	ldr	w8, [sp, #0x4]
    26f0: 34fffd28     	cbz	w8, 0x2694 <ram_update_store+0x84>
    26f4: f940f283     	ldr	x3, [x20, #0x1e0]
    26f8: 90000000     	adrp	x0, 0x2000 <speed_store+0x8>
		00000000000026f8:  R_AARCH64_ADR_PREL_PG_HI21	__this_module
    26fc: 91000000     	add	x0, x0, #0x0
		00000000000026fc:  R_AARCH64_ADD_ABS_LO12_NC	__this_module
    2700: 90000002     	adrp	x2, 0x2000 <speed_store+0x8>
		0000000000002700:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x3a7
    2704: 91000042     	add	x2, x2, #0x0
		0000000000002704:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x3a7
    2708: 90000006     	adrp	x6, 0x2000 <speed_store+0x8>
		0000000000002708:  R_AARCH64_ADR_PREL_PG_HI21	ram_load
    270c: 910000c6     	add	x6, x6, #0x0
		000000000000270c:  R_AARCH64_ADD_ABS_LO12_NC	ram_load
    2710: 52800021     	mov	w1, #0x1                // =1
    2714: 52819804     	mov	w4, #0xcc0              // =3264
    2718: aa1403e5     	mov	x5, x20
    271c: 3900029f     	strb	wzr, [x20]
    2720: 94000000     	bl	0x2720 <ram_update_store+0x110>
		0000000000002720:  R_AARCH64_CALL26	request_firmware_nowait
    2724: 17ffffdc     	b	0x2694 <ram_update_store+0x84>
    2728: 94000000     	bl	0x2728 <ram_update_store+0x118>
		0000000000002728:  R_AARCH64_CALL26	__stack_chk_fail
