
/input/zte_fingerprint_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000006a0 <gf_compat_ioctl>:
     6a0: d503233f     	paciasp
     6a4: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     6a8: 910003fd     	mov	x29, sp
     6ac: 97fffeb5     	bl	0x180 <gf_ioctl>
     6b0: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     6b4: d50323bf     	autiasp
     6b8: d65f03c0     	ret
