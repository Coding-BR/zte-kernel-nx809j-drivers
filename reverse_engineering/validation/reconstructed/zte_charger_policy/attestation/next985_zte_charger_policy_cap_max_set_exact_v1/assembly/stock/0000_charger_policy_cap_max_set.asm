
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000e74 <charger_policy_cap_max_set>:
     e74: d503233f     	paciasp
     e78: d100c3ff     	sub	sp, sp, #0x30
     e7c: a9017bfd     	stp	x29, x30, [sp, #0x10]
     e80: f90013f3     	str	x19, [sp, #0x20]
     e84: 910043fd     	add	x29, sp, #0x10
     e88: d5384108     	mrs	x8, SP_EL0
     e8c: f9438908     	ldr	x8, [x8, #0x710]
     e90: f90007e8     	str	x8, [sp, #0x8]
     e94: b90007ff     	str	wzr, [sp, #0x4]
     e98: b5000101     	cbnz	x1, 0xeb8 <charger_policy_cap_max_set+0x44>
     e9c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc55
     ea0: 91000000     	add	x0, x0, #0x0
		0000000000000ea0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc55
     ea4: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000ea4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e1f
     ea8: 91000021     	add	x1, x1, #0x0
		0000000000000ea8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e1f
     eac: 94000000     	bl	0xeac <charger_policy_cap_max_set+0x38>
		0000000000000eac:  R_AARCH64_CALL26	_printk
     eb0: 128002a0     	mov	w0, #-0x16              // =-22
     eb4: 14000010     	b	0xef4 <charger_policy_cap_max_set+0x80>
     eb8: aa0103f3     	mov	x19, x1
     ebc: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000ebc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x138f
     ec0: 91000021     	add	x1, x1, #0x0
		0000000000000ec0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x138f
     ec4: 910013e2     	add	x2, sp, #0x4
     ec8: 94000000     	bl	0xec8 <charger_policy_cap_max_set+0x54>
		0000000000000ec8:  R_AARCH64_CALL26	sscanf
     ecc: b94007e2     	ldr	w2, [sp, #0x4]
     ed0: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ed0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1af
     ed4: 91000000     	add	x0, x0, #0x0
		0000000000000ed4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1af
     ed8: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000ed8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e1f
     edc: 91000021     	add	x1, x1, #0x0
		0000000000000edc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e1f
     ee0: b901aa7f     	str	wzr, [x19, #0x1a8]
     ee4: b901a262     	str	w2, [x19, #0x1a0]
     ee8: b9019a62     	str	w2, [x19, #0x198]
     eec: 94000000     	bl	0xeec <charger_policy_cap_max_set+0x78>
		0000000000000eec:  R_AARCH64_CALL26	_printk
     ef0: 2a1f03e0     	mov	w0, wzr
     ef4: d5384108     	mrs	x8, SP_EL0
     ef8: f9438908     	ldr	x8, [x8, #0x710]
     efc: f94007e9     	ldr	x9, [sp, #0x8]
     f00: eb09011f     	cmp	x8, x9
     f04: 540000c1     	b.ne	0xf1c <charger_policy_cap_max_set+0xa8>
     f08: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     f0c: f94013f3     	ldr	x19, [sp, #0x20]
     f10: 9100c3ff     	add	sp, sp, #0x30
     f14: d50323bf     	autiasp
     f18: d65f03c0     	ret
     f1c: 94000000     	bl	0xf1c <charger_policy_cap_max_set+0xa8>
		0000000000000f1c:  R_AARCH64_CALL26	__stack_chk_fail
