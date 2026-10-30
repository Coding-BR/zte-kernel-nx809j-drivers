
/input/zte_reboot_ext.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000534 <attr_store>:
     534: f9400c28     	ldr	x8, [x1, #0x18]
     538: b40001c8     	cbz	x8, 0x570 <attr_store+0x3c>
     53c: d503233f     	paciasp
     540: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     544: 910003fd     	mov	x29, sp
     548: b85fc110     	ldur	w16, [x8, #-0x4]
     54c: 728ba5f1     	movk	w17, #0x5d2f
     550: 72af4b71     	movk	w17, #0x7a5b, lsl #16
     554: 6b11021f     	cmp	w16, w17
     558: 54000040     	b.eq	0x560 <attr_store+0x2c>
     55c: d4304500     	brk	#0x8228
     560: d63f0100     	blr	x8
     564: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     568: d50323bf     	autiasp
     56c: d65f03c0     	ret
     570: 92800080     	mov	x0, #-0x5               // =-5
     574: d65f03c0     	ret
