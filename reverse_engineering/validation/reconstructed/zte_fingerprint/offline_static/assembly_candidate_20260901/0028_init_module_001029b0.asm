
/input/zte_fingerprint_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .init.text:

0000000000000004 <init_module>:
       4: d503233f     	paciasp
       8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
       c: f9000bf5     	str	x21, [sp, #0x10]
      10: a9024ff4     	stp	x20, x19, [sp, #0x20]
      14: 910003fd     	mov	x29, sp
      18: 90000003     	adrp	x3, 0x0 <.init.text>
		0000000000000018:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xeb8
      1c: 91000063     	add	x3, x3, #0x0
		000000000000001c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xeb8
      20: 90000004     	adrp	x4, 0x0 <.init.text>
		0000000000000020:  R_AARCH64_ADR_PREL_PG_HI21	.rodata
      24: 91000084     	add	x4, x4, #0x0
		0000000000000024:  R_AARCH64_ADD_ABS_LO12_NC	.rodata
      28: 2a1f03e0     	mov	w0, wzr
      2c: 2a1f03e1     	mov	w1, wzr
      30: 52802002     	mov	w2, #0x100              // =256
      34: 94000000     	bl	0x34 <init_module+0x30>
		0000000000000034:  R_AARCH64_CALL26	__register_chrdev
      38: 90000014     	adrp	x20, 0x0 <.init.text>
		0000000000000038:  R_AARCH64_ADR_PREL_PG_HI21	.bss
      3c: b9000280     	str	w0, [x20]
		000000000000003c:  R_AARCH64_LDST32_ABS_LO12_NC	.bss
      40: 36f80100     	tbz	w0, #0x1f, 0x60 <init_module+0x5c>
      44: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000044:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcfe
      48: 91000000     	add	x0, x0, #0x0
		0000000000000048:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcfe
      4c: 90000001     	adrp	x1, 0x0 <.init.text>
		000000000000004c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbb0
      50: 91000021     	add	x1, x1, #0x0
		0000000000000050:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbb0
      54: 94000000     	bl	0x54 <init_module+0x50>
		0000000000000054:  R_AARCH64_CALL26	_printk
      58: b9400293     	ldr	w19, [x20]
		0000000000000058:  R_AARCH64_LDST32_ABS_LO12_NC	.bss
      5c: 14000031     	b	0x120 <init_module+0x11c>
      60: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000060:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4a8
      64: 91000000     	add	x0, x0, #0x0
		0000000000000064:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4a8
      68: 94000000     	bl	0x68 <init_module+0x64>
		0000000000000068:  R_AARCH64_CALL26	class_create
      6c: 90000015     	adrp	x21, 0x0 <.init.text>
		000000000000006c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
      70: b13ffc1f     	cmn	x0, #0xfff
      74: f90002a0     	str	x0, [x21]
		0000000000000074:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8
      78: 540001c3     	b.lo	0xb0 <init_module+0xac>
      7c: 90000000     	adrp	x0, 0x0 <.init.text>
		000000000000007c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x963
      80: 91000000     	add	x0, x0, #0x0
		0000000000000080:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x963
      84: 90000001     	adrp	x1, 0x0 <.init.text>
		0000000000000084:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbb0
      88: 91000021     	add	x1, x1, #0x0
		0000000000000088:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbb0
      8c: 94000000     	bl	0x8c <init_module+0x88>
		000000000000008c:  R_AARCH64_CALL26	_printk
      90: b9400280     	ldr	w0, [x20]
		0000000000000090:  R_AARCH64_LDST32_ABS_LO12_NC	.bss
      94: b94002b3     	ldr	w19, [x21]
		0000000000000094:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x8
      98: 90000003     	adrp	x3, 0x0 <.init.text>
		0000000000000098:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xeb8
      9c: 91000063     	add	x3, x3, #0x0
		000000000000009c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xeb8
      a0: 2a1f03e1     	mov	w1, wzr
      a4: 52802002     	mov	w2, #0x100              // =256
      a8: 94000000     	bl	0xa8 <init_module+0xa4>
		00000000000000a8:  R_AARCH64_CALL26	__unregister_chrdev
      ac: 1400001d     	b	0x120 <init_module+0x11c>
      b0: 90000000     	adrp	x0, 0x0 <.init.text>
		00000000000000b0:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x70
      b4: 91000000     	add	x0, x0, #0x0
		00000000000000b4:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x70
      b8: 90000001     	adrp	x1, 0x0 <.init.text>
		00000000000000b8:  R_AARCH64_ADR_PREL_PG_HI21	__this_module
      bc: 91000021     	add	x1, x1, #0x0
		00000000000000bc:  R_AARCH64_ADD_ABS_LO12_NC	__this_module
      c0: 94000000     	bl	0xc0 <init_module+0xbc>
		00000000000000c0:  R_AARCH64_CALL26	__platform_driver_register
      c4: 2a0003f3     	mov	w19, w0
      c8: 340001c0     	cbz	w0, 0x100 <init_module+0xfc>
      cc: 90000000     	adrp	x0, 0x0 <.init.text>
		00000000000000cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb6a
      d0: 91000000     	add	x0, x0, #0x0
		00000000000000d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb6a
      d4: 90000001     	adrp	x1, 0x0 <.init.text>
		00000000000000d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbb0
      d8: 91000021     	add	x1, x1, #0x0
		00000000000000d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbb0
      dc: 94000000     	bl	0xdc <init_module+0xd8>
		00000000000000dc:  R_AARCH64_CALL26	_printk
      e0: f94002a0     	ldr	x0, [x21]
		00000000000000e0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8
      e4: 94000000     	bl	0xe4 <init_module+0xe0>
		00000000000000e4:  R_AARCH64_CALL26	class_destroy
      e8: b9400280     	ldr	w0, [x20]
		00000000000000e8:  R_AARCH64_LDST32_ABS_LO12_NC	.bss
      ec: 90000003     	adrp	x3, 0x0 <.init.text>
		00000000000000ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xeb8
      f0: 91000063     	add	x3, x3, #0x0
		00000000000000f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xeb8
      f4: 2a1f03e1     	mov	w1, wzr
      f8: 52802002     	mov	w2, #0x100              // =256
      fc: 94000000     	bl	0xfc <init_module+0xf8>
		00000000000000fc:  R_AARCH64_CALL26	__unregister_chrdev
     100: 94000000     	bl	0x100 <init_module+0xfc>
		0000000000000100:  R_AARCH64_CALL26	.text+0xd0
     104: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000104:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd86
     108: 91000000     	add	x0, x0, #0x0
		0000000000000108:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd86
     10c: 90000001     	adrp	x1, 0x0 <.init.text>
		000000000000010c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbb0
     110: 91000021     	add	x1, x1, #0x0
		0000000000000110:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbb0
     114: 2a1303e2     	mov	w2, w19
     118: 94000000     	bl	0x118 <init_module+0x114>
		0000000000000118:  R_AARCH64_CALL26	_printk
     11c: 2a1f03f3     	mov	w19, wzr
     120: 2a1303e0     	mov	w0, w19
     124: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     128: f9400bf5     	ldr	x21, [sp, #0x10]
     12c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     130: d50323bf     	autiasp
     134: d65f03c0     	ret
