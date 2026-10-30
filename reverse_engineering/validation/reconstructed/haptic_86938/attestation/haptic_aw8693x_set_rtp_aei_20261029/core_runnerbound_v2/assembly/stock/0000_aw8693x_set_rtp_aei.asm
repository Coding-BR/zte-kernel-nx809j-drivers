
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002ca0 <aw8693x_set_rtp_aei>:
    2ca0: d503233f     	paciasp
    2ca4: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    2ca8: 910003fd     	mov	x29, sp
    2cac: 52800208     	mov	w8, #0x10               // =16
    2cb0: 7200003f     	tst	w1, #0x1
    2cb4: 52800061     	mov	w1, #0x3                // =3
    2cb8: 1a8813e3     	csel	w3, wzr, w8, ne
    2cbc: 12800202     	mov	w2, #-0x11              // =-17
    2cc0: 94000000     	bl	0x2cc0 <aw8693x_set_rtp_aei+0x20>
		0000000000002cc0:  R_AARCH64_CALL26	i2c_w_bits
    2cc4: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    2cc8: d50323bf     	autiasp
    2ccc: d65f03c0     	ret
