
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000170 <zte_power_supply_put>:
     170: d503233f     	paciasp
     174: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     178: 910003fd     	mov	x29, sp
     17c: 14000009     	b	0x1a0 <zte_power_supply_put+0x30>
     180: 91116008     	add	x8, x0, #0x458
     184: 12800009     	mov	w9, #-0x1               // =-1
     188: b829011f     	stadd	w9, [x8]
     18c: 9100e000     	add	x0, x0, #0x38
     190: 94000000     	bl	0x190 <zte_power_supply_put+0x20>
		0000000000000190:  R_AARCH64_CALL26	put_device
     194: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     198: d50323bf     	autiasp
     19c: d65f03c0     	ret
     1a0: 91116008     	add	x8, x0, #0x458
     1a4: 52800029     	mov	w9, #0x1                // =1
     1a8: f9800111     	prfm	pstl1strm, [x8]
     1ac: 885f7d0a     	ldxr	w10, [x8]
     1b0: 4b09014a     	sub	w10, w10, w9
     1b4: 880b7d0a     	stxr	w11, w10, [x8]
     1b8: 35ffffab     	cbnz	w11, 0x1ac <zte_power_supply_put+0x3c>
     1bc: 17fffff4     	b	0x18c <zte_power_supply_put+0x1c>
