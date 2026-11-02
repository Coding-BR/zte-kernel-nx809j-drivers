
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001964 <aw22xxx_i2c_remove>:
    1964: d503233f     	paciasp
    1968: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    196c: a9014ff4     	stp	x20, x19, [sp, #0x10]
    1970: 910003fd     	mov	x29, sp
    1974: aa0003f3     	mov	x19, x0
    1978: f9405c14     	ldr	x20, [x0, #0xb8]
    197c: 90000000     	adrp	x0, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		000000000000197c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x8dd
    1980: 91000000     	add	x0, x0, #0x0
		0000000000001980:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x8dd
    1984: 90000001     	adrp	x1, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001984:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x660
    1988: 91000021     	add	x1, x1, #0x0
		0000000000001988:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x660
    198c: 94000000     	bl	0x198c <aw22xxx_i2c_remove+0x28>
		000000000000198c:  R_AARCH64_CALL26	_printk
    1990: 90000000     	adrp	x0, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001990:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x140f
    1994: 91000000     	add	x0, x0, #0x0
		0000000000001994:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x140f
    1998: aa1f03e1     	mov	x1, xzr
    199c: 94000000     	bl	0x199c <aw22xxx_i2c_remove+0x38>
		000000000000199c:  R_AARCH64_CALL26	remove_proc_entry
    19a0: 90000000     	adrp	x0, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		00000000000019a0:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x9a0
    19a4: 91000000     	add	x0, x0, #0x0
		00000000000019a4:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x9a0
    19a8: 90000001     	adrp	x1, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		00000000000019a8:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xb95
    19ac: 91000021     	add	x1, x1, #0x0
		00000000000019ac:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xb95
    19b0: 52813942     	mov	w2, #0x9ca              // =2506
    19b4: 94000000     	bl	0x19b4 <aw22xxx_i2c_remove+0x50>
		00000000000019b4:  R_AARCH64_CALL26	_printk
    19b8: f9403280     	ldr	x0, [x20, #0x60]
    19bc: 90000001     	adrp	x1, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		00000000000019bc:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_data_base+0x398
    19c0: 91000021     	add	x1, x1, #0x0
		00000000000019c0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_data_base+0x398
    19c4: 94000000     	bl	0x19c4 <aw22xxx_i2c_remove+0x60>
		00000000000019c4:  R_AARCH64_CALL26	sysfs_remove_group
    19c8: 91004280     	add	x0, x20, #0x10
    19cc: 94000000     	bl	0x19cc <aw22xxx_i2c_remove+0x68>
		00000000000019cc:  R_AARCH64_CALL26	led_classdev_unregister
    19d0: b942e680     	ldr	w0, [x20, #0x2e4]
    19d4: 94000000     	bl	0x19d4 <aw22xxx_i2c_remove+0x70>
		00000000000019d4:  R_AARCH64_CALL26	gpio_to_desc
    19d8: 94000000     	bl	0x19d8 <aw22xxx_i2c_remove+0x74>
		00000000000019d8:  R_AARCH64_CALL26	gpiod_to_irq
    19dc: 2a0003e1     	mov	w1, w0
    19e0: 91008260     	add	x0, x19, #0x20
    19e4: aa1403e2     	mov	x2, x20
    19e8: 94000000     	bl	0x19e8 <aw22xxx_i2c_remove+0x84>
		00000000000019e8:  R_AARCH64_CALL26	devm_free_irq
    19ec: 91008260     	add	x0, x19, #0x20
    19f0: aa1403e1     	mov	x1, x20
    19f4: 94000000     	bl	0x19f4 <aw22xxx_i2c_remove+0x90>
		00000000000019f4:  R_AARCH64_CALL26	devm_kfree
    19f8: 90000008     	adrp	x8, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		00000000000019f8:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_bss_base+0x61d4
    19fc: 52823289     	mov	w9, #0x1194             // =4500
    1a00: b9400108     	ldr	w8, [x8]
		0000000000001a00:  R_AARCH64_LDST32_ABS_LO12_NC	aw22xxx_exact_bss_base+0x61d4
    1a04: 7100011f     	cmp	w8, #0x0
    1a08: 52800168     	mov	w8, #0xb                // =11
    1a0c: 1a880128     	csel	w8, w9, w8, eq
    1a10: 90000009     	adrp	x9, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001a10:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_bss_base+0x6268
    1a14: b9000128     	str	w8, [x9]
		0000000000001a14:  R_AARCH64_LDST32_ABS_LO12_NC	aw22xxx_exact_bss_base+0x6268
    1a18: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    1a1c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1a20: d50323bf     	autiasp
    1a24: d65f03c0     	ret
