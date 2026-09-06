
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000021590 <syna_pal_mem_alloc>:
   21590: d503233f     	paciasp
   21594: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   21598: f9000bf3     	str	x19, [sp, #0x10]
   2159c: 910003fd     	mov	x29, sp
   215a0: 2a0003f3     	mov	w19, w0
   215a4: 94000000     	bl	0x215a4 <syna_pal_mem_alloc+0x14>
		00000000000215a4:  R_AARCH64_CALL26	syna_request_managed_device
   215a8: b4000140     	cbz	x0, 0x215d0 <syna_pal_mem_alloc+0x40>
   215ac: 7100027f     	cmp	w19, #0x0
   215b0: 5400016d     	b.le	0x215dc <syna_pal_mem_alloc+0x4c>
   215b4: 2a1303e1     	mov	w1, w19
   215b8: 5281b802     	mov	w2, #0xdc0              // =3520
   215bc: 94000000     	bl	0x215bc <syna_pal_mem_alloc+0x2c>
		00000000000215bc:  R_AARCH64_CALL26	devm_kmalloc
   215c0: f9400bf3     	ldr	x19, [sp, #0x10]
   215c4: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   215c8: d50323bf     	autiasp
   215cc: d65f03c0     	ret
   215d0: 90000000     	adrp	x0, 0x21000 <syna_tcm_read_cs_data+0x8c>
		00000000000215d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   215d4: 91000000     	add	x0, x0, #0x0
		00000000000215d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   215d8: 14000003     	b	0x215e4 <syna_pal_mem_alloc+0x54>
   215dc: 90000000     	adrp	x0, 0x21000 <syna_tcm_read_cs_data+0x8c>
		00000000000215dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f17
   215e0: 91000000     	add	x0, x0, #0x0
		00000000000215e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f17
   215e4: 90000001     	adrp	x1, 0x21000 <syna_tcm_read_cs_data+0x8c>
		00000000000215e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ae7
   215e8: 91000021     	add	x1, x1, #0x0
		00000000000215e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ae7
   215ec: 94000000     	bl	0x215ec <syna_pal_mem_alloc+0x5c>
		00000000000215ec:  R_AARCH64_CALL26	_printk
   215f0: aa1f03e0     	mov	x0, xzr
   215f4: 17fffff3     	b	0x215c0 <syna_pal_mem_alloc+0x30>
