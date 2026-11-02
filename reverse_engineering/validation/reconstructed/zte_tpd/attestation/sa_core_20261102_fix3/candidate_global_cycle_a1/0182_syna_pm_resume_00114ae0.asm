
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000026790 <syna_pm_resume>:
   26790: d503233f     	paciasp
   26794: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   26798: f9000bf3     	str	x19, [sp, #0x10]
   2679c: 910003fd     	mov	x29, sp
   267a0: f9404c13     	ldr	x19, [x0, #0x98]
   267a4: 90000000     	adrp	x0, 0x26000 <get_tp_noise_show+0xfc>
		00000000000267a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x57d0
   267a8: 91000000     	add	x0, x0, #0x0
		00000000000267a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x57d0
   267ac: 90000001     	adrp	x1, 0x26000 <get_tp_noise_show+0xfc>
		00000000000267ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7084
   267b0: 91000021     	add	x1, x1, #0x0
		00000000000267b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7084
   267b4: 94000000     	bl	0x267b4 <syna_pm_resume+0x24>
		00000000000267b4:  R_AARCH64_CALL26	_printk
   267b8: 91156260     	add	x0, x19, #0x558
   267bc: 3915e27f     	strb	wzr, [x19, #0x578]
   267c0: 94000000     	bl	0x267c0 <syna_pm_resume+0x30>
		00000000000267c0:  R_AARCH64_CALL26	complete
   267c4: 2a1f03e0     	mov	w0, wzr
   267c8: f9400bf3     	ldr	x19, [sp, #0x10]
   267cc: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   267d0: d50323bf     	autiasp
   267d4: d65f03c0     	ret
