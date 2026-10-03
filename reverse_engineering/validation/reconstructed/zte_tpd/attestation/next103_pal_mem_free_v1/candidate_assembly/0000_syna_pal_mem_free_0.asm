
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000b488 <syna_pal_mem_free_0>:
    b488: d503233f     	paciasp
    b48c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    b490: f9000bf3     	str	x19, [sp, #0x10]
    b494: 910003fd     	mov	x29, sp
    b498: aa0003f3     	mov	x19, x0
    b49c: 94000000     	bl	0xb49c <syna_pal_mem_free_0+0x14>
		000000000000b49c:  R_AARCH64_CALL26	syna_request_managed_device
    b4a0: b40000e0     	cbz	x0, 0xb4bc <syna_pal_mem_free_0+0x34>
    b4a4: aa1303e1     	mov	x1, x19
    b4a8: 94000000     	bl	0xb4a8 <syna_pal_mem_free_0+0x20>
		000000000000b4a8:  R_AARCH64_CALL26	devm_kfree
    b4ac: f9400bf3     	ldr	x19, [sp, #0x10]
    b4b0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    b4b4: d50323bf     	autiasp
    b4b8: d65f03c0     	ret
    b4bc: 90000000     	adrp	x0, 0xb000 <syna_ioctl+0xc8>
		000000000000b4bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c53
    b4c0: 91000000     	add	x0, x0, #0x0
		000000000000b4c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c53
    b4c4: 90000001     	adrp	x1, 0xb000 <syna_ioctl+0xc8>
		000000000000b4c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x45a3
    b4c8: 91000021     	add	x1, x1, #0x0
		000000000000b4c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x45a3
    b4cc: 94000000     	bl	0xb4cc <syna_pal_mem_free_0+0x44>
		000000000000b4cc:  R_AARCH64_CALL26	_printk
    b4d0: 17fffff7     	b	0xb4ac <syna_pal_mem_free_0+0x24>
