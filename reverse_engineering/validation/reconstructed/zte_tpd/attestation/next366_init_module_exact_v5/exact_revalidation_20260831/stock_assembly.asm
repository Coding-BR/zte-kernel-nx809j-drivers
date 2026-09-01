
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .init.text:

0000000000000004 <zte_touch_init>:
       4: d503233f     	paciasp
       8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
       c: 910003fd     	mov	x29, sp
      10: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000010:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbe1d
      14: 91000000     	add	x0, x0, #0x0
		0000000000000014:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbe1d
      18: 90000001     	adrp	x1, 0x0 <.init.text>
		0000000000000018:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4991
      1c: 91000021     	add	x1, x1, #0x0
		000000000000001c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4991
      20: 94000000     	bl	0x20 <zte_touch_init+0x1c>
		0000000000000020:  R_AARCH64_CALL26	_printk
      24: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000024:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x150
      28: 91000000     	add	x0, x0, #0x0
		0000000000000028:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x150
      2c: 90000001     	adrp	x1, 0x0 <.init.text>
		000000000000002c:  R_AARCH64_ADR_PREL_PG_HI21	__this_module
      30: 91000021     	add	x1, x1, #0x0
		0000000000000030:  R_AARCH64_ADD_ABS_LO12_NC	__this_module
      34: 94000000     	bl	0x34 <zte_touch_init+0x30>
		0000000000000034:  R_AARCH64_CALL26	__platform_driver_register
      38: a8c17bfd     	ldp	x29, x30, [sp], #0x10
      3c: d50323bf     	autiasp
      40: d65f03c0     	ret
