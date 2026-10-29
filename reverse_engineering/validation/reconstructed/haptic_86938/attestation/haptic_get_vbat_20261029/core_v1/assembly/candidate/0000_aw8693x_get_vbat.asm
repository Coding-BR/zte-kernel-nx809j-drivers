
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004df4 <aw8693x_get_vbat>:
    4df4: d503233f     	paciasp
    4df8: d100c3ff     	sub	sp, sp, #0x30
    4dfc: a9017bfd     	stp	x29, x30, [sp, #0x10]
    4e00: a9024ff4     	stp	x20, x19, [sp, #0x20]
    4e04: 910043fd     	add	x29, sp, #0x10
    4e08: d5384108     	mrs	x8, SP_EL0
    4e0c: aa0003f3     	mov	x19, x0
    4e10: f9438908     	ldr	x8, [x8, #0x710]
    4e14: f90007e8     	str	x8, [sp, #0x8]
    4e18: 79000bff     	strh	wzr, [sp, #0x4]
    4e1c: 94000000     	bl	0x4e1c <aw8693x_get_vbat+0x28>
		0000000000004e1c:  R_AARCH64_CALL26	aw8693x_stop
    4e20: aa1303e0     	mov	x0, x19
    4e24: 528008a1     	mov	w1, #0x45               // =69
    4e28: 12800082     	mov	w2, #-0x5               // =-5
    4e2c: 52800083     	mov	w3, #0x4                // =4
    4e30: 94000000     	bl	0x4e30 <aw8693x_get_vbat+0x3c>
		0000000000004e30:  R_AARCH64_CALL26	i2c_w_bits
    4e34: 52803e80     	mov	w0, #0x1f4              // =500
    4e38: 52804b01     	mov	w1, #0x258              // =600
    4e3c: 52800042     	mov	w2, #0x2                // =2
    4e40: 94000000     	bl	0x4e40 <aw8693x_get_vbat+0x4c>
		0000000000004e40:  R_AARCH64_CALL26	usleep_range_state
    4e44: aa1303e0     	mov	x0, x19
    4e48: 528009c1     	mov	w1, #0x4e               // =78
    4e4c: 12800f02     	mov	w2, #-0x79              // =-121
    4e50: 2a1f03e3     	mov	w3, wzr
    4e54: 94000000     	bl	0x4e54 <aw8693x_get_vbat+0x60>
		0000000000004e54:  R_AARCH64_CALL26	i2c_w_bits
    4e58: aa1303e0     	mov	x0, x19
    4e5c: 528009a1     	mov	w1, #0x4d               // =77
    4e60: 12800062     	mov	w2, #-0x4               // =-4
    4e64: 52800023     	mov	w3, #0x1                // =1
    4e68: 94000000     	bl	0x4e68 <aw8693x_get_vbat+0x74>
		0000000000004e68:  R_AARCH64_CALL26	i2c_w_bits
    4e6c: 52817700     	mov	w0, #0xbb8              // =3000
    4e70: 5281b581     	mov	w1, #0xdac              // =3500
    4e74: 52800042     	mov	w2, #0x2                // =2
    4e78: 94000000     	bl	0x4e78 <aw8693x_get_vbat+0x84>
		0000000000004e78:  R_AARCH64_CALL26	usleep_range_state
    4e7c: aa1303e0     	mov	x0, x19
    4e80: 528009a1     	mov	w1, #0x4d               // =77
    4e84: 12800062     	mov	w2, #-0x4               // =-4
    4e88: 2a1f03e3     	mov	w3, wzr
    4e8c: 94000000     	bl	0x4e8c <aw8693x_get_vbat+0x98>
		0000000000004e8c:  R_AARCH64_CALL26	i2c_w_bits
    4e90: 910013e2     	add	x2, sp, #0x4
    4e94: aa1303e0     	mov	x0, x19
    4e98: 528009e1     	mov	w1, #0x4f               // =79
    4e9c: 52800043     	mov	w3, #0x2                // =2
    4ea0: 94000000     	bl	0x4ea0 <aw8693x_get_vbat+0xac>
		0000000000004ea0:  R_AARCH64_CALL26	i2c_r_bytes
    4ea4: aa1303e0     	mov	x0, x19
    4ea8: 528008a1     	mov	w1, #0x45               // =69
    4eac: 12800082     	mov	w2, #-0x5               // =-5
    4eb0: 2a1f03e3     	mov	w3, wzr
    4eb4: 94000000     	bl	0x4eb4 <aw8693x_get_vbat+0xc0>
		0000000000004eb4:  R_AARCH64_CALL26	i2c_w_bits
    4eb8: 394013e8     	ldrb	w8, [sp, #0x4]
    4ebc: 394017f4     	ldrb	w20, [sp, #0x5]
    4ec0: 52840129     	mov	w9, #0x2009             // =8201
    4ec4: 72a01009     	movk	w9, #0x80, lsl #16
    4ec8: 33180514     	bfi	w20, w8, #8, #2
    4ecc: 5282fa88     	mov	w8, #0x17d4             // =6100
    4ed0: 1b087e88     	mul	w8, w20, w8
    4ed4: 710bce9f     	cmp	w20, #0x2f3
    4ed8: 9ba97d08     	umull	x8, w8, w9
    4edc: d361fd04     	lsr	x4, x8, #33
    4ee0: b9006a64     	str	w4, [x19, #0x68]
    4ee4: 540001a3     	b.lo	0x4f18 <aw8693x_get_vbat+0x124>
    4ee8: 52823288     	mov	w8, #0x1194             // =4500
    4eec: 90000000     	adrp	x0, 0x4000 <awrw_store+0x210>
		0000000000004eec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xee8
    4ef0: 91000000     	add	x0, x0, #0x0
		0000000000004ef0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xee8
    4ef4: 90000001     	adrp	x1, 0x4000 <awrw_store+0x210>
		0000000000004ef4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    4ef8: 91000021     	add	x1, x1, #0x0
		0000000000004ef8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    4efc: 90000003     	adrp	x3, 0x4000 <awrw_store+0x210>
		0000000000004efc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa45
    4f00: 91000063     	add	x3, x3, #0x0
		0000000000004f00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa45
    4f04: 5280bae2     	mov	w2, #0x5d7              // =1495
    4f08: 52823284     	mov	w4, #0x1194             // =4500
    4f0c: b9006a68     	str	w8, [x19, #0x68]
    4f10: 94000000     	bl	0x4f10 <aw8693x_get_vbat+0x11c>
		0000000000004f10:  R_AARCH64_CALL26	_printk
    4f14: b9406a64     	ldr	w4, [x19, #0x68]
    4f18: 712edc9f     	cmp	w4, #0xbb7
    4f1c: 540001a8     	b.hi	0x4f50 <aw8693x_get_vbat+0x15c>
    4f20: 52817708     	mov	w8, #0xbb8              // =3000
    4f24: 90000000     	adrp	x0, 0x4000 <awrw_store+0x210>
		0000000000004f24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x555
    4f28: 91000000     	add	x0, x0, #0x0
		0000000000004f28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x555
    4f2c: 90000001     	adrp	x1, 0x4000 <awrw_store+0x210>
		0000000000004f2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    4f30: 91000021     	add	x1, x1, #0x0
		0000000000004f30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    4f34: 90000003     	adrp	x3, 0x4000 <awrw_store+0x210>
		0000000000004f34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa45
    4f38: 91000063     	add	x3, x3, #0x0
		0000000000004f38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa45
    4f3c: 5280bb62     	mov	w2, #0x5db              // =1499
    4f40: 52817704     	mov	w4, #0xbb8              // =3000
    4f44: b9006a68     	str	w8, [x19, #0x68]
    4f48: 94000000     	bl	0x4f48 <aw8693x_get_vbat+0x154>
		0000000000004f48:  R_AARCH64_CALL26	_printk
    4f4c: b9406a64     	ldr	w4, [x19, #0x68]
    4f50: 90000000     	adrp	x0, 0x4000 <awrw_store+0x210>
		0000000000004f50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x623
    4f54: 91000000     	add	x0, x0, #0x0
		0000000000004f54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x623
    4f58: 90000001     	adrp	x1, 0x4000 <awrw_store+0x210>
		0000000000004f58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    4f5c: 91000021     	add	x1, x1, #0x0
		0000000000004f5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    4f60: 90000003     	adrp	x3, 0x4000 <awrw_store+0x210>
		0000000000004f60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa45
    4f64: 91000063     	add	x3, x3, #0x0
		0000000000004f64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa45
    4f68: 5280bba2     	mov	w2, #0x5dd              // =1501
    4f6c: 2a1403e5     	mov	w5, w20
    4f70: 94000000     	bl	0x4f70 <aw8693x_get_vbat+0x17c>
		0000000000004f70:  R_AARCH64_CALL26	_printk
    4f74: d5384108     	mrs	x8, SP_EL0
    4f78: f9438908     	ldr	x8, [x8, #0x710]
    4f7c: f94007e9     	ldr	x9, [sp, #0x8]
    4f80: eb09011f     	cmp	x8, x9
    4f84: 540000c1     	b.ne	0x4f9c <aw8693x_get_vbat+0x1a8>
    4f88: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    4f8c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    4f90: 9100c3ff     	add	sp, sp, #0x30
    4f94: d50323bf     	autiasp
    4f98: d65f03c0     	ret
    4f9c: 94000000     	bl	0x4f9c <aw8693x_get_vbat+0x1a8>
		0000000000004f9c:  R_AARCH64_CALL26	__stack_chk_fail
