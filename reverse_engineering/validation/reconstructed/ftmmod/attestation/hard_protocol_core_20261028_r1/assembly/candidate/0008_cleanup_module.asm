
/input/ftmmod.ko:	file format elf64-littleaarch64

Disassembly of section .exit.text:

0000000000000004 <cleanup_module>:
       4: d503233f     	paciasp
       8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
       c: 910003fd     	mov	x29, sp
      10: 90000000     	adrp	x0, 0x0 <.exit.text>
		0000000000000010:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x3f0
      14: 91000000     	add	x0, x0, #0x0
		0000000000000014:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x3f0
      18: 94000000     	bl	0x18 <cleanup_module+0x14>
		0000000000000018:  R_AARCH64_CALL26	platform_driver_unregister
      1c: 90000000     	adrp	x0, 0x0 <.exit.text>
		000000000000001c:  R_AARCH64_ADR_PREL_PG_HI21	.data
      20: 91000000     	add	x0, x0, #0x0
		0000000000000020:  R_AARCH64_ADD_ABS_LO12_NC	.data
      24: 94000000     	bl	0x24 <cleanup_module+0x20>
		0000000000000024:  R_AARCH64_CALL26	platform_device_unregister
      28: a8c17bfd     	ldp	x29, x30, [sp], #0x10
      2c: d50323bf     	autiasp
      30: d65f03c0     	ret
