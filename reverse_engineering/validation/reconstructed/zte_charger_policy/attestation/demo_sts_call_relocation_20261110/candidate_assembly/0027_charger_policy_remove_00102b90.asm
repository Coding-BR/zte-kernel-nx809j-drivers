
/input/fresh_candidate_unpromoted.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004c60 <charger_policy_remove>:
    4c60: d503233f     	paciasp
    4c64: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    4c68: 910003fd     	mov	x29, sp
    4c6c: 97ffffd3     	bl	0x4bb8 <charger_policy_remove_model>
    4c70: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    4c74: d50323bf     	autiasp
    4c78: d65f03c0     	ret
