
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000048 <state_show>:
      48: d503233f     	paciasp
      4c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
      50: 910003fd     	mov	x29, sp
      54: f9404c08     	ldr	x8, [x0, #0x98]
      58: aa0203e0     	mov	x0, x2
      5c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000005c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
      60: 91000042     	add	x2, x2, #0x0
		0000000000000060:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
      64: 52820001     	mov	w1, #0x1000             // =4096
      68: b8598103     	ldur	w3, [x8, #-0x68]
      6c: 94000000     	bl	0x6c <state_show+0x24>
		000000000000006c:  R_AARCH64_CALL26	snprintf
      70: 93407c00     	sxtw	x0, w0
      74: a8c17bfd     	ldp	x29, x30, [sp], #0x10
      78: d50323bf     	autiasp
      7c: d65f03c0     	ret
