
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000ca4 <charger_policy_cap_min_set>:
     ca4: d503233f     	paciasp
     ca8: d100c3ff     	sub	sp, sp, #0x30
     cac: a9017bfd     	stp	x29, x30, [sp, #0x10]
     cb0: f90013f3     	str	x19, [sp, #0x20]
     cb4: 910043fd     	add	x29, sp, #0x10
     cb8: d5384108     	mrs	x8, SP_EL0
     cbc: f9438908     	ldr	x8, [x8, #0x710]
     cc0: f90007e8     	str	x8, [sp, #0x8]
     cc4: b90007ff     	str	wzr, [sp, #0x4]
     cc8: b5000101     	cbnz	x1, 0xce8 <charger_policy_cap_min_set+0x44>
     ccc: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ccc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe7c
     cd0: 91000000     	add	x0, x0, #0x0
		0000000000000cd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe7c
     cd4: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000cd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1adb
     cd8: 91000021     	add	x1, x1, #0x0
		0000000000000cd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1adb
     cdc: 94000000     	bl	0xcdc <charger_policy_cap_min_set+0x38>
		0000000000000cdc:  R_AARCH64_CALL26	_printk
     ce0: 128002a0     	mov	w0, #-0x16              // =-22
     ce4: 1400000f     	b	0xd20 <charger_policy_cap_min_set+0x7c>
     ce8: aa0103f3     	mov	x19, x1
     cec: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000cec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1784
     cf0: 91000021     	add	x1, x1, #0x0
		0000000000000cf0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1784
     cf4: 910013e2     	add	x2, sp, #0x4
     cf8: 94000000     	bl	0xcf8 <charger_policy_cap_min_set+0x54>
		0000000000000cf8:  R_AARCH64_CALL26	sscanf
     cfc: b94007e2     	ldr	w2, [sp, #0x4]
     d00: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xabb
     d04: 91000000     	add	x0, x0, #0x0
		0000000000000d04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xabb
     d08: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1adb
     d0c: 91000021     	add	x1, x1, #0x0
		0000000000000d0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1adb
     d10: b901a662     	str	w2, [x19, #0x1a4]
     d14: b9019e62     	str	w2, [x19, #0x19c]
     d18: 94000000     	bl	0xd18 <charger_policy_cap_min_set+0x74>
		0000000000000d18:  R_AARCH64_CALL26	_printk
     d1c: 2a1f03e0     	mov	w0, wzr
     d20: d5384108     	mrs	x8, SP_EL0
     d24: f9438908     	ldr	x8, [x8, #0x710]
     d28: f94007e9     	ldr	x9, [sp, #0x8]
     d2c: eb09011f     	cmp	x8, x9
     d30: 540000c1     	b.ne	0xd48 <charger_policy_cap_min_set+0xa4>
     d34: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     d38: f94013f3     	ldr	x19, [sp, #0x20]
     d3c: 9100c3ff     	add	sp, sp, #0x30
     d40: d50323bf     	autiasp
     d44: d65f03c0     	ret
     d48: 94000000     	bl	0xd48 <charger_policy_cap_min_set+0xa4>
		0000000000000d48:  R_AARCH64_CALL26	__stack_chk_fail
