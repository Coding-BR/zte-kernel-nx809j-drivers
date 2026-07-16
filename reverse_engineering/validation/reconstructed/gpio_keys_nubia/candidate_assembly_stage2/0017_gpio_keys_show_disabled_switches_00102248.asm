
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001ae4 <gpio_keys_show_disabled_switches>:
    1ae4: d503233f     	paciasp
    1ae8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    1aec: 910003fd     	mov	x29, sp
    1af0: f9404c00     	ldr	x0, [x0, #0x98]
    1af4: aa0203e1     	mov	x1, x2
    1af8: 528000a2     	mov	w2, #0x5                // =5
    1afc: 52800023     	mov	w3, #0x1                // =1
    1b00: 97fffeb8     	bl	0x15e0 <gpio_keys_attr_show_helper>
    1b04: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    1b08: d50323bf     	autiasp
    1b0c: d65f03c0     	ret
