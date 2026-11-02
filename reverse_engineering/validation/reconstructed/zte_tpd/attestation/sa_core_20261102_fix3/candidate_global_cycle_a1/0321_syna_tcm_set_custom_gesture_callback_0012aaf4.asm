
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000b914 <syna_tcm_set_custom_gesture_callback>:
    b914: b40000c0     	cbz	x0, 0xb92c <syna_tcm_set_custom_gesture_callback+0x18>
    b918: aa0003e8     	mov	x8, x0
    b91c: 2a1f03e0     	mov	w0, wzr
    b920: f901e901     	str	x1, [x8, #0x3d0]
    b924: f901e502     	str	x2, [x8, #0x3c8]
    b928: d65f03c0     	ret
    b92c: d503233f     	paciasp
    b930: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    b934: 910003fd     	mov	x29, sp
    b938: 90000000     	adrp	x0, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b938:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18171
    b93c: 91000000     	add	x0, x0, #0x0
		000000000000b93c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18171
    b940: 90000001     	adrp	x1, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b940:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b63c
    b944: 91000021     	add	x1, x1, #0x0
		000000000000b944:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b63c
    b948: 94000000     	bl	0xb948 <syna_tcm_set_custom_gesture_callback+0x34>
		000000000000b948:  R_AARCH64_CALL26	_printk
    b94c: 12801e00     	mov	w0, #-0xf1              // =-241
    b950: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    b954: d50323bf     	autiasp
    b958: d65f03c0     	ret
