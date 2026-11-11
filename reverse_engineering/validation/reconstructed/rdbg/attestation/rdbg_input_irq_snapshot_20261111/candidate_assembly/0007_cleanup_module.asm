
/input/rdbg.ko:	file format elf64-littleaarch64

Disassembly of section .exit.text:

0000000000000004 <cleanup_module>:
       4: d503233f     	paciasp
       8: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
       c: a9015ff8     	stp	x24, x23, [sp, #0x10]
      10: a90257f6     	stp	x22, x21, [sp, #0x20]
      14: a9034ff4     	stp	x20, x19, [sp, #0x30]
      18: 910003fd     	mov	x29, sp
      1c: 90000000     	adrp	x0, 0x0 <.exit.text>
		000000000000001c:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_driver
      20: 91000000     	add	x0, x0, #0x0
		0000000000000020:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_driver
      24: 94000000     	bl	0x24 <cleanup_module+0x20>
		0000000000000024:  R_AARCH64_CALL26	platform_driver_unregister
      28: 90000008     	adrp	x8, 0x0 <.exit.text>
		0000000000000028:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x94
      2c: 91000108     	add	x8, x8, #0x0
		000000000000002c:  R_AARCH64_ADD_ABS_LO12_NC	g_rdbg_instance+0x94
      30: f8404109     	ldur	x9, [x8, #0x4]
      34: b9400108     	ldr	w8, [x8]
      38: b4000329     	cbz	x9, 0x9c <cleanup_module+0x98>
      3c: 7100051f     	cmp	w8, #0x1
      40: 540005ab     	b.lt	0xf4 <cleanup_module+0xf0>
      44: aa1f03f4     	mov	x20, xzr
      48: 52800a15     	mov	w21, #0x50              // =80
      4c: 90000016     	adrp	x22, 0x0 <.exit.text>
		000000000000004c:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x98
      50: 90000013     	adrp	x19, 0x0 <.exit.text>
		0000000000000050:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_smem_state_lock
      54: 91000273     	add	x19, x19, #0x0
		0000000000000054:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_smem_state_lock
      58: 90000017     	adrp	x23, 0x0 <.exit.text>
		0000000000000058:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x94
      5c: f94002d8     	ldr	x24, [x22]
		000000000000005c:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
      60: aa1303e0     	mov	x0, x19
      64: 94000000     	bl	0x64 <cleanup_module+0x60>
		0000000000000064:  R_AARCH64_CALL26	mutex_lock
      68: f8756b00     	ldr	x0, [x24, x21]
      6c: b40000a0     	cbz	x0, 0x80 <cleanup_module+0x7c>
      70: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
      74: 54000068     	b.hi	0x80 <cleanup_module+0x7c>
      78: f8356b1f     	str	xzr, [x24, x21]
      7c: 94000000     	bl	0x7c <cleanup_module+0x78>
		000000000000007c:  R_AARCH64_CALL26	qcom_smem_state_put
      80: aa1303e0     	mov	x0, x19
      84: 94000000     	bl	0x84 <cleanup_module+0x80>
		0000000000000084:  R_AARCH64_CALL26	mutex_unlock
      88: b98002e8     	ldrsw	x8, [x23]
		0000000000000088:  R_AARCH64_LDST32_ABS_LO12_NC	g_rdbg_instance+0x94
      8c: 91000694     	add	x20, x20, #0x1
      90: 910722b5     	add	x21, x21, #0x1c8
      94: eb08029f     	cmp	x20, x8
      98: 54fffe2b     	b.lt	0x5c <cleanup_module+0x58>
      9c: 7100051f     	cmp	w8, #0x1
      a0: 540002ab     	b.lt	0xf4 <cleanup_module+0xf0>
      a4: 90000009     	adrp	x9, 0x0 <.exit.text>
		00000000000000a4:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x98
      a8: aa1f03f3     	mov	x19, xzr
      ac: 52800b14     	mov	w20, #0x58              // =88
      b0: f9400129     	ldr	x9, [x9]
		00000000000000b0:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
      b4: 90000015     	adrp	x21, 0x0 <.exit.text>
		00000000000000b4:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x88
      b8: 910002b5     	add	x21, x21, #0x0
		00000000000000b8:  R_AARCH64_ADD_ABS_LO12_NC	g_rdbg_instance+0x88
      bc: 3874692a     	ldrb	w10, [x9, x20]
      c0: 7100055f     	cmp	w10, #0x1
      c4: 54000101     	b.ne	0xe4 <cleanup_module+0xe0>
      c8: b9400aa8     	ldr	w8, [x21, #0x8]
      cc: f94002a0     	ldr	x0, [x21]
      d0: 120c2d08     	and	w8, w8, #0xfff00000
      d4: 2a130101     	orr	w1, w8, w19
      d8: 94000000     	bl	0xd8 <cleanup_module+0xd4>
		00000000000000d8:  R_AARCH64_CALL26	device_destroy
      dc: f9400aa9     	ldr	x9, [x21, #0x10]
      e0: b9400ea8     	ldr	w8, [x21, #0xc]
      e4: 91000673     	add	x19, x19, #0x1
      e8: 91072294     	add	x20, x20, #0x1c8
      ec: eb28c27f     	cmp	x19, w8, sxtw
      f0: 54fffe6b     	b.lt	0xbc <cleanup_module+0xb8>
      f4: 90000013     	adrp	x19, 0x0 <.exit.text>
		00000000000000f4:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance
      f8: 91000273     	add	x19, x19, #0x0
		00000000000000f8:  R_AARCH64_ADD_ABS_LO12_NC	g_rdbg_instance
      fc: f9404660     	ldr	x0, [x19, #0x88]
     100: 94000000     	bl	0x100 <cleanup_module+0xfc>
		0000000000000100:  R_AARCH64_CALL26	class_destroy
     104: aa1303e0     	mov	x0, x19
     108: 94000000     	bl	0x108 <cleanup_module+0x104>
		0000000000000108:  R_AARCH64_CALL26	cdev_del
     10c: 29520660     	ldp	w0, w1, [x19, #0x90]
     110: 94000000     	bl	0x110 <cleanup_module+0x10c>
		0000000000000110:  R_AARCH64_CALL26	unregister_chrdev_region
     114: f9404e60     	ldr	x0, [x19, #0x98]
     118: 94000000     	bl	0x118 <cleanup_module+0x114>
		0000000000000118:  R_AARCH64_CALL26	kfree
     11c: f9004e7f     	str	xzr, [x19, #0x98]
     120: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     124: a94257f6     	ldp	x22, x21, [sp, #0x20]
     128: a9415ff8     	ldp	x24, x23, [sp, #0x10]
     12c: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     130: d50323bf     	autiasp
     134: d65f03c0     	ret
