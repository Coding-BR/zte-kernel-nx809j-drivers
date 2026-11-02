
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000f10 <aw8693x_vbat_mode_config>:
     f10: d503233f     	paciasp
     f14: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     f18: 910003fd     	mov	x29, sp
     f1c: 12001c28     	and	w8, w1, #0xff
     f20: 52800981     	mov	w1, #0x4c               // =76
     f24: 12800802     	mov	w2, #-0x41              // =-65
     f28: 7100051f     	cmp	w8, #0x1
     f2c: 1a9f17e8     	cset	w8, eq
     f30: 531a6503     	lsl	w3, w8, #6
     f34: 94000000     	bl	0xf34 <aw8693x_vbat_mode_config+0x24>
		0000000000000f34:  R_AARCH64_CALL26	i2c_w_bits
     f38: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     f3c: d50323bf     	autiasp
     f40: d65f03c0     	ret
