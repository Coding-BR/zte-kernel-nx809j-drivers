
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000dcc <charger_policy_cap_max_set>:
     dcc: d503233f     	paciasp
     dd0: d100c3ff     	sub	sp, sp, #0x30
     dd4: a9017bfd     	stp	x29, x30, [sp, #0x10]
     dd8: f90013f3     	str	x19, [sp, #0x20]
     ddc: 910043fd     	add	x29, sp, #0x10
     de0: d5384108     	mrs	x8, SP_EL0
     de4: f9438908     	ldr	x8, [x8, #0x710]
     de8: f90007e8     	str	x8, [sp, #0x8]
     dec: b90007ff     	str	wzr, [sp, #0x4]
     df0: b5000101     	cbnz	x1, 0xe10 <charger_policy_cap_max_set+0x44>
     df4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000df4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe7c
     df8: 91000000     	add	x0, x0, #0x0
		0000000000000df8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe7c
     dfc: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000dfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1fd1
     e00: 91000021     	add	x1, x1, #0x0
		0000000000000e00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1fd1
     e04: 94000000     	bl	0xe04 <charger_policy_cap_max_set+0x38>
		0000000000000e04:  R_AARCH64_CALL26	_printk
     e08: 128002a0     	mov	w0, #-0x16              // =-22
     e0c: 14000010     	b	0xe4c <charger_policy_cap_max_set+0x80>
     e10: aa0103f3     	mov	x19, x1
     e14: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1784
     e18: 91000021     	add	x1, x1, #0x0
		0000000000000e18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1784
     e1c: 910013e2     	add	x2, sp, #0x4
     e20: 94000000     	bl	0xe20 <charger_policy_cap_max_set+0x54>
		0000000000000e20:  R_AARCH64_CALL26	sscanf
     e24: b94007e2     	ldr	w2, [sp, #0x4]
     e28: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x297
     e2c: 91000000     	add	x0, x0, #0x0
		0000000000000e2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x297
     e30: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1fd1
     e34: 91000021     	add	x1, x1, #0x0
		0000000000000e34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1fd1
     e38: b901aa7f     	str	wzr, [x19, #0x1a8]
     e3c: b901a262     	str	w2, [x19, #0x1a0]
     e40: b9019a62     	str	w2, [x19, #0x198]
     e44: 94000000     	bl	0xe44 <charger_policy_cap_max_set+0x78>
		0000000000000e44:  R_AARCH64_CALL26	_printk
     e48: 2a1f03e0     	mov	w0, wzr
     e4c: d5384108     	mrs	x8, SP_EL0
     e50: f9438908     	ldr	x8, [x8, #0x710]
     e54: f94007e9     	ldr	x9, [sp, #0x8]
     e58: eb09011f     	cmp	x8, x9
     e5c: 540000c1     	b.ne	0xe74 <charger_policy_cap_max_set+0xa8>
     e60: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     e64: f94013f3     	ldr	x19, [sp, #0x20]
     e68: 9100c3ff     	add	sp, sp, #0x30
     e6c: d50323bf     	autiasp
     e70: d65f03c0     	ret
     e74: 94000000     	bl	0xe74 <charger_policy_cap_max_set+0xa8>
		0000000000000e74:  R_AARCH64_CALL26	__stack_chk_fail
