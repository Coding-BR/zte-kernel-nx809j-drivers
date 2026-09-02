
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000b28 <zte_power_supply_put>:
     b28: d503233f     	paciasp
     b2c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     b30: 910003fd     	mov	x29, sp
     b34: 14000009     	b	0xb58 <zte_power_supply_put+0x30>
     b38: 91116008     	add	x8, x0, #0x458
     b3c: 12800009     	mov	w9, #-0x1               // =-1
     b40: b829011f     	stadd	w9, [x8]
     b44: 9100e000     	add	x0, x0, #0x38
     b48: 94000000     	bl	0xb48 <zte_power_supply_put+0x20>
		0000000000000b48:  R_AARCH64_CALL26	put_device
     b4c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     b50: d50323bf     	autiasp
     b54: d65f03c0     	ret
     b58: 91116008     	add	x8, x0, #0x458
     b5c: 52800029     	mov	w9, #0x1                // =1
     b60: f9800111     	prfm	pstl1strm, [x8]
     b64: 885f7d0a     	ldxr	w10, [x8]
     b68: 4b09014a     	sub	w10, w10, w9
     b6c: 880b7d0a     	stxr	w11, w10, [x8]
     b70: 35ffffab     	cbnz	w11, 0xb64 <zte_power_supply_put+0x3c>
     b74: 17fffff4     	b	0xb44 <zte_power_supply_put+0x1c>
