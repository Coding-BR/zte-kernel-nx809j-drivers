
/input/zte_power_supply_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000f98 <zte_power_supply_external_power_changed>:
     f98: b9445808     	ldr	w8, [x0, #0x458]
     f9c: 7100051f     	cmp	w8, #0x1
     fa0: 5400020b     	b.lt	0xfe0 <zte_power_supply_external_power_changed+0x48>
     fa4: f9400008     	ldr	x8, [x0]
     fa8: f9402508     	ldr	x8, [x8, #0x48]
     fac: b40001a8     	cbz	x8, 0xfe0 <zte_power_supply_external_power_changed+0x48>
     fb0: d503233f     	paciasp
     fb4: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     fb8: 910003fd     	mov	x29, sp
     fbc: b85fc110     	ldur	w16, [x8, #-0x4]
     fc0: 7295bdf1     	movk	w17, #0xadef
     fc4: 72ade731     	movk	w17, #0x6f39, lsl #16
     fc8: 6b11021f     	cmp	w16, w17
     fcc: 54000040     	b.eq	0xfd4 <zte_power_supply_external_power_changed+0x3c>
     fd0: d4304500     	brk	#0x8228
     fd4: d63f0100     	blr	x8
     fd8: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     fdc: d50323bf     	autiasp
     fe0: d65f03c0     	ret
