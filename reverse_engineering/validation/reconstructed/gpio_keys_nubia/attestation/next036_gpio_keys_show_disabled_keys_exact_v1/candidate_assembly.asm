
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000090c <gpio_keys_show_disabled_keys>:
     90c: d503233f     	paciasp
     910: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     914: 910003fd     	mov	x29, sp
     918: f9404c00     	ldr	x0, [x0, #0x98]
     91c: aa0203e1     	mov	x1, x2
     920: 52800022     	mov	w2, #0x1                // =1
     924: 52800023     	mov	w3, #0x1                // =1
     928: 94000000     	bl	0x928 <gpio_keys_show_disabled_keys+0x1c>
		0000000000000928:  R_AARCH64_CALL26	gpio_keys_attr_show_helper
     92c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     930: d50323bf     	autiasp
     934: d65f03c0     	ret
