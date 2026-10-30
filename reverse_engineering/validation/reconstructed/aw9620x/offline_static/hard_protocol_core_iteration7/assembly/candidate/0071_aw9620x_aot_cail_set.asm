
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009f28 <aw9620x_aot_cail_set>:
    9f28: d503233f     	paciasp
    9f2c: d100c3ff     	sub	sp, sp, #0x30
    9f30: a9017bfd     	stp	x29, x30, [sp, #0x10]
    9f34: a9024ff4     	stp	x20, x19, [sp, #0x20]
    9f38: 910043fd     	add	x29, sp, #0x10
    9f3c: d5384109     	mrs	x9, SP_EL0
    9f40: aa0203e8     	mov	x8, x2
    9f44: 910003e2     	mov	x2, sp
    9f48: f9438929     	ldr	x9, [x9, #0x710]
    9f4c: 2a1f03e1     	mov	w1, wzr
    9f50: aa0303f3     	mov	x19, x3
    9f54: f90007e9     	str	x9, [sp, #0x8]
    9f58: f9404c14     	ldr	x20, [x0, #0x98]
    9f5c: aa0803e0     	mov	x0, x8
    9f60: b90003ff     	str	wzr, [sp]
    9f64: 94000000     	bl	0x9f64 <aw9620x_aot_cail_set+0x3c>
		0000000000009f64:  R_AARCH64_CALL26	kstrtouint
    9f68: 350001e0     	cbnz	w0, 0x9fa4 <aw9620x_aot_cail_set+0x7c>
    9f6c: b94003e8     	ldr	w8, [sp]
    9f70: 7100051f     	cmp	w8, #0x1
    9f74: 540002e1     	b.ne	0x9fd0 <aw9620x_aot_cail_set+0xa8>
    9f78: d100e294     	sub	x20, x20, #0x38
    9f7c: 910013e2     	add	x2, sp, #0x4
    9f80: 52834001     	mov	w1, #0x1a00             // =6656
    9f84: aa1403e0     	mov	x0, x20
    9f88: b90007ff     	str	wzr, [sp, #0x4]
    9f8c: 97ffe6dd     	bl	0x3b00 <aw9620x_i2c_read>
		0000000000009f8c:  R_AARCH64_CALL26	aw9620x_i2c_read
    9f90: b94007e8     	ldr	w8, [sp, #0x4]
    9f94: aa1403e0     	mov	x0, x20
    9f98: 52834001     	mov	w1, #0x1a00             // =6656
    9f9c: 32181d02     	orr	w2, w8, #0xff00
    9fa0: 97ffde1c     	bl	0x1810 <aw9620x_i2c_write>
		0000000000009fa0:  R_AARCH64_CALL26	aw9620x_i2c_write
    9fa4: d5384108     	mrs	x8, SP_EL0
    9fa8: f9438908     	ldr	x8, [x8, #0x710]
    9fac: f94007e9     	ldr	x9, [sp, #0x8]
    9fb0: eb09011f     	cmp	x8, x9
    9fb4: 54000221     	b.ne	0x9ff8 <aw9620x_aot_cail_set+0xd0>
    9fb8: aa1303e0     	mov	x0, x19
    9fbc: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    9fc0: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    9fc4: 9100c3ff     	add	sp, sp, #0x30
    9fc8: d50323bf     	autiasp
    9fcc: d65f03c0     	ret
    9fd0: f85f8281     	ldur	x1, [x20, #-0x8]
    9fd4: 90000000     	adrp	x0, 0x9000 <aw9620x_mode_operation_set+0x54>
		0000000000009fd4:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    9fd8: 91000000     	add	x0, x0, #0x0
		0000000000009fd8:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    9fdc: 90000002     	adrp	x2, 0x9000 <aw9620x_mode_operation_set+0x54>
		0000000000009fdc:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1212
    9fe0: 91000042     	add	x2, x2, #0x0
		0000000000009fe0:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1212
    9fe4: 90000003     	adrp	x3, 0x9000 <aw9620x_mode_operation_set+0x54>
		0000000000009fe4:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x32f8
    9fe8: 91000063     	add	x3, x3, #0x0
		0000000000009fe8:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x32f8
    9fec: 5281ed44     	mov	w4, #0xf6a              // =3946
    9ff0: 94000000     	bl	0x9ff0 <aw9620x_aot_cail_set+0xc8>
		0000000000009ff0:  R_AARCH64_CALL26	_dev_printk
    9ff4: 17ffffec     	b	0x9fa4 <aw9620x_aot_cail_set+0x7c>
    9ff8: 94000000     	bl	0x9ff8 <aw9620x_aot_cail_set+0xd0>
		0000000000009ff8:  R_AARCH64_CALL26	__stack_chk_fail
