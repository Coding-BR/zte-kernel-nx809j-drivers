
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009aa8 <aw9620x_deltavalid_get>:
    9aa8: d503233f     	paciasp
    9aac: d10183ff     	sub	sp, sp, #0x60
    9ab0: a9017bfd     	stp	x29, x30, [sp, #0x10]
    9ab4: a90267fa     	stp	x26, x25, [sp, #0x20]
    9ab8: a9035ff8     	stp	x24, x23, [sp, #0x30]
    9abc: a90457f6     	stp	x22, x21, [sp, #0x40]
    9ac0: a9054ff4     	stp	x20, x19, [sp, #0x50]
    9ac4: 910043fd     	add	x29, sp, #0x10
    9ac8: d5384108     	mrs	x8, SP_EL0
    9acc: aa0203f4     	mov	x20, x2
    9ad0: 2a1f03f5     	mov	w21, wzr
    9ad4: f9438908     	ldr	x8, [x8, #0x710]
    9ad8: aa1f03f3     	mov	x19, xzr
    9adc: 52800a98     	mov	w24, #0x54              // =84
    9ae0: 52835119     	mov	w25, #0x1a88            // =6792
    9ae4: 5282001a     	mov	w26, #0x1000            // =4096
    9ae8: 90000017     	adrp	x23, 0x9000 <aw9620x_mode_operation_set+0x54>
		0000000000009ae8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x34e5
    9aec: 910002f7     	add	x23, x23, #0x0
		0000000000009aec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x34e5
    9af0: f90007e8     	str	x8, [sp, #0x8]
    9af4: f9404c08     	ldr	x8, [x0, #0x98]
    9af8: b90007ff     	str	wzr, [sp, #0x4]
    9afc: d100e116     	sub	x22, x8, #0x38
    9b00: 1b1866a1     	madd	w1, w21, w24, w25
    9b04: 910013e2     	add	x2, sp, #0x4
    9b08: aa1603e0     	mov	x0, x22
    9b0c: 97ffe7fd     	bl	0x3b00 <aw9620x_i2c_read>
    9b10: b94007e8     	ldr	w8, [sp, #0x4]
    9b14: cb130341     	sub	x1, x26, x19
    9b18: 8b130280     	add	x0, x20, x19
    9b1c: aa1703e2     	mov	x2, x23
    9b20: 2a1503e3     	mov	w3, w21
    9b24: 110ffd09     	add	w9, w8, #0x3ff
    9b28: 7100011f     	cmp	w8, #0x0
    9b2c: 1a88b128     	csel	w8, w9, w8, lt
    9b30: 130a7d04     	asr	w4, w8, #10
    9b34: 94000000     	bl	0x9b34 <aw9620x_deltavalid_get+0x8c>
		0000000000009b34:  R_AARCH64_CALL26	snprintf
    9b38: 110006b5     	add	w21, w21, #0x1
    9b3c: 8b20c273     	add	x19, x19, w0, sxtw
    9b40: 710022bf     	cmp	w21, #0x8
    9b44: 54fffde1     	b.ne	0x9b00 <aw9620x_deltavalid_get+0x58>
    9b48: d5384108     	mrs	x8, SP_EL0
    9b4c: f9438908     	ldr	x8, [x8, #0x710]
    9b50: f94007e9     	ldr	x9, [sp, #0x8]
    9b54: eb09011f     	cmp	x8, x9
    9b58: 54000141     	b.ne	0x9b80 <aw9620x_deltavalid_get+0xd8>
    9b5c: aa1303e0     	mov	x0, x19
    9b60: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    9b64: a94457f6     	ldp	x22, x21, [sp, #0x40]
    9b68: a9435ff8     	ldp	x24, x23, [sp, #0x30]
    9b6c: a94267fa     	ldp	x26, x25, [sp, #0x20]
    9b70: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    9b74: 910183ff     	add	sp, sp, #0x60
    9b78: d50323bf     	autiasp
    9b7c: d65f03c0     	ret
    9b80: 94000000     	bl	0x9b80 <aw9620x_deltavalid_get+0xd8>
		0000000000009b80:  R_AARCH64_CALL26	__stack_chk_fail
