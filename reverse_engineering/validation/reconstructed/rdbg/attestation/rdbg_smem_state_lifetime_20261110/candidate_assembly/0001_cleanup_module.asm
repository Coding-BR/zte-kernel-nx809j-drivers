
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
      24: 90000013     	adrp	x19, 0x0 <.exit.text>
		0000000000000024:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x94
      28: 91000273     	add	x19, x19, #0x0
		0000000000000028:  R_AARCH64_ADD_ABS_LO12_NC	g_rdbg_instance+0x94
      2c: f8404268     	ldur	x8, [x19, #0x4]
      30: b9400269     	ldr	w9, [x19]
      34: b4000228     	cbz	x8, 0x78 <cleanup_module+0x74>
      38: 7100053f     	cmp	w9, #0x1
      3c: 5400046b     	b.lt	0xc8 <cleanup_module+0xc4>
      40: aa1f03f4     	mov	x20, xzr
      44: 52800a15     	mov	w21, #0x50              // =80
      48: f8756900     	ldr	x0, [x8, x21]
      4c: b40000e0     	cbz	x0, 0x68 <cleanup_module+0x64>
      50: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
      54: 540000a8     	b.hi	0x68 <cleanup_module+0x64>
      58: f835691f     	str	xzr, [x8, x21]
      5c: 94000000     	bl	0x5c <cleanup_module+0x58>
		000000000000005c:  R_AARCH64_CALL26	qcom_smem_state_put
      60: f8404268     	ldur	x8, [x19, #0x4]
      64: b9400269     	ldr	w9, [x19]
      68: 91000694     	add	x20, x20, #0x1
      6c: 910722b5     	add	x21, x21, #0x1c8
      70: eb29c29f     	cmp	x20, w9, sxtw
      74: 54fffeab     	b.lt	0x48 <cleanup_module+0x44>
      78: 7100053f     	cmp	w9, #0x1
      7c: 5400026b     	b.lt	0xc8 <cleanup_module+0xc4>
      80: aa1f03f3     	mov	x19, xzr
      84: 52800b14     	mov	w20, #0x58              // =88
      88: 90000015     	adrp	x21, 0x0 <.exit.text>
		0000000000000088:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x88
      8c: 910002b5     	add	x21, x21, #0x0
		000000000000008c:  R_AARCH64_ADD_ABS_LO12_NC	g_rdbg_instance+0x88
      90: 3874690a     	ldrb	w10, [x8, x20]
      94: 7100055f     	cmp	w10, #0x1
      98: 54000101     	b.ne	0xb8 <cleanup_module+0xb4>
      9c: b9400aa8     	ldr	w8, [x21, #0x8]
      a0: f94002a0     	ldr	x0, [x21]
      a4: 120c2d08     	and	w8, w8, #0xfff00000
      a8: 2a130101     	orr	w1, w8, w19
      ac: 94000000     	bl	0xac <cleanup_module+0xa8>
		00000000000000ac:  R_AARCH64_CALL26	device_destroy
      b0: f9400aa8     	ldr	x8, [x21, #0x10]
      b4: b9400ea9     	ldr	w9, [x21, #0xc]
      b8: 91000673     	add	x19, x19, #0x1
      bc: 91072294     	add	x20, x20, #0x1c8
      c0: eb29c27f     	cmp	x19, w9, sxtw
      c4: 54fffe6b     	b.lt	0x90 <cleanup_module+0x8c>
      c8: 90000013     	adrp	x19, 0x0 <.exit.text>
		00000000000000c8:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance
      cc: 91000273     	add	x19, x19, #0x0
		00000000000000cc:  R_AARCH64_ADD_ABS_LO12_NC	g_rdbg_instance
      d0: f9404660     	ldr	x0, [x19, #0x88]
      d4: 94000000     	bl	0xd4 <cleanup_module+0xd0>
		00000000000000d4:  R_AARCH64_CALL26	class_destroy
      d8: aa1303e0     	mov	x0, x19
      dc: 94000000     	bl	0xdc <cleanup_module+0xd8>
		00000000000000dc:  R_AARCH64_CALL26	cdev_del
      e0: 29520660     	ldp	w0, w1, [x19, #0x90]
      e4: 94000000     	bl	0xe4 <cleanup_module+0xe0>
		00000000000000e4:  R_AARCH64_CALL26	unregister_chrdev_region
      e8: f9404e60     	ldr	x0, [x19, #0x98]
      ec: 94000000     	bl	0xec <cleanup_module+0xe8>
		00000000000000ec:  R_AARCH64_CALL26	kfree
      f0: f9004e7f     	str	xzr, [x19, #0x98]
      f4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
      f8: f9400bf5     	ldr	x21, [sp, #0x10]
      fc: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     100: d50323bf     	autiasp
     104: d65f03c0     	ret
