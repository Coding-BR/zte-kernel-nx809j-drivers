
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004e24 <aw8693x_get_vbat>:
    4e24: d503233f     	paciasp
    4e28: d100c3ff     	sub	sp, sp, #0x30
    4e2c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    4e30: a9024ff4     	stp	x20, x19, [sp, #0x20]
    4e34: 910043fd     	add	x29, sp, #0x10
    4e38: d5384108     	mrs	x8, SP_EL0
    4e3c: aa0003f3     	mov	x19, x0
    4e40: f9438908     	ldr	x8, [x8, #0x710]
    4e44: f90007e8     	str	x8, [sp, #0x8]
    4e48: 79000bff     	strh	wzr, [sp, #0x4]
    4e4c: 94000000     	bl	0x4e4c <aw8693x_get_vbat+0x28>
		0000000000004e4c:  R_AARCH64_CALL26	aw8693x_stop
    4e50: aa1303e0     	mov	x0, x19
    4e54: 528008a1     	mov	w1, #0x45               // =69
    4e58: 12800082     	mov	w2, #-0x5               // =-5
    4e5c: 52800083     	mov	w3, #0x4                // =4
    4e60: 94000000     	bl	0x4e60 <aw8693x_get_vbat+0x3c>
		0000000000004e60:  R_AARCH64_CALL26	i2c_w_bits
    4e64: 52803e80     	mov	w0, #0x1f4              // =500
    4e68: 52804b01     	mov	w1, #0x258              // =600
    4e6c: 52800042     	mov	w2, #0x2                // =2
    4e70: 94000000     	bl	0x4e70 <aw8693x_get_vbat+0x4c>
		0000000000004e70:  R_AARCH64_CALL26	usleep_range_state
    4e74: aa1303e0     	mov	x0, x19
    4e78: 528009c1     	mov	w1, #0x4e               // =78
    4e7c: 12800f02     	mov	w2, #-0x79              // =-121
    4e80: 2a1f03e3     	mov	w3, wzr
    4e84: 94000000     	bl	0x4e84 <aw8693x_get_vbat+0x60>
		0000000000004e84:  R_AARCH64_CALL26	i2c_w_bits
    4e88: aa1303e0     	mov	x0, x19
    4e8c: 528009a1     	mov	w1, #0x4d               // =77
    4e90: 12800062     	mov	w2, #-0x4               // =-4
    4e94: 52800023     	mov	w3, #0x1                // =1
    4e98: 94000000     	bl	0x4e98 <aw8693x_get_vbat+0x74>
		0000000000004e98:  R_AARCH64_CALL26	i2c_w_bits
    4e9c: 52817700     	mov	w0, #0xbb8              // =3000
    4ea0: 5281b581     	mov	w1, #0xdac              // =3500
    4ea4: 52800042     	mov	w2, #0x2                // =2
    4ea8: 94000000     	bl	0x4ea8 <aw8693x_get_vbat+0x84>
		0000000000004ea8:  R_AARCH64_CALL26	usleep_range_state
    4eac: aa1303e0     	mov	x0, x19
    4eb0: 528009a1     	mov	w1, #0x4d               // =77
    4eb4: 12800062     	mov	w2, #-0x4               // =-4
    4eb8: 2a1f03e3     	mov	w3, wzr
    4ebc: 94000000     	bl	0x4ebc <aw8693x_get_vbat+0x98>
		0000000000004ebc:  R_AARCH64_CALL26	i2c_w_bits
    4ec0: 910013e2     	add	x2, sp, #0x4
    4ec4: aa1303e0     	mov	x0, x19
    4ec8: 528009e1     	mov	w1, #0x4f               // =79
    4ecc: 52800043     	mov	w3, #0x2                // =2
    4ed0: 94000000     	bl	0x4ed0 <aw8693x_get_vbat+0xac>
		0000000000004ed0:  R_AARCH64_CALL26	i2c_r_bytes
    4ed4: aa1303e0     	mov	x0, x19
    4ed8: 528008a1     	mov	w1, #0x45               // =69
    4edc: 12800082     	mov	w2, #-0x5               // =-5
    4ee0: 2a1f03e3     	mov	w3, wzr
    4ee4: 94000000     	bl	0x4ee4 <aw8693x_get_vbat+0xc0>
		0000000000004ee4:  R_AARCH64_CALL26	i2c_w_bits
    4ee8: 394013e8     	ldrb	w8, [sp, #0x4]
    4eec: 394017f4     	ldrb	w20, [sp, #0x5]
    4ef0: 52840129     	mov	w9, #0x2009             // =8201
    4ef4: 72a01009     	movk	w9, #0x80, lsl #16
    4ef8: 33180514     	bfi	w20, w8, #8, #2
    4efc: 5282fa88     	mov	w8, #0x17d4             // =6100
    4f00: 1b087e88     	mul	w8, w20, w8
    4f04: 710bce9f     	cmp	w20, #0x2f3
    4f08: 9ba97d08     	umull	x8, w8, w9
    4f0c: d361fd04     	lsr	x4, x8, #33
    4f10: b9006a64     	str	w4, [x19, #0x68]
    4f14: 540001a3     	b.lo	0x4f48 <aw8693x_get_vbat+0x124>
    4f18: 52823288     	mov	w8, #0x1194             // =4500
    4f1c: 90000000     	adrp	x0, 0x4000 <awrw_store+0x1fc>
		0000000000004f1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a54
    4f20: 91000000     	add	x0, x0, #0x0
		0000000000004f20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a54
    4f24: 90000001     	adrp	x1, 0x4000 <awrw_store+0x1fc>
		0000000000004f24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    4f28: 91000021     	add	x1, x1, #0x0
		0000000000004f28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    4f2c: 90000003     	adrp	x3, 0x4000 <awrw_store+0x1fc>
		0000000000004f2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11bb
    4f30: 91000063     	add	x3, x3, #0x0
		0000000000004f30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11bb
    4f34: 5280bae2     	mov	w2, #0x5d7              // =1495
    4f38: 52823284     	mov	w4, #0x1194             // =4500
    4f3c: b9006a68     	str	w8, [x19, #0x68]
    4f40: 94000000     	bl	0x4f40 <aw8693x_get_vbat+0x11c>
		0000000000004f40:  R_AARCH64_CALL26	_printk
    4f44: b9406a64     	ldr	w4, [x19, #0x68]
    4f48: 712edc9f     	cmp	w4, #0xbb7
    4f4c: 540001a8     	b.hi	0x4f80 <aw8693x_get_vbat+0x15c>
    4f50: 52817708     	mov	w8, #0xbb8              // =3000
    4f54: 90000000     	adrp	x0, 0x4000 <awrw_store+0x1fc>
		0000000000004f54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x975
    4f58: 91000000     	add	x0, x0, #0x0
		0000000000004f58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x975
    4f5c: 90000001     	adrp	x1, 0x4000 <awrw_store+0x1fc>
		0000000000004f5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    4f60: 91000021     	add	x1, x1, #0x0
		0000000000004f60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    4f64: 90000003     	adrp	x3, 0x4000 <awrw_store+0x1fc>
		0000000000004f64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11bb
    4f68: 91000063     	add	x3, x3, #0x0
		0000000000004f68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11bb
    4f6c: 5280bb62     	mov	w2, #0x5db              // =1499
    4f70: 52817704     	mov	w4, #0xbb8              // =3000
    4f74: b9006a68     	str	w8, [x19, #0x68]
    4f78: 94000000     	bl	0x4f78 <aw8693x_get_vbat+0x154>
		0000000000004f78:  R_AARCH64_CALL26	_printk
    4f7c: b9406a64     	ldr	w4, [x19, #0x68]
    4f80: 90000000     	adrp	x0, 0x4000 <awrw_store+0x1fc>
		0000000000004f80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb38
    4f84: 91000000     	add	x0, x0, #0x0
		0000000000004f84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb38
    4f88: 90000001     	adrp	x1, 0x4000 <awrw_store+0x1fc>
		0000000000004f88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    4f8c: 91000021     	add	x1, x1, #0x0
		0000000000004f8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    4f90: 90000003     	adrp	x3, 0x4000 <awrw_store+0x1fc>
		0000000000004f90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11bb
    4f94: 91000063     	add	x3, x3, #0x0
		0000000000004f94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11bb
    4f98: 5280bba2     	mov	w2, #0x5dd              // =1501
    4f9c: 2a1403e5     	mov	w5, w20
    4fa0: 94000000     	bl	0x4fa0 <aw8693x_get_vbat+0x17c>
		0000000000004fa0:  R_AARCH64_CALL26	_printk
    4fa4: d5384108     	mrs	x8, SP_EL0
    4fa8: f9438908     	ldr	x8, [x8, #0x710]
    4fac: f94007e9     	ldr	x9, [sp, #0x8]
    4fb0: eb09011f     	cmp	x8, x9
    4fb4: 540000c1     	b.ne	0x4fcc <aw8693x_get_vbat+0x1a8>
    4fb8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    4fbc: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    4fc0: 9100c3ff     	add	sp, sp, #0x30
    4fc4: d50323bf     	autiasp
    4fc8: d65f03c0     	ret
    4fcc: 94000000     	bl	0x4fcc <aw8693x_get_vbat+0x1a8>
		0000000000004fcc:  R_AARCH64_CALL26	__stack_chk_fail
