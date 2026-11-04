
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004218 <charger_policy_probe_work>:
    4218: d503233f     	paciasp
    421c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    4220: 910003fd     	mov	x29, sp
    4224: 97fffef6     	bl	0x3dfc <charger_policy_probe_work_model>
    4228: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    422c: d50323bf     	autiasp
    4230: d65f03c0     	ret
