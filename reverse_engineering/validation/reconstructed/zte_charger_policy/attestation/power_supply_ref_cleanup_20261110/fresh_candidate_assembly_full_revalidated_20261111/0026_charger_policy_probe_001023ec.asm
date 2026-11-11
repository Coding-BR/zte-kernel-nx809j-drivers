
/input/fresh_candidate_unpromoted.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004a70 <charger_policy_probe>:
    4a70: d503233f     	paciasp
    4a74: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    4a78: 910003fd     	mov	x29, sp
    4a7c: 97fffe01     	bl	0x4280 <charger_policy_probe_model>
    4a80: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    4a84: d50323bf     	autiasp
    4a88: d65f03c0     	ret
