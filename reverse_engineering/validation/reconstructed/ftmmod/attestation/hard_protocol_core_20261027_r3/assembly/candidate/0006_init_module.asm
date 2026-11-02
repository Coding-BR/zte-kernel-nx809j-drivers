
/input/ftmmod.ko:	file format elf64-littleaarch64

Disassembly of section .init.text:

0000000000000004 <init_module>:
       4: d503233f     	paciasp
       8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
       c: f9000bf3     	str	x19, [sp, #0x10]
      10: 910003fd     	mov	x29, sp
      14: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000014:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x122
      18: 91000000     	add	x0, x0, #0x0
		0000000000000018:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x122
      1c: 90000001     	adrp	x1, 0x0 <.init.text>
		000000000000001c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xda
      20: 91000021     	add	x1, x1, #0x0
		0000000000000020:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xda
      24: 94000000     	bl	0x24 <init_module+0x20>
		0000000000000024:  R_AARCH64_CALL26	_printk
      28: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000028:  R_AARCH64_ADR_PREL_PG_HI21	.data
      2c: 91000000     	add	x0, x0, #0x0
		000000000000002c:  R_AARCH64_ADD_ABS_LO12_NC	.data
      30: 94000000     	bl	0x30 <init_module+0x2c>
		0000000000000030:  R_AARCH64_CALL26	platform_device_register
      34: 35000200     	cbnz	w0, 0x74 <init_module+0x70>
      38: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000038:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x3f0
      3c: 91000000     	add	x0, x0, #0x0
		000000000000003c:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x3f0
      40: 90000001     	adrp	x1, 0x0 <.init.text>
		0000000000000040:  R_AARCH64_ADR_PREL_PG_HI21	.init.text+0xb4
      44: 91000021     	add	x1, x1, #0x0
		0000000000000044:  R_AARCH64_ADD_ABS_LO12_NC	.init.text+0xb4
      48: 90000002     	adrp	x2, 0x0 <.init.text>
		0000000000000048:  R_AARCH64_ADR_PREL_PG_HI21	__this_module
      4c: 91000042     	add	x2, x2, #0x0
		000000000000004c:  R_AARCH64_ADD_ABS_LO12_NC	__this_module
      50: 94000000     	bl	0x50 <init_module+0x4c>
		0000000000000050:  R_AARCH64_CALL26	__platform_driver_probe
      54: 2a0003f3     	mov	w19, w0
      58: 350001a0     	cbnz	w0, 0x8c <init_module+0x88>
      5c: 90000000     	adrp	x0, 0x0 <.init.text>
		000000000000005c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9d
      60: 91000000     	add	x0, x0, #0x0
		0000000000000060:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9d
      64: 90000001     	adrp	x1, 0x0 <.init.text>
		0000000000000064:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xda
      68: 91000021     	add	x1, x1, #0x0
		0000000000000068:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xda
      6c: 94000000     	bl	0x6c <init_module+0x68>
		000000000000006c:  R_AARCH64_CALL26	_printk
      70: 1400000b     	b	0x9c <init_module+0x98>
      74: 2a0003e1     	mov	w1, w0
      78: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000078:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b8
      7c: 91000000     	add	x0, x0, #0x0
		000000000000007c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b8
      80: 94000000     	bl	0x80 <init_module+0x7c>
		0000000000000080:  R_AARCH64_CALL26	_printk
      84: 12800253     	mov	w19, #-0x13             // =-19
      88: 14000005     	b	0x9c <init_module+0x98>
      8c: 90000000     	adrp	x0, 0x0 <.init.text>
		000000000000008c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x136
      90: 91000000     	add	x0, x0, #0x0
		0000000000000090:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x136
      94: 2a1303e1     	mov	w1, w19
      98: 94000000     	bl	0x98 <init_module+0x94>
		0000000000000098:  R_AARCH64_CALL26	_printk
      9c: 2a1303e0     	mov	w0, w19
      a0: f9400bf3     	ldr	x19, [sp, #0x10]
      a4: a8c27bfd     	ldp	x29, x30, [sp], #0x20
      a8: d50323bf     	autiasp
      ac: d65f03c0     	ret
