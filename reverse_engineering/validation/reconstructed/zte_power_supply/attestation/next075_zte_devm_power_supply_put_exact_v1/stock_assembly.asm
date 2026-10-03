
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000574 <zte_devm_power_supply_put>:
     574: d503233f     	paciasp
     578: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     57c: 910003fd     	mov	x29, sp
     580: f9400028     	ldr	x8, [x1]
     584: 14000009     	b	0x5a8 <zte_devm_power_supply_put+0x34>
     588: 91116109     	add	x9, x8, #0x458
     58c: 1280000a     	mov	w10, #-0x1              // =-1
     590: b82a013f     	stadd	w10, [x9]
     594: 9100e100     	add	x0, x8, #0x38
     598: 94000000     	bl	0x598 <zte_devm_power_supply_put+0x24>
		0000000000000598:  R_AARCH64_CALL26	put_device
     59c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     5a0: d50323bf     	autiasp
     5a4: d65f03c0     	ret
     5a8: 91116109     	add	x9, x8, #0x458
     5ac: 5280002a     	mov	w10, #0x1               // =1
     5b0: f9800131     	prfm	pstl1strm, [x9]
     5b4: 885f7d2b     	ldxr	w11, [x9]
     5b8: 4b0a016b     	sub	w11, w11, w10
     5bc: 880c7d2b     	stxr	w12, w11, [x9]
     5c0: 35ffffac     	cbnz	w12, 0x5b4 <zte_devm_power_supply_put+0x40>
     5c4: 17fffff4     	b	0x594 <zte_devm_power_supply_put+0x20>
