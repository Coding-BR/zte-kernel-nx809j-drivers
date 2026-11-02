
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000708 <gpio_keys_show_disabled_switches>:
     708: d503233f     	paciasp
     70c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     710: 910003fd     	mov	x29, sp
     714: f9404c00     	ldr	x0, [x0, #0x98]
     718: aa0203e1     	mov	x1, x2
     71c: 528000a2     	mov	w2, #0x5                // =5
     720: 52800023     	mov	w3, #0x1                // =1
     724: 97fffeb8     	bl	0x204 <gpio_keys_suspend+0x200>
		0000000000000724:  R_AARCH64_CALL26	gpio_keys_attr_show_helper
     728: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     72c: d50323bf     	autiasp
     730: d65f03c0     	ret
