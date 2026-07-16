
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001724 <gpio_keys_show_switches>:
    1724: d503233f     	paciasp
    1728: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    172c: 910003fd     	mov	x29, sp
    1730: f9404c00     	ldr	x0, [x0, #0x98]
    1734: aa0203e1     	mov	x1, x2
    1738: 528000a2     	mov	w2, #0x5                // =5
    173c: 2a1f03e3     	mov	w3, wzr
    1740: 97ffffa8     	bl	0x15e0 <gpio_keys_attr_show_helper>
    1744: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    1748: d50323bf     	autiasp
    174c: d65f03c0     	ret
