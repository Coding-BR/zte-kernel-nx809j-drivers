
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000ea4 <aw8693x_set_rtp_aei>:
     ea4: d503233f     	paciasp
     ea8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     eac: 910003fd     	mov	x29, sp
     eb0: 52800208     	mov	w8, #0x10               // =16
     eb4: 12800202     	mov	w2, #-0x11              // =-17
     eb8: 0a211103     	bic	w3, w8, w1, lsl #4
     ebc: 52800061     	mov	w1, #0x3                // =3
     ec0: 94000000     	bl	0xec0 <aw8693x_set_rtp_aei+0x1c>
		0000000000000ec0:  R_AARCH64_CALL26	i2c_w_bits
     ec4: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     ec8: d50323bf     	autiasp
     ecc: d65f03c0     	ret
