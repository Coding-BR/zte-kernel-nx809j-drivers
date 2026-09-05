
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <gf_compat_ioctl>:
       4: d503233f     	paciasp
       8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
       c: 910003fd     	mov	x29, sp
      10: 92407c42     	and	x2, x2, #0xffffffff
      14: 97fffe94     	bl	0xfffffffffffffa64 <netlink_exit+0xffffffffffffd8f0>
		0000000000000014:  R_AARCH64_CALL26	.text+0x1a4
      18: a8c17bfd     	ldp	x29, x30, [sp], #0x10
      1c: d50323bf     	autiasp
      20: d65f03c0     	ret
