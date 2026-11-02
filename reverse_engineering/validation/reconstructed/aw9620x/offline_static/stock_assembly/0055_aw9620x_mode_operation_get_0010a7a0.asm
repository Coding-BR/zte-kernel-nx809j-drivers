
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000008f20 <aw9620x_mode_operation_get>:
    8f20: d503233f     	paciasp
    8f24: d100c3ff     	sub	sp, sp, #0x30
    8f28: a9017bfd     	stp	x29, x30, [sp, #0x10]
    8f2c: a9024ff4     	stp	x20, x19, [sp, #0x20]
    8f30: 910043fd     	add	x29, sp, #0x10
    8f34: d5384108     	mrs	x8, SP_EL0
    8f38: aa0203f3     	mov	x19, x2
    8f3c: 910013e2     	add	x2, sp, #0x4
    8f40: f9438908     	ldr	x8, [x8, #0x710]
    8f44: 52834281     	mov	w1, #0x1a14             // =6676
    8f48: f90007e8     	str	x8, [sp, #0x8]
    8f4c: f9404c14     	ldr	x20, [x0, #0x98]
    8f50: b90007ff     	str	wzr, [sp, #0x4]
    8f54: d100e280     	sub	x0, x20, #0x38
    8f58: 97ffeaea     	bl	0x3b00 <aw9620x_i2c_read>
    8f5c: b85d8283     	ldur	w3, [x20, #-0x28]
    8f60: b94007e4     	ldr	w4, [sp, #0x4]
    8f64: 90000002     	adrp	x2, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008f64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3673
    8f68: 91000042     	add	x2, x2, #0x0
		0000000000008f68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3673
    8f6c: aa1303e0     	mov	x0, x19
    8f70: 52820001     	mov	w1, #0x1000             // =4096
    8f74: 94000000     	bl	0x8f74 <aw9620x_mode_operation_get+0x54>
		0000000000008f74:  R_AARCH64_CALL26	snprintf
    8f78: d5384108     	mrs	x8, SP_EL0
    8f7c: f9438908     	ldr	x8, [x8, #0x710]
    8f80: f94007e9     	ldr	x9, [sp, #0x8]
    8f84: eb09011f     	cmp	x8, x9
    8f88: 540000e1     	b.ne	0x8fa4 <aw9620x_mode_operation_get+0x84>
    8f8c: 93407c00     	sxtw	x0, w0
    8f90: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    8f94: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    8f98: 9100c3ff     	add	sp, sp, #0x30
    8f9c: d50323bf     	autiasp
    8fa0: d65f03c0     	ret
    8fa4: 94000000     	bl	0x8fa4 <aw9620x_mode_operation_get+0x84>
		0000000000008fa4:  R_AARCH64_CALL26	__stack_chk_fail
