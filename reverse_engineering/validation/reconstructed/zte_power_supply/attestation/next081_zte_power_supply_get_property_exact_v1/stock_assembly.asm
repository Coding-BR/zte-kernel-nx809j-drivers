
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000e94 <zte_power_supply_get_property>:
     e94: b9445808     	ldr	w8, [x0, #0x458]
     e98: 7100011f     	cmp	w8, #0x0
     e9c: 5400020d     	b.le	0xedc <zte_power_supply_get_property+0x48>
     ea0: d503233f     	paciasp
     ea4: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     ea8: 910003fd     	mov	x29, sp
     eac: f9400008     	ldr	x8, [x0]
     eb0: f9401908     	ldr	x8, [x8, #0x30]
     eb4: b85fc110     	ldur	w16, [x8, #-0x4]
     eb8: 729d92b1     	movk	w17, #0xec95
     ebc: 72b0ad51     	movk	w17, #0x856a, lsl #16
     ec0: 6b11021f     	cmp	w16, w17
     ec4: 54000040     	b.eq	0xecc <zte_power_supply_get_property+0x38>
     ec8: d4304500     	brk	#0x8228
     ecc: d63f0100     	blr	x8
     ed0: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     ed4: d50323bf     	autiasp
     ed8: d65f03c0     	ret
     edc: 39515408     	ldrb	w8, [x0, #0x455]
     ee0: 12800249     	mov	w9, #-0x13              // =-19
     ee4: 7100011f     	cmp	w8, #0x0
     ee8: 12800148     	mov	w8, #-0xb               // =-11
     eec: 1a881120     	csel	w0, w9, w8, ne
     ef0: d65f03c0     	ret
