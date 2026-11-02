
/input/zte_misc.ko:	file format elf64-littleaarch64

Disassembly of section .init.text:

00000000000000cc <zte_misc_init>:
      cc: d503233f     	paciasp
      d0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
      d4: 910003fd     	mov	x29, sp
      d8: 90000000     	adrp	x0, 0x0 <.init.text>
		00000000000000d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x397
      dc: 91000000     	add	x0, x0, #0x0
		00000000000000dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x397
      e0: 90000001     	adrp	x1, 0x0 <.init.text>
		00000000000000e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xee
      e4: 91000021     	add	x1, x1, #0x0
		00000000000000e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xee
      e8: 94000000     	bl	0xe8 <zte_misc_init+0x1c>
		00000000000000e8:  R_AARCH64_CALL26	_printk
      ec: 90000000     	adrp	x0, 0x0 <.init.text>
		00000000000000ec:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x608
      f0: 91000000     	add	x0, x0, #0x0
		00000000000000f0:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x608
      f4: 90000001     	adrp	x1, 0x0 <.init.text>
		00000000000000f4:  R_AARCH64_ADR_PREL_PG_HI21	__this_module
      f8: 91000021     	add	x1, x1, #0x0
		00000000000000f8:  R_AARCH64_ADD_ABS_LO12_NC	__this_module
      fc: 94000000     	bl	0xfc <zte_misc_init+0x30>
		00000000000000fc:  R_AARCH64_CALL26	__platform_driver_register
     100: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     104: d50323bf     	autiasp
     108: d65f03c0     	ret
