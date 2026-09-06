
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000185c <__zte_power_supply_changed_work>:
    185c: d503233f     	paciasp
    1860: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    1864: a9015ff8     	stp	x24, x23, [sp, #0x10]
    1868: a90257f6     	stp	x22, x21, [sp, #0x20]
    186c: a9034ff4     	stp	x20, x19, [sp, #0x30]
    1870: 910003fd     	mov	x29, sp
    1874: f9404c13     	ldr	x19, [x0, #0x98]
    1878: f9400e75     	ldr	x21, [x19, #0x18]
    187c: b4000235     	cbz	x21, 0x18c0 <__zte_power_supply_changed_work+0x64>
    1880: f9400028     	ldr	x8, [x1]
    1884: f9400114     	ldr	x20, [x8]
    1888: b4000574     	cbz	x20, 0x1934 <__zte_power_supply_changed_work+0xd8>
    188c: f9401276     	ldr	x22, [x19, #0x20]
    1890: b4000536     	cbz	x22, 0x1934 <__zte_power_supply_changed_work+0xd8>
    1894: aa1f03e8     	mov	x8, xzr
    1898: 52800037     	mov	w23, #0x1               // =1
    189c: f8687aa1     	ldr	x1, [x21, x8, lsl #3]
    18a0: aa1403e0     	mov	x0, x20
    18a4: 94000000     	bl	0x18a4 <__zte_power_supply_changed_work+0x48>
		00000000000018a4:  R_AARCH64_CALL26	strcmp
    18a8: 34000300     	cbz	w0, 0x1908 <__zte_power_supply_changed_work+0xac>
    18ac: 93407ee8     	sxtw	x8, w23
    18b0: 110006f7     	add	w23, w23, #0x1
    18b4: eb0802df     	cmp	x22, x8
    18b8: 54ffff28     	b.hi	0x189c <__zte_power_supply_changed_work+0x40>
    18bc: 1400001e     	b	0x1934 <__zte_power_supply_changed_work+0xd8>
    18c0: f9400436     	ldr	x22, [x1, #0x8]
    18c4: b4000396     	cbz	x22, 0x1934 <__zte_power_supply_changed_work+0xd8>
    18c8: f9400275     	ldr	x21, [x19]
    18cc: f94002b4     	ldr	x20, [x21]
    18d0: b4000334     	cbz	x20, 0x1934 <__zte_power_supply_changed_work+0xd8>
    18d4: f9400837     	ldr	x23, [x1, #0x10]
    18d8: b40002f7     	cbz	x23, 0x1934 <__zte_power_supply_changed_work+0xd8>
    18dc: aa1f03e8     	mov	x8, xzr
    18e0: 52800038     	mov	w24, #0x1               // =1
    18e4: f8687ac0     	ldr	x0, [x22, x8, lsl #3]
    18e8: aa1403e1     	mov	x1, x20
    18ec: 94000000     	bl	0x18ec <__zte_power_supply_changed_work+0x90>
		00000000000018ec:  R_AARCH64_CALL26	strcmp
    18f0: 340000e0     	cbz	w0, 0x190c <__zte_power_supply_changed_work+0xb0>
    18f4: 93407f08     	sxtw	x8, w24
    18f8: 11000718     	add	w24, w24, #0x1
    18fc: eb0802ff     	cmp	x23, x8
    1900: 54ffff28     	b.hi	0x18e4 <__zte_power_supply_changed_work+0x88>
    1904: 1400000c     	b	0x1934 <__zte_power_supply_changed_work+0xd8>
    1908: f9400275     	ldr	x21, [x19]
    190c: f94026a8     	ldr	x8, [x21, #0x48]
    1910: b4000128     	cbz	x8, 0x1934 <__zte_power_supply_changed_work+0xd8>
    1914: aa1303e0     	mov	x0, x19
    1918: b85fc110     	ldur	w16, [x8, #-0x4]
    191c: 7295bdf1     	movk	w17, #0xadef
    1920: 72ade731     	movk	w17, #0x6f39, lsl #16
    1924: 6b11021f     	cmp	w16, w17
    1928: 54000040     	b.eq	0x1930 <__zte_power_supply_changed_work+0xd4>
    192c: d4304500     	brk	#0x8228
    1930: d63f0100     	blr	x8
    1934: 2a1f03e0     	mov	w0, wzr
    1938: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    193c: a94257f6     	ldp	x22, x21, [sp, #0x20]
    1940: a9415ff8     	ldp	x24, x23, [sp, #0x10]
    1944: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    1948: d50323bf     	autiasp
    194c: d65f03c0     	ret
