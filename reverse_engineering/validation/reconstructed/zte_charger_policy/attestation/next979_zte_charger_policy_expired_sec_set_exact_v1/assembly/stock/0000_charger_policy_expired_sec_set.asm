
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000ac4 <charger_policy_expired_sec_set>:
     ac4: d503233f     	paciasp
     ac8: d100c3ff     	sub	sp, sp, #0x30
     acc: a9017bfd     	stp	x29, x30, [sp, #0x10]
     ad0: f90013f3     	str	x19, [sp, #0x20]
     ad4: 910043fd     	add	x29, sp, #0x10
     ad8: d5384108     	mrs	x8, SP_EL0
     adc: f9438908     	ldr	x8, [x8, #0x710]
     ae0: f90007e8     	str	x8, [sp, #0x8]
     ae4: b90007ff     	str	wzr, [sp, #0x4]
     ae8: b5000101     	cbnz	x1, 0xb08 <charger_policy_expired_sec_set+0x44>
     aec: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000aec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc55
     af0: 91000000     	add	x0, x0, #0x0
		0000000000000af0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc55
     af4: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000af4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15f
     af8: 91000021     	add	x1, x1, #0x0
		0000000000000af8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15f
     afc: 94000000     	bl	0xafc <charger_policy_expired_sec_set+0x38>
		0000000000000afc:  R_AARCH64_CALL26	_printk
     b00: 128002a0     	mov	w0, #-0x16              // =-22
     b04: 1400000e     	b	0xb3c <charger_policy_expired_sec_set+0x78>
     b08: aa0103f3     	mov	x19, x1
     b0c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x138f
     b10: 91000021     	add	x1, x1, #0x0
		0000000000000b10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x138f
     b14: 910013e2     	add	x2, sp, #0x4
     b18: 94000000     	bl	0xb18 <charger_policy_expired_sec_set+0x54>
		0000000000000b18:  R_AARCH64_CALL26	sscanf
     b1c: b94007e2     	ldr	w2, [sp, #0x4]
     b20: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14ac
     b24: 91000000     	add	x0, x0, #0x0
		0000000000000b24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14ac
     b28: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15f
     b2c: 91000021     	add	x1, x1, #0x0
		0000000000000b2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15f
     b30: b901f662     	str	w2, [x19, #0x1f4]
     b34: 94000000     	bl	0xb34 <charger_policy_expired_sec_set+0x70>
		0000000000000b34:  R_AARCH64_CALL26	_printk
     b38: 2a1f03e0     	mov	w0, wzr
     b3c: d5384108     	mrs	x8, SP_EL0
     b40: f9438908     	ldr	x8, [x8, #0x710]
     b44: f94007e9     	ldr	x9, [sp, #0x8]
     b48: eb09011f     	cmp	x8, x9
     b4c: 540000c1     	b.ne	0xb64 <charger_policy_expired_sec_set+0xa0>
     b50: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     b54: f94013f3     	ldr	x19, [sp, #0x20]
     b58: 9100c3ff     	add	sp, sp, #0x30
     b5c: d50323bf     	autiasp
     b60: d65f03c0     	ret
     b64: 94000000     	bl	0xb64 <charger_policy_expired_sec_set+0xa0>
		0000000000000b64:  R_AARCH64_CALL26	__stack_chk_fail
