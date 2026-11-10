
/input/zlog_test_candidate.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000002b8 <zlog_enable_test_get>:
     2b8: d503233f     	paciasp
     2bc: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     2c0: 910003fd     	mov	x29, sp
     2c4: 90000008     	adrp	x8, 0x0 <.text>
		00000000000002c4:  R_AARCH64_ADR_PREL_PG_HI21	zlog_enable_test_flag
     2c8: 90000002     	adrp	x2, 0x0 <.text>
		00000000000002c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x402
     2cc: 91000042     	add	x2, x2, #0x0
		00000000000002cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x402
     2d0: b9400103     	ldr	w3, [x8]
		00000000000002d0:  R_AARCH64_LDST32_ABS_LO12_NC	zlog_enable_test_flag
     2d4: 52820001     	mov	w1, #0x1000             // =4096
     2d8: 94000000     	bl	0x2d8 <zlog_enable_test_get+0x20>
		00000000000002d8:  R_AARCH64_CALL26	snprintf
     2dc: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     2e0: d50323bf     	autiasp
     2e4: d65f03c0     	ret
