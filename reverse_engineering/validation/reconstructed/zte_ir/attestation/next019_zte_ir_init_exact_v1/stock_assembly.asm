
/input/zte_ir.ko:	file format elf64-littleaarch64

Disassembly of section .init.text:

0000000000000004 <init_module>:
       4: d503233f     	paciasp
       8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
       c: f9000bf5     	str	x21, [sp, #0x10]
      10: a9024ff4     	stp	x20, x19, [sp, #0x20]
      14: 910003fd     	mov	x29, sp
      18: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000018:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11e
      1c: 91000000     	add	x0, x0, #0x0
		000000000000001c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11e
      20: 94000000     	bl	0x20 <init_module+0x1c>
		0000000000000020:  R_AARCH64_CALL26	_printk
      24: 90000003     	adrp	x3, 0x0 <.init.text>
		0000000000000024:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd5
      28: 91000063     	add	x3, x3, #0x0
		0000000000000028:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd5
      2c: 90000004     	adrp	x4, 0x0 <.init.text>
		000000000000002c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x190
      30: 91000084     	add	x4, x4, #0x0
		0000000000000030:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x190
      34: 2a1f03e0     	mov	w0, wzr
      38: 2a1f03e1     	mov	w1, wzr
      3c: 52800022     	mov	w2, #0x1                // =1
      40: 94000000     	bl	0x40 <init_module+0x3c>
		0000000000000040:  R_AARCH64_CALL26	__register_chrdev
      44: 90000014     	adrp	x20, 0x0 <.init.text>
		0000000000000044:  R_AARCH64_ADR_PREL_PG_HI21	.bss
      48: 2a0003e1     	mov	w1, w0
      4c: b9000280     	str	w0, [x20]
		000000000000004c:  R_AARCH64_LDST32_ABS_LO12_NC	.bss
      50: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000050:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14c
      54: 91000000     	add	x0, x0, #0x0
		0000000000000054:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14c
      58: 94000000     	bl	0x58 <init_module+0x54>
		0000000000000058:  R_AARCH64_CALL26	_printk
      5c: 90000000     	adrp	x0, 0x0 <.init.text>
		000000000000005c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc8
      60: 91000000     	add	x0, x0, #0x0
		0000000000000060:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc8
      64: 94000000     	bl	0x64 <init_module+0x60>
		0000000000000064:  R_AARCH64_CALL26	class_create
      68: 90000015     	adrp	x21, 0x0 <.init.text>
		0000000000000068:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
      6c: b13ffc1f     	cmn	x0, #0xfff
      70: f90002a0     	str	x0, [x21]
		0000000000000070:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8
      74: 540001c3     	b.lo	0xac <init_module+0xa8>
      78: 90000008     	adrp	x8, 0x0 <.init.text>
		0000000000000078:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x60
      7c: b9400280     	ldr	w0, [x20]
		000000000000007c:  R_AARCH64_LDST32_ABS_LO12_NC	.bss
      80: 2a1f03e1     	mov	w1, wzr
      84: f9400103     	ldr	x3, [x8]
		0000000000000084:  R_AARCH64_LDST64_ABS_LO12_NC	.data+0x60
      88: 52802002     	mov	w2, #0x100              // =256
      8c: 94000000     	bl	0x8c <init_module+0x88>
		000000000000008c:  R_AARCH64_CALL26	__unregister_chrdev
      90: b94002b3     	ldr	w19, [x21]
		0000000000000090:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x8
      94: 2a1303e0     	mov	w0, w19
      98: a9424ff4     	ldp	x20, x19, [sp, #0x20]
      9c: f9400bf5     	ldr	x21, [sp, #0x10]
      a0: a8c37bfd     	ldp	x29, x30, [sp], #0x30
      a4: d50323bf     	autiasp
      a8: d65f03c0     	ret
      ac: 90000000     	adrp	x0, 0x0 <.init.text>
		00000000000000ac:  R_AARCH64_ADR_PREL_PG_HI21	__this_module
      b0: 91000000     	add	x0, x0, #0x0
		00000000000000b0:  R_AARCH64_ADD_ABS_LO12_NC	__this_module
      b4: 90000001     	adrp	x1, 0x0 <.init.text>
		00000000000000b4:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x40
      b8: 91000021     	add	x1, x1, #0x0
		00000000000000b8:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x40
      bc: 94000000     	bl	0xbc <init_module+0xb8>
		00000000000000bc:  R_AARCH64_CALL26	__spi_register_driver
      c0: 2a0003f3     	mov	w19, w0
      c4: 36f80120     	tbz	w0, #0x1f, 0xe8 <init_module+0xe4>
      c8: f94002a0     	ldr	x0, [x21]
		00000000000000c8:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8
      cc: 94000000     	bl	0xcc <init_module+0xc8>
		00000000000000cc:  R_AARCH64_CALL26	class_destroy
      d0: 90000008     	adrp	x8, 0x0 <.init.text>
		00000000000000d0:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x60
      d4: b9400280     	ldr	w0, [x20]
		00000000000000d4:  R_AARCH64_LDST32_ABS_LO12_NC	.bss
      d8: 2a1f03e1     	mov	w1, wzr
      dc: f9400103     	ldr	x3, [x8]
		00000000000000dc:  R_AARCH64_LDST64_ABS_LO12_NC	.data+0x60
      e0: 52802002     	mov	w2, #0x100              // =256
      e4: 94000000     	bl	0xe4 <init_module+0xe0>
		00000000000000e4:  R_AARCH64_CALL26	__unregister_chrdev
      e8: 90000000     	adrp	x0, 0x0 <.init.text>
		00000000000000e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x170
      ec: 91000000     	add	x0, x0, #0x0
		00000000000000ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x170
      f0: 2a1303e1     	mov	w1, w19
      f4: 94000000     	bl	0xf4 <init_module+0xf0>
		00000000000000f4:  R_AARCH64_CALL26	_printk
      f8: 17ffffe7     	b	0x94 <init_module+0x90>
