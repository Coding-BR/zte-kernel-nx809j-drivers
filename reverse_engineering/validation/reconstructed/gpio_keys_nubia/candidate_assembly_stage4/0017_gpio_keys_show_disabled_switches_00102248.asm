
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001b30 <gpio_keys_show_disabled_switches>:
    1b30: d503233f     	paciasp
    1b34: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    1b38: 910003fd     	mov	x29, sp
    1b3c: f9404c00     	ldr	x0, [x0, #0x98]
    1b40: aa0203e1     	mov	x1, x2
    1b44: 528000a2     	mov	w2, #0x5                // =5
    1b48: 52800023     	mov	w3, #0x1                // =1
    1b4c: 97fffeb8     	bl	0x162c <gpio_keys_attr_show_helper>
    1b50: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    1b54: d50323bf     	autiasp
    1b58: d65f03c0     	ret
