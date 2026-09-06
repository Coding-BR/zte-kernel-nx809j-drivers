
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000fa8 <zte_power_supply_external_power_changed>:
     fa8: b9445808     	ldr	w8, [x0, #0x458]
     fac: 7100051f     	cmp	w8, #0x1
     fb0: 5400020b     	b.lt	0xff0 <zte_power_supply_external_power_changed+0x48>
     fb4: f9400008     	ldr	x8, [x0]
     fb8: f9402508     	ldr	x8, [x8, #0x48]
     fbc: b40001a8     	cbz	x8, 0xff0 <zte_power_supply_external_power_changed+0x48>
     fc0: d503233f     	paciasp
     fc4: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     fc8: 910003fd     	mov	x29, sp
     fcc: b85fc110     	ldur	w16, [x8, #-0x4]
     fd0: 7295bdf1     	movk	w17, #0xadef
     fd4: 72ade731     	movk	w17, #0x6f39, lsl #16
     fd8: 6b11021f     	cmp	w16, w17
     fdc: 54000040     	b.eq	0xfe4 <zte_power_supply_external_power_changed+0x3c>
     fe0: d4304500     	brk	#0x8228
     fe4: d63f0100     	blr	x8
     fe8: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     fec: d50323bf     	autiasp
     ff0: d65f03c0     	ret
