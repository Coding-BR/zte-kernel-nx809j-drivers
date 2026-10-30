
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000f5c <zte_power_supply_external_power_changed>:
     f5c: b9445808     	ldr	w8, [x0, #0x458]
     f60: 7100051f     	cmp	w8, #0x1
     f64: 5400020b     	b.lt	0xfa4 <zte_power_supply_external_power_changed+0x48>
     f68: f9400008     	ldr	x8, [x0]
     f6c: f9402508     	ldr	x8, [x8, #0x48]
     f70: b40001a8     	cbz	x8, 0xfa4 <zte_power_supply_external_power_changed+0x48>
     f74: d503233f     	paciasp
     f78: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     f7c: 910003fd     	mov	x29, sp
     f80: b85fc110     	ldur	w16, [x8, #-0x4]
     f84: 7295bdf1     	movk	w17, #0xadef
     f88: 72ade731     	movk	w17, #0x6f39, lsl #16
     f8c: 6b11021f     	cmp	w16, w17
     f90: 54000040     	b.eq	0xf98 <zte_power_supply_external_power_changed+0x3c>
     f94: d4304500     	brk	#0x8228
     f98: d63f0100     	blr	x8
     f9c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     fa0: d50323bf     	autiasp
     fa4: d65f03c0     	ret
