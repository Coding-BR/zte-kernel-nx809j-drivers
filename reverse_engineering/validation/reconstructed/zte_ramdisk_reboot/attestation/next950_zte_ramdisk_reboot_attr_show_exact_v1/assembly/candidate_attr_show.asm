
/input/zte_ramdisk_reboot.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000878 <attr_show>:
     878: f9400828     	ldr	x8, [x1, #0x10]
     87c: b40001c8     	cbz	x8, 0x8b4 <attr_show+0x3c>
     880: d503233f     	paciasp
     884: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     888: 910003fd     	mov	x29, sp
     88c: b85fc110     	ldur	w16, [x8, #-0x4]
     890: 728d4ab1     	movk	w17, #0x6a55
     894: 72ac31d1     	movk	w17, #0x618e, lsl #16
     898: 6b11021f     	cmp	w16, w17
     89c: 54000040     	b.eq	0x8a4 <attr_show+0x2c>
     8a0: d4304500     	brk	#0x8228
     8a4: d63f0100     	blr	x8
     8a8: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     8ac: d50323bf     	autiasp
     8b0: d65f03c0     	ret
     8b4: 92800080     	mov	x0, #-0x5               // =-5
     8b8: d65f03c0     	ret
