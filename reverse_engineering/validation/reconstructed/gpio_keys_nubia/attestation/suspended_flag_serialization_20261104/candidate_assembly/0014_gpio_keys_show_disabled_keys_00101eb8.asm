
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000970 <gpio_keys_show_disabled_keys>:
     970: d503233f     	paciasp
     974: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     978: 910003fd     	mov	x29, sp
     97c: f9404c00     	ldr	x0, [x0, #0x98]
     980: aa0203e1     	mov	x1, x2
     984: 52800022     	mov	w2, #0x1                // =1
     988: 52800023     	mov	w3, #0x1                // =1
     98c: 94000000     	bl	0x98c <gpio_keys_show_disabled_keys+0x1c>
		000000000000098c:  R_AARCH64_CALL26	gpio_keys_attr_show_helper
     990: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     994: d50323bf     	autiasp
     998: d65f03c0     	ret
