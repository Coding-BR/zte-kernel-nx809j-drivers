
/input/nubia_hw_version.ko:	file format elf64-littleaarch64

Disassembly of section .init.text:

0000000000000004 <nubia_hw_version_init>:
       4: d503233f     	paciasp
       8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
       c: f9000bf5     	str	x21, [sp, #0x10]
      10: a9024ff4     	stp	x20, x19, [sp, #0x20]
      14: 910003fd     	mov	x29, sp
      18: 90000014     	adrp	x20, 0x0 <.init.text>
		0000000000000018:  R_AARCH64_ADR_PREL_PG_HI21	debug_value
      1c: b9400288     	ldr	w8, [x20]
		000000000000001c:  R_AARCH64_LDST32_ABS_LO12_NC	debug_value
      20: 7100051f     	cmp	w8, #0x1
      24: 54000380     	b.eq	0x94 <nubia_hw_version_init+0x90>
      28: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000028:  R_AARCH64_ADR_PREL_PG_HI21	.data
      2c: 91000000     	add	x0, x0, #0x0
		000000000000002c:  R_AARCH64_ADD_ABS_LO12_NC	.data
      30: 90000001     	adrp	x1, 0x0 <.init.text>
		0000000000000030:  R_AARCH64_ADR_PREL_PG_HI21	__this_module
      34: 91000021     	add	x1, x1, #0x0
		0000000000000034:  R_AARCH64_ADD_ABS_LO12_NC	__this_module
      38: 94000000     	bl	0x38 <nubia_hw_version_init+0x34>
		0000000000000038:  R_AARCH64_CALL26	__platform_driver_register
      3c: 35000340     	cbnz	w0, 0xa4 <nubia_hw_version_init+0xa0>
      40: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000040:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8cf
      44: 91000000     	add	x0, x0, #0x0
		0000000000000044:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8cf
      48: aa1f03e1     	mov	x1, xzr
      4c: 94000000     	bl	0x4c <nubia_hw_version_init+0x48>
		000000000000004c:  R_AARCH64_CALL26	kobject_create_and_add
      50: 90000015     	adrp	x21, 0x0 <.init.text>
		0000000000000050:  R_AARCH64_ADR_PREL_PG_HI21	hw_version_kobj
      54: f90002a0     	str	x0, [x21]
		0000000000000054:  R_AARCH64_LDST64_ABS_LO12_NC	hw_version_kobj
      58: b4000360     	cbz	x0, 0xc4 <nubia_hw_version_init+0xc0>
      5c: 90000001     	adrp	x1, 0x0 <.init.text>
		000000000000005c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x3a0
      60: 91000021     	add	x1, x1, #0x0
		0000000000000060:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x3a0
      64: 94000000     	bl	0x64 <nubia_hw_version_init+0x60>
		0000000000000064:  R_AARCH64_CALL26	sysfs_create_group
      68: 350003c0     	cbnz	w0, 0xe0 <nubia_hw_version_init+0xdc>
      6c: b9400288     	ldr	w8, [x20]
		000000000000006c:  R_AARCH64_LDST32_ABS_LO12_NC	debug_value
      70: 7100051f     	cmp	w8, #0x1
      74: 54000500     	b.eq	0x114 <nubia_hw_version_init+0x110>
      78: 2a1f03f3     	mov	w19, wzr
      7c: 2a1303e0     	mov	w0, w19
      80: a9424ff4     	ldp	x20, x19, [sp, #0x20]
      84: f9400bf5     	ldr	x21, [sp, #0x10]
      88: a8c37bfd     	ldp	x29, x30, [sp], #0x30
      8c: d50323bf     	autiasp
      90: d65f03c0     	ret
      94: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000094:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x826
      98: 91000000     	add	x0, x0, #0x0
		0000000000000098:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x826
      9c: 94000000     	bl	0x9c <nubia_hw_version_init+0x98>
		000000000000009c:  R_AARCH64_CALL26	_printk
      a0: 17ffffe2     	b	0x28 <nubia_hw_version_init+0x24>
      a4: 2a0003f3     	mov	w19, w0
      a8: 90000000     	adrp	x0, 0x0 <.init.text>
		00000000000000a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6de
      ac: 91000000     	add	x0, x0, #0x0
		00000000000000ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6de
      b0: 90000001     	adrp	x1, 0x0 <.init.text>
		00000000000000b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x627
      b4: 91000021     	add	x1, x1, #0x0
		00000000000000b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x627
      b8: 2a1303e2     	mov	w2, w19
      bc: 94000000     	bl	0xbc <nubia_hw_version_init+0xb8>
		00000000000000bc:  R_AARCH64_CALL26	_printk
      c0: 17ffffef     	b	0x7c <nubia_hw_version_init+0x78>
      c4: 90000000     	adrp	x0, 0x0 <.init.text>
		00000000000000c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x689
      c8: 91000000     	add	x0, x0, #0x0
		00000000000000c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x689
      cc: 90000001     	adrp	x1, 0x0 <.init.text>
		00000000000000cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x627
      d0: 91000021     	add	x1, x1, #0x0
		00000000000000d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x627
      d4: 94000000     	bl	0xd4 <nubia_hw_version_init+0xd0>
		00000000000000d4:  R_AARCH64_CALL26	_printk
      d8: 12800173     	mov	w19, #-0xc              // =-12
      dc: 1400000a     	b	0x104 <nubia_hw_version_init+0x100>
      e0: 2a0003f3     	mov	w19, w0
      e4: 90000000     	adrp	x0, 0x0 <.init.text>
		00000000000000e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x876
      e8: 91000000     	add	x0, x0, #0x0
		00000000000000e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x876
      ec: 90000001     	adrp	x1, 0x0 <.init.text>
		00000000000000ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x627
      f0: 91000021     	add	x1, x1, #0x0
		00000000000000f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x627
      f4: 94000000     	bl	0xf4 <nubia_hw_version_init+0xf0>
		00000000000000f4:  R_AARCH64_CALL26	_printk
      f8: f94002a0     	ldr	x0, [x21]
		00000000000000f8:  R_AARCH64_LDST64_ABS_LO12_NC	hw_version_kobj
      fc: 94000000     	bl	0xfc <nubia_hw_version_init+0xf8>
		00000000000000fc:  R_AARCH64_CALL26	kobject_put
     100: f90002bf     	str	xzr, [x21]
		0000000000000100:  R_AARCH64_LDST64_ABS_LO12_NC	hw_version_kobj
     104: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000104:  R_AARCH64_ADR_PREL_PG_HI21	.data
     108: 91000000     	add	x0, x0, #0x0
		0000000000000108:  R_AARCH64_ADD_ABS_LO12_NC	.data
     10c: 94000000     	bl	0x10c <nubia_hw_version_init+0x108>
		000000000000010c:  R_AARCH64_CALL26	platform_driver_unregister
     110: 17ffffdb     	b	0x7c <nubia_hw_version_init+0x78>
     114: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000114:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x77d
     118: 91000000     	add	x0, x0, #0x0
		0000000000000118:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x77d
     11c: 94000000     	bl	0x11c <nubia_hw_version_init+0x118>
		000000000000011c:  R_AARCH64_CALL26	_printk
     120: 17ffffd6     	b	0x78 <nubia_hw_version_init+0x74>
