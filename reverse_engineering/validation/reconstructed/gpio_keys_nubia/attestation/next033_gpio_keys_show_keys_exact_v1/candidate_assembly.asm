
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000008ac <gpio_keys_show_keys>:
     8ac: d503233f     	paciasp
     8b0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     8b4: 910003fd     	mov	x29, sp
     8b8: f9404c00     	ldr	x0, [x0, #0x98]
     8bc: aa0203e1     	mov	x1, x2
     8c0: 52800022     	mov	w2, #0x1                // =1
     8c4: 2a1f03e3     	mov	w3, wzr
     8c8: 94000000     	bl	0x8c8 <gpio_keys_show_keys+0x1c>
		00000000000008c8:  R_AARCH64_CALL26	gpio_keys_attr_show_helper
     8cc: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     8d0: d50323bf     	autiasp
     8d4: d65f03c0     	ret
