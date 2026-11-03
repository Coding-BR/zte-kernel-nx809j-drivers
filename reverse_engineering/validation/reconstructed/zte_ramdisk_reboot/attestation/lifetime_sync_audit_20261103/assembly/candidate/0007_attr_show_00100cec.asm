
/input/zte_ramdisk_reboot.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000bcc <attr_show>:
     bcc: f9400828     	ldr	x8, [x1, #0x10]
     bd0: b40001c8     	cbz	x8, 0xc08 <attr_show+0x3c>
     bd4: d503233f     	paciasp
     bd8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     bdc: 910003fd     	mov	x29, sp
     be0: b85fc110     	ldur	w16, [x8, #-0x4]
     be4: 728d4ab1     	movk	w17, #0x6a55
     be8: 72ac31d1     	movk	w17, #0x618e, lsl #16
     bec: 6b11021f     	cmp	w16, w17
     bf0: 54000040     	b.eq	0xbf8 <attr_show+0x2c>
     bf4: d4304500     	brk	#0x8228
     bf8: d63f0100     	blr	x8
     bfc: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     c00: d50323bf     	autiasp
     c04: d65f03c0     	ret
     c08: 92800080     	mov	x0, #-0x5               // =-5
     c0c: d65f03c0     	ret
