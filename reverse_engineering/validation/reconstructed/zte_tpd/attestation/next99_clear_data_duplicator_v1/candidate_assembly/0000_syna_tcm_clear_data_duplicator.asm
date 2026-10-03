
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000f938 <syna_tcm_clear_data_duplicator>:
    f938: d503233f     	paciasp
    f93c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    f940: 910003fd     	mov	x29, sp
    f944: b4000140     	cbz	x0, 0xf96c <syna_tcm_clear_data_duplicator+0x34>
    f948: 52827b08     	mov	w8, #0x13d8             // =5080
    f94c: 2a1f03e1     	mov	w1, wzr
    f950: 52820002     	mov	w2, #0x1000             // =4096
    f954: 8b080000     	add	x0, x0, x8
    f958: 94000000     	bl	0xf958 <syna_tcm_clear_data_duplicator+0x20>
		000000000000f958:  R_AARCH64_CALL26	memset
    f95c: 2a1f03e0     	mov	w0, wzr
    f960: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    f964: d50323bf     	autiasp
    f968: d65f03c0     	ret
    f96c: 90000000     	adrp	x0, 0xf000 <syna_tcm_buf_copy+0x230>
		000000000000f96c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xedb
    f970: 91000000     	add	x0, x0, #0x0
		000000000000f970:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xedb
    f974: 90000001     	adrp	x1, 0xf000 <syna_tcm_buf_copy+0x230>
		000000000000f974:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2396
    f978: 91000021     	add	x1, x1, #0x0
		000000000000f978:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2396
    f97c: 94000000     	bl	0xf97c <syna_tcm_clear_data_duplicator+0x44>
		000000000000f97c:  R_AARCH64_CALL26	_printk
    f980: 12801e00     	mov	w0, #-0xf1              // =-241
    f984: 17fffff7     	b	0xf960 <syna_tcm_clear_data_duplicator+0x28>
