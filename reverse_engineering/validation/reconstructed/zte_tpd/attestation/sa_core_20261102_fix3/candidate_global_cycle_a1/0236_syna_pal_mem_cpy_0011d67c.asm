
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000024980 <syna_pal_mem_cpy>:
   24980: b40001e0     	cbz	x0, 0x249bc <syna_pal_mem_cpy+0x3c>
   24984: b40001c2     	cbz	x2, 0x249bc <syna_pal_mem_cpy+0x3c>
   24988: d503233f     	paciasp
   2498c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   24990: 910003fd     	mov	x29, sp
   24994: 6b01009f     	cmp	w4, w1
   24998: 54000148     	b.hi	0x249c0 <syna_pal_mem_cpy+0x40>
   2499c: 6b03009f     	cmp	w4, w3
   249a0: 54000108     	b.hi	0x249c0 <syna_pal_mem_cpy+0x40>
   249a4: 2a0403e8     	mov	w8, w4
   249a8: aa0203e1     	mov	x1, x2
   249ac: aa0803e2     	mov	x2, x8
   249b0: 94000000     	bl	0x249b0 <syna_pal_mem_cpy+0x30>
		00000000000249b0:  R_AARCH64_CALL26	memcpy
   249b4: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   249b8: d50323bf     	autiasp
   249bc: d65f03c0     	ret
   249c0: 90000008     	adrp	x8, 0x24000 <syna_testing_pt01_show+0x24c>
		00000000000249c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17dd6
   249c4: 91000108     	add	x8, x8, #0x0
		00000000000249c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17dd6
   249c8: 2a0103e9     	mov	w9, w1
   249cc: 90000000     	adrp	x0, 0x24000 <syna_testing_pt01_show+0x24c>
		00000000000249cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ac4c
   249d0: 91000000     	add	x0, x0, #0x0
		00000000000249d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ac4c
   249d4: aa0803e1     	mov	x1, x8
   249d8: 2a0303e2     	mov	w2, w3
   249dc: 2a0903e3     	mov	w3, w9
   249e0: 94000000     	bl	0x249e0 <syna_pal_mem_cpy+0x60>
		00000000000249e0:  R_AARCH64_CALL26	_printk
   249e4: 17fffff4     	b	0x249b4 <syna_pal_mem_cpy+0x34>
