
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000598 <gf_compat_ioctl>:
     598: d503233f     	paciasp
     59c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     5a0: 910003fd     	mov	x29, sp
     5a4: 92407c42     	and	x2, x2, #0xffffffff
     5a8: 97fffe97     	bl	0x4 <gf_ioctl>
     5ac: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     5b0: d50323bf     	autiasp
     5b4: d65f03c0     	ret
