
/input/fresh_candidate_unpromoted.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000010c <zte_charger_policy_get_prop_by_name>:
     10c: d503233f     	paciasp
     110: d10103ff     	sub	sp, sp, #0x40
     114: a9017bfd     	stp	x29, x30, [sp, #0x10]
     118: a90257f6     	stp	x22, x21, [sp, #0x20]
     11c: a9034ff4     	stp	x20, x19, [sp, #0x30]
     120: 910043fd     	add	x29, sp, #0x10
     124: d5384108     	mrs	x8, SP_EL0
     128: f9438908     	ldr	x8, [x8, #0x710]
     12c: f90007e8     	str	x8, [sp, #0x8]
     130: f90003ff     	str	xzr, [sp]
     134: b4000360     	cbz	x0, 0x1a0 <zte_charger_policy_get_prop_by_name+0x94>
     138: aa0203f5     	mov	x21, x2
     13c: 2a0103f4     	mov	w20, w1
     140: aa0003f3     	mov	x19, x0
     144: 94000000     	bl	0x144 <zte_charger_policy_get_prop_by_name+0x38>
		0000000000000144:  R_AARCH64_CALL26	zte_power_supply_get_by_name
     148: b40003a0     	cbz	x0, 0x1bc <zte_charger_policy_get_prop_by_name+0xb0>
     14c: 910003e2     	mov	x2, sp
     150: 2a1403e1     	mov	w1, w20
     154: aa0003f6     	mov	x22, x0
     158: 94000000     	bl	0x158 <zte_charger_policy_get_prop_by_name+0x4c>
		0000000000000158:  R_AARCH64_CALL26	zte_power_supply_get_property
     15c: 37f80400     	tbnz	w0, #0x1f, 0x1dc <zte_charger_policy_get_prop_by_name+0xd0>
     160: b94003e8     	ldr	w8, [sp]
     164: aa1603e0     	mov	x0, x22
     168: b90002a8     	str	w8, [x21]
     16c: 94000000     	bl	0x16c <zte_charger_policy_get_prop_by_name+0x60>
		000000000000016c:  R_AARCH64_CALL26	zte_power_supply_put
     170: 2a1f03e0     	mov	w0, wzr
     174: d5384108     	mrs	x8, SP_EL0
     178: f9438908     	ldr	x8, [x8, #0x710]
     17c: f94007e9     	ldr	x9, [sp, #0x8]
     180: eb09011f     	cmp	x8, x9
     184: 54000481     	b.ne	0x214 <zte_charger_policy_get_prop_by_name+0x108>
     188: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     18c: a94257f6     	ldp	x22, x21, [sp, #0x20]
     190: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     194: 910103ff     	add	sp, sp, #0x40
     198: d50323bf     	autiasp
     19c: d65f03c0     	ret
     1a0: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		00000000000001a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1fe
     1a4: 91000000     	add	x0, x0, #0x0
		00000000000001a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1fe
     1a8: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		00000000000001a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1764
     1ac: 91000021     	add	x1, x1, #0x0
		00000000000001ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1764
     1b0: 94000000     	bl	0x1b0 <zte_charger_policy_get_prop_by_name+0xa4>
		00000000000001b0:  R_AARCH64_CALL26	_printk
     1b4: 128002a0     	mov	w0, #-0x16              // =-22
     1b8: 17ffffef     	b	0x174 <zte_charger_policy_get_prop_by_name+0x68>
     1bc: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		00000000000001bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aec
     1c0: 91000000     	add	x0, x0, #0x0
		00000000000001c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aec
     1c4: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		00000000000001c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1764
     1c8: 91000021     	add	x1, x1, #0x0
		00000000000001c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1764
     1cc: aa1303e2     	mov	x2, x19
     1d0: 94000000     	bl	0x1d0 <zte_charger_policy_get_prop_by_name+0xc4>
		00000000000001d0:  R_AARCH64_CALL26	_printk
     1d4: 128002a0     	mov	w0, #-0x16              // =-22
     1d8: 17ffffe7     	b	0x174 <zte_charger_policy_get_prop_by_name+0x68>
     1dc: 90000008     	adrp	x8, 0x0 <charger_policy_get_prop_by_name>
		00000000000001dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c7a
     1e0: 91000108     	add	x8, x8, #0x0
		00000000000001e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c7a
     1e4: 2a0003f5     	mov	w21, w0
     1e8: aa1603e0     	mov	x0, x22
     1ec: 94000000     	bl	0x1ec <zte_charger_policy_get_prop_by_name+0xe0>
		00000000000001ec:  R_AARCH64_CALL26	zte_power_supply_put
     1f0: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		00000000000001f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1764
     1f4: 91000021     	add	x1, x1, #0x0
		00000000000001f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1764
     1f8: aa0803e0     	mov	x0, x8
     1fc: aa1303e2     	mov	x2, x19
     200: 2a1403e3     	mov	w3, w20
     204: 2a1503e4     	mov	w4, w21
     208: 94000000     	bl	0x208 <zte_charger_policy_get_prop_by_name+0xfc>
		0000000000000208:  R_AARCH64_CALL26	_printk
     20c: 2a1503e0     	mov	w0, w21
     210: 17ffffd9     	b	0x174 <zte_charger_policy_get_prop_by_name+0x68>
     214: 94000000     	bl	0x214 <zte_charger_policy_get_prop_by_name+0x108>
		0000000000000214:  R_AARCH64_CALL26	__stack_chk_fail
