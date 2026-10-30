
/input/zte_power_supply_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <zte_power_supply_get_property>:
       4: b9445808     	ldr	w8, [x0, #0x458]
       8: 7100011f     	cmp	w8, #0x0
       c: 5400020d     	b.le	0x4c <zte_power_supply_get_property+0x48>
      10: d503233f     	paciasp
      14: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
      18: 910003fd     	mov	x29, sp
      1c: f9400008     	ldr	x8, [x0]
      20: f9401908     	ldr	x8, [x8, #0x30]
      24: b85fc110     	ldur	w16, [x8, #-0x4]
      28: 729d92b1     	movk	w17, #0xec95
      2c: 72b0ad51     	movk	w17, #0x856a, lsl #16
      30: 6b11021f     	cmp	w16, w17
      34: 54000040     	b.eq	0x3c <zte_power_supply_get_property+0x38>
      38: d4304500     	brk	#0x8228
      3c: d63f0100     	blr	x8
      40: a8c17bfd     	ldp	x29, x30, [sp], #0x10
      44: d50323bf     	autiasp
      48: d65f03c0     	ret
      4c: 39515408     	ldrb	w8, [x0, #0x455]
      50: 12800249     	mov	w9, #-0x13              // =-19
      54: 7100011f     	cmp	w8, #0x0
      58: 12800148     	mov	w8, #-0xb               // =-11
      5c: 1a881120     	csel	w0, w9, w8, ne
      60: d65f03c0     	ret
