
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000000cc <zte_power_supply_get_by_name>:
      cc: d503233f     	paciasp
      d0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
      d4: 910003fd     	mov	x29, sp
      d8: 90000008     	adrp	x8, 0x0 <.text>
		00000000000000d8:  R_AARCH64_ADR_PREL_PG_HI21	zte_power_supply_class
      dc: aa0003e2     	mov	x2, x0
      e0: 90000003     	adrp	x3, 0x0 <.text>
		00000000000000e0:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x13c
      e4: 91000063     	add	x3, x3, #0x0
		00000000000000e4:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x13c
      e8: f9400108     	ldr	x8, [x8]
		00000000000000e8:  R_AARCH64_LDST64_ABS_LO12_NC	zte_power_supply_class
      ec: aa1f03e1     	mov	x1, xzr
      f0: aa0803e0     	mov	x0, x8
      f4: 94000000     	bl	0xf4 <zte_power_supply_get_by_name+0x28>
		00000000000000f4:  R_AARCH64_CALL26	class_find_device
      f8: b40000c0     	cbz	x0, 0x110 <zte_power_supply_get_by_name+0x44>
      fc: f9404c00     	ldr	x0, [x0, #0x98]
     100: 14000007     	b	0x11c <zte_power_supply_get_by_name+0x50>
     104: 91116008     	add	x8, x0, #0x458
     108: 52800029     	mov	w9, #0x1                // =1
     10c: b829011f     	stadd	w9, [x8]
     110: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     114: d50323bf     	autiasp
     118: d65f03c0     	ret
     11c: 91116008     	add	x8, x0, #0x458
     120: f9800111     	prfm	pstl1strm, [x8]
     124: 885f7d09     	ldxr	w9, [x8]
     128: 11000529     	add	w9, w9, #0x1
     12c: 880a7d09     	stxr	w10, w9, [x8]
     130: 35ffffaa     	cbnz	w10, 0x124 <zte_power_supply_get_by_name+0x58>
     134: 17fffff7     	b	0x110 <zte_power_supply_get_by_name+0x44>
