
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000056c <zte_power_supply_register>:
     56c: d503233f     	paciasp
     570: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     574: 910003fd     	mov	x29, sp
     578: 52800023     	mov	w3, #0x1                // =1
     57c: 94000004     	bl	0x58c <__zte_power_supply_register>
     580: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     584: d50323bf     	autiasp
     588: d65f03c0     	ret
