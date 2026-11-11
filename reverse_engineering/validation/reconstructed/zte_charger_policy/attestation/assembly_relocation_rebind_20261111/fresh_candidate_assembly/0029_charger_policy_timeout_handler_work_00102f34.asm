
/input/fresh_candidate_unpromoted.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000032cc <charger_policy_timeout_handler_work>:
    32cc: d503233f     	paciasp
    32d0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    32d4: 910003fd     	mov	x29, sp
    32d8: 97ffff1a     	bl	0x2f40 <charger_policy_timeout_handler_work_model>
    32dc: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    32e0: d50323bf     	autiasp
    32e4: d65f03c0     	ret
