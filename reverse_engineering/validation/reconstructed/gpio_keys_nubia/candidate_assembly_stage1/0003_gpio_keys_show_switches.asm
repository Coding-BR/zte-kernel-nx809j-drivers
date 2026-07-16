
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001864 <gpio_keys_show_switches>:
    1864: d503233f     	paciasp
    1868: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    186c: 910003fd     	mov	x29, sp
    1870: f9404c00     	ldr	x0, [x0, #0x98]
    1874: aa0203e1     	mov	x1, x2
    1878: 528000a2     	mov	w2, #0x5                // =5
    187c: 2a1f03e3     	mov	w3, wzr
    1880: 97ffffac     	bl	0x1730 <gpio_keys_attr_show_helper>
    1884: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    1888: d50323bf     	autiasp
    188c: d65f03c0     	ret
