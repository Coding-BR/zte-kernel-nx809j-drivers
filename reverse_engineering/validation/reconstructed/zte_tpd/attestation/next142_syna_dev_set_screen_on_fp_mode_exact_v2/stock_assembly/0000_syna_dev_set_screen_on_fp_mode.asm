
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000a984 <syna_dev_set_screen_on_fp_mode>:
    a984: d503233f     	paciasp
    a988: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    a98c: a9014ff4     	stp	x20, x19, [sp, #0x10]
    a990: 910003fd     	mov	x29, sp
    a994: 2a0103f3     	mov	w19, w1
    a998: aa0003f4     	mov	x20, x0
    a99c: 90000000     	adrp	x0, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a99c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5641
    a9a0: 91000000     	add	x0, x0, #0x0
		000000000000a9a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5641
    a9a4: 90000001     	adrp	x1, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a9a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2593
    a9a8: 91000021     	add	x1, x1, #0x0
		000000000000a9a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2593
    a9ac: 94000000     	bl	0xa9ac <syna_dev_set_screen_on_fp_mode+0x28>
		000000000000a9ac:  R_AARCH64_CALL26	_printk
    a9b0: b4000134     	cbz	x20, 0xa9d4 <syna_dev_set_screen_on_fp_mode+0x50>
    a9b4: f9400280     	ldr	x0, [x20]
    a9b8: 52801a81     	mov	w1, #0xd4               // =212
    a9bc: 52800062     	mov	w2, #0x3                // =3
    a9c0: 2a1303e3     	mov	w3, w19
    a9c4: 94000000     	bl	0xa9c4 <syna_dev_set_screen_on_fp_mode+0x40>
		000000000000a9c4:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    a9c8: 37f80100     	tbnz	w0, #0x1f, 0xa9e8 <syna_dev_set_screen_on_fp_mode+0x64>
    a9cc: 2a1f03e0     	mov	w0, wzr
    a9d0: 14000002     	b	0xa9d8 <syna_dev_set_screen_on_fp_mode+0x54>
    a9d4: 128002a0     	mov	w0, #-0x16              // =-22
    a9d8: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    a9dc: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    a9e0: d50323bf     	autiasp
    a9e4: d65f03c0     	ret
    a9e8: 90000008     	adrp	x8, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a9e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9e91
    a9ec: 91000108     	add	x8, x8, #0x0
		000000000000a9ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9e91
    a9f0: 90000001     	adrp	x1, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a9f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2593
    a9f4: 91000021     	add	x1, x1, #0x0
		000000000000a9f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2593
    a9f8: 2a0003f3     	mov	w19, w0
    a9fc: aa0803e0     	mov	x0, x8
    aa00: 94000000     	bl	0xaa00 <syna_dev_set_screen_on_fp_mode+0x7c>
		000000000000aa00:  R_AARCH64_CALL26	_printk
    aa04: 2a1303e0     	mov	w0, w19
    aa08: 17fffff4     	b	0xa9d8 <syna_dev_set_screen_on_fp_mode+0x54>
