
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000444 <pre_f0_show>:
     444: d503233f     	paciasp
     448: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     44c: 910003fd     	mov	x29, sp
     450: f9404c08     	ldr	x8, [x0, #0x98]
     454: aa0203e0     	mov	x0, x2
     458: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000458:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4b
     45c: 91000042     	add	x2, x2, #0x0
		000000000000045c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4b
     460: 52820001     	mov	w1, #0x1000             // =4096
     464: b943c103     	ldr	w3, [x8, #0x3c0]
     468: 94000000     	bl	0x468 <pre_f0_show+0x24>
		0000000000000468:  R_AARCH64_CALL26	snprintf
     46c: 93407c00     	sxtw	x0, w0
     470: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     474: d50323bf     	autiasp
     478: d65f03c0     	ret
