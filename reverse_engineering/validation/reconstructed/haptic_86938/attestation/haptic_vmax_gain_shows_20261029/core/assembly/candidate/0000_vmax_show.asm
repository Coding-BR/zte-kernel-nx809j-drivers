
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000000fc <vmax_show>:
      fc: d503233f     	paciasp
     100: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     104: 910003fd     	mov	x29, sp
     108: f9404c08     	ldr	x8, [x0, #0x98]
     10c: aa0203e0     	mov	x0, x2
     110: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000110:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     114: 91000042     	add	x2, x2, #0x0
		0000000000000114:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     118: 52820001     	mov	w1, #0x1000             // =4096
     11c: b8588103     	ldur	w3, [x8, #-0x78]
     120: 94000000     	bl	0x120 <vmax_show+0x24>
		0000000000000120:  R_AARCH64_CALL26	snprintf
     124: 93407c00     	sxtw	x0, w0
     128: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     12c: d50323bf     	autiasp
     130: d65f03c0     	ret
