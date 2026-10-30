
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001214 <aw8693x_rtp_get_fifo_afi>:
    1214: d503233f     	paciasp
    1218: d100c3ff     	sub	sp, sp, #0x30
    121c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    1220: f90013f3     	str	x19, [sp, #0x20]
    1224: 910043fd     	add	x29, sp, #0x10
    1228: d5384108     	mrs	x8, SP_EL0
    122c: aa0003f3     	mov	x19, x0
    1230: f9438908     	ldr	x8, [x8, #0x710]
    1234: f90007e8     	str	x8, [sp, #0x8]
    1238: 39404408     	ldrb	w8, [x0, #0x11]
    123c: 390013ff     	strb	wzr, [sp, #0x4]
    1240: 7100051f     	cmp	w8, #0x1
    1244: 54000081     	b.ne	0x1254 <aw8693x_rtp_get_fifo_afi+0x40>
    1248: f9419668     	ldr	x8, [x19, #0x328]
    124c: 52800b69     	mov	w9, #0x5b               // =91
    1250: 79000509     	strh	w9, [x8, #0x2]
    1254: 910013e2     	add	x2, sp, #0x4
    1258: aa1303e0     	mov	x0, x19
    125c: 52800041     	mov	w1, #0x2                // =2
    1260: 52800023     	mov	w3, #0x1                // =1
    1264: 94000000     	bl	0x1264 <aw8693x_rtp_get_fifo_afi+0x50>
		0000000000001264:  R_AARCH64_CALL26	i2c_r_bytes
    1268: 39404668     	ldrb	w8, [x19, #0x11]
    126c: 7100051f     	cmp	w8, #0x1
    1270: 54000061     	b.ne	0x127c <aw8693x_rtp_get_fifo_afi+0x68>
    1274: f9419668     	ldr	x8, [x19, #0x328]
    1278: 7900051f     	strh	wzr, [x8, #0x2]
    127c: d5384109     	mrs	x9, SP_EL0
    1280: f9438929     	ldr	x9, [x9, #0x710]
    1284: 394013e8     	ldrb	w8, [sp, #0x4]
    1288: f94007ea     	ldr	x10, [sp, #0x8]
    128c: eb0a013f     	cmp	x9, x10
    1290: 540000e1     	b.ne	0x12ac <aw8693x_rtp_get_fifo_afi+0x98>
    1294: 53030d00     	ubfx	w0, w8, #3, #1
    1298: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    129c: f94013f3     	ldr	x19, [sp, #0x20]
    12a0: 9100c3ff     	add	sp, sp, #0x30
    12a4: d50323bf     	autiasp
    12a8: d65f03c0     	ret
    12ac: 94000000     	bl	0x12ac <aw8693x_rtp_get_fifo_afi+0x98>
		00000000000012ac:  R_AARCH64_CALL26	__stack_chk_fail
