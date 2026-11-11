
/input/fresh_candidate_unpromoted.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000218 <zte_charger_policy_set_prop_by_name>:
     218: d503233f     	paciasp
     21c: d10103ff     	sub	sp, sp, #0x40
     220: a9017bfd     	stp	x29, x30, [sp, #0x10]
     224: a90257f6     	stp	x22, x21, [sp, #0x20]
     228: a9034ff4     	stp	x20, x19, [sp, #0x30]
     22c: 910043fd     	add	x29, sp, #0x10
     230: d5384108     	mrs	x8, SP_EL0
     234: f9438908     	ldr	x8, [x8, #0x710]
     238: f90007e8     	str	x8, [sp, #0x8]
     23c: f90003ff     	str	xzr, [sp]
     240: b4000340     	cbz	x0, 0x2a8 <zte_charger_policy_set_prop_by_name+0x90>
     244: 2a0203f6     	mov	w22, w2
     248: 2a0103f4     	mov	w20, w1
     24c: aa0003f3     	mov	x19, x0
     250: 94000000     	bl	0x250 <zte_charger_policy_set_prop_by_name+0x38>
		0000000000000250:  R_AARCH64_CALL26	zte_power_supply_get_by_name
     254: b4000380     	cbz	x0, 0x2c4 <zte_charger_policy_set_prop_by_name+0xac>
     258: 910003e2     	mov	x2, sp
     25c: 2a1403e1     	mov	w1, w20
     260: aa0003f5     	mov	x21, x0
     264: b90003f6     	str	w22, [sp]
     268: 94000000     	bl	0x268 <zte_charger_policy_set_prop_by_name+0x50>
		0000000000000268:  R_AARCH64_CALL26	zte_power_supply_set_property
     26c: 37f803c0     	tbnz	w0, #0x1f, 0x2e4 <zte_charger_policy_set_prop_by_name+0xcc>
     270: aa1503e0     	mov	x0, x21
     274: 94000000     	bl	0x274 <zte_charger_policy_set_prop_by_name+0x5c>
		0000000000000274:  R_AARCH64_CALL26	zte_power_supply_put
     278: 2a1f03e0     	mov	w0, wzr
     27c: d5384108     	mrs	x8, SP_EL0
     280: f9438908     	ldr	x8, [x8, #0x710]
     284: f94007e9     	ldr	x9, [sp, #0x8]
     288: eb09011f     	cmp	x8, x9
     28c: 54000441     	b.ne	0x314 <zte_charger_policy_set_prop_by_name+0xfc>
     290: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     294: a94257f6     	ldp	x22, x21, [sp, #0x20]
     298: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     29c: 910103ff     	add	sp, sp, #0x40
     2a0: d50323bf     	autiasp
     2a4: d65f03c0     	ret
     2a8: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		00000000000002a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1fe
     2ac: 91000000     	add	x0, x0, #0x0
		00000000000002ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1fe
     2b0: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		00000000000002b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2000
     2b4: 91000021     	add	x1, x1, #0x0
		00000000000002b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2000
     2b8: 94000000     	bl	0x2b8 <zte_charger_policy_set_prop_by_name+0xa0>
		00000000000002b8:  R_AARCH64_CALL26	_printk
     2bc: 128002a0     	mov	w0, #-0x16              // =-22
     2c0: 17ffffef     	b	0x27c <zte_charger_policy_set_prop_by_name+0x64>
     2c4: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		00000000000002c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aec
     2c8: 91000000     	add	x0, x0, #0x0
		00000000000002c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aec
     2cc: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		00000000000002cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2000
     2d0: 91000021     	add	x1, x1, #0x0
		00000000000002d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2000
     2d4: aa1303e2     	mov	x2, x19
     2d8: 94000000     	bl	0x2d8 <zte_charger_policy_set_prop_by_name+0xc0>
		00000000000002d8:  R_AARCH64_CALL26	_printk
     2dc: 128002a0     	mov	w0, #-0x16              // =-22
     2e0: 17ffffe7     	b	0x27c <zte_charger_policy_set_prop_by_name+0x64>
     2e4: 90000008     	adrp	x8, 0x0 <charger_policy_get_prop_by_name>
		00000000000002e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c7a
     2e8: 91000108     	add	x8, x8, #0x0
		00000000000002e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c7a
     2ec: 2a0003f5     	mov	w21, w0
     2f0: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		00000000000002f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2000
     2f4: 91000021     	add	x1, x1, #0x0
		00000000000002f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2000
     2f8: aa0803e0     	mov	x0, x8
     2fc: aa1303e2     	mov	x2, x19
     300: 2a1403e3     	mov	w3, w20
     304: 2a1503e4     	mov	w4, w21
     308: 94000000     	bl	0x308 <zte_charger_policy_set_prop_by_name+0xf0>
		0000000000000308:  R_AARCH64_CALL26	_printk
     30c: 2a1503e0     	mov	w0, w21
     310: 17ffffdb     	b	0x27c <zte_charger_policy_set_prop_by_name+0x64>
     314: 94000000     	bl	0x314 <zte_charger_policy_set_prop_by_name+0xfc>
		0000000000000314:  R_AARCH64_CALL26	__stack_chk_fail
