
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000017194 <syna_pal_mem_cpy>:
   17194: b40000e0     	cbz	x0, 0x171b0 <syna_pal_mem_cpy+0x1c>
   17198: b40000c2     	cbz	x2, 0x171b0 <syna_pal_mem_cpy+0x1c>
   1719c: 2a0103e3     	mov	w3, w1
   171a0: 71003c3f     	cmp	w1, #0xf
   171a4: 54000089     	b.ls	0x171b4 <syna_pal_mem_cpy+0x20>
   171a8: a9402049     	ldp	x9, x8, [x2]
   171ac: a9002009     	stp	x9, x8, [x0]
   171b0: d65f03c0     	ret
   171b4: d503233f     	paciasp
   171b8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   171bc: 910003fd     	mov	x29, sp
   171c0: 90000000     	adrp	x0, 0x17000 <syna_tcm_testing_config_id+0xdc>
		00000000000171c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81f1
   171c4: 91000000     	add	x0, x0, #0x0
		00000000000171c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81f1
   171c8: 90000001     	adrp	x1, 0x17000 <syna_tcm_testing_config_id+0xdc>
		00000000000171c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a25
   171cc: 91000021     	add	x1, x1, #0x0
		00000000000171cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a25
   171d0: 52800202     	mov	w2, #0x10               // =16
   171d4: 52800204     	mov	w4, #0x10               // =16
   171d8: 94000000     	bl	0x171d8 <syna_pal_mem_cpy+0x44>
		00000000000171d8:  R_AARCH64_CALL26	_printk
   171dc: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   171e0: d50323bf     	autiasp
   171e4: d65f03c0     	ret
