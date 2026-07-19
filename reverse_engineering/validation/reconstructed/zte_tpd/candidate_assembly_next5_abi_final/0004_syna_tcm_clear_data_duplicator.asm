
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000fe1c <syna_tcm_clear_data_duplicator>:
    fe1c: d503233f     	paciasp
    fe20: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    fe24: 910003fd     	mov	x29, sp
    fe28: b4000140     	cbz	x0, 0xfe50 <syna_tcm_clear_data_duplicator+0x34>
    fe2c: 52827b08     	mov	w8, #0x13d8             // =5080
    fe30: 2a1f03e1     	mov	w1, wzr
    fe34: 52820002     	mov	w2, #0x1000             // =4096
    fe38: 8b080000     	add	x0, x0, x8
    fe3c: 94000000     	bl	0xfe3c <syna_tcm_clear_data_duplicator+0x20>
		000000000000fe3c:  R_AARCH64_CALL26	memset
    fe40: 2a1f03e0     	mov	w0, wzr
    fe44: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    fe48: d50323bf     	autiasp
    fe4c: d65f03c0     	ret
    fe50: 90000000     	adrp	x0, 0xf000 <syna_tcm_buf_copy+0xb0>
		000000000000fe50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xda8
    fe54: 91000000     	add	x0, x0, #0x0
		000000000000fe54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xda8
    fe58: 90000001     	adrp	x1, 0xf000 <syna_tcm_buf_copy+0xb0>
		000000000000fe58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f7f
    fe5c: 91000021     	add	x1, x1, #0x0
		000000000000fe5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f7f
    fe60: 94000000     	bl	0xfe60 <syna_tcm_clear_data_duplicator+0x44>
		000000000000fe60:  R_AARCH64_CALL26	_printk
    fe64: 12801e00     	mov	w0, #-0xf1              // =-241
    fe68: 17fffff7     	b	0xfe44 <syna_tcm_clear_data_duplicator+0x28>
