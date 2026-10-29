
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000084 <activate_show>:
      84: d503233f     	paciasp
      88: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
      8c: 910003fd     	mov	x29, sp
      90: f9404c08     	ldr	x8, [x0, #0x98]
      94: aa0203e0     	mov	x0, x2
      98: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000098:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc
      9c: 91000042     	add	x2, x2, #0x0
		000000000000009c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc
      a0: 52820001     	mov	w1, #0x1000             // =4096
      a4: b8598103     	ldur	w3, [x8, #-0x68]
      a8: 94000000     	bl	0xa8 <activate_show+0x24>
		00000000000000a8:  R_AARCH64_CALL26	snprintf
      ac: 93407c00     	sxtw	x0, w0
      b0: a8c17bfd     	ldp	x29, x30, [sp], #0x10
      b4: d50323bf     	autiasp
      b8: d65f03c0     	ret
