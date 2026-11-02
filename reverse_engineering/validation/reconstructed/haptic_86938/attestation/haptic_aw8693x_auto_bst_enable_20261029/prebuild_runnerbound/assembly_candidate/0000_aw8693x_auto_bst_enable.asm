
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000ed8 <aw8693x_auto_bst_enable>:
     ed8: d503233f     	paciasp
     edc: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     ee0: 910003fd     	mov	x29, sp
     ee4: 72001c3f     	tst	w1, #0xff
     ee8: 39006001     	strb	w1, [x0, #0x18]
     eec: 52800101     	mov	w1, #0x8                // =8
     ef0: 1a9f07e8     	cset	w8, ne
     ef4: 12800202     	mov	w2, #-0x11              // =-17
     ef8: 531c6d03     	lsl	w3, w8, #4
     efc: 94000000     	bl	0xefc <aw8693x_auto_bst_enable+0x24>
		0000000000000efc:  R_AARCH64_CALL26	i2c_w_bits
     f00: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     f04: d50323bf     	autiasp
     f08: d65f03c0     	ret
