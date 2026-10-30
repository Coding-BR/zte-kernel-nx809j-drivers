
/work/output/aarch64/cleanup_module.o:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000000 <cleanup_module>:
       0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
       4: 910003fd     	mov	x29, sp
       8: 94000000     	bl	0x8 <cleanup_module+0x8>
		0000000000000008:  R_AARCH64_CALL26	syna_dev_module_exit
       c: aa1f03e0     	mov	x0, xzr
      10: aa1f03e1     	mov	x1, xzr
      14: aa1f03e2     	mov	x2, xzr
      18: 94000000     	bl	0x18 <cleanup_module+0x18>
		0000000000000018:  R_AARCH64_CALL26	zte_touch_deinit
      1c: 90000000     	adrp	x0, 0x0 <cleanup_module>
		000000000000001c:  R_AARCH64_ADR_GOT_PAGE	zte_touch_device_driver
      20: f9400000     	ldr	x0, [x0]
		0000000000000020:  R_AARCH64_LD64_GOT_LO12_NC	zte_touch_device_driver
      24: a8c17bfd     	ldp	x29, x30, [sp], #0x10
      28: 14000000     	b	0x28 <cleanup_module+0x28>
		0000000000000028:  R_AARCH64_JUMP26	platform_driver_unregister
