
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001600 <gpio_keys_show_keys>:
    1600: d503233f     	paciasp
    1604: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    1608: 910003fd     	mov	x29, sp
    160c: f9404c00     	ldr	x0, [x0, #0x98]
    1610: aa0203e1     	mov	x1, x2
    1614: 52800022     	mov	w2, #0x1                // =1
    1618: 2a1f03e3     	mov	w3, wzr
    161c: 94000004     	bl	0x162c <gpio_keys_attr_show_helper>
    1620: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    1624: d50323bf     	autiasp
    1628: d65f03c0     	ret
