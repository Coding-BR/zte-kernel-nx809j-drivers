
/input/fresh_candidate_unpromoted.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004264 <charger_policy_probe_work>:
    4264: d503233f     	paciasp
    4268: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    426c: 910003fd     	mov	x29, sp
    4270: 97fffef0     	bl	0x3e30 <charger_policy_probe_work_model>
    4274: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    4278: d50323bf     	autiasp
    427c: d65f03c0     	ret
