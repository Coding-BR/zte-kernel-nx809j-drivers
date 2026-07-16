
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001754 <gpio_keys_show_disabled_keys>:
    1754: d503233f     	paciasp
    1758: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    175c: 910003fd     	mov	x29, sp
    1760: f9404c00     	ldr	x0, [x0, #0x98]
    1764: aa0203e1     	mov	x1, x2
    1768: 52800022     	mov	w2, #0x1                // =1
    176c: 52800023     	mov	w3, #0x1                // =1
    1770: 97ffff9c     	bl	0x15e0 <gpio_keys_attr_show_helper>
    1774: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    1778: d50323bf     	autiasp
    177c: d65f03c0     	ret
