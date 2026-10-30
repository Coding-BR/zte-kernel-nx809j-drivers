
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009b88 <aw9620x_baseline_get>:
    9b88: d503233f     	paciasp
    9b8c: d10183ff     	sub	sp, sp, #0x60
    9b90: a9017bfd     	stp	x29, x30, [sp, #0x10]
    9b94: a90267fa     	stp	x26, x25, [sp, #0x20]
    9b98: a9035ff8     	stp	x24, x23, [sp, #0x30]
    9b9c: a90457f6     	stp	x22, x21, [sp, #0x40]
    9ba0: a9054ff4     	stp	x20, x19, [sp, #0x50]
    9ba4: 910043fd     	add	x29, sp, #0x10
    9ba8: d5384108     	mrs	x8, SP_EL0
    9bac: aa0203f4     	mov	x20, x2
    9bb0: 2a1f03f5     	mov	w21, wzr
    9bb4: f9438908     	ldr	x8, [x8, #0x710]
    9bb8: aa1f03f3     	mov	x19, xzr
    9bbc: 52800a98     	mov	w24, #0x54              // =84
    9bc0: 52835019     	mov	w25, #0x1a80            // =6784
    9bc4: 5282001a     	mov	w26, #0x1000            // =4096
    9bc8: 90000017     	adrp	x23, 0x9000 <aw9620x_mode_operation_set+0x54>
		0000000000009bc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x34e5
    9bcc: 910002f7     	add	x23, x23, #0x0
		0000000000009bcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x34e5
    9bd0: f90007e8     	str	x8, [sp, #0x8]
    9bd4: f9404c08     	ldr	x8, [x0, #0x98]
    9bd8: b90007ff     	str	wzr, [sp, #0x4]
    9bdc: d100e116     	sub	x22, x8, #0x38
    9be0: 1b1866a1     	madd	w1, w21, w24, w25
    9be4: 910013e2     	add	x2, sp, #0x4
    9be8: aa1603e0     	mov	x0, x22
    9bec: 97ffe7c5     	bl	0x3b00 <aw9620x_i2c_read>
    9bf0: b94007e8     	ldr	w8, [sp, #0x4]
    9bf4: cb130341     	sub	x1, x26, x19
    9bf8: 8b130280     	add	x0, x20, x19
    9bfc: aa1703e2     	mov	x2, x23
    9c00: 2a1503e3     	mov	w3, w21
    9c04: 110ffd09     	add	w9, w8, #0x3ff
    9c08: 7100011f     	cmp	w8, #0x0
    9c0c: 1a88b128     	csel	w8, w9, w8, lt
    9c10: 130a7d04     	asr	w4, w8, #10
    9c14: 94000000     	bl	0x9c14 <aw9620x_baseline_get+0x8c>
		0000000000009c14:  R_AARCH64_CALL26	snprintf
    9c18: 110006b5     	add	w21, w21, #0x1
    9c1c: 8b20c273     	add	x19, x19, w0, sxtw
    9c20: 710022bf     	cmp	w21, #0x8
    9c24: 54fffde1     	b.ne	0x9be0 <aw9620x_baseline_get+0x58>
    9c28: d5384108     	mrs	x8, SP_EL0
    9c2c: f9438908     	ldr	x8, [x8, #0x710]
    9c30: f94007e9     	ldr	x9, [sp, #0x8]
    9c34: eb09011f     	cmp	x8, x9
    9c38: 54000141     	b.ne	0x9c60 <aw9620x_baseline_get+0xd8>
    9c3c: aa1303e0     	mov	x0, x19
    9c40: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    9c44: a94457f6     	ldp	x22, x21, [sp, #0x40]
    9c48: a9435ff8     	ldp	x24, x23, [sp, #0x30]
    9c4c: a94267fa     	ldp	x26, x25, [sp, #0x20]
    9c50: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    9c54: 910183ff     	add	sp, sp, #0x60
    9c58: d50323bf     	autiasp
    9c5c: d65f03c0     	ret
    9c60: 94000000     	bl	0x9c60 <aw9620x_baseline_get+0xd8>
		0000000000009c60:  R_AARCH64_CALL26	__stack_chk_fail
