
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000a530 <syna_dev_set_screen_on_fp_mode>:
    a530: d503233f     	paciasp
    a534: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    a538: a9014ff4     	stp	x20, x19, [sp, #0x10]
    a53c: 910003fd     	mov	x29, sp
    a540: 2a0103f3     	mov	w19, w1
    a544: aa0003f4     	mov	x20, x0
    a548: 90000000     	adrp	x0, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a548:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19906
    a54c: 91000000     	add	x0, x0, #0x0
		000000000000a54c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19906
    a550: 90000001     	adrp	x1, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a550:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18420
    a554: 91000021     	add	x1, x1, #0x0
		000000000000a554:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18420
    a558: 94000000     	bl	0xa558 <syna_dev_set_screen_on_fp_mode+0x28>
		000000000000a558:  R_AARCH64_CALL26	_printk
    a55c: b4000134     	cbz	x20, 0xa580 <syna_dev_set_screen_on_fp_mode+0x50>
    a560: f9400280     	ldr	x0, [x20]
    a564: 52801a81     	mov	w1, #0xd4               // =212
    a568: 52800062     	mov	w2, #0x3                // =3
    a56c: 2a1303e3     	mov	w3, w19
    a570: 94000000     	bl	0xa570 <syna_dev_set_screen_on_fp_mode+0x40>
		000000000000a570:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    a574: 37f80100     	tbnz	w0, #0x1f, 0xa594 <syna_dev_set_screen_on_fp_mode+0x64>
    a578: 2a1f03e0     	mov	w0, wzr
    a57c: 14000002     	b	0xa584 <syna_dev_set_screen_on_fp_mode+0x54>
    a580: 128002a0     	mov	w0, #-0x16              // =-22
    a584: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    a588: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    a58c: d50323bf     	autiasp
    a590: d65f03c0     	ret
    a594: 90000008     	adrp	x8, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a594:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b929
    a598: 91000108     	add	x8, x8, #0x0
		000000000000a598:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b929
    a59c: 90000001     	adrp	x1, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a59c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18420
    a5a0: 91000021     	add	x1, x1, #0x0
		000000000000a5a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18420
    a5a4: 2a0003f3     	mov	w19, w0
    a5a8: aa0803e0     	mov	x0, x8
    a5ac: 94000000     	bl	0xa5ac <syna_dev_set_screen_on_fp_mode+0x7c>
		000000000000a5ac:  R_AARCH64_CALL26	_printk
    a5b0: 2a1303e0     	mov	w0, w19
    a5b4: 17fffff4     	b	0xa584 <syna_dev_set_screen_on_fp_mode+0x54>
