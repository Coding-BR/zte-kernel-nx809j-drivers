
/input/aw86320.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000013ec <aw86320_misc_para_init>:
    13ec: d503233f     	paciasp
    13f0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    13f4: f9000bf3     	str	x19, [sp, #0x10]
    13f8: 910003fd     	mov	x29, sp
    13fc: 2a1f03e1     	mov	w1, wzr
    1400: 52955542     	mov	w2, #0xaaaa             // =43690
    1404: aa0003f3     	mov	x19, x0
    1408: 97fffc0d     	bl	0x43c <haptic_i2c_write>
		0000000000001408:  R_AARCH64_CALL26	haptic_i2c_write
    140c: aa1303e0     	mov	x0, x19
    1410: 52800801     	mov	w1, #0x40               // =64
    1414: 528fafa2     	mov	w2, #0x7d7d             // =32125
    1418: 97fffc09     	bl	0x43c <haptic_i2c_write>
		0000000000001418:  R_AARCH64_CALL26	haptic_i2c_write
    141c: aa1303e0     	mov	x0, x19
    1420: 52800241     	mov	w1, #0x12               // =18
    1424: 52822102     	mov	w2, #0x1108             // =4360
    1428: 97fffc05     	bl	0x43c <haptic_i2c_write>
		0000000000001428:  R_AARCH64_CALL26	haptic_i2c_write
    142c: aa1303e0     	mov	x0, x19
    1430: 528006c1     	mov	w1, #0x36               // =54
    1434: 528504a2     	mov	w2, #0x2825             // =10277
    1438: 97fffc01     	bl	0x43c <haptic_i2c_write>
		0000000000001438:  R_AARCH64_CALL26	haptic_i2c_write
    143c: aa1303e0     	mov	x0, x19
    1440: 52800841     	mov	w1, #0x42               // =66
    1444: 52830002     	mov	w2, #0x1800             // =6144
    1448: 97fffbfd     	bl	0x43c <haptic_i2c_write>
		0000000000001448:  R_AARCH64_CALL26	haptic_i2c_write
    144c: aa1303e0     	mov	x0, x19
    1450: 528008c1     	mov	w1, #0x46               // =70
    1454: 52820742     	mov	w2, #0x103a             // =4154
    1458: 97fffbf9     	bl	0x43c <haptic_i2c_write>
		0000000000001458:  R_AARCH64_CALL26	haptic_i2c_write
    145c: aa1303e0     	mov	x0, x19
    1460: 528008e1     	mov	w1, #0x47               // =71
    1464: 52827ca2     	mov	w2, #0x13e5             // =5093
    1468: 97fffbf5     	bl	0x43c <haptic_i2c_write>
		0000000000001468:  R_AARCH64_CALL26	haptic_i2c_write
    146c: aa1303e0     	mov	x0, x19
    1470: 52800901     	mov	w1, #0x48               // =72
    1474: 5290d382     	mov	w2, #0x869c             // =34460
    1478: 97fffbf1     	bl	0x43c <haptic_i2c_write>
		0000000000001478:  R_AARCH64_CALL26	haptic_i2c_write
    147c: aa1303e0     	mov	x0, x19
    1480: 52800941     	mov	w1, #0x4a               // =74
    1484: 528100a2     	mov	w2, #0x805              // =2053
    1488: 97fffbed     	bl	0x43c <haptic_i2c_write>
		0000000000001488:  R_AARCH64_CALL26	haptic_i2c_write
    148c: aa1303e0     	mov	x0, x19
    1490: 52800961     	mov	w1, #0x4b               // =75
    1494: 52900002     	mov	w2, #0x8000             // =32768
    1498: 97fffbe9     	bl	0x43c <haptic_i2c_write>
		0000000000001498:  R_AARCH64_CALL26	haptic_i2c_write
    149c: f9400bf3     	ldr	x19, [sp, #0x10]
    14a0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    14a4: d50323bf     	autiasp
    14a8: d65f03c0     	ret
