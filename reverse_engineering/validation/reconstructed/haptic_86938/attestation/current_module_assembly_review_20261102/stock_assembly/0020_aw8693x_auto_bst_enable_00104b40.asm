
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001d20 <aw8693x_auto_bst_enable>:
    1d20: d503233f     	paciasp
    1d24: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    1d28: 910003fd     	mov	x29, sp
    1d2c: 72001c3f     	tst	w1, #0xff
    1d30: 39006001     	strb	w1, [x0, #0x18]
    1d34: 52800101     	mov	w1, #0x8                // =8
    1d38: 1a9f07e8     	cset	w8, ne
    1d3c: 12800202     	mov	w2, #-0x11              // =-17
    1d40: 531c6d03     	lsl	w3, w8, #4
    1d44: 94000000     	bl	0x1d44 <aw8693x_auto_bst_enable+0x24>
		0000000000001d44:  R_AARCH64_CALL26	i2c_w_bits
    1d48: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    1d4c: d50323bf     	autiasp
    1d50: d65f03c0     	ret
