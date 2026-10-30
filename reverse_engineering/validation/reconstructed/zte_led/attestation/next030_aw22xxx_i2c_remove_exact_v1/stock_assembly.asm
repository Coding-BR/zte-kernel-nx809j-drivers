
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000d24 <aw22xxx_i2c_remove>:
     d24: d503233f     	paciasp
     d28: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     d2c: a9014ff4     	stp	x20, x19, [sp, #0x10]
     d30: 910003fd     	mov	x29, sp
     d34: aa0003f3     	mov	x19, x0
     d38: f9405c14     	ldr	x20, [x0, #0xb8]
     d3c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8dd
     d40: 91000000     	add	x0, x0, #0x0
		0000000000000d40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8dd
     d44: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x660
     d48: 91000021     	add	x1, x1, #0x0
		0000000000000d48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x660
     d4c: 94000000     	bl	0xd4c <aw22xxx_i2c_remove+0x28>
		0000000000000d4c:  R_AARCH64_CALL26	_printk
     d50: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x140f
     d54: 91000000     	add	x0, x0, #0x0
		0000000000000d54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x140f
     d58: aa1f03e1     	mov	x1, xzr
     d5c: 94000000     	bl	0xd5c <aw22xxx_i2c_remove+0x38>
		0000000000000d5c:  R_AARCH64_CALL26	remove_proc_entry
     d60: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9a0
     d64: 91000000     	add	x0, x0, #0x0
		0000000000000d64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9a0
     d68: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb95
     d6c: 91000021     	add	x1, x1, #0x0
		0000000000000d6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb95
     d70: 52813942     	mov	w2, #0x9ca              // =2506
     d74: 94000000     	bl	0xd74 <aw22xxx_i2c_remove+0x50>
		0000000000000d74:  R_AARCH64_CALL26	_printk
     d78: f9403280     	ldr	x0, [x20, #0x60]
     d7c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d7c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x398
     d80: 91000021     	add	x1, x1, #0x0
		0000000000000d80:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x398
     d84: 94000000     	bl	0xd84 <aw22xxx_i2c_remove+0x60>
		0000000000000d84:  R_AARCH64_CALL26	sysfs_remove_group
     d88: 91004280     	add	x0, x20, #0x10
     d8c: 94000000     	bl	0xd8c <aw22xxx_i2c_remove+0x68>
		0000000000000d8c:  R_AARCH64_CALL26	led_classdev_unregister
     d90: b942e680     	ldr	w0, [x20, #0x2e4]
     d94: 94000000     	bl	0xd94 <aw22xxx_i2c_remove+0x70>
		0000000000000d94:  R_AARCH64_CALL26	gpio_to_desc
     d98: 94000000     	bl	0xd98 <aw22xxx_i2c_remove+0x74>
		0000000000000d98:  R_AARCH64_CALL26	gpiod_to_irq
     d9c: 2a0003e1     	mov	w1, w0
     da0: 91008260     	add	x0, x19, #0x20
     da4: aa1403e2     	mov	x2, x20
     da8: 94000000     	bl	0xda8 <aw22xxx_i2c_remove+0x84>
		0000000000000da8:  R_AARCH64_CALL26	devm_free_irq
     dac: 91008260     	add	x0, x19, #0x20
     db0: aa1403e1     	mov	x1, x20
     db4: 94000000     	bl	0xdb4 <aw22xxx_i2c_remove+0x90>
		0000000000000db4:  R_AARCH64_CALL26	devm_kfree
     db8: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000db8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x61d4
     dbc: 52823289     	mov	w9, #0x1194             // =4500
     dc0: b9400108     	ldr	w8, [x8]
		0000000000000dc0:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x61d4
     dc4: 7100011f     	cmp	w8, #0x0
     dc8: 52800168     	mov	w8, #0xb                // =11
     dcc: 1a880128     	csel	w8, w9, w8, eq
     dd0: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000dd0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x6268
     dd4: b9000128     	str	w8, [x9]
		0000000000000dd4:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x6268
     dd8: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     ddc: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     de0: d50323bf     	autiasp
     de4: d65f03c0     	ret
