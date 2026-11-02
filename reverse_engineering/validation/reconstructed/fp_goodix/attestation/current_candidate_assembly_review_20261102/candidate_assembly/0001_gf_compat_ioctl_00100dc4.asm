
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000274 <gf_compat_ioctl>:
     274: d503233f     	paciasp
     278: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     27c: 910003fd     	mov	x29, sp
     280: 92407c42     	and	x2, x2, #0xffffffff
     284: 94000000     	bl	0x284 <gf_compat_ioctl+0x10>
		0000000000000284:  R_AARCH64_CALL26	gf_ioctl
     288: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     28c: d50323bf     	autiasp
     290: d65f03c0     	ret
