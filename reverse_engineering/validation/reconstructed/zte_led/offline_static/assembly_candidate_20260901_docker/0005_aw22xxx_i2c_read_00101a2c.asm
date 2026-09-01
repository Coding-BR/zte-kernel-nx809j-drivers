
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001420 <aw22xxx_i2c_read>:
    1420: d503233f     	paciasp
    1424: d100c3ff     	sub	sp, sp, #0x30
    1428: a9017bfd     	stp	x29, x30, [sp, #0x10]
    142c: a9024ff4     	stp	x20, x19, [sp, #0x20]
    1430: 910043fd     	add	x29, sp, #0x10
    1434: d5384108     	mrs	x8, SP_EL0
    1438: aa0203f3     	mov	x19, x2
    143c: 52800022     	mov	w2, #0x1                // =1
    1440: f9438908     	ldr	x8, [x8, #0x710]
    1444: 2a1f03e3     	mov	w3, wzr
    1448: f90007e8     	str	x8, [sp, #0x8]
    144c: f9400014     	ldr	x20, [x0]
    1450: 390013e1     	strb	w1, [sp, #0x4]
    1454: 910013e1     	add	x1, sp, #0x4
    1458: aa1403e0     	mov	x0, x20
    145c: 94000000     	bl	0x145c <aw22xxx_i2c_read+0x3c>
		000000000000145c:  R_AARCH64_CALL26	i2c_transfer_buffer_flags
    1460: 37f80220     	tbnz	w0, #0x1f, 0x14a4 <aw22xxx_i2c_read+0x84>
    1464: aa1403e0     	mov	x0, x20
    1468: aa1303e1     	mov	x1, x19
    146c: 52800022     	mov	w2, #0x1                // =1
    1470: 52800023     	mov	w3, #0x1                // =1
    1474: 94000000     	bl	0x1474 <aw22xxx_i2c_read+0x54>
		0000000000001474:  R_AARCH64_CALL26	i2c_transfer_buffer_flags
    1478: 37f80320     	tbnz	w0, #0x1f, 0x14dc <aw22xxx_i2c_read+0xbc>
    147c: d5384108     	mrs	x8, SP_EL0
    1480: f9438908     	ldr	x8, [x8, #0x710]
    1484: f94007e9     	ldr	x9, [sp, #0x8]
    1488: eb09011f     	cmp	x8, x9
    148c: 54000441     	b.ne	0x1514 <aw22xxx_i2c_read+0xf4>
    1490: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1494: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1498: 9100c3ff     	add	sp, sp, #0x30
    149c: d50323bf     	autiasp
    14a0: d65f03c0     	ret
    14a4: 90000000     	adrp	x0, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		00000000000014a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd69
    14a8: 91000000     	add	x0, x0, #0x0
		00000000000014a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd69
    14ac: 90000001     	adrp	x1, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		00000000000014ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x48f
    14b0: 91000021     	add	x1, x1, #0x0
		00000000000014b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x48f
    14b4: 94000000     	bl	0x14b4 <aw22xxx_i2c_read+0x94>
		00000000000014b4:  R_AARCH64_CALL26	_printk
    14b8: 52800020     	mov	w0, #0x1                // =1
    14bc: 94000000     	bl	0x14bc <aw22xxx_i2c_read+0x9c>
		00000000000014bc:  R_AARCH64_CALL26	msleep
    14c0: 910013e1     	add	x1, sp, #0x4
    14c4: aa1403e0     	mov	x0, x20
    14c8: 52800022     	mov	w2, #0x1                // =1
    14cc: 2a1f03e3     	mov	w3, wzr
    14d0: 94000000     	bl	0x14d0 <aw22xxx_i2c_read+0xb0>
		00000000000014d0:  R_AARCH64_CALL26	i2c_transfer_buffer_flags
    14d4: 36fffc80     	tbz	w0, #0x1f, 0x1464 <aw22xxx_i2c_read+0x44>
    14d8: 17ffffe9     	b	0x147c <aw22xxx_i2c_read+0x5c>
    14dc: 39000260     	strb	w0, [x19]
    14e0: 90000000     	adrp	x0, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		00000000000014e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x140f
    14e4: 91000000     	add	x0, x0, #0x0
		00000000000014e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x140f
    14e8: 90000001     	adrp	x1, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		00000000000014e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x48f
    14ec: 91000021     	add	x1, x1, #0x0
		00000000000014ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x48f
    14f0: 94000000     	bl	0x14f0 <aw22xxx_i2c_read+0xd0>
		00000000000014f0:  R_AARCH64_CALL26	_printk
    14f4: 52800020     	mov	w0, #0x1                // =1
    14f8: 94000000     	bl	0x14f8 <aw22xxx_i2c_read+0xd8>
		00000000000014f8:  R_AARCH64_CALL26	msleep
    14fc: aa1403e0     	mov	x0, x20
    1500: aa1303e1     	mov	x1, x19
    1504: 52800022     	mov	w2, #0x1                // =1
    1508: 52800023     	mov	w3, #0x1                // =1
    150c: 94000000     	bl	0x150c <aw22xxx_i2c_read+0xec>
		000000000000150c:  R_AARCH64_CALL26	i2c_transfer_buffer_flags
    1510: 17ffffdb     	b	0x147c <aw22xxx_i2c_read+0x5c>
    1514: 94000000     	bl	0x1514 <aw22xxx_i2c_read+0xf4>
		0000000000001514:  R_AARCH64_CALL26	__stack_chk_fail
