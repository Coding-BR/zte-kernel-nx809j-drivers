
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .exit.text:

0000000000000004 <cleanup_module>:
       4: d503233f     	paciasp
       8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
       c: f9000bf3     	str	x19, [sp, #0x10]
      10: 910003fd     	mov	x29, sp
      14: 94000000     	bl	0x14 <cleanup_module+0x10>
		0000000000000014:  R_AARCH64_CALL26	netlink_exit
      18: 90000013     	adrp	x19, 0x0 <.exit.text>
		0000000000000018:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x70
      1c: 91000273     	add	x19, x19, #0x0
		000000000000001c:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x70
      20: aa1303e0     	mov	x0, x19
      24: 94000000     	bl	0x24 <cleanup_module+0x20>
		0000000000000024:  R_AARCH64_CALL26	platform_driver_unregister
      28: 90000008     	adrp	x8, 0x0 <.exit.text>
		0000000000000028:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
      2c: f9400100     	ldr	x0, [x8]
		000000000000002c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8
      30: 94000000     	bl	0x30 <cleanup_module+0x2c>
		0000000000000030:  R_AARCH64_CALL26	class_destroy
      34: 90000008     	adrp	x8, 0x0 <.exit.text>
		0000000000000034:  R_AARCH64_ADR_PREL_PG_HI21	.bss
      38: f9401663     	ldr	x3, [x19, #0x28]
      3c: 2a1f03e1     	mov	w1, wzr
      40: b9400100     	ldr	w0, [x8]
		0000000000000040:  R_AARCH64_LDST32_ABS_LO12_NC	.bss
      44: 52802002     	mov	w2, #0x100              // =256
      48: 94000000     	bl	0x48 <cleanup_module+0x44>
		0000000000000048:  R_AARCH64_CALL26	__unregister_chrdev
      4c: f9400bf3     	ldr	x19, [sp, #0x10]
      50: a8c27bfd     	ldp	x29, x30, [sp], #0x20
      54: d50323bf     	autiasp
      58: d65f03c0     	ret
