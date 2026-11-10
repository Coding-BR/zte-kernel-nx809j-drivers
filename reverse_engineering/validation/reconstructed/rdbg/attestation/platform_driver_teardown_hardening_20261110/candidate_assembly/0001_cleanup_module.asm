
/input/rdbg.ko:	file format elf64-littleaarch64

Disassembly of section .exit.text:

0000000000000004 <cleanup_module>:
       4: d503233f     	paciasp
       8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
       c: f9000bf5     	str	x21, [sp, #0x10]
      10: a9024ff4     	stp	x20, x19, [sp, #0x20]
      14: 910003fd     	mov	x29, sp
      18: 90000000     	adrp	x0, 0x0 <.exit.text>
		0000000000000018:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_driver
      1c: 91000000     	add	x0, x0, #0x0
		000000000000001c:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_driver
      20: 94000000     	bl	0x20 <cleanup_module+0x1c>
		0000000000000020:  R_AARCH64_CALL26	platform_driver_unregister
      24: 90000008     	adrp	x8, 0x0 <.exit.text>
		0000000000000024:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x94
      28: b9400108     	ldr	w8, [x8]
		0000000000000028:  R_AARCH64_LDST32_ABS_LO12_NC	g_rdbg_instance+0x94
      2c: 7100051f     	cmp	w8, #0x1
      30: 540002ab     	b.lt	0x84 <cleanup_module+0x80>
      34: 90000009     	adrp	x9, 0x0 <.exit.text>
		0000000000000034:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x98
      38: aa1f03f3     	mov	x19, xzr
      3c: 52800b14     	mov	w20, #0x58              // =88
      40: f9400129     	ldr	x9, [x9]
		0000000000000040:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
      44: 90000015     	adrp	x21, 0x0 <.exit.text>
		0000000000000044:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x88
      48: 910002b5     	add	x21, x21, #0x0
		0000000000000048:  R_AARCH64_ADD_ABS_LO12_NC	g_rdbg_instance+0x88
      4c: 3874692a     	ldrb	w10, [x9, x20]
      50: 7100055f     	cmp	w10, #0x1
      54: 54000101     	b.ne	0x74 <cleanup_module+0x70>
      58: b9400aa8     	ldr	w8, [x21, #0x8]
      5c: f94002a0     	ldr	x0, [x21]
      60: 120c2d08     	and	w8, w8, #0xfff00000
      64: 2a130101     	orr	w1, w8, w19
      68: 94000000     	bl	0x68 <cleanup_module+0x64>
		0000000000000068:  R_AARCH64_CALL26	device_destroy
      6c: f9400aa9     	ldr	x9, [x21, #0x10]
      70: b9400ea8     	ldr	w8, [x21, #0xc]
      74: 91000673     	add	x19, x19, #0x1
      78: 91072294     	add	x20, x20, #0x1c8
      7c: eb28c27f     	cmp	x19, w8, sxtw
      80: 54fffe6b     	b.lt	0x4c <cleanup_module+0x48>
      84: 90000013     	adrp	x19, 0x0 <.exit.text>
		0000000000000084:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance
      88: 91000273     	add	x19, x19, #0x0
		0000000000000088:  R_AARCH64_ADD_ABS_LO12_NC	g_rdbg_instance
      8c: f9404660     	ldr	x0, [x19, #0x88]
      90: 94000000     	bl	0x90 <cleanup_module+0x8c>
		0000000000000090:  R_AARCH64_CALL26	class_destroy
      94: aa1303e0     	mov	x0, x19
      98: 94000000     	bl	0x98 <cleanup_module+0x94>
		0000000000000098:  R_AARCH64_CALL26	cdev_del
      9c: 29520660     	ldp	w0, w1, [x19, #0x90]
      a0: 94000000     	bl	0xa0 <cleanup_module+0x9c>
		00000000000000a0:  R_AARCH64_CALL26	unregister_chrdev_region
      a4: f9404e60     	ldr	x0, [x19, #0x98]
      a8: 94000000     	bl	0xa8 <cleanup_module+0xa4>
		00000000000000a8:  R_AARCH64_CALL26	kfree
      ac: f9004e7f     	str	xzr, [x19, #0x98]
      b0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
      b4: f9400bf5     	ldr	x21, [sp, #0x10]
      b8: a8c37bfd     	ldp	x29, x30, [sp], #0x30
      bc: d50323bf     	autiasp
      c0: d65f03c0     	ret
