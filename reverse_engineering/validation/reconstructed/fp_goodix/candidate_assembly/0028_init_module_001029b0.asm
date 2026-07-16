
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .init.text:

0000000000000004 <init_module>:
       4: d503233f     	paciasp
       8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
       c: f9000bf5     	str	x21, [sp, #0x10]
      10: a9024ff4     	stp	x20, x19, [sp, #0x20]
      14: 910003fd     	mov	x29, sp
      18: 90000014     	adrp	x20, 0x0 <.init.text>
		0000000000000018:  R_AARCH64_ADR_PREL_PG_HI21	.bss
      1c: 90000003     	adrp	x3, 0x0 <.init.text>
		000000000000001c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1176
      20: 91000063     	add	x3, x3, #0x0
		0000000000000020:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1176
      24: b9400280     	ldr	w0, [x20]
		0000000000000024:  R_AARCH64_LDST32_ABS_LO12_NC	.bss
      28: 90000004     	adrp	x4, 0x0 <.init.text>
		0000000000000028:  R_AARCH64_ADR_PREL_PG_HI21	.rodata
      2c: 91000084     	add	x4, x4, #0x0
		000000000000002c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata
      30: 2a1f03e1     	mov	w1, wzr
      34: 52802002     	mov	w2, #0x100              // =256
      38: 94000000     	bl	0x38 <init_module+0x34>
		0000000000000038:  R_AARCH64_CALL26	__register_chrdev
      3c: 2a0003f3     	mov	w19, w0
      40: 36f800a0     	tbz	w0, #0x1f, 0x54 <init_module+0x50>
      44: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000044:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12c5
      48: 91000000     	add	x0, x0, #0x0
		0000000000000048:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12c5
      4c: 94000000     	bl	0x4c <init_module+0x48>
		000000000000004c:  R_AARCH64_CALL26	_printk
      50: 1400002c     	b	0x100 <init_module+0xfc>
      54: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000054:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x80f
      58: 91000000     	add	x0, x0, #0x0
		0000000000000058:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x80f
      5c: b9000293     	str	w19, [x20]
		000000000000005c:  R_AARCH64_LDST32_ABS_LO12_NC	.bss
      60: 94000000     	bl	0x60 <init_module+0x5c>
		0000000000000060:  R_AARCH64_CALL26	class_create
      64: 90000015     	adrp	x21, 0x0 <.init.text>
		0000000000000064:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
      68: b13ffc1f     	cmn	x0, #0xfff
      6c: f90002a0     	str	x0, [x21]
		000000000000006c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8
      70: 54000183     	b.lo	0xa0 <init_module+0x9c>
      74: 90000008     	adrp	x8, 0x0 <.init.text>
		0000000000000074:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x98
      78: b9400280     	ldr	w0, [x20]
		0000000000000078:  R_AARCH64_LDST32_ABS_LO12_NC	.bss
      7c: 2a1f03e1     	mov	w1, wzr
      80: f9400103     	ldr	x3, [x8]
		0000000000000080:  R_AARCH64_LDST64_ABS_LO12_NC	.data+0x98
      84: 52802002     	mov	w2, #0x100              // =256
      88: 94000000     	bl	0x88 <init_module+0x84>
		0000000000000088:  R_AARCH64_CALL26	__unregister_chrdev
      8c: 90000000     	adrp	x0, 0x0 <.init.text>
		000000000000008c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x558
      90: 91000000     	add	x0, x0, #0x0
		0000000000000090:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x558
      94: 94000000     	bl	0x94 <init_module+0x90>
		0000000000000094:  R_AARCH64_CALL26	_printk
      98: b94002b3     	ldr	w19, [x21]
		0000000000000098:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x8
      9c: 14000019     	b	0x100 <init_module+0xfc>
      a0: 90000000     	adrp	x0, 0x0 <.init.text>
		00000000000000a0:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x70
      a4: 91000000     	add	x0, x0, #0x0
		00000000000000a4:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x70
      a8: 90000001     	adrp	x1, 0x0 <.init.text>
		00000000000000a8:  R_AARCH64_ADR_PREL_PG_HI21	__this_module
      ac: 91000021     	add	x1, x1, #0x0
		00000000000000ac:  R_AARCH64_ADD_ABS_LO12_NC	__this_module
      b0: 94000000     	bl	0xb0 <init_module+0xac>
		00000000000000b0:  R_AARCH64_CALL26	__platform_driver_register
      b4: 2a0003f3     	mov	w19, w0
      b8: 36f80180     	tbz	w0, #0x1f, 0xe8 <init_module+0xe4>
      bc: f94002a0     	ldr	x0, [x21]
		00000000000000bc:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8
      c0: 94000000     	bl	0xc0 <init_module+0xbc>
		00000000000000c0:  R_AARCH64_CALL26	class_destroy
      c4: 90000008     	adrp	x8, 0x0 <.init.text>
		00000000000000c4:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x98
      c8: b9400280     	ldr	w0, [x20]
		00000000000000c8:  R_AARCH64_LDST32_ABS_LO12_NC	.bss
      cc: 2a1f03e1     	mov	w1, wzr
      d0: f9400103     	ldr	x3, [x8]
		00000000000000d0:  R_AARCH64_LDST64_ABS_LO12_NC	.data+0x98
      d4: 52802002     	mov	w2, #0x100              // =256
      d8: 94000000     	bl	0xd8 <init_module+0xd4>
		00000000000000d8:  R_AARCH64_CALL26	__unregister_chrdev
      dc: 90000000     	adrp	x0, 0x0 <.init.text>
		00000000000000dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x819
      e0: 91000000     	add	x0, x0, #0x0
		00000000000000e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x819
      e4: 94000000     	bl	0xe4 <init_module+0xe0>
		00000000000000e4:  R_AARCH64_CALL26	_printk
      e8: 94000000     	bl	0xe8 <init_module+0xe4>
		00000000000000e8:  R_AARCH64_CALL26	netlink_init
      ec: 90000000     	adrp	x0, 0x0 <.init.text>
		00000000000000ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9ab
      f0: 91000000     	add	x0, x0, #0x0
		00000000000000f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9ab
      f4: 2a1303e1     	mov	w1, w19
      f8: 94000000     	bl	0xf8 <init_module+0xf4>
		00000000000000f8:  R_AARCH64_CALL26	_printk
      fc: 2a1f03f3     	mov	w19, wzr
     100: 2a1303e0     	mov	w0, w19
     104: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     108: f9400bf5     	ldr	x21, [sp, #0x10]
     10c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     110: d50323bf     	autiasp
     114: d65f03c0     	ret
