
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000029c4 <aw22xxx_cfg_update_wait_from_dyn_name>:
    29c4: d503233f     	paciasp
    29c8: d100c3ff     	sub	sp, sp, #0x30
    29cc: a9017bfd     	stp	x29, x30, [sp, #0x10]
    29d0: f90013f3     	str	x19, [sp, #0x20]
    29d4: 910043fd     	add	x29, sp, #0x10
    29d8: d5384108     	mrs	x8, SP_EL0
    29dc: aa0003f3     	mov	x19, x0
    29e0: 90000000     	adrp	x0, 0x2000 <aw22xxx_reg_show+0xcc>
		00000000000029e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8dd
    29e4: 91000000     	add	x0, x0, #0x0
		00000000000029e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8dd
    29e8: f9438908     	ldr	x8, [x8, #0x710]
    29ec: 90000001     	adrp	x1, 0x2000 <aw22xxx_reg_show+0xcc>
		00000000000029ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10f6
    29f0: 91000021     	add	x1, x1, #0x0
		00000000000029f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10f6
    29f4: f90007e8     	str	x8, [sp, #0x8]
    29f8: f90003ff     	str	xzr, [sp]
    29fc: 94000000     	bl	0x29fc <aw22xxx_cfg_update_wait_from_dyn_name+0x38>
		00000000000029fc:  R_AARCH64_CALL26	_printk
    2a00: 394bbe68     	ldrb	w8, [x19, #0x2ef]
    2a04: 7100091f     	cmp	w8, #0x2
    2a08: 540004c1     	b.ne	0x2aa0 <aw22xxx_cfg_update_wait_from_dyn_name+0xdc>
    2a0c: b9430268     	ldr	w8, [x19, #0x300]
    2a10: 7100091f     	cmp	w8, #0x2
    2a14: 90000008     	adrp	x8, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002a14:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x6218
    2a18: 540000a1     	b.ne	0x2a2c <aw22xxx_cfg_update_wait_from_dyn_name+0x68>
    2a1c: 39400109     	ldrb	w9, [x8]
		0000000000002a1c:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x6218
    2a20: 390d227f     	strb	wzr, [x19, #0x348]
    2a24: 360000c9     	tbz	w9, #0x0, 0x2a3c <aw22xxx_cfg_update_wait_from_dyn_name+0x78>
    2a28: 14000009     	b	0x2a4c <aw22xxx_cfg_update_wait_from_dyn_name+0x88>
    2a2c: 39400109     	ldrb	w9, [x8]
		0000000000002a2c:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x6218
    2a30: 5280002a     	mov	w10, #0x1               // =1
    2a34: 390d226a     	strb	w10, [x19, #0x348]
    2a38: 370000a9     	tbnz	w9, #0x0, 0x2a4c <aw22xxx_cfg_update_wait_from_dyn_name+0x88>
    2a3c: 52800029     	mov	w9, #0x1                // =1
    2a40: aa1303e0     	mov	x0, x19
    2a44: 39000109     	strb	w9, [x8]
		0000000000002a44:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x6218
    2a48: 97fff604     	bl	0x258 <aw22xxx_init_cfg_update_array>
    2a4c: f9400662     	ldr	x2, [x19, #0x8]
    2a50: 90000001     	adrp	x1, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002a50:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x6220
    2a54: 91000021     	add	x1, x1, #0x0
		0000000000002a54:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x6220
    2a58: 910003e0     	mov	x0, sp
    2a5c: 94000000     	bl	0x2a5c <aw22xxx_cfg_update_wait_from_dyn_name+0x98>
		0000000000002a5c:  R_AARCH64_CALL26	request_firmware
    2a60: 35000260     	cbnz	w0, 0x2aac <aw22xxx_cfg_update_wait_from_dyn_name+0xe8>
    2a64: f94003e0     	ldr	x0, [sp]
    2a68: aa1303e1     	mov	x1, x19
    2a6c: 94000060     	bl	0x2bec <aw22xxx_cfg_loaded>
    2a70: 52800280     	mov	w0, #0x14               // =20
    2a74: 94000000     	bl	0x2a74 <aw22xxx_cfg_update_wait_from_dyn_name+0xb0>
		0000000000002a74:  R_AARCH64_CALL26	msleep
    2a78: d5384108     	mrs	x8, SP_EL0
    2a7c: f9438908     	ldr	x8, [x8, #0x710]
    2a80: f94007e9     	ldr	x9, [sp, #0x8]
    2a84: eb09011f     	cmp	x8, x9
    2a88: 540001e1     	b.ne	0x2ac4 <aw22xxx_cfg_update_wait_from_dyn_name+0x100>
    2a8c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    2a90: f94013f3     	ldr	x19, [sp, #0x20]
    2a94: 9100c3ff     	add	sp, sp, #0x30
    2a98: d50323bf     	autiasp
    2a9c: d65f03c0     	ret
    2aa0: 90000000     	adrp	x0, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002aa0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c2
    2aa4: 91000000     	add	x0, x0, #0x0
		0000000000002aa4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c2
    2aa8: 14000003     	b	0x2ab4 <aw22xxx_cfg_update_wait_from_dyn_name+0xf0>
    2aac: 90000000     	adrp	x0, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002aac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1359
    2ab0: 91000000     	add	x0, x0, #0x0
		0000000000002ab0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1359
    2ab4: 90000001     	adrp	x1, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002ab4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10f6
    2ab8: 91000021     	add	x1, x1, #0x0
		0000000000002ab8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10f6
    2abc: 94000000     	bl	0x2abc <aw22xxx_cfg_update_wait_from_dyn_name+0xf8>
		0000000000002abc:  R_AARCH64_CALL26	_printk
    2ac0: 17ffffee     	b	0x2a78 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
    2ac4: 94000000     	bl	0x2ac4 <aw22xxx_cfg_update_wait_from_dyn_name+0x100>
		0000000000002ac4:  R_AARCH64_CALL26	__stack_chk_fail
