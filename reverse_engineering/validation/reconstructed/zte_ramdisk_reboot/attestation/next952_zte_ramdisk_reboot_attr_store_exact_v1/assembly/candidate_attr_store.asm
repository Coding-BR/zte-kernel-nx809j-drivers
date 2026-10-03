
/input/zte_ramdisk_reboot.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000008c0 <attr_store>:
     8c0: f9400c28     	ldr	x8, [x1, #0x18]
     8c4: b40001c8     	cbz	x8, 0x8fc <attr_store+0x3c>
     8c8: d503233f     	paciasp
     8cc: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     8d0: 910003fd     	mov	x29, sp
     8d4: b85fc110     	ldur	w16, [x8, #-0x4]
     8d8: 728ba5f1     	movk	w17, #0x5d2f
     8dc: 72af4b71     	movk	w17, #0x7a5b, lsl #16
     8e0: 6b11021f     	cmp	w16, w17
     8e4: 54000040     	b.eq	0x8ec <attr_store+0x2c>
     8e8: d4304500     	brk	#0x8228
     8ec: d63f0100     	blr	x8
     8f0: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     8f4: d50323bf     	autiasp
     8f8: d65f03c0     	ret
     8fc: 92800080     	mov	x0, #-0x5               // =-5
     900: d65f03c0     	ret
