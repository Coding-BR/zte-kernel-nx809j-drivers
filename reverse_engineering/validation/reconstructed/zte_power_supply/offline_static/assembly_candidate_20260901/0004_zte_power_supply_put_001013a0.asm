
/input/zte_power_supply_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000b60 <zte_power_supply_put>:
     b60: d503233f     	paciasp
     b64: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     b68: 910003fd     	mov	x29, sp
     b6c: 14000009     	b	0xb90 <zte_power_supply_put+0x30>
     b70: 91116008     	add	x8, x0, #0x458
     b74: 12800009     	mov	w9, #-0x1               // =-1
     b78: b829011f     	stadd	w9, [x8]
     b7c: 9100e000     	add	x0, x0, #0x38
     b80: 94000000     	bl	0xb80 <zte_power_supply_put+0x20>
		0000000000000b80:  R_AARCH64_CALL26	put_device
     b84: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     b88: d50323bf     	autiasp
     b8c: d65f03c0     	ret
     b90: 91116008     	add	x8, x0, #0x458
     b94: 52800029     	mov	w9, #0x1                // =1
     b98: f9800111     	prfm	pstl1strm, [x8]
     b9c: 885f7d0a     	ldxr	w10, [x8]
     ba0: 4b09014a     	sub	w10, w10, w9
     ba4: 880b7d0a     	stxr	w11, w10, [x8]
     ba8: 35ffffab     	cbnz	w11, 0xb9c <zte_power_supply_put+0x3c>
     bac: 17fffff4     	b	0xb7c <zte_power_supply_put+0x1c>
