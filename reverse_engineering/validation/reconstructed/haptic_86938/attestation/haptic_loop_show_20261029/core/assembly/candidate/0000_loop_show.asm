
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000005ac <loop_show>:
     5ac: d503233f     	paciasp
     5b0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     5b4: 910003fd     	mov	x29, sp
     5b8: f9404c08     	ldr	x8, [x0, #0x98]
     5bc: aa0203e1     	mov	x1, x2
     5c0: f9429109     	ldr	x9, [x8, #0x520]
     5c4: d102a100     	sub	x0, x8, #0xa8
     5c8: f9409d29     	ldr	x9, [x9, #0x138]
     5cc: b85fc130     	ldur	w16, [x9, #-0x4]
     5d0: 72883331     	movk	w17, #0x4199
     5d4: 72bbff51     	movk	w17, #0xdffa, lsl #16
     5d8: 6b11021f     	cmp	w16, w17
     5dc: 54000040     	b.eq	0x5e4 <loop_show+0x38>
     5e0: d4304520     	brk	#0x8229
     5e4: d63f0120     	blr	x9
     5e8: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     5ec: d50323bf     	autiasp
     5f0: d65f03c0     	ret
