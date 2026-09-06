
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000107c <zte_power_supply_register>:
    107c: d503233f     	paciasp
    1080: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    1084: 910003fd     	mov	x29, sp
    1088: 52800023     	mov	w3, #0x1                // =1
    108c: 94000004     	bl	0x109c <__zte_power_supply_register>
    1090: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    1094: d50323bf     	autiasp
    1098: d65f03c0     	ret
