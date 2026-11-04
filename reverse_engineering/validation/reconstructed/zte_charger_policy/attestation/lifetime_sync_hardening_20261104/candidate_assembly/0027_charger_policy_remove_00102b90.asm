
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004acc <charger_policy_remove>:
    4acc: d503233f     	paciasp
    4ad0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    4ad4: 910003fd     	mov	x29, sp
    4ad8: 97ffffda     	bl	0x4a40 <charger_policy_remove_model>
    4adc: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    4ae0: d50323bf     	autiasp
    4ae4: d65f03c0     	ret
