
/input/nubia_hw_version.ko:	file format elf64-littleaarch64

Disassembly of section .exit.text:

0000000000000004 <cleanup_module>:
       4: d503233f     	paciasp
       8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
       c: f9000bf3     	str	x19, [sp, #0x10]
      10: 910003fd     	mov	x29, sp
      14: 90000013     	adrp	x19, 0x0 <.exit.text>
		0000000000000014:  R_AARCH64_ADR_PREL_PG_HI21	hw_version_kobj
      18: 90000001     	adrp	x1, 0x0 <.exit.text>
		0000000000000018:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0xf0
      1c: 91000021     	add	x1, x1, #0x0
		000000000000001c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0xf0
      20: f9400260     	ldr	x0, [x19]
		0000000000000020:  R_AARCH64_LDST64_ABS_LO12_NC	hw_version_kobj
      24: 94000000     	bl	0x24 <cleanup_module+0x20>
		0000000000000024:  R_AARCH64_CALL26	sysfs_remove_group
      28: f9400260     	ldr	x0, [x19]
		0000000000000028:  R_AARCH64_LDST64_ABS_LO12_NC	hw_version_kobj
      2c: 94000000     	bl	0x2c <cleanup_module+0x28>
		000000000000002c:  R_AARCH64_CALL26	kobject_put
      30: f9400bf3     	ldr	x19, [sp, #0x10]
      34: a8c27bfd     	ldp	x29, x30, [sp], #0x20
      38: d50323bf     	autiasp
      3c: d65f03c0     	ret
