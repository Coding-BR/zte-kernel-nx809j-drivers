
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000910 <gpio_keys_show_keys>:
     910: d503233f     	paciasp
     914: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     918: 910003fd     	mov	x29, sp
     91c: f9404c00     	ldr	x0, [x0, #0x98]
     920: aa0203e1     	mov	x1, x2
     924: 52800022     	mov	w2, #0x1                // =1
     928: 2a1f03e3     	mov	w3, wzr
     92c: 94000000     	bl	0x92c <gpio_keys_show_keys+0x1c>
		000000000000092c:  R_AARCH64_CALL26	gpio_keys_attr_show_helper
     930: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     934: d50323bf     	autiasp
     938: d65f03c0     	ret
