
/input/zte_ramdisk_reboot.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000c14 <attr_store>:
     c14: f9400c28     	ldr	x8, [x1, #0x18]
     c18: b40001c8     	cbz	x8, 0xc50 <attr_store+0x3c>
     c1c: d503233f     	paciasp
     c20: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     c24: 910003fd     	mov	x29, sp
     c28: b85fc110     	ldur	w16, [x8, #-0x4]
     c2c: 728ba5f1     	movk	w17, #0x5d2f
     c30: 72af4b71     	movk	w17, #0x7a5b, lsl #16
     c34: 6b11021f     	cmp	w16, w17
     c38: 54000040     	b.eq	0xc40 <attr_store+0x2c>
     c3c: d4304500     	brk	#0x8228
     c40: d63f0100     	blr	x8
     c44: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     c48: d50323bf     	autiasp
     c4c: d65f03c0     	ret
     c50: 92800080     	mov	x0, #-0x5               // =-5
     c54: d65f03c0     	ret
