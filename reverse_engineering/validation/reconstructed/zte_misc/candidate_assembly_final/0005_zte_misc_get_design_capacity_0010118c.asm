
/input/zte_misc.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000998 <zte_misc_get_design_capacity>:
     998: d503233f     	paciasp
     99c: d100c3ff     	sub	sp, sp, #0x30
     9a0: a9017bfd     	stp	x29, x30, [sp, #0x10]
     9a4: a9024ff4     	stp	x20, x19, [sp, #0x20]
     9a8: 910043fd     	add	x29, sp, #0x10
     9ac: d5384108     	mrs	x8, SP_EL0
     9b0: aa0003f3     	mov	x19, x0
     9b4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000009b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x343
     9b8: 91000000     	add	x0, x0, #0x0
		00000000000009b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x343
     9bc: f9438908     	ldr	x8, [x8, #0x710]
     9c0: f90007e8     	str	x8, [sp, #0x8]
     9c4: f90003ff     	str	xzr, [sp]
     9c8: 94000000     	bl	0x9c8 <zte_misc_get_design_capacity+0x30>
		00000000000009c8:  R_AARCH64_CALL26	power_supply_get_by_name
     9cc: b50000c0     	cbnz	x0, 0x9e4 <zte_misc_get_design_capacity+0x4c>
     9d0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000009d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24
     9d4: 91000000     	add	x0, x0, #0x0
		00000000000009d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24
     9d8: 94000000     	bl	0x9d8 <zte_misc_get_design_capacity+0x40>
		00000000000009d8:  R_AARCH64_CALL26	_printk
     9dc: 2a1f03f4     	mov	w20, wzr
     9e0: 14000015     	b	0xa34 <zte_misc_get_design_capacity+0x9c>
     9e4: 910003e2     	mov	x2, sp
     9e8: 528002c1     	mov	w1, #0x16               // =22
     9ec: aa0003f4     	mov	x20, x0
     9f0: 94000000     	bl	0x9f0 <zte_misc_get_design_capacity+0x58>
		00000000000009f0:  R_AARCH64_CALL26	power_supply_get_property
     9f4: 340000a0     	cbz	w0, 0xa08 <zte_misc_get_design_capacity+0x70>
     9f8: 2a0003e1     	mov	w1, w0
     9fc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000009fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xee
     a00: 91000000     	add	x0, x0, #0x0
		0000000000000a00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xee
     a04: 94000000     	bl	0xa04 <zte_misc_get_design_capacity+0x6c>
		0000000000000a04:  R_AARCH64_CALL26	_printk
     a08: aa1403e0     	mov	x0, x20
     a0c: 94000000     	bl	0xa0c <zte_misc_get_design_capacity+0x74>
		0000000000000a0c:  R_AARCH64_CALL26	power_supply_put
     a10: b94003e8     	ldr	w8, [sp]
     a14: 5289ba69     	mov	w9, #0x4dd3             // =19923
     a18: 528847ea     	mov	w10, #0x423f            // =16959
     a1c: 72a20c49     	movk	w9, #0x1062, lsl #16
     a20: 72a001ea     	movk	w10, #0xf, lsl #16
     a24: 9ba97d09     	umull	x9, w8, w9
     a28: 6b0a011f     	cmp	w8, w10
     a2c: d366fd29     	lsr	x9, x9, #38
     a30: 1a88c134     	csel	w20, w9, w8, gt
     a34: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x47
     a38: 91000000     	add	x0, x0, #0x0
		0000000000000a38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x47
     a3c: 2a1403e1     	mov	w1, w20
     a40: 94000000     	bl	0xa40 <zte_misc_get_design_capacity+0xa8>
		0000000000000a40:  R_AARCH64_CALL26	_printk
     a44: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000a44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x261
     a48: 91000042     	add	x2, x2, #0x0
		0000000000000a48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x261
     a4c: aa1303e0     	mov	x0, x19
     a50: 52820001     	mov	w1, #0x1000             // =4096
     a54: 2a1403e3     	mov	w3, w20
     a58: 94000000     	bl	0xa58 <zte_misc_get_design_capacity+0xc0>
		0000000000000a58:  R_AARCH64_CALL26	snprintf
     a5c: d5384108     	mrs	x8, SP_EL0
     a60: f9438908     	ldr	x8, [x8, #0x710]
     a64: f94007e9     	ldr	x9, [sp, #0x8]
     a68: eb09011f     	cmp	x8, x9
     a6c: 540000c1     	b.ne	0xa84 <zte_misc_get_design_capacity+0xec>
     a70: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     a74: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     a78: 9100c3ff     	add	sp, sp, #0x30
     a7c: d50323bf     	autiasp
     a80: d65f03c0     	ret
     a84: 94000000     	bl	0xa84 <zte_misc_get_design_capacity+0xec>
		0000000000000a84:  R_AARCH64_CALL26	__stack_chk_fail
