
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000f48 <aw8693x_set_wav_loop>:
     f48: d503233f     	paciasp
     f4c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     f50: 910003fd     	mov	x29, sp
     f54: 2a0203e3     	mov	w3, w2
     f58: 370000a1     	tbnz	w1, #0x0, 0xf6c <aw8693x_set_wav_loop+0x24>
     f5c: 53011c28     	ubfx	w8, w1, #1, #7
     f60: 531c6c63     	lsl	w3, w3, #4
     f64: 12801e02     	mov	w2, #-0xf1              // =-241
     f68: 14000003     	b	0xf74 <aw8693x_set_wav_loop+0x2c>
     f6c: 53011c28     	ubfx	w8, w1, #1, #7
     f70: 128001e2     	mov	w2, #-0x10              // =-16
     f74: 11004901     	add	w1, w8, #0x12
     f78: 94000000     	bl	0xf78 <aw8693x_set_wav_loop+0x30>
		0000000000000f78:  R_AARCH64_CALL26	i2c_w_bits
     f7c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     f80: d50323bf     	autiasp
     f84: d65f03c0     	ret
