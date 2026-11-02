
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001dec <aw8693x_set_wav_loop>:
    1dec: d503233f     	paciasp
    1df0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    1df4: 910003fd     	mov	x29, sp
    1df8: 2a0203e3     	mov	w3, w2
    1dfc: 370000a1     	tbnz	w1, #0x0, 0x1e10 <aw8693x_set_wav_loop+0x24>
    1e00: 53011c28     	ubfx	w8, w1, #1, #7
    1e04: 531c6c63     	lsl	w3, w3, #4
    1e08: 12801e02     	mov	w2, #-0xf1              // =-241
    1e0c: 14000003     	b	0x1e18 <aw8693x_set_wav_loop+0x2c>
    1e10: 53011c28     	ubfx	w8, w1, #1, #7
    1e14: 128001e2     	mov	w2, #-0x10              // =-16
    1e18: 11004901     	add	w1, w8, #0x12
    1e1c: 94000000     	bl	0x1e1c <aw8693x_set_wav_loop+0x30>
		0000000000001e1c:  R_AARCH64_CALL26	i2c_w_bits
    1e20: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    1e24: d50323bf     	autiasp
    1e28: d65f03c0     	ret
