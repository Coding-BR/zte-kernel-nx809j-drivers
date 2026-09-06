
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .init.text:

0000000000000004 <init_module>:
       4: d503233f     	paciasp
       8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
       c: f9000bf3     	str	x19, [sp, #0x10]
      10: 910003fd     	mov	x29, sp
      14: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000014:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x57d
      18: 91000000     	add	x0, x0, #0x0
		0000000000000018:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x57d
      1c: 90000001     	adrp	x1, 0x0 <.init.text>
		000000000000001c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10d1
      20: 91000021     	add	x1, x1, #0x0
		0000000000000020:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10d1
      24: 94000000     	bl	0x24 <init_module+0x20>
		0000000000000024:  R_AARCH64_CALL26	_printk
      28: 52803e80     	mov	w0, #0x1f4              // =500
      2c: 94000000     	bl	0x2c <init_module+0x28>
		000000000000002c:  R_AARCH64_CALL26	msleep
      30: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000030:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x96
      34: 91000000     	add	x0, x0, #0x0
		0000000000000034:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x96
      38: 94000000     	bl	0x38 <init_module+0x34>
		0000000000000038:  R_AARCH64_CALL26	_printk
      3c: 90000000     	adrp	x0, 0x0 <.init.text>
		000000000000003c:  R_AARCH64_ADR_PREL_PG_HI21	__this_module
      40: 91000000     	add	x0, x0, #0x0
		0000000000000040:  R_AARCH64_ADD_ABS_LO12_NC	__this_module
      44: 90000001     	adrp	x1, 0x0 <.init.text>
		0000000000000044:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x260
      48: 91000021     	add	x1, x1, #0x0
		0000000000000048:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x260
      4c: 94000000     	bl	0x4c <init_module+0x48>
		000000000000004c:  R_AARCH64_CALL26	i2c_register_driver
      50: 2a0003f3     	mov	w19, w0
      54: 350000c0     	cbnz	w0, 0x6c <init_module+0x68>
      58: 2a1303e0     	mov	w0, w19
      5c: f9400bf3     	ldr	x19, [sp, #0x10]
      60: a8c27bfd     	ldp	x29, x30, [sp], #0x20
      64: d50323bf     	autiasp
      68: d65f03c0     	ret
      6c: 90000000     	adrp	x0, 0x0 <.init.text>
		000000000000006c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14a9
      70: 91000000     	add	x0, x0, #0x0
		0000000000000070:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14a9
      74: 94000000     	bl	0x74 <init_module+0x70>
		0000000000000074:  R_AARCH64_CALL26	_printk
      78: 17fffff8     	b	0x58 <init_module+0x54>
