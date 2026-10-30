
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000104 <zte_charger_policy_get_prop_by_name>:
     104: d503233f     	paciasp
     108: d10103ff     	sub	sp, sp, #0x40
     10c: a9017bfd     	stp	x29, x30, [sp, #0x10]
     110: a90257f6     	stp	x22, x21, [sp, #0x20]
     114: a9034ff4     	stp	x20, x19, [sp, #0x30]
     118: 910043fd     	add	x29, sp, #0x10
     11c: d5384108     	mrs	x8, SP_EL0
     120: f9438908     	ldr	x8, [x8, #0x710]
     124: f90007e8     	str	x8, [sp, #0x8]
     128: f90003ff     	str	xzr, [sp]
     12c: b4000360     	cbz	x0, 0x198 <zte_charger_policy_get_prop_by_name+0x94>
     130: aa0203f5     	mov	x21, x2
     134: 2a0103f4     	mov	w20, w1
     138: aa0003f3     	mov	x19, x0
     13c: 94000000     	bl	0x13c <zte_charger_policy_get_prop_by_name+0x38>
		000000000000013c:  R_AARCH64_CALL26	zte_power_supply_get_by_name
     140: b40003a0     	cbz	x0, 0x1b4 <zte_charger_policy_get_prop_by_name+0xb0>
     144: 910003e2     	mov	x2, sp
     148: 2a1403e1     	mov	w1, w20
     14c: aa0003f6     	mov	x22, x0
     150: 94000000     	bl	0x150 <zte_charger_policy_get_prop_by_name+0x4c>
		0000000000000150:  R_AARCH64_CALL26	zte_power_supply_get_property
     154: 37f80400     	tbnz	w0, #0x1f, 0x1d4 <zte_charger_policy_get_prop_by_name+0xd0>
     158: b94003e8     	ldr	w8, [sp]
     15c: aa1603e0     	mov	x0, x22
     160: b90002a8     	str	w8, [x21]
     164: 94000000     	bl	0x164 <zte_charger_policy_get_prop_by_name+0x60>
		0000000000000164:  R_AARCH64_CALL26	zte_power_supply_put
     168: 2a1f03e0     	mov	w0, wzr
     16c: d5384108     	mrs	x8, SP_EL0
     170: f9438908     	ldr	x8, [x8, #0x710]
     174: f94007e9     	ldr	x9, [sp, #0x8]
     178: eb09011f     	cmp	x8, x9
     17c: 54000441     	b.ne	0x204 <zte_charger_policy_get_prop_by_name+0x100>
     180: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     184: a94257f6     	ldp	x22, x21, [sp, #0x20]
     188: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     18c: 910103ff     	add	sp, sp, #0x40
     190: d50323bf     	autiasp
     194: d65f03c0     	ret
     198: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000198:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1fa
     19c: 91000000     	add	x0, x0, #0x0
		000000000000019c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1fa
     1a0: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		00000000000001a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1600
     1a4: 91000021     	add	x1, x1, #0x0
		00000000000001a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1600
     1a8: 94000000     	bl	0x1a8 <zte_charger_policy_get_prop_by_name+0xa4>
		00000000000001a8:  R_AARCH64_CALL26	_printk
     1ac: 128002a0     	mov	w0, #-0x16              // =-22
     1b0: 17ffffef     	b	0x16c <zte_charger_policy_get_prop_by_name+0x68>
     1b4: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		00000000000001b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1947
     1b8: 91000000     	add	x0, x0, #0x0
		00000000000001b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1947
     1bc: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		00000000000001bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1600
     1c0: 91000021     	add	x1, x1, #0x0
		00000000000001c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1600
     1c4: aa1303e2     	mov	x2, x19
     1c8: 94000000     	bl	0x1c8 <zte_charger_policy_get_prop_by_name+0xc4>
		00000000000001c8:  R_AARCH64_CALL26	_printk
     1cc: 128002a0     	mov	w0, #-0x16              // =-22
     1d0: 17ffffe7     	b	0x16c <zte_charger_policy_get_prop_by_name+0x68>
     1d4: 90000008     	adrp	x8, 0x0 <charger_policy_get_prop_by_name>
		00000000000001d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1acf
     1d8: 91000108     	add	x8, x8, #0x0
		00000000000001d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1acf
     1dc: 2a0003f5     	mov	w21, w0
     1e0: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		00000000000001e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1600
     1e4: 91000021     	add	x1, x1, #0x0
		00000000000001e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1600
     1e8: aa0803e0     	mov	x0, x8
     1ec: aa1303e2     	mov	x2, x19
     1f0: 2a1403e3     	mov	w3, w20
     1f4: 2a1503e4     	mov	w4, w21
     1f8: 94000000     	bl	0x1f8 <zte_charger_policy_get_prop_by_name+0xf4>
		00000000000001f8:  R_AARCH64_CALL26	_printk
     1fc: 2a1503e0     	mov	w0, w21
     200: 17ffffdb     	b	0x16c <zte_charger_policy_get_prop_by_name+0x68>
     204: 94000000     	bl	0x204 <zte_charger_policy_get_prop_by_name+0x100>
		0000000000000204:  R_AARCH64_CALL26	__stack_chk_fail
