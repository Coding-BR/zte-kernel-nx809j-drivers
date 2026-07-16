
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001608 <gpio_keys_show_keys>:
    1608: d503233f     	paciasp
    160c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    1610: 910003fd     	mov	x29, sp
    1614: f9404c00     	ldr	x0, [x0, #0x98]
    1618: aa0203e1     	mov	x1, x2
    161c: 52800022     	mov	w2, #0x1                // =1
    1620: 2a1f03e3     	mov	w3, wzr
    1624: 94000004     	bl	0x1634 <gpio_keys_attr_show_helper>
    1628: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    162c: d50323bf     	autiasp
    1630: d65f03c0     	ret
