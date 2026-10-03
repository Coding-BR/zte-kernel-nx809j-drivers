
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001974 <__zte_power_supply_changed_work>:
    1974: d503233f     	paciasp
    1978: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    197c: a9015ff8     	stp	x24, x23, [sp, #0x10]
    1980: a90257f6     	stp	x22, x21, [sp, #0x20]
    1984: a9034ff4     	stp	x20, x19, [sp, #0x30]
    1988: 910003fd     	mov	x29, sp
    198c: f9404c13     	ldr	x19, [x0, #0x98]
    1990: f9400e75     	ldr	x21, [x19, #0x18]
    1994: b4000235     	cbz	x21, 0x19d8 <__zte_power_supply_changed_work+0x64>
    1998: f9400028     	ldr	x8, [x1]
    199c: f9400114     	ldr	x20, [x8]
    19a0: b4000574     	cbz	x20, 0x1a4c <__zte_power_supply_changed_work+0xd8>
    19a4: f9401276     	ldr	x22, [x19, #0x20]
    19a8: b4000536     	cbz	x22, 0x1a4c <__zte_power_supply_changed_work+0xd8>
    19ac: aa1f03e8     	mov	x8, xzr
    19b0: 52800037     	mov	w23, #0x1               // =1
    19b4: f8687aa1     	ldr	x1, [x21, x8, lsl #3]
    19b8: aa1403e0     	mov	x0, x20
    19bc: 94000000     	bl	0x19bc <__zte_power_supply_changed_work+0x48>
		00000000000019bc:  R_AARCH64_CALL26	strcmp
    19c0: 34000300     	cbz	w0, 0x1a20 <__zte_power_supply_changed_work+0xac>
    19c4: 93407ee8     	sxtw	x8, w23
    19c8: 110006f7     	add	w23, w23, #0x1
    19cc: eb0802df     	cmp	x22, x8
    19d0: 54ffff28     	b.hi	0x19b4 <__zte_power_supply_changed_work+0x40>
    19d4: 1400001e     	b	0x1a4c <__zte_power_supply_changed_work+0xd8>
    19d8: f9400436     	ldr	x22, [x1, #0x8]
    19dc: b4000396     	cbz	x22, 0x1a4c <__zte_power_supply_changed_work+0xd8>
    19e0: f9400275     	ldr	x21, [x19]
    19e4: f94002b4     	ldr	x20, [x21]
    19e8: b4000334     	cbz	x20, 0x1a4c <__zte_power_supply_changed_work+0xd8>
    19ec: f9400837     	ldr	x23, [x1, #0x10]
    19f0: b40002f7     	cbz	x23, 0x1a4c <__zte_power_supply_changed_work+0xd8>
    19f4: aa1f03e8     	mov	x8, xzr
    19f8: 52800038     	mov	w24, #0x1               // =1
    19fc: f8687ac0     	ldr	x0, [x22, x8, lsl #3]
    1a00: aa1403e1     	mov	x1, x20
    1a04: 94000000     	bl	0x1a04 <__zte_power_supply_changed_work+0x90>
		0000000000001a04:  R_AARCH64_CALL26	strcmp
    1a08: 340000e0     	cbz	w0, 0x1a24 <__zte_power_supply_changed_work+0xb0>
    1a0c: 93407f08     	sxtw	x8, w24
    1a10: 11000718     	add	w24, w24, #0x1
    1a14: eb0802ff     	cmp	x23, x8
    1a18: 54ffff28     	b.hi	0x19fc <__zte_power_supply_changed_work+0x88>
    1a1c: 1400000c     	b	0x1a4c <__zte_power_supply_changed_work+0xd8>
    1a20: f9400275     	ldr	x21, [x19]
    1a24: f94026a8     	ldr	x8, [x21, #0x48]
    1a28: b4000128     	cbz	x8, 0x1a4c <__zte_power_supply_changed_work+0xd8>
    1a2c: aa1303e0     	mov	x0, x19
    1a30: b85fc110     	ldur	w16, [x8, #-0x4]
    1a34: 7295bdf1     	movk	w17, #0xadef
    1a38: 72ade731     	movk	w17, #0x6f39, lsl #16
    1a3c: 6b11021f     	cmp	w16, w17
    1a40: 54000040     	b.eq	0x1a48 <__zte_power_supply_changed_work+0xd4>
    1a44: d4304500     	brk	#0x8228
    1a48: d63f0100     	blr	x8
    1a4c: 2a1f03e0     	mov	w0, wzr
    1a50: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    1a54: a94257f6     	ldp	x22, x21, [sp, #0x20]
    1a58: a9415ff8     	ldp	x24, x23, [sp, #0x10]
    1a5c: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    1a60: d50323bf     	autiasp
    1a64: d65f03c0     	ret
