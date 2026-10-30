
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000037c8 <aw22xxx_task_irq_show>:
    37c8: d503233f     	paciasp
    37cc: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    37d0: 910003fd     	mov	x29, sp
    37d4: f9404c08     	ldr	x8, [x0, #0x98]
    37d8: aa0203e0     	mov	x0, x2
    37dc: 90000002     	adrp	x2, 0x3000 <aw22xxx_play+0x84>
		00000000000037dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf18
    37e0: 91000042     	add	x2, x2, #0x0
		00000000000037e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf18
    37e4: 52820001     	mov	w1, #0x1000             // =4096
    37e8: b942e903     	ldr	w3, [x8, #0x2e8]
    37ec: 94000000     	bl	0x37ec <aw22xxx_task_irq_show+0x24>
		00000000000037ec:  R_AARCH64_CALL26	snprintf
    37f0: 93407c00     	sxtw	x0, w0
    37f4: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    37f8: d50323bf     	autiasp
    37fc: d65f03c0     	ret
