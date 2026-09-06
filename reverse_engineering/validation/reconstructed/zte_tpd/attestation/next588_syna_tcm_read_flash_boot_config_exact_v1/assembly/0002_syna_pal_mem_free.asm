
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000042bc <syna_pal_mem_free>:
    42bc: d503233f     	paciasp
    42c0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    42c4: f9000bf3     	str	x19, [sp, #0x10]
    42c8: 910003fd     	mov	x29, sp
    42cc: aa0003f3     	mov	x19, x0
    42d0: 94000000     	bl	0x42d0 <syna_pal_mem_free+0x14>
		00000000000042d0:  R_AARCH64_CALL26	syna_request_managed_device
    42d4: b4000100     	cbz	x0, 0x42f4 <syna_pal_mem_free+0x38>
    42d8: b4000073     	cbz	x19, 0x42e4 <syna_pal_mem_free+0x28>
    42dc: aa1303e1     	mov	x1, x19
    42e0: 94000000     	bl	0x42e0 <syna_pal_mem_free+0x24>
		00000000000042e0:  R_AARCH64_CALL26	devm_kfree
    42e4: f9400bf3     	ldr	x19, [sp, #0x10]
    42e8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    42ec: d50323bf     	autiasp
    42f0: d65f03c0     	ret
    42f4: 90000000     	adrp	x0, 0x4000 <syna_pal_mem_alloc+0x3ec>
		00000000000042f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafb2
    42f8: 91000000     	add	x0, x0, #0x0
		00000000000042f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafb2
    42fc: 90000001     	adrp	x1, 0x4000 <syna_pal_mem_alloc+0x3ec>
		00000000000042fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa204
    4300: 91000021     	add	x1, x1, #0x0
		0000000000004300:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa204
    4304: 94000000     	bl	0x4304 <syna_pal_mem_free+0x48>
		0000000000004304:  R_AARCH64_CALL26	_printk
    4308: 17fffff7     	b	0x42e4 <syna_pal_mem_free+0x28>
