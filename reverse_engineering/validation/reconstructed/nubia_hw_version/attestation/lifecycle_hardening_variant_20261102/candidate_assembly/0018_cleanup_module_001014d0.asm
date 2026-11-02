
/input/nubia_hw_version.ko:	file format elf64-littleaarch64

Disassembly of section .exit.text:

0000000000000004 <cleanup_module>:
       4: d503233f     	paciasp
       8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
       c: f9000bf3     	str	x19, [sp, #0x10]
      10: 910003fd     	mov	x29, sp
      14: 90000000     	adrp	x0, 0x0 <.exit.text>
		0000000000000014:  R_AARCH64_ADR_PREL_PG_HI21	.data
      18: 91000000     	add	x0, x0, #0x0
		0000000000000018:  R_AARCH64_ADD_ABS_LO12_NC	.data
      1c: 94000000     	bl	0x1c <cleanup_module+0x18>
		000000000000001c:  R_AARCH64_CALL26	platform_driver_unregister
      20: 90000013     	adrp	x19, 0x0 <.exit.text>
		0000000000000020:  R_AARCH64_ADR_PREL_PG_HI21	hw_version_kobj
      24: f9400260     	ldr	x0, [x19]
		0000000000000024:  R_AARCH64_LDST64_ABS_LO12_NC	hw_version_kobj
      28: b40000e0     	cbz	x0, 0x44 <cleanup_module+0x40>
      2c: 90000001     	adrp	x1, 0x0 <.exit.text>
		000000000000002c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x3a0
      30: 91000021     	add	x1, x1, #0x0
		0000000000000030:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x3a0
      34: 94000000     	bl	0x34 <cleanup_module+0x30>
		0000000000000034:  R_AARCH64_CALL26	sysfs_remove_group
      38: f9400260     	ldr	x0, [x19]
		0000000000000038:  R_AARCH64_LDST64_ABS_LO12_NC	hw_version_kobj
      3c: 94000000     	bl	0x3c <cleanup_module+0x38>
		000000000000003c:  R_AARCH64_CALL26	kobject_put
      40: f900027f     	str	xzr, [x19]
		0000000000000040:  R_AARCH64_LDST64_ABS_LO12_NC	hw_version_kobj
      44: f9400bf3     	ldr	x19, [sp, #0x10]
      48: a8c27bfd     	ldp	x29, x30, [sp], #0x20
      4c: d50323bf     	autiasp
      50: d65f03c0     	ret
