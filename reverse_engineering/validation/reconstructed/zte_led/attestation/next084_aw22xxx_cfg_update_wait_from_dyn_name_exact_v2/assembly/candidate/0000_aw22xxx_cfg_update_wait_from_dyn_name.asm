
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004450 <aw22xxx_cfg_update_wait_from_dyn_name>:
    4450: d503233f     	paciasp
    4454: d100c3ff     	sub	sp, sp, #0x30
    4458: a9017bfd     	stp	x29, x30, [sp, #0x10]
    445c: f90013f3     	str	x19, [sp, #0x20]
    4460: 910043fd     	add	x29, sp, #0x10
    4464: d5384108     	mrs	x8, SP_EL0
    4468: aa0003f3     	mov	x19, x0
    446c: 90000000     	adrp	x0, 0x4000 <aw22xxx_effect_store+0x80>
		000000000000446c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x8dd
    4470: 91000000     	add	x0, x0, #0x0
		0000000000004470:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x8dd
    4474: f9438908     	ldr	x8, [x8, #0x710]
    4478: 90000001     	adrp	x1, 0x4000 <aw22xxx_effect_store+0x80>
		0000000000004478:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x10f6
    447c: 91000021     	add	x1, x1, #0x0
		000000000000447c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x10f6
    4480: f90007e8     	str	x8, [sp, #0x8]
    4484: f90003ff     	str	xzr, [sp]
    4488: 94000000     	bl	0x4488 <aw22xxx_cfg_update_wait_from_dyn_name+0x38>
		0000000000004488:  R_AARCH64_CALL26	_printk
    448c: 394bbe68     	ldrb	w8, [x19, #0x2ef]
    4490: 7100091f     	cmp	w8, #0x2
    4494: 540004c1     	b.ne	0x452c <aw22xxx_cfg_update_wait_from_dyn_name+0xdc>
    4498: b9430268     	ldr	w8, [x19, #0x300]
    449c: 7100091f     	cmp	w8, #0x2
    44a0: 90000008     	adrp	x8, 0x4000 <aw22xxx_effect_store+0x80>
		00000000000044a0:  R_AARCH64_ADR_PREL_PG_HI21	g_init_flg
    44a4: 540000a1     	b.ne	0x44b8 <aw22xxx_cfg_update_wait_from_dyn_name+0x68>
    44a8: 39400109     	ldrb	w9, [x8]
		00000000000044a8:  R_AARCH64_LDST8_ABS_LO12_NC	g_init_flg
    44ac: 390d227f     	strb	wzr, [x19, #0x348]
    44b0: 360000c9     	tbz	w9, #0x0, 0x44c8 <aw22xxx_cfg_update_wait_from_dyn_name+0x78>
    44b4: 14000009     	b	0x44d8 <aw22xxx_cfg_update_wait_from_dyn_name+0x88>
    44b8: 39400109     	ldrb	w9, [x8]
		00000000000044b8:  R_AARCH64_LDST8_ABS_LO12_NC	g_init_flg
    44bc: 5280002a     	mov	w10, #0x1               // =1
    44c0: 390d226a     	strb	w10, [x19, #0x348]
    44c4: 370000a9     	tbnz	w9, #0x0, 0x44d8 <aw22xxx_cfg_update_wait_from_dyn_name+0x88>
    44c8: 52800029     	mov	w9, #0x1                // =1
    44cc: aa1303e0     	mov	x0, x19
    44d0: 39000109     	strb	w9, [x8]
		00000000000044d0:  R_AARCH64_LDST8_ABS_LO12_NC	g_init_flg
    44d4: 94000000     	bl	0x44d4 <aw22xxx_cfg_update_wait_from_dyn_name+0x84>
		00000000000044d4:  R_AARCH64_CALL26	aw22xxx_init_cfg_update_array
    44d8: f9400662     	ldr	x2, [x19, #0x8]
    44dc: 90000001     	adrp	x1, 0x4000 <aw22xxx_effect_store+0x80>
		00000000000044dc:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_dyn_name
    44e0: 91000021     	add	x1, x1, #0x0
		00000000000044e0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_dyn_name
    44e4: 910003e0     	mov	x0, sp
    44e8: 94000000     	bl	0x44e8 <aw22xxx_cfg_update_wait_from_dyn_name+0x98>
		00000000000044e8:  R_AARCH64_CALL26	request_firmware
    44ec: 35000260     	cbnz	w0, 0x4538 <aw22xxx_cfg_update_wait_from_dyn_name+0xe8>
    44f0: f94003e0     	ldr	x0, [sp]
    44f4: aa1303e1     	mov	x1, x19
    44f8: 94000000     	bl	0x44f8 <aw22xxx_cfg_update_wait_from_dyn_name+0xa8>
		00000000000044f8:  R_AARCH64_CALL26	aw22xxx_cfg_loaded
    44fc: 52800280     	mov	w0, #0x14               // =20
    4500: 94000000     	bl	0x4500 <aw22xxx_cfg_update_wait_from_dyn_name+0xb0>
		0000000000004500:  R_AARCH64_CALL26	msleep
    4504: d5384108     	mrs	x8, SP_EL0
    4508: f9438908     	ldr	x8, [x8, #0x710]
    450c: f94007e9     	ldr	x9, [sp, #0x8]
    4510: eb09011f     	cmp	x8, x9
    4514: 540001e1     	b.ne	0x4550 <aw22xxx_cfg_update_wait_from_dyn_name+0x100>
    4518: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    451c: f94013f3     	ldr	x19, [sp, #0x20]
    4520: 9100c3ff     	add	sp, sp, #0x30
    4524: d50323bf     	autiasp
    4528: d65f03c0     	ret
    452c: 90000000     	adrp	x0, 0x4000 <aw22xxx_effect_store+0x80>
		000000000000452c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x6c2
    4530: 91000000     	add	x0, x0, #0x0
		0000000000004530:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x6c2
    4534: 14000003     	b	0x4540 <aw22xxx_cfg_update_wait_from_dyn_name+0xf0>
    4538: 90000000     	adrp	x0, 0x4000 <aw22xxx_effect_store+0x80>
		0000000000004538:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1359
    453c: 91000000     	add	x0, x0, #0x0
		000000000000453c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1359
    4540: 90000001     	adrp	x1, 0x4000 <aw22xxx_effect_store+0x80>
		0000000000004540:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x10f6
    4544: 91000021     	add	x1, x1, #0x0
		0000000000004544:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x10f6
    4548: 94000000     	bl	0x4548 <aw22xxx_cfg_update_wait_from_dyn_name+0xf8>
		0000000000004548:  R_AARCH64_CALL26	_printk
    454c: 17ffffee     	b	0x4504 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
    4550: 94000000     	bl	0x4550 <aw22xxx_cfg_update_wait_from_dyn_name+0x100>
		0000000000004550:  R_AARCH64_CALL26	__stack_chk_fail
