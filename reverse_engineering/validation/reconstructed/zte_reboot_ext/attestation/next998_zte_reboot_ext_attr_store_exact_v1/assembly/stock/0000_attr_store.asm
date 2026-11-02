
/input/zte_reboot_ext.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000bf4 <attr_store>:
     bf4: f9400c28     	ldr	x8, [x1, #0x18]
     bf8: b40001c8     	cbz	x8, 0xc30 <attr_store+0x3c>
     bfc: d503233f     	paciasp
     c00: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     c04: 910003fd     	mov	x29, sp
     c08: b85fc110     	ldur	w16, [x8, #-0x4]
     c0c: 728ba5f1     	movk	w17, #0x5d2f
     c10: 72af4b71     	movk	w17, #0x7a5b, lsl #16
     c14: 6b11021f     	cmp	w16, w17
     c18: 54000040     	b.eq	0xc20 <attr_store+0x2c>
     c1c: d4304500     	brk	#0x8228
     c20: d63f0100     	blr	x8
     c24: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     c28: d50323bf     	autiasp
     c2c: d65f03c0     	ret
     c30: 92800080     	mov	x0, #-0x5               // =-5
     c34: d65f03c0     	ret
