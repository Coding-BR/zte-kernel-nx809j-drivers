
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000026590 <syna_release>:
   26590: d503233f     	paciasp
   26594: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   26598: 910003fd     	mov	x29, sp
   2659c: 90000000     	adrp	x0, 0x26000 <get_tp_noise_show+0xfc>
		000000000002659c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x93ae
   265a0: 91000000     	add	x0, x0, #0x0
		00000000000265a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x93ae
   265a4: 90000001     	adrp	x1, 0x26000 <get_tp_noise_show+0xfc>
		00000000000265a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7da
   265a8: 91000021     	add	x1, x1, #0x0
		00000000000265a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7da
   265ac: 94000000     	bl	0x265ac <syna_release+0x1c>
		00000000000265ac:  R_AARCH64_CALL26	_printk
   265b0: 2a1f03e0     	mov	w0, wzr
   265b4: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   265b8: d50323bf     	autiasp
   265bc: d65f03c0     	ret
