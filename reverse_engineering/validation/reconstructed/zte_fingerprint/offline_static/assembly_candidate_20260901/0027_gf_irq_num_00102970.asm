
/input/zte_fingerprint_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001434 <gf_irq_num>:
    1434: d503233f     	paciasp
    1438: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    143c: 910003fd     	mov	x29, sp
    1440: b40000e0     	cbz	x0, 0x145c <gf_irq_num+0x28>
    1444: b9403c00     	ldr	w0, [x0, #0x3c]
    1448: 94000000     	bl	0x1448 <gf_irq_num+0x14>
		0000000000001448:  R_AARCH64_CALL26	gpio_to_desc
    144c: 94000000     	bl	0x144c <gf_irq_num+0x18>
		000000000000144c:  R_AARCH64_CALL26	gpiod_to_irq
    1450: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    1454: d50323bf     	autiasp
    1458: d65f03c0     	ret
    145c: 90000000     	adrp	x0, 0x1000 <_inline_copy_from_user+0x20>
		000000000000145c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe09
    1460: 91000000     	add	x0, x0, #0x0
		0000000000001460:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe09
    1464: 90000001     	adrp	x1, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001464:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcac
    1468: 91000021     	add	x1, x1, #0x0
		0000000000001468:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcac
    146c: 94000000     	bl	0x146c <gf_irq_num+0x38>
		000000000000146c:  R_AARCH64_CALL26	_printk
    1470: 12800240     	mov	w0, #-0x13              // =-19
    1474: 17fffff7     	b	0x1450 <gf_irq_num+0x1c>
