
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001438 <aw8693x_get_first_wave_addr>:
    1438: d503233f     	paciasp
    143c: d100c3ff     	sub	sp, sp, #0x30
    1440: a9017bfd     	stp	x29, x30, [sp, #0x10]
    1444: f90013f3     	str	x19, [sp, #0x20]
    1448: 910043fd     	add	x29, sp, #0x10
    144c: d5384108     	mrs	x8, SP_EL0
    1450: aa0103f3     	mov	x19, x1
    1454: 910013e2     	add	x2, sp, #0x4
    1458: f9438908     	ldr	x8, [x8, #0x710]
    145c: 52800841     	mov	w1, #0x42               // =66
    1460: 52800063     	mov	w3, #0x3                // =3
    1464: f90007e8     	str	x8, [sp, #0x8]
    1468: 39001bff     	strb	wzr, [sp, #0x6]
    146c: 79000bff     	strh	wzr, [sp, #0x4]
    1470: 94000000     	bl	0x1470 <aw8693x_get_first_wave_addr+0x38>
		0000000000001470:  R_AARCH64_CALL26	i2c_r_bytes
    1474: 784053e8     	ldurh	w8, [sp, #0x5]
    1478: 79000268     	strh	w8, [x19]
    147c: d5384108     	mrs	x8, SP_EL0
    1480: f9438908     	ldr	x8, [x8, #0x710]
    1484: f94007e9     	ldr	x9, [sp, #0x8]
    1488: eb09011f     	cmp	x8, x9
    148c: 540000c1     	b.ne	0x14a4 <aw8693x_get_first_wave_addr+0x6c>
    1490: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1494: f94013f3     	ldr	x19, [sp, #0x20]
    1498: 9100c3ff     	add	sp, sp, #0x30
    149c: d50323bf     	autiasp
    14a0: d65f03c0     	ret
    14a4: 94000000     	bl	0x14a4 <aw8693x_get_first_wave_addr+0x6c>
		00000000000014a4:  R_AARCH64_CALL26	__stack_chk_fail
