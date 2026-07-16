
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001b18 <gpio_keys_show_disabled_switches>:
    1b18: d503233f     	paciasp
    1b1c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    1b20: 910003fd     	mov	x29, sp
    1b24: f9404c00     	ldr	x0, [x0, #0x98]
    1b28: aa0203e1     	mov	x1, x2
    1b2c: 528000a2     	mov	w2, #0x5                // =5
    1b30: 52800023     	mov	w3, #0x1                // =1
    1b34: 97fffeff     	bl	0x1730 <gpio_keys_attr_show_helper>
    1b38: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    1b3c: d50323bf     	autiasp
    1b40: d65f03c0     	ret
