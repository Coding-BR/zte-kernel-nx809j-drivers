
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .init.text:

0000000000000004 <init_module>:
       4: d503233f     	paciasp
       8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
       c: f9000bf3     	str	x19, [sp, #0x10]
      10: 910003fd     	mov	x29, sp
      14: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000014:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1974
      18: 91000000     	add	x0, x0, #0x0
		0000000000000018:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1974
      1c: 94000000     	bl	0x1c <init_module+0x18>
		000000000000001c:  R_AARCH64_CALL26	_printk
      20: 52803e80     	mov	w0, #0x1f4              // =500
      24: 94000000     	bl	0x24 <init_module+0x20>
		0000000000000024:  R_AARCH64_CALL26	msleep
      28: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000028:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc09
      2c: 91000000     	add	x0, x0, #0x0
		000000000000002c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc09
      30: 94000000     	bl	0x30 <init_module+0x2c>
		0000000000000030:  R_AARCH64_CALL26	_printk
      34: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000034:  R_AARCH64_ADR_PREL_PG_HI21	__this_module
      38: 91000000     	add	x0, x0, #0x0
		0000000000000038:  R_AARCH64_ADD_ABS_LO12_NC	__this_module
      3c: 90000001     	adrp	x1, 0x0 <.init.text>
		000000000000003c:  R_AARCH64_ADR_PREL_PG_HI21	.data
      40: 91000021     	add	x1, x1, #0x0
		0000000000000040:  R_AARCH64_ADD_ABS_LO12_NC	.data
      44: 94000000     	bl	0x44 <init_module+0x40>
		0000000000000044:  R_AARCH64_CALL26	i2c_register_driver
      48: 2a0003f3     	mov	w19, w0
      4c: 350000c0     	cbnz	w0, 0x64 <init_module+0x60>
      50: 2a1303e0     	mov	w0, w19
      54: f9400bf3     	ldr	x19, [sp, #0x10]
      58: a8c27bfd     	ldp	x29, x30, [sp], #0x20
      5c: d50323bf     	autiasp
      60: d65f03c0     	ret
      64: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000064:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3bc
      68: 91000000     	add	x0, x0, #0x0
		0000000000000068:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3bc
      6c: 2a1303e1     	mov	w1, w19
      70: 94000000     	bl	0x70 <init_module+0x6c>
		0000000000000070:  R_AARCH64_CALL26	_printk
      74: 17fffff7     	b	0x50 <init_module+0x4c>
