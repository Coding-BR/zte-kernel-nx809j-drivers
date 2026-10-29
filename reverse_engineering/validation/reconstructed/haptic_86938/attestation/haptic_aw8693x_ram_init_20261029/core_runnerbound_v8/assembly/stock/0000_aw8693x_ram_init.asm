
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001680 <aw8693x_ram_init>:
    1680: d503233f     	paciasp
    1684: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    1688: 910003fd     	mov	x29, sp
    168c: 36000141     	tbz	w1, #0x0, 0x16b4 <aw8693x_ram_init+0x34>
    1690: 528008a1     	mov	w1, #0x45               // =69
    1694: 12800082     	mov	w2, #-0x5               // =-5
    1698: 52800083     	mov	w3, #0x4                // =4
    169c: 94000000     	bl	0x169c <aw8693x_ram_init+0x1c>
		000000000000169c:  R_AARCH64_CALL26	i2c_w_bits
    16a0: 52803e80     	mov	w0, #0x1f4              // =500
    16a4: 52804b01     	mov	w1, #0x258              // =600
    16a8: 52800042     	mov	w2, #0x2                // =2
    16ac: 94000000     	bl	0x16ac <aw8693x_ram_init+0x2c>
		00000000000016ac:  R_AARCH64_CALL26	usleep_range_state
    16b0: 14000005     	b	0x16c4 <aw8693x_ram_init+0x44>
    16b4: 528008a1     	mov	w1, #0x45               // =69
    16b8: 12800082     	mov	w2, #-0x5               // =-5
    16bc: 2a1f03e3     	mov	w3, wzr
    16c0: 94000000     	bl	0x16c0 <aw8693x_ram_init+0x40>
		00000000000016c0:  R_AARCH64_CALL26	i2c_w_bits
    16c4: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    16c8: d50323bf     	autiasp
    16cc: d65f03c0     	ret
