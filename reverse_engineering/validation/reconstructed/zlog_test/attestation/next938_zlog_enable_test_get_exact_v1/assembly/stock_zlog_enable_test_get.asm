
/input/zlog_test.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000034c <zlog_enable_test_get>:
     34c: d503233f     	paciasp
     350: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     354: 910003fd     	mov	x29, sp
     358: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000358:  R_AARCH64_ADR_PREL_PG_HI21	.bss
     35c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000035c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x432
     360: 91000042     	add	x2, x2, #0x0
		0000000000000360:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x432
     364: b9400103     	ldr	w3, [x8]
		0000000000000364:  R_AARCH64_LDST32_ABS_LO12_NC	.bss
     368: 52820001     	mov	w1, #0x1000             // =4096
     36c: 94000000     	bl	0x36c <zlog_enable_test_get+0x20>
		000000000000036c:  R_AARCH64_CALL26	snprintf
     370: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     374: d50323bf     	autiasp
     378: d65f03c0     	ret
