
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000ad34 <syna_pal_mem_cpy_1>:
    ad34: b4000200     	cbz	x0, 0xad74 <syna_pal_mem_cpy_1+0x40>
    ad38: d503233f     	paciasp
    ad3c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    ad40: 910003fd     	mov	x29, sp
    ad44: 6b01009f     	cmp	w4, w1
    ad48: 540001a8     	b.hi	0xad7c <syna_pal_mem_cpy_1+0x48>
    ad4c: 6b03009f     	cmp	w4, w3
    ad50: 54000168     	b.hi	0xad7c <syna_pal_mem_cpy_1+0x48>
    ad54: 2a0403e8     	mov	w8, w4
    ad58: aa0203e1     	mov	x1, x2
    ad5c: aa0803e2     	mov	x2, x8
    ad60: 94000000     	bl	0xad60 <syna_pal_mem_cpy_1+0x2c>
		000000000000ad60:  R_AARCH64_CALL26	memcpy
    ad64: 2a1f03e0     	mov	w0, wzr
    ad68: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    ad6c: d50323bf     	autiasp
    ad70: d65f03c0     	ret
    ad74: 128002a0     	mov	w0, #-0x16              // =-22
    ad78: d65f03c0     	ret
    ad7c: 90000008     	adrp	x8, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000ad7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17dd6
    ad80: 91000108     	add	x8, x8, #0x0
		000000000000ad80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17dd6
    ad84: 2a0103e9     	mov	w9, w1
    ad88: 90000000     	adrp	x0, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000ad88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ac4c
    ad8c: 91000000     	add	x0, x0, #0x0
		000000000000ad8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ac4c
    ad90: aa0803e1     	mov	x1, x8
    ad94: 2a0303e2     	mov	w2, w3
    ad98: 2a0903e3     	mov	w3, w9
    ad9c: 94000000     	bl	0xad9c <syna_pal_mem_cpy_1+0x68>
		000000000000ad9c:  R_AARCH64_CALL26	_printk
    ada0: 128002a0     	mov	w0, #-0x16              // =-22
    ada4: 17fffff1     	b	0xad68 <syna_pal_mem_cpy_1+0x34>
