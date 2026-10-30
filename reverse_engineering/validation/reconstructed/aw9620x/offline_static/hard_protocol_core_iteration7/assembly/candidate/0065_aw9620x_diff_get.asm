
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000099c8 <aw9620x_diff_get>:
    99c8: d503233f     	paciasp
    99cc: d10183ff     	sub	sp, sp, #0x60
    99d0: a9017bfd     	stp	x29, x30, [sp, #0x10]
    99d4: a90267fa     	stp	x26, x25, [sp, #0x20]
    99d8: a9035ff8     	stp	x24, x23, [sp, #0x30]
    99dc: a90457f6     	stp	x22, x21, [sp, #0x40]
    99e0: a9054ff4     	stp	x20, x19, [sp, #0x50]
    99e4: 910043fd     	add	x29, sp, #0x10
    99e8: d5384108     	mrs	x8, SP_EL0
    99ec: aa0203f4     	mov	x20, x2
    99f0: 2a1f03f5     	mov	w21, wzr
    99f4: f9438908     	ldr	x8, [x8, #0x710]
    99f8: aa1f03f3     	mov	x19, xzr
    99fc: 52800a98     	mov	w24, #0x54              // =84
    9a00: 52835099     	mov	w25, #0x1a84            // =6788
    9a04: 5282001a     	mov	w26, #0x1000            // =4096
    9a08: 90000017     	adrp	x23, 0x9000 <aw9620x_mode_operation_set+0x54>
		0000000000009a08:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x34e5
    9a0c: 910002f7     	add	x23, x23, #0x0
		0000000000009a0c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x34e5
    9a10: f90007e8     	str	x8, [sp, #0x8]
    9a14: f9404c08     	ldr	x8, [x0, #0x98]
    9a18: b90007ff     	str	wzr, [sp, #0x4]
    9a1c: d100e116     	sub	x22, x8, #0x38
    9a20: 1b1866a1     	madd	w1, w21, w24, w25
    9a24: 910013e2     	add	x2, sp, #0x4
    9a28: aa1603e0     	mov	x0, x22
    9a2c: 97ffe835     	bl	0x3b00 <aw9620x_i2c_read>
		0000000000009a2c:  R_AARCH64_CALL26	aw9620x_i2c_read
    9a30: b94007e8     	ldr	w8, [sp, #0x4]
    9a34: cb130341     	sub	x1, x26, x19
    9a38: 8b130280     	add	x0, x20, x19
    9a3c: aa1703e2     	mov	x2, x23
    9a40: 2a1503e3     	mov	w3, w21
    9a44: 110ffd09     	add	w9, w8, #0x3ff
    9a48: 7100011f     	cmp	w8, #0x0
    9a4c: 1a88b128     	csel	w8, w9, w8, lt
    9a50: 130a7d04     	asr	w4, w8, #10
    9a54: 94000000     	bl	0x9a54 <aw9620x_diff_get+0x8c>
		0000000000009a54:  R_AARCH64_CALL26	snprintf
    9a58: 110006b5     	add	w21, w21, #0x1
    9a5c: 8b20c273     	add	x19, x19, w0, sxtw
    9a60: 710022bf     	cmp	w21, #0x8
    9a64: 54fffde1     	b.ne	0x9a20 <aw9620x_diff_get+0x58>
    9a68: d5384108     	mrs	x8, SP_EL0
    9a6c: f9438908     	ldr	x8, [x8, #0x710]
    9a70: f94007e9     	ldr	x9, [sp, #0x8]
    9a74: eb09011f     	cmp	x8, x9
    9a78: 54000141     	b.ne	0x9aa0 <aw9620x_diff_get+0xd8>
    9a7c: aa1303e0     	mov	x0, x19
    9a80: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    9a84: a94457f6     	ldp	x22, x21, [sp, #0x40]
    9a88: a9435ff8     	ldp	x24, x23, [sp, #0x30]
    9a8c: a94267fa     	ldp	x26, x25, [sp, #0x20]
    9a90: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    9a94: 910183ff     	add	sp, sp, #0x60
    9a98: d50323bf     	autiasp
    9a9c: d65f03c0     	ret
    9aa0: 94000000     	bl	0x9aa0 <aw9620x_diff_get+0xd8>
		0000000000009aa0:  R_AARCH64_CALL26	__stack_chk_fail
