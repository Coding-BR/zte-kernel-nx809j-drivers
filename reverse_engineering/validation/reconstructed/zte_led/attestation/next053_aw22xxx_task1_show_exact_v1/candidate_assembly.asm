
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003528 <aw22xxx_task1_show>:
    3528: d503233f     	paciasp
    352c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    3530: 910003fd     	mov	x29, sp
    3534: f9404c08     	ldr	x8, [x0, #0x98]
    3538: aa0203e0     	mov	x0, x2
    353c: 90000002     	adrp	x2, 0x3000 <aw22xxx_imax_show+0xd0>
		000000000000353c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x86b
    3540: 91000042     	add	x2, x2, #0x0
		0000000000003540:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x86b
    3544: 52820001     	mov	w1, #0x1000             // =4096
    3548: 394bb503     	ldrb	w3, [x8, #0x2ed]
    354c: 94000000     	bl	0x354c <aw22xxx_task1_show+0x24>
		000000000000354c:  R_AARCH64_CALL26	snprintf
    3550: 93407c00     	sxtw	x0, w0
    3554: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    3558: d50323bf     	autiasp
    355c: d65f03c0     	ret
