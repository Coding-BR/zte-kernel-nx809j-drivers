
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009808 <aw9620x_lpf_get>:
    9808: d503233f     	paciasp
    980c: d10183ff     	sub	sp, sp, #0x60
    9810: a9017bfd     	stp	x29, x30, [sp, #0x10]
    9814: a90267fa     	stp	x26, x25, [sp, #0x20]
    9818: a9035ff8     	stp	x24, x23, [sp, #0x30]
    981c: a90457f6     	stp	x22, x21, [sp, #0x40]
    9820: a9054ff4     	stp	x20, x19, [sp, #0x50]
    9824: 910043fd     	add	x29, sp, #0x10
    9828: d5384108     	mrs	x8, SP_EL0
    982c: aa0203f4     	mov	x20, x2
    9830: 2a1f03f5     	mov	w21, wzr
    9834: f9438908     	ldr	x8, [x8, #0x710]
    9838: aa1f03f3     	mov	x19, xzr
    983c: 52800a98     	mov	w24, #0x54              // =84
    9840: 52834f19     	mov	w25, #0x1a78            // =6776
    9844: 5282001a     	mov	w26, #0x1000            // =4096
    9848: 90000017     	adrp	x23, 0x9000 <aw9620x_mode_operation_set+0x54>
		0000000000009848:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x34e5
    984c: 910002f7     	add	x23, x23, #0x0
		000000000000984c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x34e5
    9850: f90007e8     	str	x8, [sp, #0x8]
    9854: f9404c08     	ldr	x8, [x0, #0x98]
    9858: b90007ff     	str	wzr, [sp, #0x4]
    985c: d100e116     	sub	x22, x8, #0x38
    9860: 1b1866a1     	madd	w1, w21, w24, w25
    9864: 910013e2     	add	x2, sp, #0x4
    9868: aa1603e0     	mov	x0, x22
    986c: 97ffe8a5     	bl	0x3b00 <aw9620x_i2c_read>
    9870: b94007e8     	ldr	w8, [sp, #0x4]
    9874: cb130341     	sub	x1, x26, x19
    9878: 8b130280     	add	x0, x20, x19
    987c: aa1703e2     	mov	x2, x23
    9880: 2a1503e3     	mov	w3, w21
    9884: 110ffd09     	add	w9, w8, #0x3ff
    9888: 7100011f     	cmp	w8, #0x0
    988c: 1a88b128     	csel	w8, w9, w8, lt
    9890: 130a7d04     	asr	w4, w8, #10
    9894: 94000000     	bl	0x9894 <aw9620x_lpf_get+0x8c>
		0000000000009894:  R_AARCH64_CALL26	snprintf
    9898: 110006b5     	add	w21, w21, #0x1
    989c: 8b20c273     	add	x19, x19, w0, sxtw
    98a0: 710022bf     	cmp	w21, #0x8
    98a4: 54fffde1     	b.ne	0x9860 <aw9620x_lpf_get+0x58>
    98a8: d5384108     	mrs	x8, SP_EL0
    98ac: f9438908     	ldr	x8, [x8, #0x710]
    98b0: f94007e9     	ldr	x9, [sp, #0x8]
    98b4: eb09011f     	cmp	x8, x9
    98b8: 54000141     	b.ne	0x98e0 <aw9620x_lpf_get+0xd8>
    98bc: aa1303e0     	mov	x0, x19
    98c0: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    98c4: a94457f6     	ldp	x22, x21, [sp, #0x40]
    98c8: a9435ff8     	ldp	x24, x23, [sp, #0x30]
    98cc: a94267fa     	ldp	x26, x25, [sp, #0x20]
    98d0: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    98d4: 910183ff     	add	sp, sp, #0x60
    98d8: d50323bf     	autiasp
    98dc: d65f03c0     	ret
    98e0: 94000000     	bl	0x98e0 <aw9620x_lpf_get+0xd8>
		00000000000098e0:  R_AARCH64_CALL26	__stack_chk_fail
