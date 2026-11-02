
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000000c0 <activate_mode_show>:
      c0: d503233f     	paciasp
      c4: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
      c8: 910003fd     	mov	x29, sp
      cc: f9404c08     	ldr	x8, [x0, #0x98]
      d0: aa0203e0     	mov	x0, x2
      d4: 90000002     	adrp	x2, 0x0 <.text>
		00000000000000d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b
      d8: 91000042     	add	x2, x2, #0x0
		00000000000000d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b
      dc: 52820001     	mov	w1, #0x1000             // =4096
      e0: 38573103     	ldurb	w3, [x8, #-0x8d]
      e4: 94000000     	bl	0xe4 <activate_mode_show+0x24>
		00000000000000e4:  R_AARCH64_CALL26	snprintf
      e8: 93407c00     	sxtw	x0, w0
      ec: a8c17bfd     	ldp	x29, x30, [sp], #0x10
      f0: d50323bf     	autiasp
      f4: d65f03c0     	ret
