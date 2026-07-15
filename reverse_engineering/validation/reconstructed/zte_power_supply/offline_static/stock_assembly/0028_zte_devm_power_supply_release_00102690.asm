
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001460 <zte_devm_power_supply_release>:
    1460: d503233f     	paciasp
    1464: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    1468: 910003fd     	mov	x29, sp
    146c: f9400020     	ldr	x0, [x1]
    1470: 94000000     	bl	0x1470 <zte_devm_power_supply_release+0x10>
		0000000000001470:  R_AARCH64_CALL26	zte_power_supply_unregister
    1474: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    1478: d50323bf     	autiasp
    147c: d65f03c0     	ret
