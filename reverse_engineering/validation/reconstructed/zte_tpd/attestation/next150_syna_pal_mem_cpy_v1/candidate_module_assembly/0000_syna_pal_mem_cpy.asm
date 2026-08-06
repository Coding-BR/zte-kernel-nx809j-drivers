
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000b0f4 <syna_pal_mem_cpy>:
    b0f4: b40001e0     	cbz	x0, 0xb130 <syna_pal_mem_cpy+0x3c>
    b0f8: b40001c2     	cbz	x2, 0xb130 <syna_pal_mem_cpy+0x3c>
    b0fc: d503233f     	paciasp
    b100: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    b104: 910003fd     	mov	x29, sp
    b108: 6b01009f     	cmp	w4, w1
    b10c: 54000148     	b.hi	0xb134 <syna_pal_mem_cpy+0x40>
    b110: 6b03009f     	cmp	w4, w3
    b114: 54000108     	b.hi	0xb134 <syna_pal_mem_cpy+0x40>
    b118: 2a0403e8     	mov	w8, w4
    b11c: aa0203e1     	mov	x1, x2
    b120: aa0803e2     	mov	x2, x8
    b124: 94000000     	bl	0xb124 <syna_pal_mem_cpy+0x30>
		000000000000b124:  R_AARCH64_CALL26	memcpy
    b128: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    b12c: d50323bf     	autiasp
    b130: d65f03c0     	ret
    b134: 90000008     	adrp	x8, 0xb000 <syna_mmap+0x44>
		000000000000b134:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbd8
    b138: 91000108     	add	x8, x8, #0x0
		000000000000b138:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbd8
    b13c: 2a0103e9     	mov	w9, w1
    b140: 90000000     	adrp	x0, 0xb000 <syna_mmap+0x44>
		000000000000b140:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b9b
    b144: 91000000     	add	x0, x0, #0x0
		000000000000b144:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b9b
    b148: aa0803e1     	mov	x1, x8
    b14c: 2a0303e2     	mov	w2, w3
    b150: 2a0903e3     	mov	w3, w9
    b154: 94000000     	bl	0xb154 <syna_pal_mem_cpy+0x60>
		000000000000b154:  R_AARCH64_CALL26	_printk
    b158: 17fffff4     	b	0xb128 <syna_pal_mem_cpy+0x34>
