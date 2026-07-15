
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .init.text:

0000000000000004 <init_module>:
       4: d503233f     	paciasp
       8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
       c: 910003fd     	mov	x29, sp
      10: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000010:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x267
      14: 91000000     	add	x0, x0, #0x0
		0000000000000014:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x267
      18: 94000000     	bl	0x18 <init_module+0x14>
		0000000000000018:  R_AARCH64_CALL26	class_create
      1c: 90000008     	adrp	x8, 0x0 <.init.text>
		000000000000001c:  R_AARCH64_ADR_PREL_PG_HI21	zte_power_supply_class
      20: b13ffc1f     	cmn	x0, #0xfff
      24: f9000100     	str	x0, [x8]
		0000000000000024:  R_AARCH64_LDST64_ABS_LO12_NC	zte_power_supply_class
      28: 54000102     	b.hs	0x48 <init_module+0x44>
      2c: 90000008     	adrp	x8, 0x0 <.init.text>
		000000000000002c:  R_AARCH64_ADR_PREL_PG_HI21	zte_power_supply_uevent
      30: 91000108     	add	x8, x8, #0x0
		0000000000000030:  R_AARCH64_ADD_ABS_LO12_NC	zte_power_supply_uevent
      34: f9000c08     	str	x8, [x0, #0x18]
      38: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000038:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
      3c: 91000000     	add	x0, x0, #0x0
		000000000000003c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x18
      40: 94000000     	bl	0x40 <init_module+0x3c>
		0000000000000040:  R_AARCH64_CALL26	zte_power_supply_init_attrs
      44: 2a1f03e0     	mov	w0, wzr
      48: a8c17bfd     	ldp	x29, x30, [sp], #0x10
      4c: d50323bf     	autiasp
      50: d65f03c0     	ret
