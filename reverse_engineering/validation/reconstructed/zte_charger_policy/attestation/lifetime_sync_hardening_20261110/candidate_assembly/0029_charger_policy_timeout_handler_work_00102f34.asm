
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000326c <charger_policy_timeout_handler_work>:
    326c: d503233f     	paciasp
    3270: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    3274: 910003fd     	mov	x29, sp
    3278: 97ffff27     	bl	0x2f14 <charger_policy_timeout_handler_work_model>
    327c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    3280: d50323bf     	autiasp
    3284: d65f03c0     	ret
