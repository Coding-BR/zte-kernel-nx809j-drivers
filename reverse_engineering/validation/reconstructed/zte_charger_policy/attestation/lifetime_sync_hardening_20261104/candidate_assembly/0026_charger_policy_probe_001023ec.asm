
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004a24 <charger_policy_probe>:
    4a24: d503233f     	paciasp
    4a28: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    4a2c: 910003fd     	mov	x29, sp
    4a30: 97fffe01     	bl	0x4234 <charger_policy_probe_model>
    4a34: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    4a38: d50323bf     	autiasp
    4a3c: d65f03c0     	ret
