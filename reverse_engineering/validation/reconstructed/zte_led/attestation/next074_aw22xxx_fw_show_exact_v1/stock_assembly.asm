
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002284 <aw22xxx_fw_show>:
    2284: d503233f     	paciasp
    2288: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    228c: 910003fd     	mov	x29, sp
    2290: aa0203e0     	mov	x0, x2
    2294: 90000002     	adrp	x2, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002294:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17d0
    2298: 91000042     	add	x2, x2, #0x0
		0000000000002298:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17d0
    229c: 90000003     	adrp	x3, 0x2000 <aw22xxx_reg_show+0xcc>
		000000000000229c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x61d8
    22a0: 91000063     	add	x3, x3, #0x0
		00000000000022a0:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x61d8
    22a4: 52820001     	mov	w1, #0x1000             // =4096
    22a8: 94000000     	bl	0x22a8 <aw22xxx_fw_show+0x24>
		00000000000022a8:  R_AARCH64_CALL26	snprintf
    22ac: 93407c00     	sxtw	x0, w0
    22b0: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    22b4: d50323bf     	autiasp
    22b8: d65f03c0     	ret
