
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001974 <gf_irq_num>:
    1974: d503233f     	paciasp
    1978: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    197c: 910003fd     	mov	x29, sp
    1980: b40000e0     	cbz	x0, 0x199c <gf_irq_num+0x28>
    1984: b9403c00     	ldr	w0, [x0, #0x3c]
    1988: 94000000     	bl	0x1988 <gf_irq_num+0x14>
		0000000000001988:  R_AARCH64_CALL26	gpio_to_desc
    198c: 94000000     	bl	0x198c <gf_irq_num+0x18>
		000000000000198c:  R_AARCH64_CALL26	gpiod_to_irq
    1990: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    1994: d50323bf     	autiasp
    1998: d65f03c0     	ret
    199c: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		000000000000199c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe64
    19a0: 91000000     	add	x0, x0, #0x0
		00000000000019a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe64
    19a4: 94000000     	bl	0x19a4 <gf_irq_num+0x30>
		00000000000019a4:  R_AARCH64_CALL26	_printk
    19a8: 12800240     	mov	w0, #-0x13              // =-19
    19ac: 17fffff9     	b	0x1990 <gf_irq_num+0x1c>
