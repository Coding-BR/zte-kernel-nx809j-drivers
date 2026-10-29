
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000264 <auto_boost_show>:
     264: d503233f     	paciasp
     268: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     26c: 910003fd     	mov	x29, sp
     270: f9404c08     	ldr	x8, [x0, #0x98]
     274: aa0203e0     	mov	x0, x2
     278: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000278:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33
     27c: 91000042     	add	x2, x2, #0x0
		000000000000027c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33
     280: 52820001     	mov	w1, #0x1000             // =4096
     284: 38570103     	ldurb	w3, [x8, #-0x90]
     288: 94000000     	bl	0x288 <auto_boost_show+0x24>
		0000000000000288:  R_AARCH64_CALL26	snprintf
     28c: 93407c00     	sxtw	x0, w0
     290: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     294: d50323bf     	autiasp
     298: d65f03c0     	ret
