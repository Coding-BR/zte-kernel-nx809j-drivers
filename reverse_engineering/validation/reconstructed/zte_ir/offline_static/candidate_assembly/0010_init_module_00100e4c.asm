
/input/zte_ir.ko:	file format elf64-littleaarch64

Disassembly of section .init.text:

0000000000000004 <init_module>:
       4: d503233f     	paciasp
       8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
       c: f9000bf5     	str	x21, [sp, #0x10]
      10: a9024ff4     	stp	x20, x19, [sp, #0x20]
      14: 910003fd     	mov	x29, sp
      18: 90000003     	adrp	x3, 0x0 <.init.text>
		0000000000000018:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x96
      1c: 91000063     	add	x3, x3, #0x0
		000000000000001c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x96
      20: 90000004     	adrp	x4, 0x0 <.init.text>
		0000000000000020:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x190
      24: 91000084     	add	x4, x4, #0x0
		0000000000000024:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x190
      28: 2a1f03e0     	mov	w0, wzr
      2c: 2a1f03e1     	mov	w1, wzr
      30: 52800022     	mov	w2, #0x1                // =1
      34: 94000000     	bl	0x34 <init_module+0x30>
		0000000000000034:  R_AARCH64_CALL26	__register_chrdev
      38: 2a0003f3     	mov	w19, w0
      3c: 37f80360     	tbnz	w0, #0x1f, 0xa8 <init_module+0xa4>
      40: 90000014     	adrp	x20, 0x0 <.init.text>
		0000000000000040:  R_AARCH64_ADR_PREL_PG_HI21	.bss
      44: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000044:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x55
      48: 91000000     	add	x0, x0, #0x0
		0000000000000048:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x55
      4c: b9000293     	str	w19, [x20]
		000000000000004c:  R_AARCH64_LDST32_ABS_LO12_NC	.bss
      50: 94000000     	bl	0x50 <init_module+0x4c>
		0000000000000050:  R_AARCH64_CALL26	class_create
      54: 90000015     	adrp	x21, 0x0 <.init.text>
		0000000000000054:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
      58: b13ffc1f     	cmn	x0, #0xfff
      5c: f90002a0     	str	x0, [x21]
		000000000000005c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8
      60: 54000063     	b.lo	0x6c <init_module+0x68>
      64: aa0003f3     	mov	x19, x0
      68: 1400000a     	b	0x90 <init_module+0x8c>
      6c: 90000000     	adrp	x0, 0x0 <.init.text>
		000000000000006c:  R_AARCH64_ADR_PREL_PG_HI21	__this_module
      70: 91000000     	add	x0, x0, #0x0
		0000000000000070:  R_AARCH64_ADD_ABS_LO12_NC	__this_module
      74: 90000001     	adrp	x1, 0x0 <.init.text>
		0000000000000074:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x40
      78: 91000021     	add	x1, x1, #0x0
		0000000000000078:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x40
      7c: 94000000     	bl	0x7c <init_module+0x78>
		000000000000007c:  R_AARCH64_CALL26	__spi_register_driver
      80: 2a0003f3     	mov	w19, w0
      84: 340001e0     	cbz	w0, 0xc0 <init_module+0xbc>
      88: f94002a0     	ldr	x0, [x21]
		0000000000000088:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8
      8c: 94000000     	bl	0x8c <init_module+0x88>
		000000000000008c:  R_AARCH64_CALL26	class_destroy
      90: b9400280     	ldr	w0, [x20]
		0000000000000090:  R_AARCH64_LDST32_ABS_LO12_NC	.bss
      94: 90000003     	adrp	x3, 0x0 <.init.text>
		0000000000000094:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x96
      98: 91000063     	add	x3, x3, #0x0
		0000000000000098:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x96
      9c: 2a1f03e1     	mov	w1, wzr
      a0: 52802002     	mov	w2, #0x100              // =256
      a4: 94000000     	bl	0xa4 <init_module+0xa0>
		00000000000000a4:  R_AARCH64_CALL26	__unregister_chrdev
      a8: 2a1303e0     	mov	w0, w19
      ac: a9424ff4     	ldp	x20, x19, [sp, #0x20]
      b0: f9400bf5     	ldr	x21, [sp, #0x10]
      b4: a8c37bfd     	ldp	x29, x30, [sp], #0x30
      b8: d50323bf     	autiasp
      bc: d65f03c0     	ret
      c0: b9400281     	ldr	w1, [x20]
		00000000000000c0:  R_AARCH64_LDST32_ABS_LO12_NC	.bss
      c4: 90000000     	adrp	x0, 0x0 <.init.text>
		00000000000000c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x62
      c8: 91000000     	add	x0, x0, #0x0
		00000000000000c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x62
      cc: 94000000     	bl	0xcc <init_module+0xc8>
		00000000000000cc:  R_AARCH64_CALL26	_printk
      d0: 17fffff6     	b	0xa8 <init_module+0xa4>
