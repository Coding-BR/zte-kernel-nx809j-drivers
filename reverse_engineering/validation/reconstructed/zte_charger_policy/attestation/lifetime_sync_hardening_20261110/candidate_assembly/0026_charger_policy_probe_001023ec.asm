
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004a3c <charger_policy_probe>:
    4a3c: d503233f     	paciasp
    4a40: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    4a44: 910003fd     	mov	x29, sp
    4a48: 97fffe01     	bl	0x424c <charger_policy_probe_model>
    4a4c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    4a50: d50323bf     	autiasp
    4a54: d65f03c0     	ret
