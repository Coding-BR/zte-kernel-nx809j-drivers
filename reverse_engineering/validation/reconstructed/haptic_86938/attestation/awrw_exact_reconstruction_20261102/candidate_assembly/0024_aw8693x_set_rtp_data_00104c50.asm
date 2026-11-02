
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000ce4 <aw8693x_set_rtp_data>:
     ce4: d503233f     	paciasp
     ce8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     cec: 910003fd     	mov	x29, sp
     cf0: 2a0203e3     	mov	w3, w2
     cf4: aa0103e2     	mov	x2, x1
     cf8: 52800641     	mov	w1, #0x32               // =50
     cfc: 94000000     	bl	0xcfc <aw8693x_set_rtp_data+0x18>
		0000000000000cfc:  R_AARCH64_CALL26	i2c_w_bytes
     d00: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     d04: d50323bf     	autiasp
     d08: d65f03c0     	ret
