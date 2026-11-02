
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003178 <aw8693x_get_ram_data>:
    3178: b9445008     	ldr	w8, [x0, #0x450]
    317c: 340003c8     	cbz	w8, 0x31f4 <aw8693x_get_ram_data+0x7c>
    3180: d503233f     	paciasp
    3184: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    3188: f9000bf7     	str	x23, [sp, #0x10]
    318c: a90257f6     	stp	x22, x21, [sp, #0x20]
    3190: a9034ff4     	stp	x20, x19, [sp, #0x30]
    3194: 910003fd     	mov	x29, sp
    3198: aa0003f3     	mov	x19, x0
    319c: aa0103f4     	mov	x20, x1
    31a0: 2a1f03f6     	mov	w22, wzr
    31a4: 52808017     	mov	w23, #0x400             // =1024
    31a8: 4b160108     	sub	w8, w8, w22
    31ac: 8b36c282     	add	x2, x20, w22, sxtw
    31b0: aa1303e0     	mov	x0, x19
    31b4: 7110011f     	cmp	w8, #0x400
    31b8: 52800841     	mov	w1, #0x42               // =66
    31bc: 1a973115     	csel	w21, w8, w23, lo
    31c0: 2a1503e3     	mov	w3, w21
    31c4: 94000000     	bl	0x31c4 <aw8693x_get_ram_data+0x4c>
		00000000000031c4:  R_AARCH64_CALL26	i2c_r_bytes
    31c8: b9445268     	ldr	w8, [x19, #0x450]
    31cc: 0b1602b6     	add	w22, w21, w22
    31d0: 6b0802df     	cmp	w22, w8
    31d4: 54fffea3     	b.lo	0x31a8 <aw8693x_get_ram_data+0x30>
    31d8: 93407ec0     	sxtw	x0, w22
    31dc: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    31e0: f9400bf7     	ldr	x23, [sp, #0x10]
    31e4: a94257f6     	ldp	x22, x21, [sp, #0x20]
    31e8: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    31ec: d50323bf     	autiasp
    31f0: d65f03c0     	ret
    31f4: aa1f03e0     	mov	x0, xzr
    31f8: d65f03c0     	ret
