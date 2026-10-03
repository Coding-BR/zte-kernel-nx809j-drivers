
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000000c0 <zte_power_supply_property_is_writeable>:
      c0: b9445808     	ldr	w8, [x0, #0x458]
      c4: 7100051f     	cmp	w8, #0x1
      c8: 5400022b     	b.lt	0x10c <zte_power_supply_property_is_writeable+0x4c>
      cc: f9400008     	ldr	x8, [x0]
      d0: f9402108     	ldr	x8, [x8, #0x40]
      d4: b40001c8     	cbz	x8, 0x10c <zte_power_supply_property_is_writeable+0x4c>
      d8: d503233f     	paciasp
      dc: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
      e0: 910003fd     	mov	x29, sp
      e4: b85fc110     	ldur	w16, [x8, #-0x4]
      e8: 72839231     	movk	w17, #0x1c91
      ec: 72a7e131     	movk	w17, #0x3f09, lsl #16
      f0: 6b11021f     	cmp	w16, w17
      f4: 54000040     	b.eq	0xfc <zte_power_supply_property_is_writeable+0x3c>
      f8: d4304500     	brk	#0x8228
      fc: d63f0100     	blr	x8
     100: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     104: d50323bf     	autiasp
     108: d65f03c0     	ret
     10c: 12800240     	mov	w0, #-0x13              // =-19
     110: d65f03c0     	ret
