
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000000 <charger_policy_get_prop_by_name>:
       0: d503233f     	paciasp
       4: d10103ff     	sub	sp, sp, #0x40
       8: a9017bfd     	stp	x29, x30, [sp, #0x10]
       c: a90257f6     	stp	x22, x21, [sp, #0x20]
      10: a9034ff4     	stp	x20, x19, [sp, #0x30]
      14: 910043fd     	add	x29, sp, #0x10
      18: d5384108     	mrs	x8, SP_EL0
      1c: f9438908     	ldr	x8, [x8, #0x710]
      20: f90007e8     	str	x8, [sp, #0x8]
      24: f90003ff     	str	xzr, [sp]
      28: b4000360     	cbz	x0, 0x94 <charger_policy_get_prop_by_name+0x94>
      2c: aa0203f5     	mov	x21, x2
      30: 2a0103f4     	mov	w20, w1
      34: aa0003f3     	mov	x19, x0
      38: 94000000     	bl	0x38 <charger_policy_get_prop_by_name+0x38>
		0000000000000038:  R_AARCH64_CALL26	power_supply_get_by_name
      3c: b40003a0     	cbz	x0, 0xb0 <charger_policy_get_prop_by_name+0xb0>
      40: 910003e2     	mov	x2, sp
      44: 2a1403e1     	mov	w1, w20
      48: aa0003f6     	mov	x22, x0
      4c: 94000000     	bl	0x4c <charger_policy_get_prop_by_name+0x4c>
		000000000000004c:  R_AARCH64_CALL26	power_supply_get_property
      50: 37f80400     	tbnz	w0, #0x1f, 0xd0 <charger_policy_get_prop_by_name+0xd0>
      54: b94003e8     	ldr	w8, [sp]
      58: aa1603e0     	mov	x0, x22
      5c: b90002a8     	str	w8, [x21]
      60: 94000000     	bl	0x60 <charger_policy_get_prop_by_name+0x60>
		0000000000000060:  R_AARCH64_CALL26	power_supply_put
      64: 2a1f03e0     	mov	w0, wzr
      68: d5384108     	mrs	x8, SP_EL0
      6c: f9438908     	ldr	x8, [x8, #0x710]
      70: f94007e9     	ldr	x9, [sp, #0x8]
      74: eb09011f     	cmp	x8, x9
      78: 54000441     	b.ne	0x100 <charger_policy_get_prop_by_name+0x100>
      7c: a9434ff4     	ldp	x20, x19, [sp, #0x30]
      80: a94257f6     	ldp	x22, x21, [sp, #0x20]
      84: a9417bfd     	ldp	x29, x30, [sp, #0x10]
      88: 910103ff     	add	sp, sp, #0x40
      8c: d50323bf     	autiasp
      90: d65f03c0     	ret
      94: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000094:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1fa
      98: 91000000     	add	x0, x0, #0x0
		0000000000000098:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1fa
      9c: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		000000000000009c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x881
      a0: 91000021     	add	x1, x1, #0x0
		00000000000000a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x881
      a4: 94000000     	bl	0xa4 <charger_policy_get_prop_by_name+0xa4>
		00000000000000a4:  R_AARCH64_CALL26	_printk
      a8: 128002a0     	mov	w0, #-0x16              // =-22
      ac: 17ffffef     	b	0x68 <charger_policy_get_prop_by_name+0x68>
      b0: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		00000000000000b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18e0
      b4: 91000000     	add	x0, x0, #0x0
		00000000000000b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18e0
      b8: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		00000000000000b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x881
      bc: 91000021     	add	x1, x1, #0x0
		00000000000000bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x881
      c0: aa1303e2     	mov	x2, x19
      c4: 94000000     	bl	0xc4 <charger_policy_get_prop_by_name+0xc4>
		00000000000000c4:  R_AARCH64_CALL26	_printk
      c8: 128002a0     	mov	w0, #-0x16              // =-22
      cc: 17ffffe7     	b	0x68 <charger_policy_get_prop_by_name+0x68>
      d0: 90000008     	adrp	x8, 0x0 <charger_policy_get_prop_by_name>
		00000000000000d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1fc5
      d4: 91000108     	add	x8, x8, #0x0
		00000000000000d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1fc5
      d8: 2a0003f5     	mov	w21, w0
      dc: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		00000000000000dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x881
      e0: 91000021     	add	x1, x1, #0x0
		00000000000000e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x881
      e4: aa0803e0     	mov	x0, x8
      e8: aa1303e2     	mov	x2, x19
      ec: 2a1403e3     	mov	w3, w20
      f0: 2a1503e4     	mov	w4, w21
      f4: 94000000     	bl	0xf4 <charger_policy_get_prop_by_name+0xf4>
		00000000000000f4:  R_AARCH64_CALL26	_printk
      f8: 2a1503e0     	mov	w0, w21
      fc: 17ffffdb     	b	0x68 <charger_policy_get_prop_by_name+0x68>
     100: 94000000     	bl	0x100 <charger_policy_get_prop_by_name+0x100>
		0000000000000100:  R_AARCH64_CALL26	__stack_chk_fail
