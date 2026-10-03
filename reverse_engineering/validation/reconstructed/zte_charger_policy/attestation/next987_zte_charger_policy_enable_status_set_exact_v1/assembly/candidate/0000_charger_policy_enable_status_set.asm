
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000ef8 <charger_policy_enable_status_set>:
     ef8: d503233f     	paciasp
     efc: d100c3ff     	sub	sp, sp, #0x30
     f00: a9017bfd     	stp	x29, x30, [sp, #0x10]
     f04: f90013f3     	str	x19, [sp, #0x20]
     f08: 910043fd     	add	x29, sp, #0x10
     f0c: d5384108     	mrs	x8, SP_EL0
     f10: f9438908     	ldr	x8, [x8, #0x710]
     f14: f90007e8     	str	x8, [sp, #0x8]
     f18: b90007ff     	str	wzr, [sp, #0x4]
     f1c: b5000101     	cbnz	x1, 0xf3c <charger_policy_enable_status_set+0x44>
     f20: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe7c
     f24: 91000000     	add	x0, x0, #0x0
		0000000000000f24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe7c
     f28: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000f28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c6b
     f2c: 91000021     	add	x1, x1, #0x0
		0000000000000f2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c6b
     f30: 94000000     	bl	0xf30 <charger_policy_enable_status_set+0x38>
		0000000000000f30:  R_AARCH64_CALL26	_printk
     f34: 128002a0     	mov	w0, #-0x16              // =-22
     f38: 14000010     	b	0xf78 <charger_policy_enable_status_set+0x80>
     f3c: aa0103f3     	mov	x19, x1
     f40: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000f40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1784
     f44: 91000021     	add	x1, x1, #0x0
		0000000000000f44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1784
     f48: 910013e2     	add	x2, sp, #0x4
     f4c: 94000000     	bl	0xf4c <charger_policy_enable_status_set+0x54>
		0000000000000f4c:  R_AARCH64_CALL26	sscanf
     f50: b94007e8     	ldr	w8, [sp, #0x4]
     f54: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x591
     f58: 91000000     	add	x0, x0, #0x0
		0000000000000f58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x591
     f5c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000f5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c6b
     f60: 91000021     	add	x1, x1, #0x0
		0000000000000f60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c6b
     f64: 7100011f     	cmp	w8, #0x0
     f68: 1a9f17e2     	cset	w2, eq
     f6c: b901ea62     	str	w2, [x19, #0x1e8]
     f70: 94000000     	bl	0xf70 <charger_policy_enable_status_set+0x78>
		0000000000000f70:  R_AARCH64_CALL26	_printk
     f74: 2a1f03e0     	mov	w0, wzr
     f78: d5384108     	mrs	x8, SP_EL0
     f7c: f9438908     	ldr	x8, [x8, #0x710]
     f80: f94007e9     	ldr	x9, [sp, #0x8]
     f84: eb09011f     	cmp	x8, x9
     f88: 540000c1     	b.ne	0xfa0 <charger_policy_enable_status_set+0xa8>
     f8c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     f90: f94013f3     	ldr	x19, [sp, #0x20]
     f94: 9100c3ff     	add	sp, sp, #0x30
     f98: d50323bf     	autiasp
     f9c: d65f03c0     	ret
     fa0: 94000000     	bl	0xfa0 <charger_policy_enable_status_set+0xa8>
		0000000000000fa0:  R_AARCH64_CALL26	__stack_chk_fail
