
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000093c <gpio_keys_show_disabled_switches>:
     93c: d503233f     	paciasp
     940: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     944: 910003fd     	mov	x29, sp
     948: f9404c00     	ldr	x0, [x0, #0x98]
     94c: aa0203e1     	mov	x1, x2
     950: 528000a2     	mov	w2, #0x5                // =5
     954: 52800023     	mov	w3, #0x1                // =1
     958: 97fffeb8     	bl	0x438 <gpio_keys_resume+0x220>
		0000000000000958:  R_AARCH64_CALL26	gpio_keys_attr_show_helper
     95c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     960: d50323bf     	autiasp
     964: d65f03c0     	ret
