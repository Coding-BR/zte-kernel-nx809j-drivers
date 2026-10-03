
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001f4c <aw22xxx_cfg_update_wait_from_dyn_name>:
    1f4c: d503233f     	paciasp
    1f50: d100c3ff     	sub	sp, sp, #0x30
    1f54: a9017bfd     	stp	x29, x30, [sp, #0x10]
    1f58: f90013f3     	str	x19, [sp, #0x20]
    1f5c: 910043fd     	add	x29, sp, #0x10
    1f60: d5384108     	mrs	x8, SP_EL0
    1f64: aa0003f3     	mov	x19, x0
    1f68: 90000000     	adrp	x0, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001f68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1518
    1f6c: 91000000     	add	x0, x0, #0x0
		0000000000001f6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1518
    1f70: f9438908     	ldr	x8, [x8, #0x710]
    1f74: 90000001     	adrp	x1, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001f74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11ee
    1f78: 91000021     	add	x1, x1, #0x0
		0000000000001f78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11ee
    1f7c: f90007e8     	str	x8, [sp, #0x8]
    1f80: f90003ff     	str	xzr, [sp]
    1f84: 94000000     	bl	0x1f84 <aw22xxx_cfg_update_wait_from_dyn_name+0x38>
		0000000000001f84:  R_AARCH64_CALL26	_printk
    1f88: 394bbe68     	ldrb	w8, [x19, #0x2ef]
    1f8c: 7100091f     	cmp	w8, #0x2
    1f90: 540004c1     	b.ne	0x2028 <aw22xxx_cfg_update_wait_from_dyn_name+0xdc>
    1f94: b9430268     	ldr	w8, [x19, #0x300]
    1f98: 7100091f     	cmp	w8, #0x2
    1f9c: 90000008     	adrp	x8, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001f9c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x3d
    1fa0: 540000a1     	b.ne	0x1fb4 <aw22xxx_cfg_update_wait_from_dyn_name+0x68>
    1fa4: 39400109     	ldrb	w9, [x8]
		0000000000001fa4:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x3d
    1fa8: 390d227f     	strb	wzr, [x19, #0x348]
    1fac: 360000c9     	tbz	w9, #0x0, 0x1fc4 <aw22xxx_cfg_update_wait_from_dyn_name+0x78>
    1fb0: 14000009     	b	0x1fd4 <aw22xxx_cfg_update_wait_from_dyn_name+0x88>
    1fb4: 39400109     	ldrb	w9, [x8]
		0000000000001fb4:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x3d
    1fb8: 5280002a     	mov	w10, #0x1               // =1
    1fbc: 390d226a     	strb	w10, [x19, #0x348]
    1fc0: 370000a9     	tbnz	w9, #0x0, 0x1fd4 <aw22xxx_cfg_update_wait_from_dyn_name+0x88>
    1fc4: 52800029     	mov	w9, #0x1                // =1
    1fc8: aa1303e0     	mov	x0, x19
    1fcc: 39000109     	strb	w9, [x8]
		0000000000001fcc:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x3d
    1fd0: 94000067     	bl	0x216c <aw22xxx_init_cfg_update_array>
    1fd4: f9400662     	ldr	x2, [x19, #0x8]
    1fd8: 90000001     	adrp	x1, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001fd8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x3e
    1fdc: 91000021     	add	x1, x1, #0x0
		0000000000001fdc:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x3e
    1fe0: 910003e0     	mov	x0, sp
    1fe4: 94000000     	bl	0x1fe4 <aw22xxx_cfg_update_wait_from_dyn_name+0x98>
		0000000000001fe4:  R_AARCH64_CALL26	request_firmware
    1fe8: 35000240     	cbnz	w0, 0x2030 <aw22xxx_cfg_update_wait_from_dyn_name+0xe4>
    1fec: f94003e0     	ldr	x0, [sp]
    1ff0: aa1303e1     	mov	x1, x19
    1ff4: 940000b0     	bl	0x22b4 <aw22xxx_cfg_loaded>
    1ff8: 52800280     	mov	w0, #0x14               // =20
    1ffc: 94000000     	bl	0x1ffc <aw22xxx_cfg_update_wait_from_dyn_name+0xb0>
		0000000000001ffc:  R_AARCH64_CALL26	msleep
    2000: d5384108     	mrs	x8, SP_EL0
    2004: f9438908     	ldr	x8, [x8, #0x710]
    2008: f94007e9     	ldr	x9, [sp, #0x8]
    200c: eb09011f     	cmp	x8, x9
    2010: 540001e1     	b.ne	0x204c <aw22xxx_cfg_update_wait_from_dyn_name+0x100>
    2014: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    2018: f94013f3     	ldr	x19, [sp, #0x20]
    201c: 9100c3ff     	add	sp, sp, #0x30
    2020: d50323bf     	autiasp
    2024: d65f03c0     	ret
    2028: 128002a2     	mov	w2, #-0x16              // =-22
    202c: 14000002     	b	0x2034 <aw22xxx_cfg_update_wait_from_dyn_name+0xe8>
    2030: 2a0003e2     	mov	w2, w0
    2034: 90000000     	adrp	x0, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		0000000000002034:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x110
    2038: 91000000     	add	x0, x0, #0x0
		0000000000002038:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x110
    203c: 90000001     	adrp	x1, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		000000000000203c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11ee
    2040: 91000021     	add	x1, x1, #0x0
		0000000000002040:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11ee
    2044: 94000000     	bl	0x2044 <aw22xxx_cfg_update_wait_from_dyn_name+0xf8>
		0000000000002044:  R_AARCH64_CALL26	_printk
    2048: 17ffffee     	b	0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
    204c: 94000000     	bl	0x204c <aw22xxx_cfg_update_wait_from_dyn_name+0x100>
		000000000000204c:  R_AARCH64_CALL26	__stack_chk_fail
