
/input/zte_fingerprint_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .exit.text:

0000000000000004 <cleanup_module>:
       4: d503233f     	paciasp
       8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
       c: 910003fd     	mov	x29, sp
      10: 94000000     	bl	0x10 <cleanup_module+0xc>
		0000000000000010:  R_AARCH64_CALL26	.text+0x2170
      14: 90000000     	adrp	x0, 0x0 <.exit.text>
		0000000000000014:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x70
      18: 91000000     	add	x0, x0, #0x0
		0000000000000018:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x70
      1c: 94000000     	bl	0x1c <cleanup_module+0x18>
		000000000000001c:  R_AARCH64_CALL26	platform_driver_unregister
      20: 90000008     	adrp	x8, 0x0 <.exit.text>
		0000000000000020:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
      24: f9400100     	ldr	x0, [x8]
		0000000000000024:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8
      28: 94000000     	bl	0x28 <cleanup_module+0x24>
		0000000000000028:  R_AARCH64_CALL26	class_destroy
      2c: 90000008     	adrp	x8, 0x0 <.exit.text>
		000000000000002c:  R_AARCH64_ADR_PREL_PG_HI21	.bss
      30: 90000003     	adrp	x3, 0x0 <.exit.text>
		0000000000000030:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xeb8
      34: 91000063     	add	x3, x3, #0x0
		0000000000000034:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xeb8
      38: b9400100     	ldr	w0, [x8]
		0000000000000038:  R_AARCH64_LDST32_ABS_LO12_NC	.bss
      3c: 2a1f03e1     	mov	w1, wzr
      40: 52802002     	mov	w2, #0x100              // =256
      44: 94000000     	bl	0x44 <cleanup_module+0x40>
		0000000000000044:  R_AARCH64_CALL26	__unregister_chrdev
      48: a8c17bfd     	ldp	x29, x30, [sp], #0x10
      4c: d50323bf     	autiasp
      50: d65f03c0     	ret
