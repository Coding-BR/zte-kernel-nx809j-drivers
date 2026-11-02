
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000218 <gpio_keys_show_keys>:
     218: d503233f     	paciasp
     21c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     220: 910003fd     	mov	x29, sp
     224: f9404c00     	ldr	x0, [x0, #0x98]
     228: aa0203e1     	mov	x1, x2
     22c: 52800022     	mov	w2, #0x1                // =1
     230: 2a1f03e3     	mov	w3, wzr
     234: 94000000     	bl	0x234 <gpio_keys_show_keys+0x1c>
		0000000000000234:  R_AARCH64_CALL26	gpio_keys_attr_show_helper
     238: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     23c: d50323bf     	autiasp
     240: d65f03c0     	ret
