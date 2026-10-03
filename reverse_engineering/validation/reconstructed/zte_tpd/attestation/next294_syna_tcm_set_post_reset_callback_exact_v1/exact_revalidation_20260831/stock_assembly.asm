
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001d934 <syna_tcm_set_post_reset_callback>:
   1d934: b40000c0     	cbz	x0, 0x1d94c <syna_tcm_set_post_reset_callback+0x18>
   1d938: aa0003e8     	mov	x8, x0
   1d93c: 2a1f03e0     	mov	w0, wzr
   1d940: f911f101     	str	x1, [x8, #0x23e0]
   1d944: f911ed02     	str	x2, [x8, #0x23d8]
   1d948: d65f03c0     	ret
   1d94c: d503233f     	paciasp
   1d950: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   1d954: 910003fd     	mov	x29, sp
   1d958: 90000000     	adrp	x0, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d958:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2055
   1d95c: 91000000     	add	x0, x0, #0x0
		000000000001d95c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2055
   1d960: 90000001     	adrp	x1, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d960:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x22f2
   1d964: 91000021     	add	x1, x1, #0x0
		000000000001d964:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x22f2
   1d968: 94000000     	bl	0x1d968 <syna_tcm_set_post_reset_callback+0x34>
		000000000001d968:  R_AARCH64_CALL26	_printk
   1d96c: 12801e00     	mov	w0, #-0xf1              // =-241
   1d970: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   1d974: d50323bf     	autiasp
   1d978: d65f03c0     	ret
