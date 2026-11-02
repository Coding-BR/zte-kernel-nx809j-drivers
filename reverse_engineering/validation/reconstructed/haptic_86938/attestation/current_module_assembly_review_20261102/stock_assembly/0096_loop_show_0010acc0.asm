
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000007ea0 <loop_show>:
    7ea0: d503233f     	paciasp
    7ea4: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    7ea8: 910003fd     	mov	x29, sp
    7eac: f9404c08     	ldr	x8, [x0, #0x98]
    7eb0: aa0203e1     	mov	x1, x2
    7eb4: f9429109     	ldr	x9, [x8, #0x520]
    7eb8: d102a100     	sub	x0, x8, #0xa8
    7ebc: f9409d29     	ldr	x9, [x9, #0x138]
    7ec0: b85fc130     	ldur	w16, [x9, #-0x4]
    7ec4: 72883331     	movk	w17, #0x4199
    7ec8: 72bbff51     	movk	w17, #0xdffa, lsl #16
    7ecc: 6b11021f     	cmp	w16, w17
    7ed0: 54000040     	b.eq	0x7ed8 <loop_show+0x38>
    7ed4: d4304520     	brk	#0x8229
    7ed8: d63f0120     	blr	x9
    7edc: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    7ee0: d50323bf     	autiasp
    7ee4: d65f03c0     	ret
