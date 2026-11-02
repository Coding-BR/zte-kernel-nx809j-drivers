
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000005f8 <reg_show>:
     5f8: d503233f     	paciasp
     5fc: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     600: 910003fd     	mov	x29, sp
     604: f9404c08     	ldr	x8, [x0, #0x98]
     608: aa1f03e1     	mov	x1, xzr
     60c: f9429109     	ldr	x9, [x8, #0x520]
     610: d102a100     	sub	x0, x8, #0xa8
     614: f940a529     	ldr	x9, [x9, #0x148]
     618: b85fc130     	ldur	w16, [x9, #-0x4]
     61c: 7294bdd1     	movk	w17, #0xa5ee
     620: 72bbf0d1     	movk	w17, #0xdf86, lsl #16
     624: 6b11021f     	cmp	w16, w17
     628: 54000040     	b.eq	0x630 <reg_show+0x38>
     62c: d4304520     	brk	#0x8229
     630: d63f0120     	blr	x9
     634: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     638: d50323bf     	autiasp
     63c: d65f03c0     	ret
