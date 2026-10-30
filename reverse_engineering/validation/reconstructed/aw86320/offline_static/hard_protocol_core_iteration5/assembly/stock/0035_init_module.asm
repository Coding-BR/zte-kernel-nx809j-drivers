
/input/aw86320.ko:	file format elf64-littleaarch64

Disassembly of section .init.text:

0000000000000004 <init_module>:
       4: d503233f     	paciasp
       8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
       c: f9000bf3     	str	x19, [sp, #0x10]
      10: 910003fd     	mov	x29, sp
      14: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000014:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xba2
      18: 91000000     	add	x0, x0, #0x0
		0000000000000018:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xba2
      1c: 90000001     	adrp	x1, 0x0 <.init.text>
		000000000000001c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
      20: 91000021     	add	x1, x1, #0x0
		0000000000000020:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
      24: 90000002     	adrp	x2, 0x0 <.init.text>
		0000000000000024:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4f1
      28: 91000042     	add	x2, x2, #0x0
		0000000000000028:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4f1
      2c: 90000003     	adrp	x3, 0x0 <.init.text>
		000000000000002c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa49
      30: 91000063     	add	x3, x3, #0x0
		0000000000000030:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa49
      34: 94000000     	bl	0x34 <init_module+0x30>
		0000000000000034:  R_AARCH64_CALL26	_printk
      38: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000038:  R_AARCH64_ADR_PREL_PG_HI21	__this_module
      3c: 91000000     	add	x0, x0, #0x0
		000000000000003c:  R_AARCH64_ADD_ABS_LO12_NC	__this_module
      40: 90000001     	adrp	x1, 0x0 <.init.text>
		0000000000000040:  R_AARCH64_ADR_PREL_PG_HI21	.data
      44: 91000021     	add	x1, x1, #0x0
		0000000000000044:  R_AARCH64_ADD_ABS_LO12_NC	.data
      48: 94000000     	bl	0x48 <init_module+0x44>
		0000000000000048:  R_AARCH64_CALL26	i2c_register_driver
      4c: 2a0003f3     	mov	w19, w0
      50: 350000c0     	cbnz	w0, 0x68 <init_module+0x64>
      54: 2a1303e0     	mov	w0, w19
      58: f9400bf3     	ldr	x19, [sp, #0x10]
      5c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
      60: d50323bf     	autiasp
      64: d65f03c0     	ret
      68: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000068:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdaa
      6c: 91000000     	add	x0, x0, #0x0
		000000000000006c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdaa
      70: 90000001     	adrp	x1, 0x0 <.init.text>
		0000000000000070:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
      74: 91000021     	add	x1, x1, #0x0
		0000000000000074:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
      78: 90000002     	adrp	x2, 0x0 <.init.text>
		0000000000000078:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4f1
      7c: 91000042     	add	x2, x2, #0x0
		000000000000007c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4f1
      80: 94000000     	bl	0x80 <init_module+0x7c>
		0000000000000080:  R_AARCH64_CALL26	_printk
      84: 17fffff4     	b	0x54 <init_module+0x50>
