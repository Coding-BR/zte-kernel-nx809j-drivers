
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000a2a8 <syna_dev_set_screen_on_fp_mode>:
    a2a8: d503233f     	paciasp
    a2ac: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    a2b0: a9014ff4     	stp	x20, x19, [sp, #0x10]
    a2b4: 910003fd     	mov	x29, sp
    a2b8: 2a0103f3     	mov	w19, w1
    a2bc: aa0003f4     	mov	x20, x0
    a2c0: 90000000     	adrp	x0, 0xa000 <syna_dev_set_display_rotation+0x64>
		000000000000a2c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26b3
    a2c4: 91000000     	add	x0, x0, #0x0
		000000000000a2c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26b3
    a2c8: 90000001     	adrp	x1, 0xa000 <syna_dev_set_display_rotation+0x64>
		000000000000a2c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x121f
    a2cc: 91000021     	add	x1, x1, #0x0
		000000000000a2cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x121f
    a2d0: 94000000     	bl	0xa2d0 <syna_dev_set_screen_on_fp_mode+0x28>
		000000000000a2d0:  R_AARCH64_CALL26	_printk
    a2d4: b4000134     	cbz	x20, 0xa2f8 <syna_dev_set_screen_on_fp_mode+0x50>
    a2d8: f9400280     	ldr	x0, [x20]
    a2dc: 52801a81     	mov	w1, #0xd4               // =212
    a2e0: 52800062     	mov	w2, #0x3                // =3
    a2e4: 2a1303e3     	mov	w3, w19
    a2e8: 94000000     	bl	0xa2e8 <syna_dev_set_screen_on_fp_mode+0x40>
		000000000000a2e8:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    a2ec: 37f80100     	tbnz	w0, #0x1f, 0xa30c <syna_dev_set_screen_on_fp_mode+0x64>
    a2f0: 2a1f03e0     	mov	w0, wzr
    a2f4: 14000002     	b	0xa2fc <syna_dev_set_screen_on_fp_mode+0x54>
    a2f8: 128002a0     	mov	w0, #-0x16              // =-22
    a2fc: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    a300: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    a304: d50323bf     	autiasp
    a308: d65f03c0     	ret
    a30c: 90000008     	adrp	x8, 0xa000 <syna_dev_set_display_rotation+0x64>
		000000000000a30c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x475f
    a310: 91000108     	add	x8, x8, #0x0
		000000000000a310:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x475f
    a314: 90000001     	adrp	x1, 0xa000 <syna_dev_set_display_rotation+0x64>
		000000000000a314:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x121f
    a318: 91000021     	add	x1, x1, #0x0
		000000000000a318:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x121f
    a31c: 2a0003f3     	mov	w19, w0
    a320: aa0803e0     	mov	x0, x8
    a324: 94000000     	bl	0xa324 <syna_dev_set_screen_on_fp_mode+0x7c>
		000000000000a324:  R_AARCH64_CALL26	_printk
    a328: 2a1303e0     	mov	w0, w19
    a32c: 17fffff4     	b	0xa2fc <syna_dev_set_screen_on_fp_mode+0x54>
