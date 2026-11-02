
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000fe8 <aw8693x_set_bst_vol>:
     fe8: d503233f     	paciasp
     fec: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     ff0: 910003fd     	mov	x29, sp
     ff4: 12001c29     	and	w9, w1, #0xff
     ff8: 528000a8     	mov	w8, #0x5                // =5
     ffc: 528000c1     	mov	w1, #0x6                // =6
    1000: 7100153f     	cmp	w9, #0x5
    1004: 128003e2     	mov	w2, #-0x20              // =-32
    1008: 1a888128     	csel	w8, w9, w8, hi
    100c: 52800329     	mov	w9, #0x19               // =25
    1010: 7100651f     	cmp	w8, #0x19
    1014: 1a893103     	csel	w3, w8, w9, lo
    1018: 94000000     	bl	0x1018 <aw8693x_set_bst_vol+0x30>
		0000000000001018:  R_AARCH64_CALL26	i2c_w_bits
    101c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    1020: d50323bf     	autiasp
    1024: d65f03c0     	ret
