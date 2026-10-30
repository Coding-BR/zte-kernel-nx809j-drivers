
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000098e8 <aw9620x_valid_get>:
    98e8: d503233f     	paciasp
    98ec: d10183ff     	sub	sp, sp, #0x60
    98f0: a9017bfd     	stp	x29, x30, [sp, #0x10]
    98f4: a90267fa     	stp	x26, x25, [sp, #0x20]
    98f8: a9035ff8     	stp	x24, x23, [sp, #0x30]
    98fc: a90457f6     	stp	x22, x21, [sp, #0x40]
    9900: a9054ff4     	stp	x20, x19, [sp, #0x50]
    9904: 910043fd     	add	x29, sp, #0x10
    9908: d5384108     	mrs	x8, SP_EL0
    990c: aa0203f4     	mov	x20, x2
    9910: 2a1f03f5     	mov	w21, wzr
    9914: f9438908     	ldr	x8, [x8, #0x710]
    9918: aa1f03f3     	mov	x19, xzr
    991c: 52800a98     	mov	w24, #0x54              // =84
    9920: 52834f99     	mov	w25, #0x1a7c            // =6780
    9924: 5282001a     	mov	w26, #0x1000            // =4096
    9928: 90000017     	adrp	x23, 0x9000 <aw9620x_mode_operation_set+0x54>
		0000000000009928:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x34e5
    992c: 910002f7     	add	x23, x23, #0x0
		000000000000992c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x34e5
    9930: f90007e8     	str	x8, [sp, #0x8]
    9934: f9404c08     	ldr	x8, [x0, #0x98]
    9938: b90007ff     	str	wzr, [sp, #0x4]
    993c: d100e116     	sub	x22, x8, #0x38
    9940: 1b1866a1     	madd	w1, w21, w24, w25
    9944: 910013e2     	add	x2, sp, #0x4
    9948: aa1603e0     	mov	x0, x22
    994c: 97ffe86d     	bl	0x3b00 <aw9620x_i2c_read>
		000000000000994c:  R_AARCH64_CALL26	aw9620x_i2c_read
    9950: b94007e8     	ldr	w8, [sp, #0x4]
    9954: cb130341     	sub	x1, x26, x19
    9958: 8b130280     	add	x0, x20, x19
    995c: aa1703e2     	mov	x2, x23
    9960: 2a1503e3     	mov	w3, w21
    9964: 110ffd09     	add	w9, w8, #0x3ff
    9968: 7100011f     	cmp	w8, #0x0
    996c: 1a88b128     	csel	w8, w9, w8, lt
    9970: 130a7d04     	asr	w4, w8, #10
    9974: 94000000     	bl	0x9974 <aw9620x_valid_get+0x8c>
		0000000000009974:  R_AARCH64_CALL26	snprintf
    9978: 110006b5     	add	w21, w21, #0x1
    997c: 8b20c273     	add	x19, x19, w0, sxtw
    9980: 710022bf     	cmp	w21, #0x8
    9984: 54fffde1     	b.ne	0x9940 <aw9620x_valid_get+0x58>
    9988: d5384108     	mrs	x8, SP_EL0
    998c: f9438908     	ldr	x8, [x8, #0x710]
    9990: f94007e9     	ldr	x9, [sp, #0x8]
    9994: eb09011f     	cmp	x8, x9
    9998: 54000141     	b.ne	0x99c0 <aw9620x_valid_get+0xd8>
    999c: aa1303e0     	mov	x0, x19
    99a0: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    99a4: a94457f6     	ldp	x22, x21, [sp, #0x40]
    99a8: a9435ff8     	ldp	x24, x23, [sp, #0x30]
    99ac: a94267fa     	ldp	x26, x25, [sp, #0x20]
    99b0: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    99b4: 910183ff     	add	sp, sp, #0x60
    99b8: d50323bf     	autiasp
    99bc: d65f03c0     	ret
    99c0: 94000000     	bl	0x99c0 <aw9620x_valid_get+0xd8>
		00000000000099c0:  R_AARCH64_CALL26	__stack_chk_fail
