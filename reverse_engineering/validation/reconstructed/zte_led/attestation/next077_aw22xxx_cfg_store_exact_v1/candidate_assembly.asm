
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000046d0 <aw22xxx_cfg_store>:
    46d0: d503233f     	paciasp
    46d4: d100c3ff     	sub	sp, sp, #0x30
    46d8: a9017bfd     	stp	x29, x30, [sp, #0x10]
    46dc: a9024ff4     	stp	x20, x19, [sp, #0x20]
    46e0: 910043fd     	add	x29, sp, #0x10
    46e4: d5384109     	mrs	x9, SP_EL0
    46e8: aa0203e8     	mov	x8, x2
    46ec: 90000001     	adrp	x1, 0x4000 <aw22xxx_effect_store+0x98>
		00000000000046ec:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x142e
    46f0: 91000021     	add	x1, x1, #0x0
		00000000000046f0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x142e
    46f4: f9438929     	ldr	x9, [x9, #0x710]
    46f8: 910013e2     	add	x2, sp, #0x4
    46fc: aa0303f3     	mov	x19, x3
    4700: f90007e9     	str	x9, [sp, #0x8]
    4704: f9404c14     	ldr	x20, [x0, #0x98]
    4708: aa0803e0     	mov	x0, x8
    470c: b90007ff     	str	wzr, [sp, #0x4]
    4710: 94000000     	bl	0x4710 <aw22xxx_cfg_store+0x40>
		0000000000004710:  R_AARCH64_CALL26	sscanf
    4714: 7100041f     	cmp	w0, #0x1
    4718: 54000161     	b.ne	0x4744 <aw22xxx_cfg_store+0x74>
    471c: b94007e8     	ldr	w8, [sp, #0x4]
    4720: 90000000     	adrp	x0, 0x4000 <aw22xxx_effect_store+0x98>
		0000000000004720:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x686
    4724: 91000000     	add	x0, x0, #0x0
		0000000000004724:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x686
    4728: 90000001     	adrp	x1, 0x4000 <aw22xxx_effect_store+0x98>
		0000000000004728:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1431
    472c: 91000021     	add	x1, x1, #0x0
		000000000000472c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1431
    4730: 5280fec2     	mov	w2, #0x7f6              // =2038
    4734: 12000d03     	and	w3, w8, #0xf
    4738: 390bd283     	strb	w3, [x20, #0x2f4]
    473c: 94000000     	bl	0x473c <aw22xxx_cfg_store+0x6c>
		000000000000473c:  R_AARCH64_CALL26	_printk
    4740: 14000008     	b	0x4760 <aw22xxx_cfg_store+0x90>
    4744: 90000000     	adrp	x0, 0x4000 <aw22xxx_effect_store+0x98>
		0000000000004744:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1233
    4748: 91000000     	add	x0, x0, #0x0
		0000000000004748:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1233
    474c: 90000001     	adrp	x1, 0x4000 <aw22xxx_effect_store+0x98>
		000000000000474c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1431
    4750: 91000021     	add	x1, x1, #0x0
		0000000000004750:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1431
    4754: 5280fe02     	mov	w2, #0x7f0              // =2032
    4758: 94000000     	bl	0x4758 <aw22xxx_cfg_store+0x88>
		0000000000004758:  R_AARCH64_CALL26	_printk
    475c: 928002b3     	mov	x19, #-0x16             // =-22
    4760: d5384108     	mrs	x8, SP_EL0
    4764: f9438908     	ldr	x8, [x8, #0x710]
    4768: f94007e9     	ldr	x9, [sp, #0x8]
    476c: eb09011f     	cmp	x8, x9
    4770: 540000e1     	b.ne	0x478c <aw22xxx_cfg_store+0xbc>
    4774: aa1303e0     	mov	x0, x19
    4778: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    477c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    4780: 9100c3ff     	add	sp, sp, #0x30
    4784: d50323bf     	autiasp
    4788: d65f03c0     	ret
    478c: 94000000     	bl	0x478c <aw22xxx_cfg_store+0xbc>
		000000000000478c:  R_AARCH64_CALL26	__stack_chk_fail
