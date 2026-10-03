
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000034c4 <aw22xxx_task_irq_show>:
    34c4: d503233f     	paciasp
    34c8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    34cc: 910003fd     	mov	x29, sp
    34d0: f9404c08     	ldr	x8, [x0, #0x98]
    34d4: aa0203e0     	mov	x0, x2
    34d8: 90000002     	adrp	x2, 0x3000 <aw22xxx_imax_store+0x48>
		00000000000034d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd84
    34dc: 91000042     	add	x2, x2, #0x0
		00000000000034dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd84
    34e0: 52820001     	mov	w1, #0x1000             // =4096
    34e4: b942e903     	ldr	w3, [x8, #0x2e8]
    34e8: 94000000     	bl	0x34e8 <aw22xxx_task_irq_show+0x24>
		00000000000034e8:  R_AARCH64_CALL26	snprintf
    34ec: 93407c00     	sxtw	x0, w0
    34f0: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    34f4: d50323bf     	autiasp
    34f8: d65f03c0     	ret
