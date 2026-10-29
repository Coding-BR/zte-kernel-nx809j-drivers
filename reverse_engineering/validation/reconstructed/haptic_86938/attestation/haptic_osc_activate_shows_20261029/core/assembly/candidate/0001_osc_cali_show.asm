
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000390 <osc_cali_show>:
     390: d503233f     	paciasp
     394: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     398: 910003fd     	mov	x29, sp
     39c: f9404c08     	ldr	x8, [x0, #0x98]
     3a0: aa0203e0     	mov	x0, x2
     3a4: 90000002     	adrp	x2, 0x0 <.text>
		00000000000003a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     3a8: 91000042     	add	x2, x2, #0x0
		00000000000003a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     3ac: 52820001     	mov	w1, #0x1000             // =4096
     3b0: b85f0103     	ldur	w3, [x8, #-0x10]
     3b4: 94000000     	bl	0x3b4 <osc_cali_show+0x24>
		00000000000003b4:  R_AARCH64_CALL26	snprintf
     3b8: 93407c00     	sxtw	x0, w0
     3bc: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     3c0: d50323bf     	autiasp
     3c4: d65f03c0     	ret
