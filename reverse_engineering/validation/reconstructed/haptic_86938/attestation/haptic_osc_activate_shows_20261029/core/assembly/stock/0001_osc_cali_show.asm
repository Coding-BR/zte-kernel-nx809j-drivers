
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000095a4 <osc_cali_show>:
    95a4: d503233f     	paciasp
    95a8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    95ac: 910003fd     	mov	x29, sp
    95b0: f9404c08     	ldr	x8, [x0, #0x98]
    95b4: aa0203e0     	mov	x0, x2
    95b8: 90000002     	adrp	x2, 0x9000 <cont_show+0x34>
		00000000000095b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x164
    95bc: 91000042     	add	x2, x2, #0x0
		00000000000095bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x164
    95c0: 52820001     	mov	w1, #0x1000             // =4096
    95c4: b85f0103     	ldur	w3, [x8, #-0x10]
    95c8: 94000000     	bl	0x95c8 <osc_cali_show+0x24>
		00000000000095c8:  R_AARCH64_CALL26	snprintf
    95cc: 93407c00     	sxtw	x0, w0
    95d0: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    95d4: d50323bf     	autiasp
    95d8: d65f03c0     	ret
