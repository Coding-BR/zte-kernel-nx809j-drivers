
/input/zte_power_supply_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000068 <zte_power_supply_set_property>:
      68: b9445808     	ldr	w8, [x0, #0x458]
      6c: 7100051f     	cmp	w8, #0x1
      70: 5400022b     	b.lt	0xb4 <zte_power_supply_set_property+0x4c>
      74: f9400008     	ldr	x8, [x0]
      78: f9401d08     	ldr	x8, [x8, #0x38]
      7c: b40001c8     	cbz	x8, 0xb4 <zte_power_supply_set_property+0x4c>
      80: d503233f     	paciasp
      84: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
      88: 910003fd     	mov	x29, sp
      8c: b85fc110     	ldur	w16, [x8, #-0x4]
      90: 728f3931     	movk	w17, #0x79c9
      94: 72a38031     	movk	w17, #0x1c01, lsl #16
      98: 6b11021f     	cmp	w16, w17
      9c: 54000040     	b.eq	0xa4 <zte_power_supply_set_property+0x3c>
      a0: d4304500     	brk	#0x8228
      a4: d63f0100     	blr	x8
      a8: a8c17bfd     	ldp	x29, x30, [sp], #0x10
      ac: d50323bf     	autiasp
      b0: d65f03c0     	ret
      b4: 12800240     	mov	w0, #-0x13              // =-19
      b8: d65f03c0     	ret
