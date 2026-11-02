
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009728 <aw9620x_raw_get>:
    9728: d503233f     	paciasp
    972c: d10183ff     	sub	sp, sp, #0x60
    9730: a9017bfd     	stp	x29, x30, [sp, #0x10]
    9734: a90267fa     	stp	x26, x25, [sp, #0x20]
    9738: a9035ff8     	stp	x24, x23, [sp, #0x30]
    973c: a90457f6     	stp	x22, x21, [sp, #0x40]
    9740: a9054ff4     	stp	x20, x19, [sp, #0x50]
    9744: 910043fd     	add	x29, sp, #0x10
    9748: d5384108     	mrs	x8, SP_EL0
    974c: aa0203f4     	mov	x20, x2
    9750: 2a1f03f5     	mov	w21, wzr
    9754: f9438908     	ldr	x8, [x8, #0x710]
    9758: aa1f03f3     	mov	x19, xzr
    975c: 52800a98     	mov	w24, #0x54              // =84
    9760: 52834e99     	mov	w25, #0x1a74            // =6772
    9764: 5282001a     	mov	w26, #0x1000            // =4096
    9768: 90000017     	adrp	x23, 0x9000 <aw9620x_mode_operation_set+0x54>
		0000000000009768:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x34e5
    976c: 910002f7     	add	x23, x23, #0x0
		000000000000976c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x34e5
    9770: f90007e8     	str	x8, [sp, #0x8]
    9774: f9404c08     	ldr	x8, [x0, #0x98]
    9778: b90007ff     	str	wzr, [sp, #0x4]
    977c: d100e116     	sub	x22, x8, #0x38
    9780: 1b1866a1     	madd	w1, w21, w24, w25
    9784: 910013e2     	add	x2, sp, #0x4
    9788: aa1603e0     	mov	x0, x22
    978c: 97ffe8dd     	bl	0x3b00 <aw9620x_i2c_read>
    9790: b94007e8     	ldr	w8, [sp, #0x4]
    9794: cb130341     	sub	x1, x26, x19
    9798: 8b130280     	add	x0, x20, x19
    979c: aa1703e2     	mov	x2, x23
    97a0: 2a1503e3     	mov	w3, w21
    97a4: 110ffd09     	add	w9, w8, #0x3ff
    97a8: 7100011f     	cmp	w8, #0x0
    97ac: 1a88b128     	csel	w8, w9, w8, lt
    97b0: 130a7d04     	asr	w4, w8, #10
    97b4: 94000000     	bl	0x97b4 <aw9620x_raw_get+0x8c>
		00000000000097b4:  R_AARCH64_CALL26	snprintf
    97b8: 110006b5     	add	w21, w21, #0x1
    97bc: 8b20c273     	add	x19, x19, w0, sxtw
    97c0: 710022bf     	cmp	w21, #0x8
    97c4: 54fffde1     	b.ne	0x9780 <aw9620x_raw_get+0x58>
    97c8: d5384108     	mrs	x8, SP_EL0
    97cc: f9438908     	ldr	x8, [x8, #0x710]
    97d0: f94007e9     	ldr	x9, [sp, #0x8]
    97d4: eb09011f     	cmp	x8, x9
    97d8: 54000141     	b.ne	0x9800 <aw9620x_raw_get+0xd8>
    97dc: aa1303e0     	mov	x0, x19
    97e0: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    97e4: a94457f6     	ldp	x22, x21, [sp, #0x40]
    97e8: a9435ff8     	ldp	x24, x23, [sp, #0x30]
    97ec: a94267fa     	ldp	x26, x25, [sp, #0x20]
    97f0: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    97f4: 910183ff     	add	sp, sp, #0x60
    97f8: d50323bf     	autiasp
    97fc: d65f03c0     	ret
    9800: 94000000     	bl	0x9800 <aw9620x_raw_get+0xd8>
		0000000000009800:  R_AARCH64_CALL26	__stack_chk_fail
