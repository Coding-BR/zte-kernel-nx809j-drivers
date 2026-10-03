
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000b60 <charger_policy_force_disching_sec_set>:
     b60: d503233f     	paciasp
     b64: d100c3ff     	sub	sp, sp, #0x30
     b68: a9017bfd     	stp	x29, x30, [sp, #0x10]
     b6c: f90013f3     	str	x19, [sp, #0x20]
     b70: 910043fd     	add	x29, sp, #0x10
     b74: d5384108     	mrs	x8, SP_EL0
     b78: f9438908     	ldr	x8, [x8, #0x710]
     b7c: f90007e8     	str	x8, [sp, #0x8]
     b80: b90007ff     	str	wzr, [sp, #0x4]
     b84: b5000101     	cbnz	x1, 0xba4 <charger_policy_force_disching_sec_set+0x44>
     b88: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe4b
     b8c: 91000000     	add	x0, x0, #0x0
		0000000000000b8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe4b
     b90: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x53a
     b94: 91000021     	add	x1, x1, #0x0
		0000000000000b94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x53a
     b98: 94000000     	bl	0xb98 <charger_policy_force_disching_sec_set+0x38>
		0000000000000b98:  R_AARCH64_CALL26	_printk
     b9c: 128002a0     	mov	w0, #-0x16              // =-22
     ba0: 1400000e     	b	0xbd8 <charger_policy_force_disching_sec_set+0x78>
     ba4: aa0103f3     	mov	x19, x1
     ba8: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000ba8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1753
     bac: 91000021     	add	x1, x1, #0x0
		0000000000000bac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1753
     bb0: 910013e2     	add	x2, sp, #0x4
     bb4: 94000000     	bl	0xbb4 <charger_policy_force_disching_sec_set+0x54>
		0000000000000bb4:  R_AARCH64_CALL26	sscanf
     bb8: b94007e2     	ldr	w2, [sp, #0x4]
     bbc: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000bbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa59
     bc0: 91000000     	add	x0, x0, #0x0
		0000000000000bc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa59
     bc4: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000bc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x53a
     bc8: 91000021     	add	x1, x1, #0x0
		0000000000000bc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x53a
     bcc: b901fa62     	str	w2, [x19, #0x1f8]
     bd0: 94000000     	bl	0xbd0 <charger_policy_force_disching_sec_set+0x70>
		0000000000000bd0:  R_AARCH64_CALL26	_printk
     bd4: 2a1f03e0     	mov	w0, wzr
     bd8: d5384108     	mrs	x8, SP_EL0
     bdc: f9438908     	ldr	x8, [x8, #0x710]
     be0: f94007e9     	ldr	x9, [sp, #0x8]
     be4: eb09011f     	cmp	x8, x9
     be8: 540000c1     	b.ne	0xc00 <charger_policy_force_disching_sec_set+0xa0>
     bec: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     bf0: f94013f3     	ldr	x19, [sp, #0x20]
     bf4: 9100c3ff     	add	sp, sp, #0x30
     bf8: d50323bf     	autiasp
     bfc: d65f03c0     	ret
     c00: 94000000     	bl	0xc00 <charger_policy_force_disching_sec_set+0xa0>
		0000000000000c00:  R_AARCH64_CALL26	__stack_chk_fail
