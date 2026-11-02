
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000b960 <syna_tcm_set_custom_touch_entity_callback>:
    b960: b40000c0     	cbz	x0, 0xb978 <syna_tcm_set_custom_touch_entity_callback+0x18>
    b964: aa0003e8     	mov	x8, x0
    b968: 2a1f03e0     	mov	w0, wzr
    b96c: f901e101     	str	x1, [x8, #0x3c0]
    b970: f901dd02     	str	x2, [x8, #0x3b8]
    b974: d65f03c0     	ret
    b978: d503233f     	paciasp
    b97c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    b980: 910003fd     	mov	x29, sp
    b984: 90000000     	adrp	x0, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b984:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18171
    b988: 91000000     	add	x0, x0, #0x0
		000000000000b988:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18171
    b98c: 90000001     	adrp	x1, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b98c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17828
    b990: 91000021     	add	x1, x1, #0x0
		000000000000b990:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17828
    b994: 94000000     	bl	0xb994 <syna_tcm_set_custom_touch_entity_callback+0x34>
		000000000000b994:  R_AARCH64_CALL26	_printk
    b998: 12801e00     	mov	w0, #-0xf1              // =-241
    b99c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    b9a0: d50323bf     	autiasp
    b9a4: d65f03c0     	ret
