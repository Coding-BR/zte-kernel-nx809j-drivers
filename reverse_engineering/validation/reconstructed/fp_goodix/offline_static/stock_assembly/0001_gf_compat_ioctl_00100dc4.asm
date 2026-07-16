
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000005a4 <gf_compat_ioctl>:
     5a4: d503233f     	paciasp
     5a8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     5ac: 910003fd     	mov	x29, sp
     5b0: 92407c42     	and	x2, x2, #0xffffffff
     5b4: 97fffe94     	bl	0x4 <gf_ioctl>
     5b8: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     5bc: d50323bf     	autiasp
     5c0: d65f03c0     	ret
