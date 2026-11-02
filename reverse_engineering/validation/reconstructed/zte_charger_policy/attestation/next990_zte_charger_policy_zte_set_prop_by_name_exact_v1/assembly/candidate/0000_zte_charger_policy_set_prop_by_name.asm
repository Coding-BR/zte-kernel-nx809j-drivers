
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000208 <zte_charger_policy_set_prop_by_name>:
     208: d503233f     	paciasp
     20c: d10103ff     	sub	sp, sp, #0x40
     210: a9017bfd     	stp	x29, x30, [sp, #0x10]
     214: a90257f6     	stp	x22, x21, [sp, #0x20]
     218: a9034ff4     	stp	x20, x19, [sp, #0x30]
     21c: 910043fd     	add	x29, sp, #0x10
     220: d5384108     	mrs	x8, SP_EL0
     224: f9438908     	ldr	x8, [x8, #0x710]
     228: f90007e8     	str	x8, [sp, #0x8]
     22c: f90003ff     	str	xzr, [sp]
     230: b4000340     	cbz	x0, 0x298 <zte_charger_policy_set_prop_by_name+0x90>
     234: 2a0203f6     	mov	w22, w2
     238: 2a0103f4     	mov	w20, w1
     23c: aa0003f3     	mov	x19, x0
     240: 94000000     	bl	0x240 <zte_charger_policy_set_prop_by_name+0x38>
		0000000000000240:  R_AARCH64_CALL26	zte_power_supply_get_by_name
     244: b4000380     	cbz	x0, 0x2b4 <zte_charger_policy_set_prop_by_name+0xac>
     248: 910003e2     	mov	x2, sp
     24c: 2a1403e1     	mov	w1, w20
     250: aa0003f5     	mov	x21, x0
     254: b90003f6     	str	w22, [sp]
     258: 94000000     	bl	0x258 <zte_charger_policy_set_prop_by_name+0x50>
		0000000000000258:  R_AARCH64_CALL26	zte_power_supply_set_property
     25c: 37f803c0     	tbnz	w0, #0x1f, 0x2d4 <zte_charger_policy_set_prop_by_name+0xcc>
     260: aa1503e0     	mov	x0, x21
     264: 94000000     	bl	0x264 <zte_charger_policy_set_prop_by_name+0x5c>
		0000000000000264:  R_AARCH64_CALL26	zte_power_supply_put
     268: 2a1f03e0     	mov	w0, wzr
     26c: d5384108     	mrs	x8, SP_EL0
     270: f9438908     	ldr	x8, [x8, #0x710]
     274: f94007e9     	ldr	x9, [sp, #0x8]
     278: eb09011f     	cmp	x8, x9
     27c: 54000441     	b.ne	0x304 <zte_charger_policy_set_prop_by_name+0xfc>
     280: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     284: a94257f6     	ldp	x22, x21, [sp, #0x20]
     288: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     28c: 910103ff     	add	sp, sp, #0x40
     290: d50323bf     	autiasp
     294: d65f03c0     	ret
     298: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000298:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1fa
     29c: 91000000     	add	x0, x0, #0x0
		000000000000029c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1fa
     2a0: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		00000000000002a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e48
     2a4: 91000021     	add	x1, x1, #0x0
		00000000000002a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e48
     2a8: 94000000     	bl	0x2a8 <zte_charger_policy_set_prop_by_name+0xa0>
		00000000000002a8:  R_AARCH64_CALL26	_printk
     2ac: 128002a0     	mov	w0, #-0x16              // =-22
     2b0: 17ffffef     	b	0x26c <zte_charger_policy_set_prop_by_name+0x64>
     2b4: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		00000000000002b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1947
     2b8: 91000000     	add	x0, x0, #0x0
		00000000000002b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1947
     2bc: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		00000000000002bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e48
     2c0: 91000021     	add	x1, x1, #0x0
		00000000000002c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e48
     2c4: aa1303e2     	mov	x2, x19
     2c8: 94000000     	bl	0x2c8 <zte_charger_policy_set_prop_by_name+0xc0>
		00000000000002c8:  R_AARCH64_CALL26	_printk
     2cc: 128002a0     	mov	w0, #-0x16              // =-22
     2d0: 17ffffe7     	b	0x26c <zte_charger_policy_set_prop_by_name+0x64>
     2d4: 90000008     	adrp	x8, 0x0 <charger_policy_get_prop_by_name>
		00000000000002d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1acf
     2d8: 91000108     	add	x8, x8, #0x0
		00000000000002d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1acf
     2dc: 2a0003f5     	mov	w21, w0
     2e0: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		00000000000002e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e48
     2e4: 91000021     	add	x1, x1, #0x0
		00000000000002e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e48
     2e8: aa0803e0     	mov	x0, x8
     2ec: aa1303e2     	mov	x2, x19
     2f0: 2a1403e3     	mov	w3, w20
     2f4: 2a1503e4     	mov	w4, w21
     2f8: 94000000     	bl	0x2f8 <zte_charger_policy_set_prop_by_name+0xf0>
		00000000000002f8:  R_AARCH64_CALL26	_printk
     2fc: 2a1503e0     	mov	w0, w21
     300: 17ffffdb     	b	0x26c <zte_charger_policy_set_prop_by_name+0x64>
     304: 94000000     	bl	0x304 <zte_charger_policy_set_prop_by_name+0xfc>
		0000000000000304:  R_AARCH64_CALL26	__stack_chk_fail
