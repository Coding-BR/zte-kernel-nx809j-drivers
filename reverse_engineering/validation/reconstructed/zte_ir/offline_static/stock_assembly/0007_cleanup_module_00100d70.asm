
/input/zte_ir.ko:	file format elf64-littleaarch64

Disassembly of section .exit.text:

0000000000000004 <cleanup_module>:
       4: d503233f     	paciasp
       8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
       c: f9000bf3     	str	x19, [sp, #0x10]
      10: 910003fd     	mov	x29, sp
      14: 90000013     	adrp	x19, 0x0 <.exit.text>
		0000000000000014:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x60
      18: 91000273     	add	x19, x19, #0x0
		0000000000000018:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x60
      1c: aa1303e0     	mov	x0, x19
      20: 94000000     	bl	0x20 <cleanup_module+0x1c>
		0000000000000020:  R_AARCH64_CALL26	driver_unregister
      24: 90000008     	adrp	x8, 0x0 <.exit.text>
		0000000000000024:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
      28: f9400100     	ldr	x0, [x8]
		0000000000000028:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8
      2c: 94000000     	bl	0x2c <cleanup_module+0x28>
		000000000000002c:  R_AARCH64_CALL26	class_destroy
      30: 90000008     	adrp	x8, 0x0 <.exit.text>
		0000000000000030:  R_AARCH64_ADR_PREL_PG_HI21	.bss
      34: f9400263     	ldr	x3, [x19]
      38: 2a1f03e1     	mov	w1, wzr
      3c: b9400100     	ldr	w0, [x8]
		000000000000003c:  R_AARCH64_LDST32_ABS_LO12_NC	.bss
      40: 52802002     	mov	w2, #0x100              // =256
      44: 94000000     	bl	0x44 <cleanup_module+0x40>
		0000000000000044:  R_AARCH64_CALL26	__unregister_chrdev
      48: f9400bf3     	ldr	x19, [sp, #0x10]
      4c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
      50: d50323bf     	autiasp
      54: d65f03c0     	ret
