
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001638 <zte_power_supply_dev_release>:
    1638: d503233f     	paciasp
    163c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    1640: 910003fd     	mov	x29, sp
    1644: d100e000     	sub	x0, x0, #0x38
    1648: 94000000     	bl	0x1648 <zte_power_supply_dev_release+0x10>
		0000000000001648:  R_AARCH64_CALL26	kfree
    164c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    1650: d50323bf     	autiasp
    1654: d65f03c0     	ret
