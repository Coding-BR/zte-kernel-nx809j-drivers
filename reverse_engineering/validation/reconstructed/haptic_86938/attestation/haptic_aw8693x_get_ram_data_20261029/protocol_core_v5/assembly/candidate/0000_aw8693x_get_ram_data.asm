
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002558 <aw8693x_get_ram_data>:
    2558: b9445008     	ldr	w8, [x0, #0x450]
    255c: 340003c8     	cbz	w8, 0x25d4 <aw8693x_get_ram_data+0x7c>
    2560: d503233f     	paciasp
    2564: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    2568: f9000bf7     	str	x23, [sp, #0x10]
    256c: a90257f6     	stp	x22, x21, [sp, #0x20]
    2570: a9034ff4     	stp	x20, x19, [sp, #0x30]
    2574: 910003fd     	mov	x29, sp
    2578: aa0003f3     	mov	x19, x0
    257c: aa0103f4     	mov	x20, x1
    2580: 2a1f03f6     	mov	w22, wzr
    2584: 52808017     	mov	w23, #0x400             // =1024
    2588: 4b160108     	sub	w8, w8, w22
    258c: 8b36c282     	add	x2, x20, w22, sxtw
    2590: aa1303e0     	mov	x0, x19
    2594: 7110011f     	cmp	w8, #0x400
    2598: 52800841     	mov	w1, #0x42               // =66
    259c: 1a973115     	csel	w21, w8, w23, lo
    25a0: 2a1503e3     	mov	w3, w21
    25a4: 94000000     	bl	0x25a4 <aw8693x_get_ram_data+0x4c>
		00000000000025a4:  R_AARCH64_CALL26	i2c_r_bytes
    25a8: b9445268     	ldr	w8, [x19, #0x450]
    25ac: 0b1602b6     	add	w22, w21, w22
    25b0: 6b0802df     	cmp	w22, w8
    25b4: 54fffea3     	b.lo	0x2588 <aw8693x_get_ram_data+0x30>
    25b8: 93407ec0     	sxtw	x0, w22
    25bc: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    25c0: f9400bf7     	ldr	x23, [sp, #0x10]
    25c4: a94257f6     	ldp	x22, x21, [sp, #0x20]
    25c8: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    25cc: d50323bf     	autiasp
    25d0: d65f03c0     	ret
    25d4: aa1f03e0     	mov	x0, xzr
    25d8: d65f03c0     	ret
