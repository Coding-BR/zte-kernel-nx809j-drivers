
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000068 <zte_power_supply_set_battery_charged>:
      68: b9445808     	ldr	w8, [x0, #0x458]
      6c: 37f802a8     	tbnz	w8, #0x1f, 0xc0 <zte_power_supply_set_battery_charged+0x58>
      70: f9400008     	ldr	x8, [x0]
      74: b9400909     	ldr	w9, [x8, #0x8]
      78: 7100053f     	cmp	w9, #0x1
      7c: 54000221     	b.ne	0xc0 <zte_power_supply_set_battery_charged+0x58>
      80: f9402908     	ldr	x8, [x8, #0x50]
      84: b40001e8     	cbz	x8, 0xc0 <zte_power_supply_set_battery_charged+0x58>
      88: d503233f     	paciasp
      8c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
      90: 910003fd     	mov	x29, sp
      94: b85fc110     	ldur	w16, [x8, #-0x4]
      98: 7295bdf1     	movk	w17, #0xadef
      9c: 72ade731     	movk	w17, #0x6f39, lsl #16
      a0: 6b11021f     	cmp	w16, w17
      a4: 54000040     	b.eq	0xac <zte_power_supply_set_battery_charged+0x44>
      a8: d4304500     	brk	#0x8228
      ac: d63f0100     	blr	x8
      b0: 2a1f03e0     	mov	w0, wzr
      b4: a8c17bfd     	ldp	x29, x30, [sp], #0x10
      b8: d50323bf     	autiasp
      bc: d65f03c0     	ret
      c0: 128002a0     	mov	w0, #-0x16              // =-22
      c4: d65f03c0     	ret
