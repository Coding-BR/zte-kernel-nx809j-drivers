
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000017a8 <gpio_keys_show_disabled_keys>:
    17a8: d503233f     	paciasp
    17ac: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    17b0: 910003fd     	mov	x29, sp
    17b4: f9404c00     	ldr	x0, [x0, #0x98]
    17b8: aa0203e1     	mov	x1, x2
    17bc: 52800022     	mov	w2, #0x1                // =1
    17c0: 52800023     	mov	w3, #0x1                // =1
    17c4: 97ffff9c     	bl	0x1634 <gpio_keys_attr_show_helper>
    17c8: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    17cc: d50323bf     	autiasp
    17d0: d65f03c0     	ret
