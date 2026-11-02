
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000007ff0 <reg_show>:
    7ff0: d503233f     	paciasp
    7ff4: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    7ff8: 910003fd     	mov	x29, sp
    7ffc: f9404c08     	ldr	x8, [x0, #0x98]
    8000: aa1f03e1     	mov	x1, xzr
    8004: f9429109     	ldr	x9, [x8, #0x520]
    8008: d102a100     	sub	x0, x8, #0xa8
    800c: f940a529     	ldr	x9, [x9, #0x148]
    8010: b85fc130     	ldur	w16, [x9, #-0x4]
    8014: 7294bdd1     	movk	w17, #0xa5ee
    8018: 72bbf0d1     	movk	w17, #0xdf86, lsl #16
    801c: 6b11021f     	cmp	w16, w17
    8020: 54000040     	b.eq	0x8028 <reg_show+0x38>
    8024: d4304520     	brk	#0x8229
    8028: d63f0120     	blr	x9
    802c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    8030: d50323bf     	autiasp
    8034: d65f03c0     	ret
