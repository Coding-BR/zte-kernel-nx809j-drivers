
/input/zte_power_supply_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001f6c <__zte_power_supply_changed_work>:
    1f6c: d503233f     	paciasp
    1f70: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    1f74: a9015ff8     	stp	x24, x23, [sp, #0x10]
    1f78: a90257f6     	stp	x22, x21, [sp, #0x20]
    1f7c: a9034ff4     	stp	x20, x19, [sp, #0x30]
    1f80: 910003fd     	mov	x29, sp
    1f84: f9404c13     	ldr	x19, [x0, #0x98]
    1f88: f9400e75     	ldr	x21, [x19, #0x18]
    1f8c: b4000235     	cbz	x21, 0x1fd0 <__zte_power_supply_changed_work+0x64>
    1f90: f9400028     	ldr	x8, [x1]
    1f94: f9400114     	ldr	x20, [x8]
    1f98: b4000574     	cbz	x20, 0x2044 <__zte_power_supply_changed_work+0xd8>
    1f9c: f9401276     	ldr	x22, [x19, #0x20]
    1fa0: b4000536     	cbz	x22, 0x2044 <__zte_power_supply_changed_work+0xd8>
    1fa4: aa1f03e8     	mov	x8, xzr
    1fa8: 52800037     	mov	w23, #0x1               // =1
    1fac: f8687aa1     	ldr	x1, [x21, x8, lsl #3]
    1fb0: aa1403e0     	mov	x0, x20
    1fb4: 94000000     	bl	0x1fb4 <__zte_power_supply_changed_work+0x48>
		0000000000001fb4:  R_AARCH64_CALL26	strcmp
    1fb8: 34000300     	cbz	w0, 0x2018 <__zte_power_supply_changed_work+0xac>
    1fbc: 93407ee8     	sxtw	x8, w23
    1fc0: 110006f7     	add	w23, w23, #0x1
    1fc4: eb0802df     	cmp	x22, x8
    1fc8: 54ffff28     	b.hi	0x1fac <__zte_power_supply_changed_work+0x40>
    1fcc: 1400001e     	b	0x2044 <__zte_power_supply_changed_work+0xd8>
    1fd0: f9400435     	ldr	x21, [x1, #0x8]
    1fd4: b4000395     	cbz	x21, 0x2044 <__zte_power_supply_changed_work+0xd8>
    1fd8: f9400837     	ldr	x23, [x1, #0x10]
    1fdc: b4000357     	cbz	x23, 0x2044 <__zte_power_supply_changed_work+0xd8>
    1fe0: f9400276     	ldr	x22, [x19]
    1fe4: f94002d4     	ldr	x20, [x22]
    1fe8: b40002f4     	cbz	x20, 0x2044 <__zte_power_supply_changed_work+0xd8>
    1fec: aa1f03e8     	mov	x8, xzr
    1ff0: 52800038     	mov	w24, #0x1               // =1
    1ff4: f8687aa0     	ldr	x0, [x21, x8, lsl #3]
    1ff8: aa1403e1     	mov	x1, x20
    1ffc: 94000000     	bl	0x1ffc <__zte_power_supply_changed_work+0x90>
		0000000000001ffc:  R_AARCH64_CALL26	strcmp
    2000: 340000e0     	cbz	w0, 0x201c <__zte_power_supply_changed_work+0xb0>
    2004: 93407f08     	sxtw	x8, w24
    2008: 11000718     	add	w24, w24, #0x1
    200c: eb0802ff     	cmp	x23, x8
    2010: 54ffff28     	b.hi	0x1ff4 <__zte_power_supply_changed_work+0x88>
    2014: 1400000c     	b	0x2044 <__zte_power_supply_changed_work+0xd8>
    2018: f9400276     	ldr	x22, [x19]
    201c: f94026c8     	ldr	x8, [x22, #0x48]
    2020: b4000128     	cbz	x8, 0x2044 <__zte_power_supply_changed_work+0xd8>
    2024: aa1303e0     	mov	x0, x19
    2028: b85fc110     	ldur	w16, [x8, #-0x4]
    202c: 7295bdf1     	movk	w17, #0xadef
    2030: 72ade731     	movk	w17, #0x6f39, lsl #16
    2034: 6b11021f     	cmp	w16, w17
    2038: 54000040     	b.eq	0x2040 <__zte_power_supply_changed_work+0xd4>
    203c: d4304500     	brk	#0x8228
    2040: d63f0100     	blr	x8
    2044: 2a1f03e0     	mov	w0, wzr
    2048: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    204c: a94257f6     	ldp	x22, x21, [sp, #0x20]
    2050: a9415ff8     	ldp	x24, x23, [sp, #0x10]
    2054: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    2058: d50323bf     	autiasp
    205c: d65f03c0     	ret
