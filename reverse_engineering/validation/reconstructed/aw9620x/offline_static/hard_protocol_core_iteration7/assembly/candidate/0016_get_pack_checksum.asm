
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001f60 <get_pack_checksum>:
    1f60: d503233f     	paciasp
    1f64: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    1f68: f9000bf7     	str	x23, [sp, #0x10]
    1f6c: a90257f6     	stp	x22, x21, [sp, #0x20]
    1f70: a9034ff4     	stp	x20, x19, [sp, #0x30]
    1f74: 910003fd     	mov	x29, sp
    1f78: f9401808     	ldr	x8, [x0, #0x30]
    1f7c: 2a0403f4     	mov	w20, w4
    1f80: 2a0303f7     	mov	w23, w3
    1f84: 2a0203f6     	mov	w22, w2
    1f88: aa0003f3     	mov	x19, x0
    1f8c: aa0103f5     	mov	x21, x1
    1f90: 90000000     	adrp	x0, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001f90:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2c9b
    1f94: 91000000     	add	x0, x0, #0x0
		0000000000001f94:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2c9b
    1f98: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001f98:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0xebd
    1f9c: 91000042     	add	x2, x2, #0x0
		0000000000001f9c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0xebd
    1fa0: 90000003     	adrp	x3, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001fa0:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base
    1fa4: 91000063     	add	x3, x3, #0x0
		0000000000001fa4:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base
    1fa8: aa0803e1     	mov	x1, x8
    1fac: 5280c964     	mov	w4, #0x64b              // =1611
    1fb0: 94000000     	bl	0x1fb0 <get_pack_checksum+0x50>
		0000000000001fb0:  R_AARCH64_CALL26	_dev_printk
    1fb4: 72003ec8     	ands	w8, w22, #0xffff
    1fb8: 0b370108     	add	w8, w8, w23, uxtb
    1fbc: 0b340114     	add	w20, w8, w20, uxtb
    1fc0: 54000120     	b.eq	0x1fe4 <get_pack_checksum+0x84>
    1fc4: aa1f03e8     	mov	x8, xzr
    1fc8: 92403ec9     	and	x9, x22, #0xffff
    1fcc: b8686aaa     	ldr	w10, [x21, x8]
    1fd0: 91001108     	add	x8, x8, #0x4
    1fd4: eb09011f     	cmp	x8, x9
    1fd8: 5ac0094a     	rev	w10, w10
    1fdc: 0b140154     	add	w20, w10, w20
    1fe0: 54ffff63     	b.lo	0x1fcc <get_pack_checksum+0x6c>
    1fe4: f9401a61     	ldr	x1, [x19, #0x30]
    1fe8: 90000000     	adrp	x0, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001fe8:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2c9b
    1fec: 91000000     	add	x0, x0, #0x0
		0000000000001fec:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2c9b
    1ff0: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001ff0:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x26f5
    1ff4: 91000042     	add	x2, x2, #0x0
		0000000000001ff4:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x26f5
    1ff8: 90000003     	adrp	x3, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001ff8:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base
    1ffc: 91000063     	add	x3, x3, #0x0
		0000000000001ffc:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base
    2000: 5280ca84     	mov	w4, #0x654              // =1620
    2004: 2a1403e5     	mov	w5, w20
    2008: 94000000     	bl	0x2008 <get_pack_checksum+0xa8>
		0000000000002008:  R_AARCH64_CALL26	_dev_printk
    200c: 4b1403e0     	neg	w0, w20
    2010: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    2014: f9400bf7     	ldr	x23, [sp, #0x10]
    2018: a94257f6     	ldp	x22, x21, [sp, #0x20]
    201c: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    2020: d50323bf     	autiasp
    2024: d65f03c0     	ret
