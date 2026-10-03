
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000c08 <charger_policy_force_disching_sec_set>:
     c08: d503233f     	paciasp
     c0c: d100c3ff     	sub	sp, sp, #0x30
     c10: a9017bfd     	stp	x29, x30, [sp, #0x10]
     c14: f90013f3     	str	x19, [sp, #0x20]
     c18: 910043fd     	add	x29, sp, #0x10
     c1c: d5384108     	mrs	x8, SP_EL0
     c20: f9438908     	ldr	x8, [x8, #0x710]
     c24: f90007e8     	str	x8, [sp, #0x8]
     c28: b90007ff     	str	wzr, [sp, #0x4]
     c2c: b5000101     	cbnz	x1, 0xc4c <charger_policy_force_disching_sec_set+0x44>
     c30: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000c30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc55
     c34: 91000000     	add	x0, x0, #0x0
		0000000000000c34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc55
     c38: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x409
     c3c: 91000021     	add	x1, x1, #0x0
		0000000000000c3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x409
     c40: 94000000     	bl	0xc40 <charger_policy_force_disching_sec_set+0x38>
		0000000000000c40:  R_AARCH64_CALL26	_printk
     c44: 128002a0     	mov	w0, #-0x16              // =-22
     c48: 1400000e     	b	0xc80 <charger_policy_force_disching_sec_set+0x78>
     c4c: aa0103f3     	mov	x19, x1
     c50: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x138f
     c54: 91000021     	add	x1, x1, #0x0
		0000000000000c54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x138f
     c58: 910013e2     	add	x2, sp, #0x4
     c5c: 94000000     	bl	0xc5c <charger_policy_force_disching_sec_set+0x54>
		0000000000000c5c:  R_AARCH64_CALL26	sscanf
     c60: b94007e2     	ldr	w2, [sp, #0x4]
     c64: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000c64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8ff
     c68: 91000000     	add	x0, x0, #0x0
		0000000000000c68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8ff
     c6c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x409
     c70: 91000021     	add	x1, x1, #0x0
		0000000000000c70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x409
     c74: b901fa62     	str	w2, [x19, #0x1f8]
     c78: 94000000     	bl	0xc78 <charger_policy_force_disching_sec_set+0x70>
		0000000000000c78:  R_AARCH64_CALL26	_printk
     c7c: 2a1f03e0     	mov	w0, wzr
     c80: d5384108     	mrs	x8, SP_EL0
     c84: f9438908     	ldr	x8, [x8, #0x710]
     c88: f94007e9     	ldr	x9, [sp, #0x8]
     c8c: eb09011f     	cmp	x8, x9
     c90: 540000c1     	b.ne	0xca8 <charger_policy_force_disching_sec_set+0xa0>
     c94: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     c98: f94013f3     	ldr	x19, [sp, #0x20]
     c9c: 9100c3ff     	add	sp, sp, #0x30
     ca0: d50323bf     	autiasp
     ca4: d65f03c0     	ret
     ca8: 94000000     	bl	0xca8 <charger_policy_force_disching_sec_set+0xa0>
		0000000000000ca8:  R_AARCH64_CALL26	__stack_chk_fail
