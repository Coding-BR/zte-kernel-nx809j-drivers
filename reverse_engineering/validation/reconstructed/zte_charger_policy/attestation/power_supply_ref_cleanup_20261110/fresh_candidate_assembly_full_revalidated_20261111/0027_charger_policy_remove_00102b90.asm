
/input/fresh_candidate_unpromoted.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004b20 <charger_policy_remove>:
    4b20: d503233f     	paciasp
    4b24: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    4b28: 910003fd     	mov	x29, sp
    4b2c: 97ffffd8     	bl	0x4a8c <charger_policy_remove_model>
    4b30: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    4b34: d50323bf     	autiasp
    4b38: d65f03c0     	ret
