
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000fde0 <syna_tcm_clear_command_processing>:
    fde0: b40002c0     	cbz	x0, 0xfe38 <syna_tcm_clear_command_processing+0x58>
    fde4: d503233f     	paciasp
    fde8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    fdec: a9014ff4     	stp	x20, x19, [sp, #0x10]
    fdf0: 910003fd     	mov	x29, sp
    fdf4: f941d013     	ldr	x19, [x0, #0x3a0]
    fdf8: b40001b3     	cbz	x19, 0xfe2c <syna_tcm_clear_command_processing+0x4c>
    fdfc: b85fc268     	ldur	w8, [x19, #-0x4]
    fe00: 5284ec09     	mov	w9, #0x2760             // =10080
    fe04: 72b36fc9     	movk	w9, #0x9b7e, lsl #16
    fe08: 6b09011f     	cmp	w8, w9
    fe0c: 54000181     	b.ne	0xfe3c <syna_tcm_clear_command_processing+0x5c>
    fe10: b85fc270     	ldur	w16, [x19, #-0x4]
    fe14: 7284ec11     	movk	w17, #0x2760
    fe18: 72b36fd1     	movk	w17, #0x9b7e, lsl #16
    fe1c: 6b11021f     	cmp	w16, w17
    fe20: 54000040     	b.eq	0xfe28 <syna_tcm_clear_command_processing+0x48>
    fe24: d4304660     	brk	#0x8233
    fe28: d63f0260     	blr	x19
    fe2c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    fe30: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    fe34: d50323bf     	autiasp
    fe38: d65f03c0     	ret
    fe3c: 90000008     	adrp	x8, 0xf000 <syna_tcm_buf_copy+0x60>
		000000000000fe3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d
    fe40: 91000108     	add	x8, x8, #0x0
		000000000000fe40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d
    fe44: 90000002     	adrp	x2, 0xf000 <syna_tcm_buf_copy+0x60>
		000000000000fe44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d43
    fe48: 91000042     	add	x2, x2, #0x0
		000000000000fe48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d43
    fe4c: aa0003f4     	mov	x20, x0
    fe50: aa0803e0     	mov	x0, x8
    fe54: 52904501     	mov	w1, #0x8228             // =33320
    fe58: 528001a3     	mov	w3, #0xd                // =13
    fe5c: 94000000     	bl	0xfe5c <syna_tcm_clear_command_processing+0x7c>
		000000000000fe5c:  R_AARCH64_CALL26	_printk
    fe60: aa1403e0     	mov	x0, x20
    fe64: 17ffffeb     	b	0xfe10 <syna_tcm_clear_command_processing+0x30>
