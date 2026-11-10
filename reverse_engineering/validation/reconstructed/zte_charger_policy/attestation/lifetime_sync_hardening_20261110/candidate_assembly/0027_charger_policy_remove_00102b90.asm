
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004aec <charger_policy_remove>:
    4aec: d503233f     	paciasp
    4af0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    4af4: 910003fd     	mov	x29, sp
    4af8: 97ffffd8     	bl	0x4a58 <charger_policy_remove_model>
    4afc: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    4b00: d50323bf     	autiasp
    4b04: d65f03c0     	ret
