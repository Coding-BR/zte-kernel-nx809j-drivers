
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .exit.text:

0000000000000004 <cleanup_module>:
       4: d503233f     	paciasp
       8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
       c: 910003fd     	mov	x29, sp
      10: 94000000     	bl	0x10 <cleanup_module+0xc>
		0000000000000010:  R_AARCH64_CALL26	syna_dev_module_exit
      14: aa1f03e0     	mov	x0, xzr
      18: aa1f03e1     	mov	x1, xzr
      1c: aa1f03e2     	mov	x2, xzr
      20: 94000000     	bl	0x20 <cleanup_module+0x1c>
		0000000000000020:  R_AARCH64_CALL26	zte_touch_deinit
      24: 90000000     	adrp	x0, 0x0 <.exit.text>
		0000000000000024:  R_AARCH64_ADR_PREL_PG_HI21	zte_touch_device_driver
      28: 91000000     	add	x0, x0, #0x0
		0000000000000028:  R_AARCH64_ADD_ABS_LO12_NC	zte_touch_device_driver
      2c: 94000000     	bl	0x2c <cleanup_module+0x28>
		000000000000002c:  R_AARCH64_CALL26	platform_driver_unregister
      30: a8c17bfd     	ldp	x29, x30, [sp], #0x10
      34: d50323bf     	autiasp
      38: d65f03c0     	ret
