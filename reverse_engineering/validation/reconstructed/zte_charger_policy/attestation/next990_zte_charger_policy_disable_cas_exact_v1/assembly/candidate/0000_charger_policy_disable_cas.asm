
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000104 <charger_policy_disable_cas>:
     104: d503233f     	paciasp
     108: d10103ff     	sub	sp, sp, #0x40
     10c: a9017bfd     	stp	x29, x30, [sp, #0x10]
     110: f90013f5     	str	x21, [sp, #0x20]
     114: a9034ff4     	stp	x20, x19, [sp, #0x30]
     118: 910043fd     	add	x29, sp, #0x10
     11c: d5384108     	mrs	x8, SP_EL0
     120: 12000034     	and	w20, w1, #0x1
     124: aa0003f3     	mov	x19, x0
     128: f9438908     	ldr	x8, [x8, #0x710]
     12c: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		000000000000012c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1dd7
     130: 91000000     	add	x0, x0, #0x0
		0000000000000130:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1dd7
     134: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000134:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cbc
     138: 91000021     	add	x1, x1, #0x0
		0000000000000138:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cbc
     13c: 2a1403e2     	mov	w2, w20
     140: f90007e8     	str	x8, [sp, #0x8]
     144: 94000000     	bl	0x144 <charger_policy_disable_cas+0x40>
		0000000000000144:  R_AARCH64_CALL26	_printk
     148: f940ea73     	ldr	x19, [x19, #0x1d0]
     14c: f90003ff     	str	xzr, [sp]
     150: b40002f3     	cbz	x19, 0x1ac <charger_policy_disable_cas+0xa8>
     154: aa1303e0     	mov	x0, x19
     158: 94000000     	bl	0x158 <charger_policy_disable_cas+0x54>
		0000000000000158:  R_AARCH64_CALL26	power_supply_get_by_name
     15c: b4000360     	cbz	x0, 0x1c8 <charger_policy_disable_cas+0xc4>
     160: 910003e2     	mov	x2, sp
     164: 528000a1     	mov	w1, #0x5                // =5
     168: aa0003f5     	mov	x21, x0
     16c: b90003f4     	str	w20, [sp]
     170: 94000000     	bl	0x170 <charger_policy_disable_cas+0x6c>
		0000000000000170:  R_AARCH64_CALL26	power_supply_set_property
     174: 37f803a0     	tbnz	w0, #0x1f, 0x1e8 <charger_policy_disable_cas+0xe4>
     178: aa1503e0     	mov	x0, x21
     17c: 94000000     	bl	0x17c <charger_policy_disable_cas+0x78>
		000000000000017c:  R_AARCH64_CALL26	power_supply_put
     180: d5384108     	mrs	x8, SP_EL0
     184: f9438908     	ldr	x8, [x8, #0x710]
     188: f94007e9     	ldr	x9, [sp, #0x8]
     18c: eb09011f     	cmp	x8, x9
     190: 540004e1     	b.ne	0x22c <charger_policy_disable_cas+0x128>
     194: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     198: f94013f5     	ldr	x21, [sp, #0x20]
     19c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     1a0: 910103ff     	add	sp, sp, #0x40
     1a4: d50323bf     	autiasp
     1a8: d65f03c0     	ret
     1ac: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		00000000000001ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1fa
     1b0: 91000000     	add	x0, x0, #0x0
		00000000000001b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1fa
     1b4: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		00000000000001b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x21e
     1b8: 91000021     	add	x1, x1, #0x0
		00000000000001b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x21e
     1bc: 94000000     	bl	0x1bc <charger_policy_disable_cas+0xb8>
		00000000000001bc:  R_AARCH64_CALL26	_printk
     1c0: 128002b3     	mov	w19, #-0x16             // =-22
     1c4: 14000013     	b	0x210 <charger_policy_disable_cas+0x10c>
     1c8: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		00000000000001c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1900
     1cc: 91000000     	add	x0, x0, #0x0
		00000000000001cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1900
     1d0: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		00000000000001d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x21e
     1d4: 91000021     	add	x1, x1, #0x0
		00000000000001d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x21e
     1d8: aa1303e2     	mov	x2, x19
     1dc: 94000000     	bl	0x1dc <charger_policy_disable_cas+0xd8>
		00000000000001dc:  R_AARCH64_CALL26	_printk
     1e0: 128002b3     	mov	w19, #-0x16             // =-22
     1e4: 1400000b     	b	0x210 <charger_policy_disable_cas+0x10c>
     1e8: 90000008     	adrp	x8, 0x0 <charger_policy_get_prop_by_name>
		00000000000001e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a88
     1ec: 91000108     	add	x8, x8, #0x0
		00000000000001ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a88
     1f0: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		00000000000001f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x21e
     1f4: 91000021     	add	x1, x1, #0x0
		00000000000001f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x21e
     1f8: 2a0003e4     	mov	w4, w0
     1fc: aa0803e0     	mov	x0, x8
     200: aa1303e2     	mov	x2, x19
     204: 528000a3     	mov	w3, #0x5                // =5
     208: 2a0403f3     	mov	w19, w4
     20c: 94000000     	bl	0x20c <charger_policy_disable_cas+0x108>
		000000000000020c:  R_AARCH64_CALL26	_printk
     210: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000210:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa8d
     214: 91000000     	add	x0, x0, #0x0
		0000000000000214:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa8d
     218: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000218:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cbc
     21c: 91000021     	add	x1, x1, #0x0
		000000000000021c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cbc
     220: 2a1303e2     	mov	w2, w19
     224: 94000000     	bl	0x224 <charger_policy_disable_cas+0x120>
		0000000000000224:  R_AARCH64_CALL26	_printk
     228: 17ffffd6     	b	0x180 <charger_policy_disable_cas+0x7c>
     22c: 94000000     	bl	0x22c <charger_policy_disable_cas+0x128>
		000000000000022c:  R_AARCH64_CALL26	__stack_chk_fail
