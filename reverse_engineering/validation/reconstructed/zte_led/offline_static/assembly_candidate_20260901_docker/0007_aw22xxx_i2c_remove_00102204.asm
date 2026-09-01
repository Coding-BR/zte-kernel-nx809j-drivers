
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000734 <aw22xxx_i2c_remove>:
     734: d503233f     	paciasp
     738: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     73c: a9014ff4     	stp	x20, x19, [sp, #0x10]
     740: 910003fd     	mov	x29, sp
     744: aa0003f3     	mov	x19, x0
     748: f9405c14     	ldr	x20, [x0, #0xb8]
     74c: 90000000     	adrp	x0, 0x0 <aw22xxx_led_imax_cfg>
		000000000000074c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1518
     750: 91000000     	add	x0, x0, #0x0
		0000000000000750:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1518
     754: 90000001     	adrp	x1, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000754:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x55b
     758: 91000021     	add	x1, x1, #0x0
		0000000000000758:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x55b
     75c: 94000000     	bl	0x75c <aw22xxx_i2c_remove+0x28>
		000000000000075c:  R_AARCH64_CALL26	_printk
     760: 90000000     	adrp	x0, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000760:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14c6
     764: 91000000     	add	x0, x0, #0x0
		0000000000000764:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14c6
     768: aa1f03e1     	mov	x1, xzr
     76c: 94000000     	bl	0x76c <aw22xxx_i2c_remove+0x38>
		000000000000076c:  R_AARCH64_CALL26	remove_proc_entry
     770: 90000000     	adrp	x0, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000770:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x102d
     774: 91000000     	add	x0, x0, #0x0
		0000000000000774:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x102d
     778: 94000000     	bl	0x778 <aw22xxx_i2c_remove+0x44>
		0000000000000778:  R_AARCH64_CALL26	_printk
     77c: f9403280     	ldr	x0, [x20, #0x60]
     780: 90000001     	adrp	x1, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000780:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x1d0
     784: 91000021     	add	x1, x1, #0x0
		0000000000000784:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x1d0
     788: 94000000     	bl	0x788 <aw22xxx_i2c_remove+0x54>
		0000000000000788:  R_AARCH64_CALL26	sysfs_remove_group
     78c: 91004280     	add	x0, x20, #0x10
     790: 94000000     	bl	0x790 <aw22xxx_i2c_remove+0x5c>
		0000000000000790:  R_AARCH64_CALL26	led_classdev_unregister
     794: b942e680     	ldr	w0, [x20, #0x2e4]
     798: 94000000     	bl	0x798 <aw22xxx_i2c_remove+0x64>
		0000000000000798:  R_AARCH64_CALL26	gpio_to_desc
     79c: 94000000     	bl	0x79c <aw22xxx_i2c_remove+0x68>
		000000000000079c:  R_AARCH64_CALL26	gpiod_to_irq
     7a0: 2a0003e1     	mov	w1, w0
     7a4: 91008260     	add	x0, x19, #0x20
     7a8: aa1403e2     	mov	x2, x20
     7ac: 94000000     	bl	0x7ac <aw22xxx_i2c_remove+0x78>
		00000000000007ac:  R_AARCH64_CALL26	devm_free_irq
     7b0: 91008260     	add	x0, x19, #0x20
     7b4: aa1403e1     	mov	x1, x20
     7b8: 94000000     	bl	0x7b8 <aw22xxx_i2c_remove+0x84>
		00000000000007b8:  R_AARCH64_CALL26	devm_kfree
     7bc: 90000008     	adrp	x8, 0x0 <aw22xxx_led_imax_cfg>
		00000000000007bc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
     7c0: 52823289     	mov	w9, #0x1194             // =4500
     7c4: b9400108     	ldr	w8, [x8]
		00000000000007c4:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x8
     7c8: 7100011f     	cmp	w8, #0x0
     7cc: 52800168     	mov	w8, #0xb                // =11
     7d0: 1a880128     	csel	w8, w9, w8, eq
     7d4: 90000009     	adrp	x9, 0x0 <aw22xxx_led_imax_cfg>
		00000000000007d4:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x114
     7d8: b9000128     	str	w8, [x9]
		00000000000007d8:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x114
     7dc: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     7e0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     7e4: d50323bf     	autiasp
     7e8: d65f03c0     	ret
