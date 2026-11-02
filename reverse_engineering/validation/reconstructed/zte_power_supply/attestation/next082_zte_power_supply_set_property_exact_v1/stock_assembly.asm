
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000ef8 <zte_power_supply_set_property>:
     ef8: b9445808     	ldr	w8, [x0, #0x458]
     efc: 7100051f     	cmp	w8, #0x1
     f00: 5400022b     	b.lt	0xf44 <zte_power_supply_set_property+0x4c>
     f04: f9400008     	ldr	x8, [x0]
     f08: f9401d08     	ldr	x8, [x8, #0x38]
     f0c: b40001c8     	cbz	x8, 0xf44 <zte_power_supply_set_property+0x4c>
     f10: d503233f     	paciasp
     f14: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     f18: 910003fd     	mov	x29, sp
     f1c: b85fc110     	ldur	w16, [x8, #-0x4]
     f20: 728f3931     	movk	w17, #0x79c9
     f24: 72a38031     	movk	w17, #0x1c01, lsl #16
     f28: 6b11021f     	cmp	w16, w17
     f2c: 54000040     	b.eq	0xf34 <zte_power_supply_set_property+0x3c>
     f30: d4304500     	brk	#0x8228
     f34: d63f0100     	blr	x8
     f38: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     f3c: d50323bf     	autiasp
     f40: d65f03c0     	ret
     f44: 12800240     	mov	w0, #-0x13              // =-19
     f48: d65f03c0     	ret
