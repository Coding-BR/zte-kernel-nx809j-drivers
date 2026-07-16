
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001778 <gpio_keys_show_switches>:
    1778: d503233f     	paciasp
    177c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    1780: 910003fd     	mov	x29, sp
    1784: f9404c00     	ldr	x0, [x0, #0x98]
    1788: aa0203e1     	mov	x1, x2
    178c: 528000a2     	mov	w2, #0x5                // =5
    1790: 2a1f03e3     	mov	w3, wzr
    1794: 97ffffa8     	bl	0x1634 <gpio_keys_attr_show_helper>
    1798: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    179c: d50323bf     	autiasp
    17a0: d65f03c0     	ret
