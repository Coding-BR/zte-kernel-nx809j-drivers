
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000009a0 <gpio_keys_show_disabled_switches>:
     9a0: d503233f     	paciasp
     9a4: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     9a8: 910003fd     	mov	x29, sp
     9ac: f9404c00     	ldr	x0, [x0, #0x98]
     9b0: aa0203e1     	mov	x1, x2
     9b4: 528000a2     	mov	w2, #0x5                // =5
     9b8: 52800023     	mov	w3, #0x1                // =1
     9bc: 97fffeb8     	bl	0x49c <gpio_keys_resume+0x234>
		00000000000009bc:  R_AARCH64_CALL26	gpio_keys_attr_show_helper
     9c0: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     9c4: d50323bf     	autiasp
     9c8: d65f03c0     	ret
