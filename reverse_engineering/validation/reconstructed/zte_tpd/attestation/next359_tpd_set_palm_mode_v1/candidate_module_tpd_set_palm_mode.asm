
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000020e88 <tpd_set_palm_mode>:
   20e88: d503233f     	paciasp
   20e8c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   20e90: 910003fd     	mov	x29, sp
   20e94: f946dc08     	ldr	x8, [x0, #0xdb8]
   20e98: 2a0103e2     	mov	w2, w1
   20e9c: 90000000     	adrp	x0, 0x20000 <tpd_id5_report_work+0x20>
		0000000000020e9c:  R_AARCH64_ADR_PREL_PG_HI21	unk_37B5F
   20ea0: 91000000     	add	x0, x0, #0x0
		0000000000020ea0:  R_AARCH64_ADD_ABS_LO12_NC	unk_37B5F
   20ea4: b905e501     	str	w1, [x8, #0x5e4]
   20ea8: 90000001     	adrp	x1, 0x20000 <tpd_id5_report_work+0x20>
		0000000000020ea8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3763
   20eac: 91000021     	add	x1, x1, #0x0
		0000000000020eac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3763
   20eb0: 94000000     	bl	0x20eb0 <tpd_set_palm_mode+0x28>
		0000000000020eb0:  R_AARCH64_CALL26	_printk
   20eb4: 2a1f03e0     	mov	w0, wzr
   20eb8: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   20ebc: d50323bf     	autiasp
   20ec0: d65f03c0     	ret
