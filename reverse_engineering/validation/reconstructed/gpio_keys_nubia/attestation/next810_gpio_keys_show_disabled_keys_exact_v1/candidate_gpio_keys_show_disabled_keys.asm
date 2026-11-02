
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000003b8 <gpio_keys_show_disabled_keys>:
     3b8: d503233f     	paciasp
     3bc: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     3c0: 910003fd     	mov	x29, sp
     3c4: f9404c00     	ldr	x0, [x0, #0x98]
     3c8: aa0203e1     	mov	x1, x2
     3cc: 52800022     	mov	w2, #0x1                // =1
     3d0: 52800023     	mov	w3, #0x1                // =1
     3d4: 94000000     	bl	0x3d4 <gpio_keys_show_disabled_keys+0x1c>
		00000000000003d4:  R_AARCH64_CALL26	gpio_keys_attr_show_helper
     3d8: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     3dc: d50323bf     	autiasp
     3e0: d65f03c0     	ret
