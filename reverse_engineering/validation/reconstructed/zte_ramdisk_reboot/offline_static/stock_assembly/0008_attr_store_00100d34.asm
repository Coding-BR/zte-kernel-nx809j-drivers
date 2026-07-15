
/input/zte_ramdisk_reboot.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000008d4 <attr_store>:
     8d4: f9400c28     	ldr	x8, [x1, #0x18]
     8d8: b40001c8     	cbz	x8, 0x910 <attr_store+0x3c>
     8dc: d503233f     	paciasp
     8e0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     8e4: 910003fd     	mov	x29, sp
     8e8: b85fc110     	ldur	w16, [x8, #-0x4]
     8ec: 728ba5f1     	movk	w17, #0x5d2f
     8f0: 72af4b71     	movk	w17, #0x7a5b, lsl #16
     8f4: 6b11021f     	cmp	w16, w17
     8f8: 54000040     	b.eq	0x900 <attr_store+0x2c>
     8fc: d4304500     	brk	#0x8228
     900: d63f0100     	blr	x8
     904: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     908: d50323bf     	autiasp
     90c: d65f03c0     	ret
     910: 92800080     	mov	x0, #-0x5               // =-5
     914: d65f03c0     	ret
