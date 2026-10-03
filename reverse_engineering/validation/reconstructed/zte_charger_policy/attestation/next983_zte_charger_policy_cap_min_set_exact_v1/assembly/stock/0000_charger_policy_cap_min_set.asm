
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000d4c <charger_policy_cap_min_set>:
     d4c: d503233f     	paciasp
     d50: d100c3ff     	sub	sp, sp, #0x30
     d54: a9017bfd     	stp	x29, x30, [sp, #0x10]
     d58: f90013f3     	str	x19, [sp, #0x20]
     d5c: 910043fd     	add	x29, sp, #0x10
     d60: d5384108     	mrs	x8, SP_EL0
     d64: f9438908     	ldr	x8, [x8, #0x710]
     d68: f90007e8     	str	x8, [sp, #0x8]
     d6c: b90007ff     	str	wzr, [sp, #0x4]
     d70: b5000101     	cbnz	x1, 0xd90 <charger_policy_cap_min_set+0x44>
     d74: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc55
     d78: 91000000     	add	x0, x0, #0x0
		0000000000000d78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc55
     d7c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18a7
     d80: 91000021     	add	x1, x1, #0x0
		0000000000000d80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18a7
     d84: 94000000     	bl	0xd84 <charger_policy_cap_min_set+0x38>
		0000000000000d84:  R_AARCH64_CALL26	_printk
     d88: 128002a0     	mov	w0, #-0x16              // =-22
     d8c: 1400000f     	b	0xdc8 <charger_policy_cap_min_set+0x7c>
     d90: aa0103f3     	mov	x19, x1
     d94: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x138f
     d98: 91000021     	add	x1, x1, #0x0
		0000000000000d98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x138f
     d9c: 910013e2     	add	x2, sp, #0x4
     da0: 94000000     	bl	0xda0 <charger_policy_cap_min_set+0x54>
		0000000000000da0:  R_AARCH64_CALL26	sscanf
     da4: b94007e2     	ldr	w2, [sp, #0x4]
     da8: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000da8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x930
     dac: 91000000     	add	x0, x0, #0x0
		0000000000000dac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x930
     db0: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000db0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18a7
     db4: 91000021     	add	x1, x1, #0x0
		0000000000000db4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18a7
     db8: b901a662     	str	w2, [x19, #0x1a4]
     dbc: b9019e62     	str	w2, [x19, #0x19c]
     dc0: 94000000     	bl	0xdc0 <charger_policy_cap_min_set+0x74>
		0000000000000dc0:  R_AARCH64_CALL26	_printk
     dc4: 2a1f03e0     	mov	w0, wzr
     dc8: d5384108     	mrs	x8, SP_EL0
     dcc: f9438908     	ldr	x8, [x8, #0x710]
     dd0: f94007e9     	ldr	x9, [sp, #0x8]
     dd4: eb09011f     	cmp	x8, x9
     dd8: 540000c1     	b.ne	0xdf0 <charger_policy_cap_min_set+0xa4>
     ddc: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     de0: f94013f3     	ldr	x19, [sp, #0x20]
     de4: 9100c3ff     	add	sp, sp, #0x30
     de8: d50323bf     	autiasp
     dec: d65f03c0     	ret
     df0: 94000000     	bl	0xdf0 <charger_policy_cap_min_set+0xa4>
		0000000000000df0:  R_AARCH64_CALL26	__stack_chk_fail
