
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009c68 <aw9620x_initial_get>:
    9c68: d503233f     	paciasp
    9c6c: d10183ff     	sub	sp, sp, #0x60
    9c70: a9017bfd     	stp	x29, x30, [sp, #0x10]
    9c74: a90267fa     	stp	x26, x25, [sp, #0x20]
    9c78: a9035ff8     	stp	x24, x23, [sp, #0x30]
    9c7c: a90457f6     	stp	x22, x21, [sp, #0x40]
    9c80: a9054ff4     	stp	x20, x19, [sp, #0x50]
    9c84: 910043fd     	add	x29, sp, #0x10
    9c88: d5384108     	mrs	x8, SP_EL0
    9c8c: aa0203f4     	mov	x20, x2
    9c90: 2a1f03f5     	mov	w21, wzr
    9c94: f9438908     	ldr	x8, [x8, #0x710]
    9c98: aa1f03f3     	mov	x19, xzr
    9c9c: 52800a98     	mov	w24, #0x54              // =84
    9ca0: 52835199     	mov	w25, #0x1a8c            // =6796
    9ca4: 5282001a     	mov	w26, #0x1000            // =4096
    9ca8: 90000017     	adrp	x23, 0x9000 <aw9620x_mode_operation_set+0x54>
		0000000000009ca8:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x34e5
    9cac: 910002f7     	add	x23, x23, #0x0
		0000000000009cac:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x34e5
    9cb0: f90007e8     	str	x8, [sp, #0x8]
    9cb4: f9404c08     	ldr	x8, [x0, #0x98]
    9cb8: b90007ff     	str	wzr, [sp, #0x4]
    9cbc: d100e116     	sub	x22, x8, #0x38
    9cc0: 1b1866a1     	madd	w1, w21, w24, w25
    9cc4: 910013e2     	add	x2, sp, #0x4
    9cc8: aa1603e0     	mov	x0, x22
    9ccc: 97ffe78d     	bl	0x3b00 <aw9620x_i2c_read>
		0000000000009ccc:  R_AARCH64_CALL26	aw9620x_i2c_read
    9cd0: b94007e8     	ldr	w8, [sp, #0x4]
    9cd4: cb130341     	sub	x1, x26, x19
    9cd8: 8b130280     	add	x0, x20, x19
    9cdc: aa1703e2     	mov	x2, x23
    9ce0: 2a1503e3     	mov	w3, w21
    9ce4: 110ffd09     	add	w9, w8, #0x3ff
    9ce8: 7100011f     	cmp	w8, #0x0
    9cec: 1a88b128     	csel	w8, w9, w8, lt
    9cf0: 130a7d04     	asr	w4, w8, #10
    9cf4: 94000000     	bl	0x9cf4 <aw9620x_initial_get+0x8c>
		0000000000009cf4:  R_AARCH64_CALL26	snprintf
    9cf8: 110006b5     	add	w21, w21, #0x1
    9cfc: 8b20c273     	add	x19, x19, w0, sxtw
    9d00: 710022bf     	cmp	w21, #0x8
    9d04: 54fffde1     	b.ne	0x9cc0 <aw9620x_initial_get+0x58>
    9d08: d5384108     	mrs	x8, SP_EL0
    9d0c: f9438908     	ldr	x8, [x8, #0x710]
    9d10: f94007e9     	ldr	x9, [sp, #0x8]
    9d14: eb09011f     	cmp	x8, x9
    9d18: 54000141     	b.ne	0x9d40 <aw9620x_initial_get+0xd8>
    9d1c: aa1303e0     	mov	x0, x19
    9d20: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    9d24: a94457f6     	ldp	x22, x21, [sp, #0x40]
    9d28: a9435ff8     	ldp	x24, x23, [sp, #0x30]
    9d2c: a94267fa     	ldp	x26, x25, [sp, #0x20]
    9d30: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    9d34: 910183ff     	add	sp, sp, #0x60
    9d38: d50323bf     	autiasp
    9d3c: d65f03c0     	ret
    9d40: 94000000     	bl	0x9d40 <aw9620x_initial_get+0xd8>
		0000000000009d40:  R_AARCH64_CALL26	__stack_chk_fail
