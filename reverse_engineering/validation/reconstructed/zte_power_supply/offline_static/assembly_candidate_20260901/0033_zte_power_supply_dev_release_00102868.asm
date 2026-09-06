
/input/zte_power_supply_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001f48 <zte_power_supply_dev_release>:
    1f48: d503233f     	paciasp
    1f4c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    1f50: 910003fd     	mov	x29, sp
    1f54: d100e000     	sub	x0, x0, #0x38
    1f58: 94000000     	bl	0x1f58 <zte_power_supply_dev_release+0x10>
		0000000000001f58:  R_AARCH64_CALL26	kfree
    1f5c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    1f60: d50323bf     	autiasp
    1f64: d65f03c0     	ret
