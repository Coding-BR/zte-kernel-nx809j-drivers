
/input/zte_misc.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000073c <zte_misc_get_design_capacity>:
     73c: d503233f     	paciasp
     740: d100c3ff     	sub	sp, sp, #0x30
     744: a9017bfd     	stp	x29, x30, [sp, #0x10]
     748: a9024ff4     	stp	x20, x19, [sp, #0x20]
     74c: 910043fd     	add	x29, sp, #0x10
     750: d5384108     	mrs	x8, SP_EL0
     754: aa0003f3     	mov	x19, x0
     758: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000758:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x343
     75c: 91000000     	add	x0, x0, #0x0
		000000000000075c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x343
     760: f9438908     	ldr	x8, [x8, #0x710]
     764: f90007e8     	str	x8, [sp, #0x8]
     768: f90003ff     	str	xzr, [sp]
     76c: 94000000     	bl	0x76c <zte_misc_get_design_capacity+0x30>
		000000000000076c:  R_AARCH64_CALL26	power_supply_get_by_name
     770: b50000c0     	cbnz	x0, 0x788 <zte_misc_get_design_capacity+0x4c>
     774: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000774:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24
     778: 91000000     	add	x0, x0, #0x0
		0000000000000778:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24
     77c: 94000000     	bl	0x77c <zte_misc_get_design_capacity+0x40>
		000000000000077c:  R_AARCH64_CALL26	_printk
     780: 2a1f03f4     	mov	w20, wzr
     784: 14000015     	b	0x7d8 <zte_misc_get_design_capacity+0x9c>
     788: 910003e2     	mov	x2, sp
     78c: 528002c1     	mov	w1, #0x16               // =22
     790: aa0003f4     	mov	x20, x0
     794: 94000000     	bl	0x794 <zte_misc_get_design_capacity+0x58>
		0000000000000794:  R_AARCH64_CALL26	power_supply_get_property
     798: 340000a0     	cbz	w0, 0x7ac <zte_misc_get_design_capacity+0x70>
     79c: 2a0003e1     	mov	w1, w0
     7a0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000007a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfc
     7a4: 91000000     	add	x0, x0, #0x0
		00000000000007a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfc
     7a8: 94000000     	bl	0x7a8 <zte_misc_get_design_capacity+0x6c>
		00000000000007a8:  R_AARCH64_CALL26	_printk
     7ac: aa1403e0     	mov	x0, x20
     7b0: 94000000     	bl	0x7b0 <zte_misc_get_design_capacity+0x74>
		00000000000007b0:  R_AARCH64_CALL26	power_supply_put
     7b4: b94003e8     	ldr	w8, [sp]
     7b8: 5289ba69     	mov	w9, #0x4dd3             // =19923
     7bc: 528847ea     	mov	w10, #0x423f            // =16959
     7c0: 72a20c49     	movk	w9, #0x1062, lsl #16
     7c4: 72a001ea     	movk	w10, #0xf, lsl #16
     7c8: 9ba97d09     	umull	x9, w8, w9
     7cc: 6b0a011f     	cmp	w8, w10
     7d0: d366fd29     	lsr	x9, x9, #38
     7d4: 1a88c134     	csel	w20, w9, w8, gt
     7d8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000007d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x47
     7dc: 91000000     	add	x0, x0, #0x0
		00000000000007dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x47
     7e0: 2a1403e1     	mov	w1, w20
     7e4: 94000000     	bl	0x7e4 <zte_misc_get_design_capacity+0xa8>
		00000000000007e4:  R_AARCH64_CALL26	_printk
     7e8: 90000002     	adrp	x2, 0x0 <.text>
		00000000000007e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x261
     7ec: 91000042     	add	x2, x2, #0x0
		00000000000007ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x261
     7f0: aa1303e0     	mov	x0, x19
     7f4: 52820001     	mov	w1, #0x1000             // =4096
     7f8: 2a1403e3     	mov	w3, w20
     7fc: 94000000     	bl	0x7fc <zte_misc_get_design_capacity+0xc0>
		00000000000007fc:  R_AARCH64_CALL26	snprintf
     800: d5384108     	mrs	x8, SP_EL0
     804: f9438908     	ldr	x8, [x8, #0x710]
     808: f94007e9     	ldr	x9, [sp, #0x8]
     80c: eb09011f     	cmp	x8, x9
     810: 540000c1     	b.ne	0x828 <zte_misc_get_design_capacity+0xec>
     814: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     818: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     81c: 9100c3ff     	add	sp, sp, #0x30
     820: d50323bf     	autiasp
     824: d65f03c0     	ret
     828: 94000000     	bl	0x828 <zte_misc_get_design_capacity+0xec>
		0000000000000828:  R_AARCH64_CALL26	__stack_chk_fail
