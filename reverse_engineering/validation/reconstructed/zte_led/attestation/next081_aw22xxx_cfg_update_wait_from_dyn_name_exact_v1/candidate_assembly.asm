
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000474c <aw22xxx_cfg_update_wait_from_dyn_name>:
    474c: d503233f     	paciasp
    4750: d100c3ff     	sub	sp, sp, #0x30
    4754: a9017bfd     	stp	x29, x30, [sp, #0x10]
    4758: f90013f3     	str	x19, [sp, #0x20]
    475c: 910043fd     	add	x29, sp, #0x10
    4760: d5384108     	mrs	x8, SP_EL0
    4764: aa0003f3     	mov	x19, x0
    4768: 90000000     	adrp	x0, 0x4000 <aw22xxx_set_cfg_run_state+0x10c>
		0000000000004768:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x8dd
    476c: 91000000     	add	x0, x0, #0x0
		000000000000476c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x8dd
    4770: f9438908     	ldr	x8, [x8, #0x710]
    4774: 90000001     	adrp	x1, 0x4000 <aw22xxx_set_cfg_run_state+0x10c>
		0000000000004774:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x10f6
    4778: 91000021     	add	x1, x1, #0x0
		0000000000004778:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x10f6
    477c: f90007e8     	str	x8, [sp, #0x8]
    4780: f90003ff     	str	xzr, [sp]
    4784: 94000000     	bl	0x4784 <aw22xxx_cfg_update_wait_from_dyn_name+0x38>
		0000000000004784:  R_AARCH64_CALL26	_printk
    4788: 394bbe68     	ldrb	w8, [x19, #0x2ef]
    478c: 7100091f     	cmp	w8, #0x2
    4790: 540004c1     	b.ne	0x4828 <aw22xxx_cfg_update_wait_from_dyn_name+0xdc>
    4794: b9430268     	ldr	w8, [x19, #0x300]
    4798: 7100091f     	cmp	w8, #0x2
    479c: 90000008     	adrp	x8, 0x4000 <aw22xxx_set_cfg_run_state+0x10c>
		000000000000479c:  R_AARCH64_ADR_PREL_PG_HI21	g_init_flg
    47a0: 540000a1     	b.ne	0x47b4 <aw22xxx_cfg_update_wait_from_dyn_name+0x68>
    47a4: 39400109     	ldrb	w9, [x8]
		00000000000047a4:  R_AARCH64_LDST8_ABS_LO12_NC	g_init_flg
    47a8: 390d227f     	strb	wzr, [x19, #0x348]
    47ac: 360000c9     	tbz	w9, #0x0, 0x47c4 <aw22xxx_cfg_update_wait_from_dyn_name+0x78>
    47b0: 14000009     	b	0x47d4 <aw22xxx_cfg_update_wait_from_dyn_name+0x88>
    47b4: 39400109     	ldrb	w9, [x8]
		00000000000047b4:  R_AARCH64_LDST8_ABS_LO12_NC	g_init_flg
    47b8: 5280002a     	mov	w10, #0x1               // =1
    47bc: 390d226a     	strb	w10, [x19, #0x348]
    47c0: 370000a9     	tbnz	w9, #0x0, 0x47d4 <aw22xxx_cfg_update_wait_from_dyn_name+0x88>
    47c4: 52800029     	mov	w9, #0x1                // =1
    47c8: aa1303e0     	mov	x0, x19
    47cc: 39000109     	strb	w9, [x8]
		00000000000047cc:  R_AARCH64_LDST8_ABS_LO12_NC	g_init_flg
    47d0: 94000000     	bl	0x47d0 <aw22xxx_cfg_update_wait_from_dyn_name+0x84>
		00000000000047d0:  R_AARCH64_CALL26	aw22xxx_init_cfg_update_array
    47d4: f9400662     	ldr	x2, [x19, #0x8]
    47d8: 90000001     	adrp	x1, 0x4000 <aw22xxx_set_cfg_run_state+0x10c>
		00000000000047d8:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_dyn_name
    47dc: 91000021     	add	x1, x1, #0x0
		00000000000047dc:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_dyn_name
    47e0: 910003e0     	mov	x0, sp
    47e4: 94000000     	bl	0x47e4 <aw22xxx_cfg_update_wait_from_dyn_name+0x98>
		00000000000047e4:  R_AARCH64_CALL26	request_firmware
    47e8: 35000260     	cbnz	w0, 0x4834 <aw22xxx_cfg_update_wait_from_dyn_name+0xe8>
    47ec: f94003e0     	ldr	x0, [sp]
    47f0: aa1303e1     	mov	x1, x19
    47f4: 94000000     	bl	0x47f4 <aw22xxx_cfg_update_wait_from_dyn_name+0xa8>
		00000000000047f4:  R_AARCH64_CALL26	aw22xxx_cfg_loaded
    47f8: 52800280     	mov	w0, #0x14               // =20
    47fc: 94000000     	bl	0x47fc <aw22xxx_cfg_update_wait_from_dyn_name+0xb0>
		00000000000047fc:  R_AARCH64_CALL26	msleep
    4800: d5384108     	mrs	x8, SP_EL0
    4804: f9438908     	ldr	x8, [x8, #0x710]
    4808: f94007e9     	ldr	x9, [sp, #0x8]
    480c: eb09011f     	cmp	x8, x9
    4810: 540001e1     	b.ne	0x484c <aw22xxx_cfg_update_wait_from_dyn_name+0x100>
    4814: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    4818: f94013f3     	ldr	x19, [sp, #0x20]
    481c: 9100c3ff     	add	sp, sp, #0x30
    4820: d50323bf     	autiasp
    4824: d65f03c0     	ret
    4828: 90000000     	adrp	x0, 0x4000 <aw22xxx_set_cfg_run_state+0x10c>
		0000000000004828:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x6c2
    482c: 91000000     	add	x0, x0, #0x0
		000000000000482c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x6c2
    4830: 14000003     	b	0x483c <aw22xxx_cfg_update_wait_from_dyn_name+0xf0>
    4834: 90000000     	adrp	x0, 0x4000 <aw22xxx_set_cfg_run_state+0x10c>
		0000000000004834:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1359
    4838: 91000000     	add	x0, x0, #0x0
		0000000000004838:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1359
    483c: 90000001     	adrp	x1, 0x4000 <aw22xxx_set_cfg_run_state+0x10c>
		000000000000483c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x10f6
    4840: 91000021     	add	x1, x1, #0x0
		0000000000004840:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x10f6
    4844: 94000000     	bl	0x4844 <aw22xxx_cfg_update_wait_from_dyn_name+0xf8>
		0000000000004844:  R_AARCH64_CALL26	_printk
    4848: 17ffffee     	b	0x4800 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
    484c: 94000000     	bl	0x484c <aw22xxx_cfg_update_wait_from_dyn_name+0x100>
		000000000000484c:  R_AARCH64_CALL26	__stack_chk_fail
