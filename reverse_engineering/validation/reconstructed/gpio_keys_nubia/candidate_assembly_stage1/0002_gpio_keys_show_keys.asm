
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001704 <gpio_keys_show_keys>:
    1704: d503233f     	paciasp
    1708: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    170c: 910003fd     	mov	x29, sp
    1710: f9404c00     	ldr	x0, [x0, #0x98]
    1714: aa0203e1     	mov	x1, x2
    1718: 52800022     	mov	w2, #0x1                // =1
    171c: 2a1f03e3     	mov	w3, wzr
    1720: 94000004     	bl	0x1730 <gpio_keys_attr_show_helper>
    1724: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    1728: d50323bf     	autiasp
    172c: d65f03c0     	ret
