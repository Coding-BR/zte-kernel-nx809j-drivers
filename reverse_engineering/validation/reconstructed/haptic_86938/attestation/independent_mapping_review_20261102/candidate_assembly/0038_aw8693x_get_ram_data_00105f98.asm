
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002b60 <aw8693x_get_ram_data>:
    2b60: b9445008     	ldr	w8, [x0, #0x450]
    2b64: 340003c8     	cbz	w8, 0x2bdc <aw8693x_get_ram_data+0x7c>
    2b68: d503233f     	paciasp
    2b6c: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    2b70: f9000bf7     	str	x23, [sp, #0x10]
    2b74: a90257f6     	stp	x22, x21, [sp, #0x20]
    2b78: a9034ff4     	stp	x20, x19, [sp, #0x30]
    2b7c: 910003fd     	mov	x29, sp
    2b80: aa0003f3     	mov	x19, x0
    2b84: aa0103f4     	mov	x20, x1
    2b88: 2a1f03f6     	mov	w22, wzr
    2b8c: 52808017     	mov	w23, #0x400             // =1024
    2b90: 4b160108     	sub	w8, w8, w22
    2b94: 8b36c282     	add	x2, x20, w22, sxtw
    2b98: aa1303e0     	mov	x0, x19
    2b9c: 7110011f     	cmp	w8, #0x400
    2ba0: 52800841     	mov	w1, #0x42               // =66
    2ba4: 1a973115     	csel	w21, w8, w23, lo
    2ba8: 2a1503e3     	mov	w3, w21
    2bac: 94000000     	bl	0x2bac <aw8693x_get_ram_data+0x4c>
		0000000000002bac:  R_AARCH64_CALL26	i2c_r_bytes
    2bb0: b9445268     	ldr	w8, [x19, #0x450]
    2bb4: 0b1602b6     	add	w22, w21, w22
    2bb8: 6b0802df     	cmp	w22, w8
    2bbc: 54fffea3     	b.lo	0x2b90 <aw8693x_get_ram_data+0x30>
    2bc0: 93407ec0     	sxtw	x0, w22
    2bc4: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    2bc8: f9400bf7     	ldr	x23, [sp, #0x10]
    2bcc: a94257f6     	ldp	x22, x21, [sp, #0x20]
    2bd0: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    2bd4: d50323bf     	autiasp
    2bd8: d65f03c0     	ret
    2bdc: aa1f03e0     	mov	x0, xzr
    2be0: d65f03c0     	ret
