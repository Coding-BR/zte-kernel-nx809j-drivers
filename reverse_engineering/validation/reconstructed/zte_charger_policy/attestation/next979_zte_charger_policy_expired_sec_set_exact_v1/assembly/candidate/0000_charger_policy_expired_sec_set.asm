
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000a1c <charger_policy_expired_sec_set>:
     a1c: d503233f     	paciasp
     a20: d100c3ff     	sub	sp, sp, #0x30
     a24: a9017bfd     	stp	x29, x30, [sp, #0x10]
     a28: f90013f3     	str	x19, [sp, #0x20]
     a2c: 910043fd     	add	x29, sp, #0x10
     a30: d5384108     	mrs	x8, SP_EL0
     a34: f9438908     	ldr	x8, [x8, #0x710]
     a38: f90007e8     	str	x8, [sp, #0x8]
     a3c: b90007ff     	str	wzr, [sp, #0x4]
     a40: b5000101     	cbnz	x1, 0xa60 <charger_policy_expired_sec_set+0x44>
     a44: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe4b
     a48: 91000000     	add	x0, x0, #0x0
		0000000000000a48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe4b
     a4c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x247
     a50: 91000021     	add	x1, x1, #0x0
		0000000000000a50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x247
     a54: 94000000     	bl	0xa54 <charger_policy_expired_sec_set+0x38>
		0000000000000a54:  R_AARCH64_CALL26	_printk
     a58: 128002a0     	mov	w0, #-0x16              // =-22
     a5c: 1400000e     	b	0xa94 <charger_policy_expired_sec_set+0x78>
     a60: aa0103f3     	mov	x19, x1
     a64: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1753
     a68: 91000021     	add	x1, x1, #0x0
		0000000000000a68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1753
     a6c: 910013e2     	add	x2, sp, #0x4
     a70: 94000000     	bl	0xa70 <charger_policy_expired_sec_set+0x54>
		0000000000000a70:  R_AARCH64_CALL26	sscanf
     a74: b94007e2     	ldr	w2, [sp, #0x4]
     a78: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18ae
     a7c: 91000000     	add	x0, x0, #0x0
		0000000000000a7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18ae
     a80: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x247
     a84: 91000021     	add	x1, x1, #0x0
		0000000000000a84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x247
     a88: b901f662     	str	w2, [x19, #0x1f4]
     a8c: 94000000     	bl	0xa8c <charger_policy_expired_sec_set+0x70>
		0000000000000a8c:  R_AARCH64_CALL26	_printk
     a90: 2a1f03e0     	mov	w0, wzr
     a94: d5384108     	mrs	x8, SP_EL0
     a98: f9438908     	ldr	x8, [x8, #0x710]
     a9c: f94007e9     	ldr	x9, [sp, #0x8]
     aa0: eb09011f     	cmp	x8, x9
     aa4: 540000c1     	b.ne	0xabc <charger_policy_expired_sec_set+0xa0>
     aa8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     aac: f94013f3     	ldr	x19, [sp, #0x20]
     ab0: 9100c3ff     	add	sp, sp, #0x30
     ab4: d50323bf     	autiasp
     ab8: d65f03c0     	ret
     abc: 94000000     	bl	0xabc <charger_policy_expired_sec_set+0xa0>
		0000000000000abc:  R_AARCH64_CALL26	__stack_chk_fail
