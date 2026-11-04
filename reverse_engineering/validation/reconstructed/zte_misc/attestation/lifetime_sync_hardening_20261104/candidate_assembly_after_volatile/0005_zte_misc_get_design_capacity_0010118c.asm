
/input/zte_misc.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000ea8 <zte_misc_get_design_capacity>:
     ea8: d503233f     	paciasp
     eac: d100c3ff     	sub	sp, sp, #0x30
     eb0: a9017bfd     	stp	x29, x30, [sp, #0x10]
     eb4: a9024ff4     	stp	x20, x19, [sp, #0x20]
     eb8: 910043fd     	add	x29, sp, #0x10
     ebc: d5384108     	mrs	x8, SP_EL0
     ec0: aa0003f3     	mov	x19, x0
     ec4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ec4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x361
     ec8: 91000000     	add	x0, x0, #0x0
		0000000000000ec8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x361
     ecc: f9438908     	ldr	x8, [x8, #0x710]
     ed0: f90007e8     	str	x8, [sp, #0x8]
     ed4: f90003ff     	str	xzr, [sp]
     ed8: 94000000     	bl	0xed8 <zte_misc_get_design_capacity+0x30>
		0000000000000ed8:  R_AARCH64_CALL26	power_supply_get_by_name
     edc: b50000c0     	cbnz	x0, 0xef4 <zte_misc_get_design_capacity+0x4c>
     ee0: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ee0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24
     ee4: 91000000     	add	x0, x0, #0x0
		0000000000000ee4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24
     ee8: 94000000     	bl	0xee8 <zte_misc_get_design_capacity+0x40>
		0000000000000ee8:  R_AARCH64_CALL26	_printk
     eec: 2a1f03f4     	mov	w20, wzr
     ef0: 14000015     	b	0xf44 <zte_misc_get_design_capacity+0x9c>
     ef4: 910003e2     	mov	x2, sp
     ef8: 528002c1     	mov	w1, #0x16               // =22
     efc: aa0003f4     	mov	x20, x0
     f00: 94000000     	bl	0xf00 <zte_misc_get_design_capacity+0x58>
		0000000000000f00:  R_AARCH64_CALL26	power_supply_get_property
     f04: 340000a0     	cbz	w0, 0xf18 <zte_misc_get_design_capacity+0x70>
     f08: 2a0003e1     	mov	w1, w0
     f0c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x111
     f10: 91000000     	add	x0, x0, #0x0
		0000000000000f10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x111
     f14: 94000000     	bl	0xf14 <zte_misc_get_design_capacity+0x6c>
		0000000000000f14:  R_AARCH64_CALL26	_printk
     f18: aa1403e0     	mov	x0, x20
     f1c: 94000000     	bl	0xf1c <zte_misc_get_design_capacity+0x74>
		0000000000000f1c:  R_AARCH64_CALL26	power_supply_put
     f20: b94003e8     	ldr	w8, [sp]
     f24: 5289ba69     	mov	w9, #0x4dd3             // =19923
     f28: 528847ea     	mov	w10, #0x423f            // =16959
     f2c: 72a20c49     	movk	w9, #0x1062, lsl #16
     f30: 72a001ea     	movk	w10, #0xf, lsl #16
     f34: 9ba97d09     	umull	x9, w8, w9
     f38: 6b0a011f     	cmp	w8, w10
     f3c: d366fd29     	lsr	x9, x9, #38
     f40: 1a88c134     	csel	w20, w9, w8, gt
     f44: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x47
     f48: 91000000     	add	x0, x0, #0x0
		0000000000000f48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x47
     f4c: 2a1403e1     	mov	w1, w20
     f50: 94000000     	bl	0xf50 <zte_misc_get_design_capacity+0xa8>
		0000000000000f50:  R_AARCH64_CALL26	_printk
     f54: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000f54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x27f
     f58: 91000042     	add	x2, x2, #0x0
		0000000000000f58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x27f
     f5c: aa1303e0     	mov	x0, x19
     f60: 52820001     	mov	w1, #0x1000             // =4096
     f64: 2a1403e3     	mov	w3, w20
     f68: 94000000     	bl	0xf68 <zte_misc_get_design_capacity+0xc0>
		0000000000000f68:  R_AARCH64_CALL26	snprintf
     f6c: d5384108     	mrs	x8, SP_EL0
     f70: f9438908     	ldr	x8, [x8, #0x710]
     f74: f94007e9     	ldr	x9, [sp, #0x8]
     f78: eb09011f     	cmp	x8, x9
     f7c: 540000c1     	b.ne	0xf94 <zte_misc_get_design_capacity+0xec>
     f80: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     f84: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     f88: 9100c3ff     	add	sp, sp, #0x30
     f8c: d50323bf     	autiasp
     f90: d65f03c0     	ret
     f94: 94000000     	bl	0xf94 <zte_misc_get_design_capacity+0xec>
		0000000000000f94:  R_AARCH64_CALL26	__stack_chk_fail
