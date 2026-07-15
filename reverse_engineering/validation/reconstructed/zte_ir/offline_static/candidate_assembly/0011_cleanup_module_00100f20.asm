
/input/zte_ir.ko:	file format elf64-littleaarch64

Disassembly of section .exit.text:

0000000000000004 <cleanup_module>:
       4: d503233f     	paciasp
       8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
       c: 910003fd     	mov	x29, sp
      10: 90000000     	adrp	x0, 0x0 <.exit.text>
		0000000000000010:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x60
      14: 91000000     	add	x0, x0, #0x0
		0000000000000014:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x60
      18: 94000000     	bl	0x18 <cleanup_module+0x14>
		0000000000000018:  R_AARCH64_CALL26	driver_unregister
      1c: 90000008     	adrp	x8, 0x0 <.exit.text>
		000000000000001c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
      20: f9400100     	ldr	x0, [x8]
		0000000000000020:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8
      24: 94000000     	bl	0x24 <cleanup_module+0x20>
		0000000000000024:  R_AARCH64_CALL26	class_destroy
      28: 90000008     	adrp	x8, 0x0 <.exit.text>
		0000000000000028:  R_AARCH64_ADR_PREL_PG_HI21	.bss
      2c: 90000003     	adrp	x3, 0x0 <.exit.text>
		000000000000002c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x96
      30: 91000063     	add	x3, x3, #0x0
		0000000000000030:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x96
      34: b9400100     	ldr	w0, [x8]
		0000000000000034:  R_AARCH64_LDST32_ABS_LO12_NC	.bss
      38: 2a1f03e1     	mov	w1, wzr
      3c: 52802002     	mov	w2, #0x100              // =256
      40: 94000000     	bl	0x40 <cleanup_module+0x3c>
		0000000000000040:  R_AARCH64_CALL26	__unregister_chrdev
      44: a8c17bfd     	ldp	x29, x30, [sp], #0x10
      48: d50323bf     	autiasp
      4c: d65f03c0     	ret
