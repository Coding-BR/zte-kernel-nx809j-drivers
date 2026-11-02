
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000001ec <cont_brk_time_show>:
     1ec: d503233f     	paciasp
     1f0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     1f4: 910003fd     	mov	x29, sp
     1f8: f9404c08     	ldr	x8, [x0, #0x98]
     1fc: aa0203e0     	mov	x0, x2
     200: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000200:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     204: 91000042     	add	x2, x2, #0x0
		0000000000000204:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     208: 52820001     	mov	w1, #0x1000             // =4096
     20c: 394fd503     	ldrb	w3, [x8, #0x3f5]
     210: 94000000     	bl	0x210 <cont_brk_time_show+0x24>
		0000000000000210:  R_AARCH64_CALL26	snprintf
     214: 93407c00     	sxtw	x0, w0
     218: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     21c: d50323bf     	autiasp
     220: d65f03c0     	ret
