
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000013c0 <zte_power_supply_dev_release>:
    13c0: d503233f     	paciasp
    13c4: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    13c8: 910003fd     	mov	x29, sp
    13cc: d100e000     	sub	x0, x0, #0x38
    13d0: 94000000     	bl	0x13d0 <zte_power_supply_dev_release+0x10>
		00000000000013d0:  R_AARCH64_CALL26	kfree
    13d4: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    13d8: d50323bf     	autiasp
    13dc: d65f03c0     	ret
