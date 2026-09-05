
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000fa0 <charger_policy_enable_status_set>:
     fa0: d503233f     	paciasp
     fa4: d100c3ff     	sub	sp, sp, #0x30
     fa8: a9017bfd     	stp	x29, x30, [sp, #0x10]
     fac: f90013f3     	str	x19, [sp, #0x20]
     fb0: 910043fd     	add	x29, sp, #0x10
     fb4: d5384108     	mrs	x8, SP_EL0
     fb8: f9438908     	ldr	x8, [x8, #0x710]
     fbc: f90007e8     	str	x8, [sp, #0x8]
     fc0: b90007ff     	str	wzr, [sp, #0x4]
     fc4: b5000101     	cbnz	x1, 0xfe4 <charger_policy_enable_status_set+0x44>
     fc8: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000fc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc55
     fcc: 91000000     	add	x0, x0, #0x0
		0000000000000fcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc55
     fd0: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000fd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19b2
     fd4: 91000021     	add	x1, x1, #0x0
		0000000000000fd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19b2
     fd8: 94000000     	bl	0xfd8 <charger_policy_enable_status_set+0x38>
		0000000000000fd8:  R_AARCH64_CALL26	_printk
     fdc: 128002a0     	mov	w0, #-0x16              // =-22
     fe0: 14000010     	b	0x1020 <charger_policy_enable_status_set+0x80>
     fe4: aa0103f3     	mov	x19, x1
     fe8: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000fe8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x138f
     fec: 91000021     	add	x1, x1, #0x0
		0000000000000fec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x138f
     ff0: 910013e2     	add	x2, sp, #0x4
     ff4: 94000000     	bl	0xff4 <charger_policy_enable_status_set+0x54>
		0000000000000ff4:  R_AARCH64_CALL26	sscanf
     ff8: b94007e8     	ldr	w8, [sp, #0x4]
     ffc: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ffc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x42f
    1000: 91000000     	add	x0, x0, #0x0
		0000000000001000:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x42f
    1004: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001004:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19b2
    1008: 91000021     	add	x1, x1, #0x0
		0000000000001008:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19b2
    100c: 7100011f     	cmp	w8, #0x0
    1010: 1a9f17e2     	cset	w2, eq
    1014: b901ea62     	str	w2, [x19, #0x1e8]
    1018: 94000000     	bl	0x1018 <charger_policy_enable_status_set+0x78>
		0000000000001018:  R_AARCH64_CALL26	_printk
    101c: 2a1f03e0     	mov	w0, wzr
    1020: d5384108     	mrs	x8, SP_EL0
    1024: f9438908     	ldr	x8, [x8, #0x710]
    1028: f94007e9     	ldr	x9, [sp, #0x8]
    102c: eb09011f     	cmp	x8, x9
    1030: 540000c1     	b.ne	0x1048 <charger_policy_enable_status_set+0xa8>
    1034: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1038: f94013f3     	ldr	x19, [sp, #0x20]
    103c: 9100c3ff     	add	sp, sp, #0x30
    1040: d50323bf     	autiasp
    1044: d65f03c0     	ret
    1048: 94000000     	bl	0x1048 <charger_policy_enable_status_set+0xa8>
		0000000000001048:  R_AARCH64_CALL26	__stack_chk_fail
