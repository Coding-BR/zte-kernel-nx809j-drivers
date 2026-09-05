
/input/zte_reboot_ext.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000bac <attr_show>:
     bac: f9400828     	ldr	x8, [x1, #0x10]
     bb0: b40001c8     	cbz	x8, 0xbe8 <attr_show+0x3c>
     bb4: d503233f     	paciasp
     bb8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     bbc: 910003fd     	mov	x29, sp
     bc0: b85fc110     	ldur	w16, [x8, #-0x4]
     bc4: 728d4ab1     	movk	w17, #0x6a55
     bc8: 72ac31d1     	movk	w17, #0x618e, lsl #16
     bcc: 6b11021f     	cmp	w16, w17
     bd0: 54000040     	b.eq	0xbd8 <attr_show+0x2c>
     bd4: d4304500     	brk	#0x8228
     bd8: d63f0100     	blr	x8
     bdc: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     be0: d50323bf     	autiasp
     be4: d65f03c0     	ret
     be8: 92800080     	mov	x0, #-0x5               // =-5
     bec: d65f03c0     	ret
