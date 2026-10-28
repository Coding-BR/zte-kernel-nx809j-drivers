
/input/rdbg.ko:	file format elf64-littleaarch64

Disassembly of section .exit.text:

0000000000000004 <cleanup_module>:
       4: d503233f     	paciasp
       8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
       c: f9000bf5     	str	x21, [sp, #0x10]
      10: a9024ff4     	stp	x20, x19, [sp, #0x20]
      14: 910003fd     	mov	x29, sp
      18: 90000008     	adrp	x8, 0x0 <.exit.text>
		0000000000000018:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x94
      1c: b9400108     	ldr	w8, [x8]
		000000000000001c:  R_AARCH64_LDST32_ABS_LO12_NC	g_rdbg_instance+0x94
      20: 7100051f     	cmp	w8, #0x1
      24: 540002ab     	b.lt	0x78 <cleanup_module+0x74>
      28: 90000009     	adrp	x9, 0x0 <.exit.text>
		0000000000000028:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x98
      2c: aa1f03f3     	mov	x19, xzr
      30: 52800b14     	mov	w20, #0x58              // =88
      34: f9400129     	ldr	x9, [x9]
		0000000000000034:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
      38: 90000015     	adrp	x21, 0x0 <.exit.text>
		0000000000000038:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x88
      3c: 910002b5     	add	x21, x21, #0x0
		000000000000003c:  R_AARCH64_ADD_ABS_LO12_NC	g_rdbg_instance+0x88
      40: 3874692a     	ldrb	w10, [x9, x20]
      44: 7100055f     	cmp	w10, #0x1
      48: 54000101     	b.ne	0x68 <cleanup_module+0x64>
      4c: b9400aa8     	ldr	w8, [x21, #0x8]
      50: f94002a0     	ldr	x0, [x21]
      54: 120c2d08     	and	w8, w8, #0xfff00000
      58: 2a130101     	orr	w1, w8, w19
      5c: 94000000     	bl	0x5c <cleanup_module+0x58>
		000000000000005c:  R_AARCH64_CALL26	device_destroy
      60: f9400aa9     	ldr	x9, [x21, #0x10]
      64: b9400ea8     	ldr	w8, [x21, #0xc]
      68: 91000673     	add	x19, x19, #0x1
      6c: 91072294     	add	x20, x20, #0x1c8
      70: eb28c27f     	cmp	x19, w8, sxtw
      74: 54fffe6b     	b.lt	0x40 <cleanup_module+0x3c>
      78: 90000013     	adrp	x19, 0x0 <.exit.text>
		0000000000000078:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance
      7c: 91000273     	add	x19, x19, #0x0
		000000000000007c:  R_AARCH64_ADD_ABS_LO12_NC	g_rdbg_instance
      80: f9404660     	ldr	x0, [x19, #0x88]
      84: 94000000     	bl	0x84 <cleanup_module+0x80>
		0000000000000084:  R_AARCH64_CALL26	class_destroy
      88: aa1303e0     	mov	x0, x19
      8c: 94000000     	bl	0x8c <cleanup_module+0x88>
		000000000000008c:  R_AARCH64_CALL26	cdev_del
      90: b9409260     	ldr	w0, [x19, #0x90]
      94: 52800021     	mov	w1, #0x1                // =1
      98: 94000000     	bl	0x98 <cleanup_module+0x94>
		0000000000000098:  R_AARCH64_CALL26	unregister_chrdev_region
      9c: f9404e60     	ldr	x0, [x19, #0x98]
      a0: 94000000     	bl	0xa0 <cleanup_module+0x9c>
		00000000000000a0:  R_AARCH64_CALL26	kfree
      a4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
      a8: f9400bf5     	ldr	x21, [sp, #0x10]
      ac: a8c37bfd     	ldp	x29, x30, [sp], #0x30
      b0: d50323bf     	autiasp
      b4: d65f03c0     	ret
