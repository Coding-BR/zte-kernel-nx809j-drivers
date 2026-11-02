
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000013e4 <aw8693x_ram_init>:
    13e4: d503233f     	paciasp
    13e8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    13ec: 910003fd     	mov	x29, sp
    13f0: 36000141     	tbz	w1, #0x0, 0x1418 <aw8693x_ram_init+0x34>
    13f4: 528008a1     	mov	w1, #0x45               // =69
    13f8: 12800082     	mov	w2, #-0x5               // =-5
    13fc: 52800083     	mov	w3, #0x4                // =4
    1400: 94000000     	bl	0x1400 <aw8693x_ram_init+0x1c>
		0000000000001400:  R_AARCH64_CALL26	i2c_w_bits
    1404: 52803e80     	mov	w0, #0x1f4              // =500
    1408: 52804b01     	mov	w1, #0x258              // =600
    140c: 52800042     	mov	w2, #0x2                // =2
    1410: 94000000     	bl	0x1410 <aw8693x_ram_init+0x2c>
		0000000000001410:  R_AARCH64_CALL26	usleep_range_state
    1414: 14000005     	b	0x1428 <aw8693x_ram_init+0x44>
    1418: 528008a1     	mov	w1, #0x45               // =69
    141c: 12800082     	mov	w2, #-0x5               // =-5
    1420: 2a1f03e3     	mov	w3, wzr
    1424: 94000000     	bl	0x1424 <aw8693x_ram_init+0x40>
		0000000000001424:  R_AARCH64_CALL26	i2c_w_bits
    1428: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    142c: d50323bf     	autiasp
    1430: d65f03c0     	ret
