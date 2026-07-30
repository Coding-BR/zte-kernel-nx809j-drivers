
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000b428 <syna_pal_mem_free>:
    b428: d503233f     	paciasp
    b42c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    b430: f9000bf3     	str	x19, [sp, #0x10]
    b434: 910003fd     	mov	x29, sp
    b438: aa0003f3     	mov	x19, x0
    b43c: 94000000     	bl	0xb43c <syna_pal_mem_free+0x14>
		000000000000b43c:  R_AARCH64_CALL26	syna_request_managed_device
    b440: b4000100     	cbz	x0, 0xb460 <syna_pal_mem_free+0x38>
    b444: b4000073     	cbz	x19, 0xb450 <syna_pal_mem_free+0x28>
    b448: aa1303e1     	mov	x1, x19
    b44c: 94000000     	bl	0xb44c <syna_pal_mem_free+0x24>
		000000000000b44c:  R_AARCH64_CALL26	devm_kfree
    b450: f9400bf3     	ldr	x19, [sp, #0x10]
    b454: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    b458: d50323bf     	autiasp
    b45c: d65f03c0     	ret
    b460: 90000000     	adrp	x0, 0xb000 <syna_ioctl+0xc8>
		000000000000b460:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c53
    b464: 91000000     	add	x0, x0, #0x0
		000000000000b464:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c53
    b468: 90000001     	adrp	x1, 0xb000 <syna_ioctl+0xc8>
		000000000000b468:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x45a3
    b46c: 91000021     	add	x1, x1, #0x0
		000000000000b46c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x45a3
    b470: 94000000     	bl	0xb470 <syna_pal_mem_free+0x48>
		000000000000b470:  R_AARCH64_CALL26	_printk
    b474: 17fffff7     	b	0xb450 <syna_pal_mem_free+0x28>
