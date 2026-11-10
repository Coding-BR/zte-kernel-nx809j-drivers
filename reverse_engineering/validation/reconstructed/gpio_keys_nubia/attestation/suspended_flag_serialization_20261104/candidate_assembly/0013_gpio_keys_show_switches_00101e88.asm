
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000940 <gpio_keys_show_switches>:
     940: d503233f     	paciasp
     944: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     948: 910003fd     	mov	x29, sp
     94c: f9404c00     	ldr	x0, [x0, #0x98]
     950: aa0203e1     	mov	x1, x2
     954: 528000a2     	mov	w2, #0x5                // =5
     958: 2a1f03e3     	mov	w3, wzr
     95c: 94000000     	bl	0x95c <gpio_keys_show_switches+0x1c>
		000000000000095c:  R_AARCH64_CALL26	gpio_keys_attr_show_helper
     960: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     964: d50323bf     	autiasp
     968: d65f03c0     	ret
