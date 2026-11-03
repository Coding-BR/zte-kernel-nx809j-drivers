
/input/zte_ramdisk_reboot.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000088c <attr_show>:
     88c: f9400828     	ldr	x8, [x1, #0x10]
     890: b40001c8     	cbz	x8, 0x8c8 <attr_show+0x3c>
     894: d503233f     	paciasp
     898: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     89c: 910003fd     	mov	x29, sp
     8a0: b85fc110     	ldur	w16, [x8, #-0x4]
     8a4: 728d4ab1     	movk	w17, #0x6a55
     8a8: 72ac31d1     	movk	w17, #0x618e, lsl #16
     8ac: 6b11021f     	cmp	w16, w17
     8b0: 54000040     	b.eq	0x8b8 <attr_show+0x2c>
     8b4: d4304500     	brk	#0x8228
     8b8: d63f0100     	blr	x8
     8bc: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     8c0: d50323bf     	autiasp
     8c4: d65f03c0     	ret
     8c8: 92800080     	mov	x0, #-0x5               // =-5
     8cc: d65f03c0     	ret
