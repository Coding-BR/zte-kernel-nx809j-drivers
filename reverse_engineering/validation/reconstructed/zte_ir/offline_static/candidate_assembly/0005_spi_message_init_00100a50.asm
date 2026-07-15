
/input/zte_ir.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000638 <spi_message_init>:
     638: aa0003e8     	mov	x8, x0
     63c: a9067c1f     	stp	xzr, xzr, [x0, #0x60]
     640: a904fc1f     	stp	xzr, xzr, [x0, #0x48]
     644: a903fc1f     	stp	xzr, xzr, [x0, #0x38]
     648: a902fc1f     	stp	xzr, xzr, [x0, #0x28]
     64c: a901fc1f     	stp	xzr, xzr, [x0, #0x18]
     650: f900081f     	str	xzr, [x0, #0x10]
     654: f8058d1f     	str	xzr, [x8, #0x58]!
     658: f9000000     	str	x0, [x0]
     65c: f9000400     	str	x0, [x0, #0x8]
     660: f9000108     	str	x8, [x8]
     664: f9003008     	str	x8, [x0, #0x60]
     668: d65f03c0     	ret
