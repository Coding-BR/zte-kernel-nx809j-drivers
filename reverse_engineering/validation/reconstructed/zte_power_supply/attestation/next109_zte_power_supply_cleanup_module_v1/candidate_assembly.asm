
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .exit.text:

0000000000000004 <cleanup_module>:
       4: d503233f     	paciasp
       8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
       c: 910003fd     	mov	x29, sp
      10: 90000008     	adrp	x8, 0x0 <.exit.text>
		0000000000000010:  R_AARCH64_ADR_PREL_PG_HI21	zte_power_supply_class
      14: f9400100     	ldr	x0, [x8]
		0000000000000014:  R_AARCH64_LDST64_ABS_LO12_NC	zte_power_supply_class
      18: 94000000     	bl	0x18 <cleanup_module+0x14>
		0000000000000018:  R_AARCH64_CALL26	class_destroy
      1c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
      20: d50323bf     	autiasp
      24: d65f03c0     	ret
