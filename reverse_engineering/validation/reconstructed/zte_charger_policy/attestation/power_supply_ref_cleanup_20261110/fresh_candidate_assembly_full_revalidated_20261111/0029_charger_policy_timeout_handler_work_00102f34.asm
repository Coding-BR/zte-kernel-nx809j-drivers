
/input/fresh_candidate_unpromoted.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003298 <charger_policy_timeout_handler_work>:
    3298: d503233f     	paciasp
    329c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    32a0: 910003fd     	mov	x29, sp
    32a4: 97ffff27     	bl	0x2f40 <charger_policy_timeout_handler_work_model>
    32a8: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    32ac: d50323bf     	autiasp
    32b0: d65f03c0     	ret
