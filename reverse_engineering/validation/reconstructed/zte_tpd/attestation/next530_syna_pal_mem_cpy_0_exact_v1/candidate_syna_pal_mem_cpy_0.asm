
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000008b48 <syna_pal_mem_cpy_0>:
    8b48: b40000e0     	cbz	x0, 0x8b64 <syna_pal_mem_cpy_0+0x1c>
    8b4c: b40000c2     	cbz	x2, 0x8b64 <syna_pal_mem_cpy_0+0x1c>
    8b50: 2a0103e3     	mov	w3, w1
    8b54: 71003c3f     	cmp	w1, #0xf
    8b58: 54000089     	b.ls	0x8b68 <syna_pal_mem_cpy_0+0x20>
    8b5c: a9402049     	ldp	x9, x8, [x2]
    8b60: a9002009     	stp	x9, x8, [x0]
    8b64: d65f03c0     	ret
    8b68: d503233f     	paciasp
    8b6c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    8b70: 910003fd     	mov	x29, sp
    8b74: 90000000     	adrp	x0, 0x8000 <syna_dev_set_screen_on_fp_mode+0x28>
		0000000000008b74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf6f8
    8b78: 91000000     	add	x0, x0, #0x0
		0000000000008b78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf6f8
    8b7c: 90000001     	adrp	x1, 0x8000 <syna_dev_set_screen_on_fp_mode+0x28>
		0000000000008b7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xba80
    8b80: 91000021     	add	x1, x1, #0x0
		0000000000008b80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xba80
    8b84: 52800202     	mov	w2, #0x10               // =16
    8b88: 52800204     	mov	w4, #0x10               // =16
    8b8c: 94000000     	bl	0x8b8c <syna_pal_mem_cpy_0+0x44>
		0000000000008b8c:  R_AARCH64_CALL26	_printk
    8b90: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    8b94: d50323bf     	autiasp
    8b98: d65f03c0     	ret
