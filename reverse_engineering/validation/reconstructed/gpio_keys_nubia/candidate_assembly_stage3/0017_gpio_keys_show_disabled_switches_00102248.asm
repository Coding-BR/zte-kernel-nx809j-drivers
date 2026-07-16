
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001b38 <gpio_keys_show_disabled_switches>:
    1b38: d503233f     	paciasp
    1b3c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    1b40: 910003fd     	mov	x29, sp
    1b44: f9404c00     	ldr	x0, [x0, #0x98]
    1b48: aa0203e1     	mov	x1, x2
    1b4c: 528000a2     	mov	w2, #0x5                // =5
    1b50: 52800023     	mov	w3, #0x1                // =1
    1b54: 97fffeb8     	bl	0x1634 <gpio_keys_attr_show_helper>
    1b58: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    1b5c: d50323bf     	autiasp
    1b60: d65f03c0     	ret
