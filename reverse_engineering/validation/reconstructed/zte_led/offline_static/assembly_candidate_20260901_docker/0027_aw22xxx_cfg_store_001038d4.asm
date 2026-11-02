
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001a4c <aw22xxx_cfg_store>:
    1a4c: d503233f     	paciasp
    1a50: d100c3ff     	sub	sp, sp, #0x30
    1a54: a9017bfd     	stp	x29, x30, [sp, #0x10]
    1a58: a9024ff4     	stp	x20, x19, [sp, #0x20]
    1a5c: 910043fd     	add	x29, sp, #0x10
    1a60: d5384109     	mrs	x9, SP_EL0
    1a64: aa0203e8     	mov	x8, x2
    1a68: 90000001     	adrp	x1, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001a68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1527
    1a6c: 91000021     	add	x1, x1, #0x0
		0000000000001a6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1527
    1a70: f9438929     	ldr	x9, [x9, #0x710]
    1a74: 910013e2     	add	x2, sp, #0x4
    1a78: aa0303f3     	mov	x19, x3
    1a7c: f90007e9     	str	x9, [sp, #0x8]
    1a80: f9404c14     	ldr	x20, [x0, #0x98]
    1a84: aa0803e0     	mov	x0, x8
    1a88: b90007ff     	str	wzr, [sp, #0x4]
    1a8c: 94000000     	bl	0x1a8c <aw22xxx_cfg_store+0x40>
		0000000000001a8c:  R_AARCH64_CALL26	sscanf
    1a90: 7100041f     	cmp	w0, #0x1
    1a94: 54000141     	b.ne	0x1abc <aw22xxx_cfg_store+0x70>
    1a98: b94007e8     	ldr	w8, [sp, #0x4]
    1a9c: 90000000     	adrp	x0, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001a9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c7
    1aa0: 91000000     	add	x0, x0, #0x0
		0000000000001aa0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c7
    1aa4: 90000001     	adrp	x1, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001aa4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x152a
    1aa8: 91000021     	add	x1, x1, #0x0
		0000000000001aa8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x152a
    1aac: 12000d02     	and	w2, w8, #0xf
    1ab0: 390bd282     	strb	w2, [x20, #0x2f4]
    1ab4: 94000000     	bl	0x1ab4 <aw22xxx_cfg_store+0x68>
		0000000000001ab4:  R_AARCH64_CALL26	_printk
    1ab8: 14000007     	b	0x1ad4 <aw22xxx_cfg_store+0x88>
    1abc: 90000000     	adrp	x0, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001abc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7bc
    1ac0: 91000000     	add	x0, x0, #0x0
		0000000000001ac0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7bc
    1ac4: 90000001     	adrp	x1, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001ac4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x152a
    1ac8: 91000021     	add	x1, x1, #0x0
		0000000000001ac8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x152a
    1acc: 94000000     	bl	0x1acc <aw22xxx_cfg_store+0x80>
		0000000000001acc:  R_AARCH64_CALL26	_printk
    1ad0: 928002b3     	mov	x19, #-0x16             // =-22
    1ad4: d5384108     	mrs	x8, SP_EL0
    1ad8: f9438908     	ldr	x8, [x8, #0x710]
    1adc: f94007e9     	ldr	x9, [sp, #0x8]
    1ae0: eb09011f     	cmp	x8, x9
    1ae4: 540000e1     	b.ne	0x1b00 <aw22xxx_cfg_store+0xb4>
    1ae8: aa1303e0     	mov	x0, x19
    1aec: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1af0: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1af4: 9100c3ff     	add	sp, sp, #0x30
    1af8: d50323bf     	autiasp
    1afc: d65f03c0     	ret
    1b00: 94000000     	bl	0x1b00 <aw22xxx_cfg_store+0xb4>
		0000000000001b00:  R_AARCH64_CALL26	__stack_chk_fail
