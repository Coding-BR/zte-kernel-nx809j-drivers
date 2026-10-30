
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003628 <aw22xxx_task_irq_show>:
    3628: d503233f     	paciasp
    362c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    3630: 910003fd     	mov	x29, sp
    3634: f9404c08     	ldr	x8, [x0, #0x98]
    3638: aa0203e0     	mov	x0, x2
    363c: 90000002     	adrp	x2, 0x3000 <aw22xxx_imax_show+0xd0>
		000000000000363c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xd84
    3640: 91000042     	add	x2, x2, #0x0
		0000000000003640:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xd84
    3644: 52820001     	mov	w1, #0x1000             // =4096
    3648: b942e903     	ldr	w3, [x8, #0x2e8]
    364c: 94000000     	bl	0x364c <aw22xxx_task_irq_show+0x24>
		000000000000364c:  R_AARCH64_CALL26	snprintf
    3650: 93407c00     	sxtw	x0, w0
    3654: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    3658: d50323bf     	autiasp
    365c: d65f03c0     	ret
