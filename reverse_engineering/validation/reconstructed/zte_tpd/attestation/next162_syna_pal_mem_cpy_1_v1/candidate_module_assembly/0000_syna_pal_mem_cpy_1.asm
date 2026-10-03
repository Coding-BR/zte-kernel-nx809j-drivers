
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000b1b0 <syna_pal_mem_cpy_1>:
    b1b0: b4000200     	cbz	x0, 0xb1f0 <syna_pal_mem_cpy_1+0x40>
    b1b4: d503233f     	paciasp
    b1b8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    b1bc: 910003fd     	mov	x29, sp
    b1c0: 6b01009f     	cmp	w4, w1
    b1c4: 540001a8     	b.hi	0xb1f8 <syna_pal_mem_cpy_1+0x48>
    b1c8: 6b03009f     	cmp	w4, w3
    b1cc: 54000168     	b.hi	0xb1f8 <syna_pal_mem_cpy_1+0x48>
    b1d0: 2a0403e8     	mov	w8, w4
    b1d4: aa0203e1     	mov	x1, x2
    b1d8: aa0803e2     	mov	x2, x8
    b1dc: 94000000     	bl	0xb1dc <syna_pal_mem_cpy_1+0x2c>
		000000000000b1dc:  R_AARCH64_CALL26	memcpy
    b1e0: 2a1f03e0     	mov	w0, wzr
    b1e4: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    b1e8: d50323bf     	autiasp
    b1ec: d65f03c0     	ret
    b1f0: 128002a0     	mov	w0, #-0x16              // =-22
    b1f4: d65f03c0     	ret
    b1f8: 90000008     	adrp	x8, 0xb000 <syna_mmap+0x44>
		000000000000b1f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbd8
    b1fc: 91000108     	add	x8, x8, #0x0
		000000000000b1fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbd8
    b200: 2a0103e9     	mov	w9, w1
    b204: 90000000     	adrp	x0, 0xb000 <syna_mmap+0x44>
		000000000000b204:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3bbc
    b208: 91000000     	add	x0, x0, #0x0
		000000000000b208:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3bbc
    b20c: aa0803e1     	mov	x1, x8
    b210: 2a0303e2     	mov	w2, w3
    b214: 2a0903e3     	mov	w3, w9
    b218: 94000000     	bl	0xb218 <syna_pal_mem_cpy_1+0x68>
		000000000000b218:  R_AARCH64_CALL26	_printk
    b21c: 128002a0     	mov	w0, #-0x16              // =-22
    b220: 17fffff1     	b	0xb1e4 <syna_pal_mem_cpy_1+0x34>
