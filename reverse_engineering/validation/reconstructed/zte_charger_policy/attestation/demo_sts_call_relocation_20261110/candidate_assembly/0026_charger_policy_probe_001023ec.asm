
/input/fresh_candidate_unpromoted.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004b9c <charger_policy_probe>:
    4b9c: d503233f     	paciasp
    4ba0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    4ba4: 910003fd     	mov	x29, sp
    4ba8: 97fffdd9     	bl	0x430c <charger_policy_probe_model>
    4bac: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    4bb0: d50323bf     	autiasp
    4bb4: d65f03c0     	ret
