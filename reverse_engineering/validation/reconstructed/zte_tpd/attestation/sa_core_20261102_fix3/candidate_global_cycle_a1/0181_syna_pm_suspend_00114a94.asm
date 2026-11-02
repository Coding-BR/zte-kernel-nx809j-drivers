
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000026744 <syna_pm_suspend>:
   26744: d503233f     	paciasp
   26748: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   2674c: f9000bf3     	str	x19, [sp, #0x10]
   26750: 910003fd     	mov	x29, sp
   26754: f9404c13     	ldr	x19, [x0, #0x98]
   26758: 90000000     	adrp	x0, 0x26000 <get_tp_noise_show+0xfc>
		0000000000026758:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a2a
   2675c: 91000000     	add	x0, x0, #0x0
		000000000002675c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a2a
   26760: 90000001     	adrp	x1, 0x26000 <get_tp_noise_show+0xfc>
		0000000000026760:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdb4
   26764: 91000021     	add	x1, x1, #0x0
		0000000000026764:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdb4
   26768: 94000000     	bl	0x26768 <syna_pm_suspend+0x24>
		0000000000026768:  R_AARCH64_CALL26	_printk
   2676c: 52800028     	mov	w8, #0x1                // =1
   26770: 2a1f03e0     	mov	w0, wzr
   26774: 3915e268     	strb	w8, [x19, #0x578]
   26778: b9055a7f     	str	wzr, [x19, #0x558]
   2677c: f9400bf3     	ldr	x19, [sp, #0x10]
   26780: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   26784: d50323bf     	autiasp
   26788: d65f03c0     	ret
