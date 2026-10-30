
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001c60 <aw8693x_set_bst_vol>:
    1c60: d503233f     	paciasp
    1c64: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    1c68: 910003fd     	mov	x29, sp
    1c6c: 12001c29     	and	w9, w1, #0xff
    1c70: 528000a8     	mov	w8, #0x5                // =5
    1c74: 528000c1     	mov	w1, #0x6                // =6
    1c78: 7100153f     	cmp	w9, #0x5
    1c7c: 128003e2     	mov	w2, #-0x20              // =-32
    1c80: 1a888128     	csel	w8, w9, w8, hi
    1c84: 52800329     	mov	w9, #0x19               // =25
    1c88: 7100651f     	cmp	w8, #0x19
    1c8c: 1a893103     	csel	w3, w8, w9, lo
    1c90: 94000000     	bl	0x1c90 <aw8693x_set_bst_vol+0x30>
		0000000000001c90:  R_AARCH64_CALL26	i2c_w_bits
    1c94: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    1c98: d50323bf     	autiasp
    1c9c: d65f03c0     	ret
