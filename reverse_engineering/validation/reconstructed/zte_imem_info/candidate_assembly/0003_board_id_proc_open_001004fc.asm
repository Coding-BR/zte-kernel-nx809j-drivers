
/input/zte_imem_info.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000036c <board_id_proc_open>:
     36c: d503233f     	paciasp
     370: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     374: 910003fd     	mov	x29, sp
     378: aa0103e0     	mov	x0, x1
     37c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000037c:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x39c
     380: 91000021     	add	x1, x1, #0x0
		0000000000000380:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x39c
     384: aa1f03e2     	mov	x2, xzr
     388: 94000000     	bl	0x388 <board_id_proc_open+0x1c>
		0000000000000388:  R_AARCH64_CALL26	single_open
     38c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     390: d50323bf     	autiasp
     394: d65f03c0     	ret
