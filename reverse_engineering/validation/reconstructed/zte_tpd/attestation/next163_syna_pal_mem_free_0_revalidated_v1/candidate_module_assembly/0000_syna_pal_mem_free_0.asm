
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000b274 <syna_pal_mem_free_0>:
    b274: d503233f     	paciasp
    b278: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    b27c: f9000bf3     	str	x19, [sp, #0x10]
    b280: 910003fd     	mov	x29, sp
    b284: aa0003f3     	mov	x19, x0
    b288: 94000000     	bl	0xb288 <syna_pal_mem_free_0+0x14>
		000000000000b288:  R_AARCH64_CALL26	syna_request_managed_device
    b28c: b40000e0     	cbz	x0, 0xb2a8 <syna_pal_mem_free_0+0x34>
    b290: aa1303e1     	mov	x1, x19
    b294: 94000000     	bl	0xb294 <syna_pal_mem_free_0+0x20>
		000000000000b294:  R_AARCH64_CALL26	devm_kfree
    b298: f9400bf3     	ldr	x19, [sp, #0x10]
    b29c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    b2a0: d50323bf     	autiasp
    b2a4: d65f03c0     	ret
    b2a8: 90000000     	adrp	x0, 0xb000 <syna_mmap+0x44>
		000000000000b2a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x508a
    b2ac: 91000000     	add	x0, x0, #0x0
		000000000000b2ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x508a
    b2b0: 90000001     	adrp	x1, 0xb000 <syna_mmap+0x44>
		000000000000b2b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x49ed
    b2b4: 91000021     	add	x1, x1, #0x0
		000000000000b2b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x49ed
    b2b8: 94000000     	bl	0xb2b8 <syna_pal_mem_free_0+0x44>
		000000000000b2b8:  R_AARCH64_CALL26	_printk
    b2bc: 17fffff7     	b	0xb298 <syna_pal_mem_free_0+0x24>
