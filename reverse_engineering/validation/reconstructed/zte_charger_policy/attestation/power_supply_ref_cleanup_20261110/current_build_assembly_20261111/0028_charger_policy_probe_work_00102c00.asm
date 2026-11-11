
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000042f0 <charger_policy_probe_work>:
    42f0: d503233f     	paciasp
    42f4: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    42f8: 910003fd     	mov	x29, sp
    42fc: 97fffed7     	bl	0x3e58 <charger_policy_probe_work_model>
    4300: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    4304: d50323bf     	autiasp
    4308: d65f03c0     	ret
