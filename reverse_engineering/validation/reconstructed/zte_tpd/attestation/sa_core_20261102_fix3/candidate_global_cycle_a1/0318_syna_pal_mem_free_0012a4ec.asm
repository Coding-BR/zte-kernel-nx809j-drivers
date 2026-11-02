
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000026c8c <syna_pal_mem_free_0>:
   26c8c: d503233f     	paciasp
   26c90: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   26c94: f9000bf3     	str	x19, [sp, #0x10]
   26c98: 910003fd     	mov	x29, sp
   26c9c: aa0003f3     	mov	x19, x0
   26ca0: 94000000     	bl	0x26ca0 <syna_pal_mem_free_0+0x14>
		0000000000026ca0:  R_AARCH64_CALL26	syna_request_managed_device
   26ca4: b40000e0     	cbz	x0, 0x26cc0 <syna_pal_mem_free_0+0x34>
   26ca8: aa1303e1     	mov	x1, x19
   26cac: 94000000     	bl	0x26cac <syna_pal_mem_free_0+0x20>
		0000000000026cac:  R_AARCH64_CALL26	devm_kfree
   26cb0: f9400bf3     	ldr	x19, [sp, #0x10]
   26cb4: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   26cb8: d50323bf     	autiasp
   26cbc: d65f03c0     	ret
   26cc0: 90000000     	adrp	x0, 0x26000 <get_tp_noise_show+0xfc>
		0000000000026cc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   26cc4: 91000000     	add	x0, x0, #0x0
		0000000000026cc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   26cc8: 90000001     	adrp	x1, 0x26000 <get_tp_noise_show+0xfc>
		0000000000026cc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   26ccc: 91000021     	add	x1, x1, #0x0
		0000000000026ccc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   26cd0: 94000000     	bl	0x26cd0 <syna_pal_mem_free_0+0x44>
		0000000000026cd0:  R_AARCH64_CALL26	_printk
   26cd4: 17fffff7     	b	0x26cb0 <syna_pal_mem_free_0+0x24>
