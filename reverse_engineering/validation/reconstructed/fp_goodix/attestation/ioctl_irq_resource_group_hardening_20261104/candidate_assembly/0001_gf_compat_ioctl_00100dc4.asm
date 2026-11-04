
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000364 <gf_compat_ioctl>:
     364: d503233f     	paciasp
     368: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     36c: 910003fd     	mov	x29, sp
     370: 92407c42     	and	x2, x2, #0xffffffff
     374: 97ffffc0     	bl	0x274 <gf_ioctl_dispatch>
     378: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     37c: d50323bf     	autiasp
     380: d65f03c0     	ret
