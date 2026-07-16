
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001894 <gpio_keys_show_disabled_keys>:
    1894: d503233f     	paciasp
    1898: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    189c: 910003fd     	mov	x29, sp
    18a0: f9404c00     	ldr	x0, [x0, #0x98]
    18a4: aa0203e1     	mov	x1, x2
    18a8: 52800022     	mov	w2, #0x1                // =1
    18ac: 52800023     	mov	w3, #0x1                // =1
    18b0: 97ffffa0     	bl	0x1730 <gpio_keys_attr_show_helper>
    18b4: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    18b8: d50323bf     	autiasp
    18bc: d65f03c0     	ret
