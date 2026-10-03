
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000388 <gpio_keys_show_switches>:
     388: d503233f     	paciasp
     38c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     390: 910003fd     	mov	x29, sp
     394: f9404c00     	ldr	x0, [x0, #0x98]
     398: aa0203e1     	mov	x1, x2
     39c: 528000a2     	mov	w2, #0x5                // =5
     3a0: 2a1f03e3     	mov	w3, wzr
     3a4: 94000000     	bl	0x3a4 <gpio_keys_show_switches+0x1c>
		00000000000003a4:  R_AARCH64_CALL26	gpio_keys_attr_show_helper
     3a8: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     3ac: d50323bf     	autiasp
     3b0: d65f03c0     	ret
