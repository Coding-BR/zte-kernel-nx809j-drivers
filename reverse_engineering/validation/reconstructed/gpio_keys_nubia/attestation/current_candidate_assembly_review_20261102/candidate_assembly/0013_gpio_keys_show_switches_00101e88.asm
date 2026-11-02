
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000008dc <gpio_keys_show_switches>:
     8dc: d503233f     	paciasp
     8e0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     8e4: 910003fd     	mov	x29, sp
     8e8: f9404c00     	ldr	x0, [x0, #0x98]
     8ec: aa0203e1     	mov	x1, x2
     8f0: 528000a2     	mov	w2, #0x5                // =5
     8f4: 2a1f03e3     	mov	w3, wzr
     8f8: 94000000     	bl	0x8f8 <gpio_keys_show_switches+0x1c>
		00000000000008f8:  R_AARCH64_CALL26	gpio_keys_attr_show_helper
     8fc: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     900: d50323bf     	autiasp
     904: d65f03c0     	ret
