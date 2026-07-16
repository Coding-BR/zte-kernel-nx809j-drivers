
/input/nubia_hw_version.ko:	file format elf64-littleaarch64

Disassembly of section .init.text:

0000000000000004 <nubia_hw_version_init>:
       4: d503233f     	paciasp
       8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
       c: a9014ff4     	stp	x20, x19, [sp, #0x10]
      10: 910003fd     	mov	x29, sp
      14: 90000014     	adrp	x20, 0x0 <.init.text>
		0000000000000014:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
      18: b9400288     	ldr	w8, [x20]
		0000000000000018:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x8
      1c: 7100051f     	cmp	w8, #0x1
      20: 54000340     	b.eq	0x88 <nubia_hw_version_init+0x84>
      24: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000024:  R_AARCH64_ADR_PREL_PG_HI21	.data
      28: 91000000     	add	x0, x0, #0x0
		0000000000000028:  R_AARCH64_ADD_ABS_LO12_NC	.data
      2c: 90000001     	adrp	x1, 0x0 <.init.text>
		000000000000002c:  R_AARCH64_ADR_PREL_PG_HI21	__this_module
      30: 91000021     	add	x1, x1, #0x0
		0000000000000030:  R_AARCH64_ADD_ABS_LO12_NC	__this_module
      34: 94000000     	bl	0x34 <nubia_hw_version_init+0x30>
		0000000000000034:  R_AARCH64_CALL26	__platform_driver_register
      38: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000038:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x59c
      3c: 91000000     	add	x0, x0, #0x0
		000000000000003c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x59c
      40: aa1f03e1     	mov	x1, xzr
      44: 94000000     	bl	0x44 <nubia_hw_version_init+0x40>
		0000000000000044:  R_AARCH64_CALL26	kobject_create_and_add
      48: 90000008     	adrp	x8, 0x0 <.init.text>
		0000000000000048:  R_AARCH64_ADR_PREL_PG_HI21	hw_version_kobj
      4c: f9000100     	str	x0, [x8]
		000000000000004c:  R_AARCH64_LDST64_ABS_LO12_NC	hw_version_kobj
      50: b4000240     	cbz	x0, 0x98 <nubia_hw_version_init+0x94>
      54: 90000001     	adrp	x1, 0x0 <.init.text>
		0000000000000054:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0xf0
      58: 91000021     	add	x1, x1, #0x0
		0000000000000058:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0xf0
      5c: 94000000     	bl	0x5c <nubia_hw_version_init+0x58>
		000000000000005c:  R_AARCH64_CALL26	sysfs_create_group
      60: 2a0003f3     	mov	w19, w0
      64: 35000280     	cbnz	w0, 0xb4 <nubia_hw_version_init+0xb0>
      68: b9400288     	ldr	w8, [x20]
		0000000000000068:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x8
      6c: 7100051f     	cmp	w8, #0x1
      70: 540002e0     	b.eq	0xcc <nubia_hw_version_init+0xc8>
      74: 2a1303e0     	mov	w0, w19
      78: a9414ff4     	ldp	x20, x19, [sp, #0x10]
      7c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
      80: d50323bf     	autiasp
      84: d65f03c0     	ret
      88: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000088:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x402
      8c: 91000000     	add	x0, x0, #0x0
		000000000000008c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x402
      90: 94000000     	bl	0x90 <nubia_hw_version_init+0x8c>
		0000000000000090:  R_AARCH64_CALL26	_printk
      94: 17ffffe4     	b	0x24 <nubia_hw_version_init+0x20>
      98: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000098:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbe
      9c: 91000000     	add	x0, x0, #0x0
		000000000000009c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbe
      a0: 90000001     	adrp	x1, 0x0 <.init.text>
		00000000000000a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x22
      a4: 91000021     	add	x1, x1, #0x0
		00000000000000a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x22
      a8: 94000000     	bl	0xa8 <nubia_hw_version_init+0xa4>
		00000000000000a8:  R_AARCH64_CALL26	_printk
      ac: 12800173     	mov	w19, #-0xc              // =-12
      b0: 17fffff1     	b	0x74 <nubia_hw_version_init+0x70>
      b4: 90000000     	adrp	x0, 0x0 <.init.text>
		00000000000000b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x47f
      b8: 91000000     	add	x0, x0, #0x0
		00000000000000b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x47f
      bc: 90000001     	adrp	x1, 0x0 <.init.text>
		00000000000000bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x22
      c0: 91000021     	add	x1, x1, #0x0
		00000000000000c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x22
      c4: 94000000     	bl	0xc4 <nubia_hw_version_init+0xc0>
		00000000000000c4:  R_AARCH64_CALL26	_printk
      c8: 17ffffe8     	b	0x68 <nubia_hw_version_init+0x64>
      cc: 90000000     	adrp	x0, 0x0 <.init.text>
		00000000000000cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a9
      d0: 91000000     	add	x0, x0, #0x0
		00000000000000d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a9
      d4: 94000000     	bl	0xd4 <nubia_hw_version_init+0xd0>
		00000000000000d4:  R_AARCH64_CALL26	_printk
      d8: 17ffffe7     	b	0x74 <nubia_hw_version_init+0x70>
