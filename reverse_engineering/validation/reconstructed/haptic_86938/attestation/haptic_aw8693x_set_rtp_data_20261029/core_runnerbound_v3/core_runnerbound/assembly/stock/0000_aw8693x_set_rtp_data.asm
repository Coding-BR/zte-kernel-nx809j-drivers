
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001e30 <aw8693x_set_rtp_data>:
    1e30: d503233f     	paciasp
    1e34: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    1e38: 910003fd     	mov	x29, sp
    1e3c: 2a0203e3     	mov	w3, w2
    1e40: aa0103e2     	mov	x2, x1
    1e44: 52800641     	mov	w1, #0x32               // =50
    1e48: 94000000     	bl	0x1e48 <aw8693x_set_rtp_data+0x18>
		0000000000001e48:  R_AARCH64_CALL26	i2c_w_bytes
    1e4c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    1e50: d50323bf     	autiasp
    1e54: d65f03c0     	ret
