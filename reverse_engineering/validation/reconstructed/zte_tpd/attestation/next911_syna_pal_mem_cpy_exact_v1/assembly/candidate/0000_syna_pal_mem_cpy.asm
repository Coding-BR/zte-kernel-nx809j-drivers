
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000024924 <syna_pal_mem_cpy>:
   24924: b40001e0     	cbz	x0, 0x24960 <syna_pal_mem_cpy+0x3c>
   24928: b40001c2     	cbz	x2, 0x24960 <syna_pal_mem_cpy+0x3c>
   2492c: d503233f     	paciasp
   24930: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   24934: 910003fd     	mov	x29, sp
   24938: 6b01009f     	cmp	w4, w1
   2493c: 54000148     	b.hi	0x24964 <syna_pal_mem_cpy+0x40>
   24940: 6b03009f     	cmp	w4, w3
   24944: 54000108     	b.hi	0x24964 <syna_pal_mem_cpy+0x40>
   24948: 2a0403e8     	mov	w8, w4
   2494c: aa0203e1     	mov	x1, x2
   24950: aa0803e2     	mov	x2, x8
   24954: 94000000     	bl	0x24954 <syna_pal_mem_cpy+0x30>
		0000000000024954:  R_AARCH64_CALL26	memcpy
   24958: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   2495c: d50323bf     	autiasp
   24960: d65f03c0     	ret
   24964: 90000008     	adrp	x8, 0x24000 <syna_tcm_testing_noise+0x4c>
		0000000000024964:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17dd6
   24968: 91000108     	add	x8, x8, #0x0
		0000000000024968:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17dd6
   2496c: 2a0103e9     	mov	w9, w1
   24970: 90000000     	adrp	x0, 0x24000 <syna_tcm_testing_noise+0x4c>
		0000000000024970:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ac4c
   24974: 91000000     	add	x0, x0, #0x0
		0000000000024974:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ac4c
   24978: aa0803e1     	mov	x1, x8
   2497c: 2a0303e2     	mov	w2, w3
   24980: 2a0903e3     	mov	w3, w9
   24984: 94000000     	bl	0x24984 <syna_pal_mem_cpy+0x60>
		0000000000024984:  R_AARCH64_CALL26	_printk
   24988: 17fffff4     	b	0x24958 <syna_pal_mem_cpy+0x34>
