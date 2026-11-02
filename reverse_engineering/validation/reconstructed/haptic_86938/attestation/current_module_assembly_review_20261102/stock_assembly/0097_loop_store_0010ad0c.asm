
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000007eec <loop_store>:
    7eec: d503233f     	paciasp
    7ef0: d100c3ff     	sub	sp, sp, #0x30
    7ef4: a9017bfd     	stp	x29, x30, [sp, #0x10]
    7ef8: a9024ff4     	stp	x20, x19, [sp, #0x20]
    7efc: 910043fd     	add	x29, sp, #0x10
    7f00: d5384109     	mrs	x9, SP_EL0
    7f04: aa0203e8     	mov	x8, x2
    7f08: aa0303f3     	mov	x19, x3
    7f0c: f9438929     	ldr	x9, [x9, #0x710]
    7f10: 90000001     	adrp	x1, 0x7000 <rtp_work_routine+0x1d8>
		0000000000007f10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19d6
    7f14: 91000021     	add	x1, x1, #0x0
		0000000000007f14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19d6
    7f18: 910003e2     	mov	x2, sp
    7f1c: f90007e9     	str	x9, [sp, #0x8]
    7f20: 910003e9     	mov	x9, sp
    7f24: f9404c14     	ldr	x20, [x0, #0x98]
    7f28: b27e0123     	orr	x3, x9, #0x4
    7f2c: aa0803e0     	mov	x0, x8
    7f30: f90003ff     	str	xzr, [sp]
    7f34: 94000000     	bl	0x7f34 <loop_store+0x48>
		0000000000007f34:  R_AARCH64_CALL26	sscanf
    7f38: 7100081f     	cmp	w0, #0x2
    7f3c: 54000180     	b.eq	0x7f6c <loop_store+0x80>
    7f40: d5384108     	mrs	x8, SP_EL0
    7f44: f9438908     	ldr	x8, [x8, #0x710]
    7f48: f94007e9     	ldr	x9, [sp, #0x8]
    7f4c: eb09011f     	cmp	x8, x9
    7f50: 540004a1     	b.ne	0x7fe4 <loop_store+0xf8>
    7f54: aa1303e0     	mov	x0, x19
    7f58: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    7f5c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    7f60: 9100c3ff     	add	sp, sp, #0x30
    7f64: d50323bf     	autiasp
    7f68: d65f03c0     	ret
    7f6c: 294017e4     	ldp	w4, w5, [sp]
    7f70: 90000000     	adrp	x0, 0x7000 <rtp_work_routine+0x1d8>
		0000000000007f70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9c8
    7f74: 91000000     	add	x0, x0, #0x0
		0000000000007f74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9c8
    7f78: 90000001     	adrp	x1, 0x7000 <rtp_work_routine+0x1d8>
		0000000000007f78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    7f7c: 91000021     	add	x1, x1, #0x0
		0000000000007f7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    7f80: 90000003     	adrp	x3, 0x7000 <rtp_work_routine+0x1d8>
		0000000000007f80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b37
    7f84: 91000063     	add	x3, x3, #0x0
		0000000000007f84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b37
    7f88: 52813ea2     	mov	w2, #0x9f5              // =2549
    7f8c: 94000000     	bl	0x7f8c <loop_store+0xa0>
		0000000000007f8c:  R_AARCH64_CALL26	_printk
    7f90: 91092280     	add	x0, x20, #0x248
    7f94: 94000000     	bl	0x7f94 <loop_store+0xa8>
		0000000000007f94:  R_AARCH64_CALL26	mutex_lock
    7f98: b94003e1     	ldr	w1, [sp]
    7f9c: 71001c3f     	cmp	w1, #0x7
    7fa0: 54000248     	b.hi	0x7fe8 <loop_store+0xfc>
    7fa4: b94007e2     	ldr	w2, [sp, #0x4]
    7fa8: 8b010288     	add	x8, x20, x1
    7fac: d102a280     	sub	x0, x20, #0xa8
    7fb0: 3817e102     	sturb	w2, [x8, #-0x82]
    7fb4: f9429288     	ldr	x8, [x20, #0x520]
    7fb8: f9406508     	ldr	x8, [x8, #0xc8]
    7fbc: b85fc110     	ldur	w16, [x8, #-0x4]
    7fc0: 728fccb1     	movk	w17, #0x7e65
    7fc4: 72af70f1     	movk	w17, #0x7b87, lsl #16
    7fc8: 6b11021f     	cmp	w16, w17
    7fcc: 54000040     	b.eq	0x7fd4 <loop_store+0xe8>
    7fd0: d4304500     	brk	#0x8228
    7fd4: d63f0100     	blr	x8
    7fd8: 91092280     	add	x0, x20, #0x248
    7fdc: 94000000     	bl	0x7fdc <loop_store+0xf0>
		0000000000007fdc:  R_AARCH64_CALL26	mutex_unlock
    7fe0: 17ffffd8     	b	0x7f40 <loop_store+0x54>
    7fe4: 94000000     	bl	0x7fe4 <loop_store+0xf8>
		0000000000007fe4:  R_AARCH64_CALL26	__stack_chk_fail
    7fe8: d42aa240     	brk	#0x5512
