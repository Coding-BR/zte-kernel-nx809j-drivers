
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002864 <charger_policy_check_usb_present>:
    2864: d503233f     	paciasp
    2868: d10183ff     	sub	sp, sp, #0x60
    286c: a9027bfd     	stp	x29, x30, [sp, #0x20]
    2870: f9001bf7     	str	x23, [sp, #0x30]
    2874: a90457f6     	stp	x22, x21, [sp, #0x40]
    2878: a9054ff4     	stp	x20, x19, [sp, #0x50]
    287c: 910083fd     	add	x29, sp, #0x20
    2880: d5384108     	mrs	x8, SP_EL0
    2884: aa0003f4     	mov	x20, x0
    2888: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x644>
		0000000000002888:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36a
    288c: 91000000     	add	x0, x0, #0x0
		000000000000288c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36a
    2890: f9438908     	ldr	x8, [x8, #0x710]
    2894: f81f83a8     	stur	x8, [x29, #-0x8]
    2898: a900ffff     	stp	xzr, xzr, [sp, #0x8]
    289c: 94000000     	bl	0x289c <charger_policy_check_usb_present+0x38>
		000000000000289c:  R_AARCH64_CALL26	power_supply_get_by_name
    28a0: b5000120     	cbnz	x0, 0x28c4 <charger_policy_check_usb_present+0x60>
    28a4: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x644>
		00000000000028a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x152b
    28a8: 91000000     	add	x0, x0, #0x0
		00000000000028a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x152b
    28ac: 90000001     	adrp	x1, 0x2000 <charger_policy_probe+0x644>
		00000000000028ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6cc
    28b0: 91000021     	add	x1, x1, #0x0
		00000000000028b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6cc
    28b4: 90000002     	adrp	x2, 0x2000 <charger_policy_probe+0x644>
		00000000000028b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36a
    28b8: 91000042     	add	x2, x2, #0x0
		00000000000028b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36a
    28bc: 94000000     	bl	0x28bc <charger_policy_check_usb_present+0x58>
		00000000000028bc:  R_AARCH64_CALL26	_printk
    28c0: 1400000f     	b	0x28fc <charger_policy_check_usb_present+0x98>
    28c4: 910043e2     	add	x2, sp, #0x10
    28c8: 52800081     	mov	w1, #0x4                // =4
    28cc: aa0003f5     	mov	x21, x0
    28d0: 94000000     	bl	0x28d0 <charger_policy_check_usb_present+0x6c>
		00000000000028d0:  R_AARCH64_CALL26	power_supply_get_property
    28d4: 36f80220     	tbz	w0, #0x1f, 0x2918 <charger_policy_check_usb_present+0xb4>
    28d8: 2a0003e4     	mov	w4, w0
    28dc: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x644>
		00000000000028dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ed1
    28e0: 91000000     	add	x0, x0, #0x0
		00000000000028e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ed1
    28e4: 90000001     	adrp	x1, 0x2000 <charger_policy_probe+0x644>
		00000000000028e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6cc
    28e8: 91000021     	add	x1, x1, #0x0
		00000000000028e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6cc
    28ec: 90000002     	adrp	x2, 0x2000 <charger_policy_probe+0x644>
		00000000000028ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36a
    28f0: 91000042     	add	x2, x2, #0x0
		00000000000028f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36a
    28f4: 52800083     	mov	w3, #0x4                // =4
    28f8: 94000000     	bl	0x28f8 <charger_policy_check_usb_present+0x94>
		00000000000028f8:  R_AARCH64_CALL26	_printk
    28fc: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x644>
		00000000000028fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1477
    2900: 91000000     	add	x0, x0, #0x0
		0000000000002900:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1477
    2904: 90000001     	adrp	x1, 0x2000 <charger_policy_probe+0x644>
		0000000000002904:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1991
    2908: 91000021     	add	x1, x1, #0x0
		0000000000002908:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1991
    290c: 94000000     	bl	0x290c <charger_policy_check_usb_present+0xa8>
		000000000000290c:  R_AARCH64_CALL26	_printk
    2910: 2a1f03f3     	mov	w19, wzr
    2914: 14000004     	b	0x2924 <charger_policy_check_usb_present+0xc0>
    2918: b94013f3     	ldr	w19, [sp, #0x10]
    291c: aa1503e0     	mov	x0, x21
    2920: 94000000     	bl	0x2920 <charger_policy_check_usb_present+0xbc>
		0000000000002920:  R_AARCH64_CALL26	power_supply_put
    2924: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x644>
		0000000000002924:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x117b
    2928: 91000000     	add	x0, x0, #0x0
		0000000000002928:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x117b
    292c: 90000001     	adrp	x1, 0x2000 <charger_policy_probe+0x644>
		000000000000292c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1991
    2930: 91000021     	add	x1, x1, #0x0
		0000000000002930:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1991
    2934: 2a1303e2     	mov	w2, w19
    2938: 94000000     	bl	0x2938 <charger_policy_check_usb_present+0xd4>
		0000000000002938:  R_AARCH64_CALL26	_printk
    293c: f940e680     	ldr	x0, [x20, #0x1c8]
    2940: 910033e2     	add	x2, sp, #0xc
    2944: 52800221     	mov	w1, #0x11               // =17
    2948: 97fffb2a     	bl	0x15f0 <zte_charger_policy_get_prop_by_name>
    294c: 36f800c0     	tbz	w0, #0x1f, 0x2964 <charger_policy_check_usb_present+0x100>
    2950: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x644>
		0000000000002950:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1de5
    2954: 91000000     	add	x0, x0, #0x0
		0000000000002954:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1de5
    2958: 90000001     	adrp	x1, 0x2000 <charger_policy_probe+0x644>
		0000000000002958:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1991
    295c: 91000021     	add	x1, x1, #0x0
		000000000000295c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1991
    2960: 94000000     	bl	0x2960 <charger_policy_check_usb_present+0xfc>
		0000000000002960:  R_AARCH64_CALL26	_printk
    2964: b9400ff5     	ldr	w21, [sp, #0xc]
    2968: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x644>
		0000000000002968:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdc0
    296c: 91000000     	add	x0, x0, #0x0
		000000000000296c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdc0
    2970: 90000001     	adrp	x1, 0x2000 <charger_policy_probe+0x644>
		0000000000002970:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1991
    2974: 91000021     	add	x1, x1, #0x0
		0000000000002974:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1991
    2978: 2a1503e2     	mov	w2, w21
    297c: 94000000     	bl	0x297c <charger_policy_check_usb_present+0x118>
		000000000000297c:  R_AARCH64_CALL26	_printk
    2980: f940e680     	ldr	x0, [x20, #0x1c8]
    2984: 910023e2     	add	x2, sp, #0x8
    2988: 52800241     	mov	w1, #0x12               // =18
    298c: 97fffb19     	bl	0x15f0 <zte_charger_policy_get_prop_by_name>
    2990: 36f800c0     	tbz	w0, #0x1f, 0x29a8 <charger_policy_check_usb_present+0x144>
    2994: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x644>
		0000000000002994:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x733
    2998: 91000000     	add	x0, x0, #0x0
		0000000000002998:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x733
    299c: 90000001     	adrp	x1, 0x2000 <charger_policy_probe+0x644>
		000000000000299c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1991
    29a0: 91000021     	add	x1, x1, #0x0
		00000000000029a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1991
    29a4: 94000000     	bl	0x29a4 <charger_policy_check_usb_present+0x140>
		00000000000029a4:  R_AARCH64_CALL26	_printk
    29a8: b9400bf4     	ldr	w20, [sp, #0x8]
    29ac: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x644>
		00000000000029ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaab
    29b0: 91000000     	add	x0, x0, #0x0
		00000000000029b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaab
    29b4: 90000001     	adrp	x1, 0x2000 <charger_policy_probe+0x644>
		00000000000029b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1991
    29b8: 91000021     	add	x1, x1, #0x0
		00000000000029b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1991
    29bc: 2a1403e2     	mov	w2, w20
    29c0: 94000000     	bl	0x29c0 <charger_policy_check_usb_present+0x15c>
		00000000000029c0:  R_AARCH64_CALL26	_printk
    29c4: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x644>
		00000000000029c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36e
    29c8: 91000000     	add	x0, x0, #0x0
		00000000000029c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36e
    29cc: f9000bff     	str	xzr, [sp, #0x10]
    29d0: 94000000     	bl	0x29d0 <charger_policy_check_usb_present+0x16c>
		00000000000029d0:  R_AARCH64_CALL26	power_supply_get_by_name
    29d4: b4000360     	cbz	x0, 0x2a40 <charger_policy_check_usb_present+0x1dc>
    29d8: 910043e2     	add	x2, sp, #0x10
    29dc: 52800081     	mov	w1, #0x4                // =4
    29e0: aa0003f6     	mov	x22, x0
    29e4: 94000000     	bl	0x29e4 <charger_policy_check_usb_present+0x180>
		00000000000029e4:  R_AARCH64_CALL26	power_supply_get_property
    29e8: 37f803c0     	tbnz	w0, #0x1f, 0x2a60 <charger_policy_check_usb_present+0x1fc>
    29ec: b94013f7     	ldr	w23, [sp, #0x10]
    29f0: aa1603e0     	mov	x0, x22
    29f4: 94000000     	bl	0x29f4 <charger_policy_check_usb_present+0x190>
		00000000000029f4:  R_AARCH64_CALL26	power_supply_put
    29f8: 710002ff     	cmp	w23, #0x0
    29fc: 1a9f07e8     	cset	w8, ne
    2a00: 2a1302a9     	orr	w9, w21, w19
    2a04: d538410a     	mrs	x10, SP_EL0
    2a08: f943894a     	ldr	x10, [x10, #0x710]
    2a0c: 2a140129     	orr	w9, w9, w20
    2a10: f85f83ab     	ldur	x11, [x29, #-0x8]
    2a14: 7100013f     	cmp	w9, #0x0
    2a18: 1a9f0500     	csinc	w0, w8, wzr, eq
    2a1c: eb0b015f     	cmp	x10, x11
    2a20: 54000401     	b.ne	0x2aa0 <charger_policy_check_usb_present+0x23c>
    2a24: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    2a28: f9401bf7     	ldr	x23, [sp, #0x30]
    2a2c: a94457f6     	ldp	x22, x21, [sp, #0x40]
    2a30: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    2a34: 910183ff     	add	sp, sp, #0x60
    2a38: d50323bf     	autiasp
    2a3c: d65f03c0     	ret
    2a40: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x644>
		0000000000002a40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x152b
    2a44: 91000000     	add	x0, x0, #0x0
		0000000000002a44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x152b
    2a48: 90000001     	adrp	x1, 0x2000 <charger_policy_probe+0x644>
		0000000000002a48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6cc
    2a4c: 91000021     	add	x1, x1, #0x0
		0000000000002a4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6cc
    2a50: 90000002     	adrp	x2, 0x2000 <charger_policy_probe+0x644>
		0000000000002a50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36e
    2a54: 91000042     	add	x2, x2, #0x0
		0000000000002a54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36e
    2a58: 94000000     	bl	0x2a58 <charger_policy_check_usb_present+0x1f4>
		0000000000002a58:  R_AARCH64_CALL26	_printk
    2a5c: 1400000a     	b	0x2a84 <charger_policy_check_usb_present+0x220>
    2a60: 2a0003e4     	mov	w4, w0
    2a64: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x644>
		0000000000002a64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ed1
    2a68: 91000000     	add	x0, x0, #0x0
		0000000000002a68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ed1
    2a6c: 90000001     	adrp	x1, 0x2000 <charger_policy_probe+0x644>
		0000000000002a6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6cc
    2a70: 91000021     	add	x1, x1, #0x0
		0000000000002a70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6cc
    2a74: 90000002     	adrp	x2, 0x2000 <charger_policy_probe+0x644>
		0000000000002a74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36e
    2a78: 91000042     	add	x2, x2, #0x0
		0000000000002a78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36e
    2a7c: 52800083     	mov	w3, #0x4                // =4
    2a80: 94000000     	bl	0x2a80 <charger_policy_check_usb_present+0x21c>
		0000000000002a80:  R_AARCH64_CALL26	_printk
    2a84: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x644>
		0000000000002a84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1477
    2a88: 91000000     	add	x0, x0, #0x0
		0000000000002a88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1477
    2a8c: 90000001     	adrp	x1, 0x2000 <charger_policy_probe+0x644>
		0000000000002a8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1991
    2a90: 91000021     	add	x1, x1, #0x0
		0000000000002a90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1991
    2a94: 94000000     	bl	0x2a94 <charger_policy_check_usb_present+0x230>
		0000000000002a94:  R_AARCH64_CALL26	_printk
    2a98: 2a1f03e8     	mov	w8, wzr
    2a9c: 17ffffd9     	b	0x2a00 <charger_policy_check_usb_present+0x19c>
    2aa0: 94000000     	bl	0x2aa0 <charger_policy_check_usb_present+0x23c>
		0000000000002aa0:  R_AARCH64_CALL26	__stack_chk_fail
