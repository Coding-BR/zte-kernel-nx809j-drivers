
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004230 <charger_policy_probe_work>:
    4230: d503233f     	paciasp
    4234: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    4238: 910003fd     	mov	x29, sp
    423c: 97fffef0     	bl	0x3dfc <charger_policy_probe_work_model>
    4240: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    4244: d50323bf     	autiasp
    4248: d65f03c0     	ret
