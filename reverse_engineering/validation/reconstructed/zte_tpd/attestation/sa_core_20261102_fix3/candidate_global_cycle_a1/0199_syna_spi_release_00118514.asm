
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000026238 <syna_spi_release>:
   26238: d503233f     	paciasp
   2623c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   26240: 910003fd     	mov	x29, sp
   26244: 90000000     	adrp	x0, 0x26000 <get_tp_noise_show+0xfc>
		0000000000026244:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2cea
   26248: 91000000     	add	x0, x0, #0x0
		0000000000026248:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2cea
   2624c: 90000001     	adrp	x1, 0x26000 <get_tp_noise_show+0xfc>
		000000000002624c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13ca
   26250: 91000021     	add	x1, x1, #0x0
		0000000000026250:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13ca
   26254: 94000000     	bl	0x26254 <syna_spi_release+0x1c>
		0000000000026254:  R_AARCH64_CALL26	_printk
   26258: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   2625c: d50323bf     	autiasp
   26260: d65f03c0     	ret
