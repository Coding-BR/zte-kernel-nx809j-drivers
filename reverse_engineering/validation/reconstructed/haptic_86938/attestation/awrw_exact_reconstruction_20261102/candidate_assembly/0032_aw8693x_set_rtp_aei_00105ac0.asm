
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000ea4 <aw8693x_set_rtp_aei>:
     ea4: d503233f     	paciasp
     ea8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     eac: 910003fd     	mov	x29, sp
     eb0: 52800208     	mov	w8, #0x10               // =16
     eb4: 7200003f     	tst	w1, #0x1
     eb8: 52800061     	mov	w1, #0x3                // =3
     ebc: 1a8813e3     	csel	w3, wzr, w8, ne
     ec0: 12800202     	mov	w2, #-0x11              // =-17
     ec4: 94000000     	bl	0xec4 <aw8693x_set_rtp_aei+0x20>
		0000000000000ec4:  R_AARCH64_CALL26	i2c_w_bits
     ec8: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     ecc: d50323bf     	autiasp
     ed0: d65f03c0     	ret
