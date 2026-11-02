
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000f50 <zte_power_supply_property_is_writeable>:
     f50: b9445808     	ldr	w8, [x0, #0x458]
     f54: 7100051f     	cmp	w8, #0x1
     f58: 5400022b     	b.lt	0xf9c <zte_power_supply_property_is_writeable+0x4c>
     f5c: f9400008     	ldr	x8, [x0]
     f60: f9402108     	ldr	x8, [x8, #0x40]
     f64: b40001c8     	cbz	x8, 0xf9c <zte_power_supply_property_is_writeable+0x4c>
     f68: d503233f     	paciasp
     f6c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     f70: 910003fd     	mov	x29, sp
     f74: b85fc110     	ldur	w16, [x8, #-0x4]
     f78: 72839231     	movk	w17, #0x1c91
     f7c: 72a7e131     	movk	w17, #0x3f09, lsl #16
     f80: 6b11021f     	cmp	w16, w17
     f84: 54000040     	b.eq	0xf8c <zte_power_supply_property_is_writeable+0x3c>
     f88: d4304500     	brk	#0x8228
     f8c: d63f0100     	blr	x8
     f90: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     f94: d50323bf     	autiasp
     f98: d65f03c0     	ret
     f9c: 12800240     	mov	w0, #-0x13              // =-19
     fa0: d65f03c0     	ret
