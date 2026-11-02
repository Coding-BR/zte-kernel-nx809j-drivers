
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001770 <gpio_keys_show_switches>:
    1770: d503233f     	paciasp
    1774: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    1778: 910003fd     	mov	x29, sp
    177c: f9404c00     	ldr	x0, [x0, #0x98]
    1780: aa0203e1     	mov	x1, x2
    1784: 528000a2     	mov	w2, #0x5                // =5
    1788: 2a1f03e3     	mov	w3, wzr
    178c: 97ffffa8     	bl	0x162c <gpio_keys_attr_show_helper>
    1790: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    1794: d50323bf     	autiasp
    1798: d65f03c0     	ret
