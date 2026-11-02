
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000f48 <aw8693x_set_wav_loop>:
     f48: d503233f     	paciasp
     f4c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     f50: 910003fd     	mov	x29, sp
     f54: 531c6c48     	lsl	w8, w2, #4
     f58: 53011c2b     	ubfx	w11, w1, #1, #7
     f5c: 7200003f     	tst	w1, #0x1
     f60: 128001e9     	mov	w9, #-0x10              // =-16
     f64: 12801e0a     	mov	w10, #-0xf1             // =-241
     f68: 1a820103     	csel	w3, w8, w2, eq
     f6c: 1a890142     	csel	w2, w10, w9, eq
     f70: 11004961     	add	w1, w11, #0x12
     f74: 94000000     	bl	0xf74 <aw8693x_set_wav_loop+0x2c>
		0000000000000f74:  R_AARCH64_CALL26	i2c_w_bits
     f78: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     f7c: d50323bf     	autiasp
     f80: d65f03c0     	ret
