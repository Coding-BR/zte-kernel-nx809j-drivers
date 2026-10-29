
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000094c8 <ram_vbat_comp_show>:
    94c8: d503233f     	paciasp
    94cc: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    94d0: 910003fd     	mov	x29, sp
    94d4: f9404c08     	ldr	x8, [x0, #0x98]
    94d8: aa0203e0     	mov	x0, x2
    94dc: 90000002     	adrp	x2, 0x9000 <cont_show+0x34>
		00000000000094dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x190d
    94e0: 91000042     	add	x2, x2, #0x0
		00000000000094e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x190d
    94e4: 52820001     	mov	w1, #0x1000             // =4096
    94e8: 38574103     	ldurb	w3, [x8, #-0x8c]
    94ec: 94000000     	bl	0x94ec <ram_vbat_comp_show+0x24>
		00000000000094ec:  R_AARCH64_CALL26	snprintf
    94f0: 93407c00     	sxtw	x0, w0
    94f4: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    94f8: d50323bf     	autiasp
    94fc: d65f03c0     	ret
