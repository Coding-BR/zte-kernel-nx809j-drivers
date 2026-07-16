
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000015b4 <gpio_keys_show_keys>:
    15b4: d503233f     	paciasp
    15b8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    15bc: 910003fd     	mov	x29, sp
    15c0: f9404c00     	ldr	x0, [x0, #0x98]
    15c4: aa0203e1     	mov	x1, x2
    15c8: 52800022     	mov	w2, #0x1                // =1
    15cc: 2a1f03e3     	mov	w3, wzr
    15d0: 94000004     	bl	0x15e0 <gpio_keys_attr_show_helper>
    15d4: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    15d8: d50323bf     	autiasp
    15dc: d65f03c0     	ret
