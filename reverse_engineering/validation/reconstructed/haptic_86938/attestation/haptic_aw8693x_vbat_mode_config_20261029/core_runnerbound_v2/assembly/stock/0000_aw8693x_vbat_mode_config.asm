
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001d58 <aw8693x_vbat_mode_config>:
    1d58: d503233f     	paciasp
    1d5c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    1d60: 910003fd     	mov	x29, sp
    1d64: 12001c28     	and	w8, w1, #0xff
    1d68: 52800981     	mov	w1, #0x4c               // =76
    1d6c: 12800802     	mov	w2, #-0x41              // =-65
    1d70: 7100051f     	cmp	w8, #0x1
    1d74: 1a9f17e8     	cset	w8, eq
    1d78: 531a6503     	lsl	w3, w8, #6
    1d7c: 94000000     	bl	0x1d7c <aw8693x_vbat_mode_config+0x24>
		0000000000001d7c:  R_AARCH64_CALL26	i2c_w_bits
    1d80: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    1d84: d50323bf     	autiasp
    1d88: d65f03c0     	ret
