
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000006b08 <syna_pal_mem_free>:
    6b08: d503233f     	paciasp
    6b0c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    6b10: f9000bf3     	str	x19, [sp, #0x10]
    6b14: 910003fd     	mov	x29, sp
    6b18: aa0003f3     	mov	x19, x0
    6b1c: 94000000     	bl	0x6b1c <syna_pal_mem_free+0x14>
		0000000000006b1c:  R_AARCH64_CALL26	syna_request_managed_device
    6b20: b4000100     	cbz	x0, 0x6b40 <syna_pal_mem_free+0x38>
    6b24: b4000073     	cbz	x19, 0x6b30 <syna_pal_mem_free+0x28>
    6b28: aa1303e1     	mov	x1, x19
    6b2c: 94000000     	bl	0x6b2c <syna_pal_mem_free+0x24>
		0000000000006b2c:  R_AARCH64_CALL26	devm_kfree
    6b30: f9400bf3     	ldr	x19, [sp, #0x10]
    6b34: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    6b38: d50323bf     	autiasp
    6b3c: d65f03c0     	ret
    6b40: 90000000     	adrp	x0, 0x6000 <syna_tcm_read_mtp_data+0x178>
		0000000000006b40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafb2
    6b44: 91000000     	add	x0, x0, #0x0
		0000000000006b44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafb2
    6b48: 90000001     	adrp	x1, 0x6000 <syna_tcm_read_mtp_data+0x178>
		0000000000006b48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa204
    6b4c: 91000021     	add	x1, x1, #0x0
		0000000000006b4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa204
    6b50: 94000000     	bl	0x6b50 <syna_pal_mem_free+0x48>
		0000000000006b50:  R_AARCH64_CALL26	_printk
    6b54: 17fffff7     	b	0x6b30 <syna_pal_mem_free+0x28>
