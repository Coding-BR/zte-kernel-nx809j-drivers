
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001dc4 <aw9620x_update_bt_to_flash>:
    1dc4: d503233f     	paciasp
    1dc8: d10183ff     	sub	sp, sp, #0x60
    1dcc: a9047bfd     	stp	x29, x30, [sp, #0x40]
    1dd0: f9002bf3     	str	x19, [sp, #0x50]
    1dd4: 910103fd     	add	x29, sp, #0x40
    1dd8: d5384109     	mrs	x9, SP_EL0
    1ddc: d280ff0a     	mov	x10, #0x7f8             // =2040
    1de0: aa0103e8     	mov	x8, x1
    1de4: f9438929     	ldr	x9, [x9, #0x710]
    1de8: f2c0ff8a     	movk	x10, #0x7fc, lsl #32
    1dec: f81f83a9     	stur	x9, [x29, #-0x8]
    1df0: 5280ff09     	mov	w9, #0x7f8              // =2040
    1df4: a90087ff     	stp	xzr, x1, [sp, #0x8]
    1df8: f9401801     	ldr	x1, [x0, #0x30]
    1dfc: a93eaba9     	stp	x9, x10, [x29, #-0x18]
    1e00: d10063a9     	sub	x9, x29, #0x18
    1e04: f90013e9     	str	x9, [sp, #0x20]
    1e08: 29037fe2     	stp	w2, wzr, [sp, #0x18]
    1e0c: b5000168     	cbnz	x8, 0x1e38 <aw9620x_update_bt_to_flash+0x74>
    1e10: 90000000     	adrp	x0, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001e10:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2c9b
    1e14: 91000000     	add	x0, x0, #0x0
		0000000000001e14:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2c9b
    1e18: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001e18:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1467
    1e1c: 91000042     	add	x2, x2, #0x0
		0000000000001e1c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1467
    1e20: 90000003     	adrp	x3, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001e20:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x10c1
    1e24: 91000063     	add	x3, x3, #0x0
		0000000000001e24:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x10c1
    1e28: 5280c464     	mov	w4, #0x623              // =1571
    1e2c: 94000000     	bl	0x1e2c <aw9620x_update_bt_to_flash+0x68>
		0000000000001e2c:  R_AARCH64_CALL26	_dev_printk
    1e30: 12800000     	mov	w0, #-0x1               // =-1
    1e34: 1400000f     	b	0x1e70 <aw9620x_update_bt_to_flash+0xac>
    1e38: 90000008     	adrp	x8, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001e38:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2c9b
    1e3c: 91000108     	add	x8, x8, #0x0
		0000000000001e3c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2c9b
    1e40: 2a0203e5     	mov	w5, w2
    1e44: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001e44:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x12fc
    1e48: 91000042     	add	x2, x2, #0x0
		0000000000001e48:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x12fc
    1e4c: 90000003     	adrp	x3, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001e4c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x10c1
    1e50: 91000063     	add	x3, x3, #0x0
		0000000000001e50:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x10c1
    1e54: aa0003f3     	mov	x19, x0
    1e58: aa0803e0     	mov	x0, x8
    1e5c: 5280c4e4     	mov	w4, #0x627              // =1575
    1e60: 94000000     	bl	0x1e60 <aw9620x_update_bt_to_flash+0x9c>
		0000000000001e60:  R_AARCH64_CALL26	_dev_printk
    1e64: 910023e1     	add	x1, sp, #0x8
    1e68: aa1303e0     	mov	x0, x19
    1e6c: 94000000     	bl	0x1e6c <aw9620x_update_bt_to_flash+0xa8>
		0000000000001e6c:  R_AARCH64_CALL26	aw9620x_flash_update
    1e70: d5384108     	mrs	x8, SP_EL0
    1e74: f9438908     	ldr	x8, [x8, #0x710]
    1e78: f85f83a9     	ldur	x9, [x29, #-0x8]
    1e7c: eb09011f     	cmp	x8, x9
    1e80: 540000c1     	b.ne	0x1e98 <aw9620x_update_bt_to_flash+0xd4>
    1e84: a9447bfd     	ldp	x29, x30, [sp, #0x40]
    1e88: f9402bf3     	ldr	x19, [sp, #0x50]
    1e8c: 910183ff     	add	sp, sp, #0x60
    1e90: d50323bf     	autiasp
    1e94: d65f03c0     	ret
    1e98: 94000000     	bl	0x1e98 <aw9620x_update_bt_to_flash+0xd4>
		0000000000001e98:  R_AARCH64_CALL26	__stack_chk_fail
