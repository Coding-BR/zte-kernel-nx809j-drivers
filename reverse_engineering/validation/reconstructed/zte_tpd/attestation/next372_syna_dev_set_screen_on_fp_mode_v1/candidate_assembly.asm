
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009ff0 <syna_dev_set_screen_on_fp_mode>:
    9ff0: d503233f     	paciasp
    9ff4: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    9ff8: a9014ff4     	stp	x20, x19, [sp, #0x10]
    9ffc: 910003fd     	mov	x29, sp
    a000: 2a0103f3     	mov	w19, w1
    a004: aa0003f4     	mov	x20, x0
    a008: 90000000     	adrp	x0, 0xa000 <syna_dev_set_screen_on_fp_mode+0x10>
		000000000000a008:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3220
    a00c: 91000000     	add	x0, x0, #0x0
		000000000000a00c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3220
    a010: 90000001     	adrp	x1, 0xa000 <syna_dev_set_screen_on_fp_mode+0x10>
		000000000000a010:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1711
    a014: 91000021     	add	x1, x1, #0x0
		000000000000a014:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1711
    a018: 94000000     	bl	0xa018 <syna_dev_set_screen_on_fp_mode+0x28>
		000000000000a018:  R_AARCH64_CALL26	_printk
    a01c: b4000134     	cbz	x20, 0xa040 <syna_dev_set_screen_on_fp_mode+0x50>
    a020: f9400280     	ldr	x0, [x20]
    a024: 52801a81     	mov	w1, #0xd4               // =212
    a028: 52800062     	mov	w2, #0x3                // =3
    a02c: 2a1303e3     	mov	w3, w19
    a030: 94000000     	bl	0xa030 <syna_dev_set_screen_on_fp_mode+0x40>
		000000000000a030:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    a034: 37f80100     	tbnz	w0, #0x1f, 0xa054 <syna_dev_set_screen_on_fp_mode+0x64>
    a038: 2a1f03e0     	mov	w0, wzr
    a03c: 14000002     	b	0xa044 <syna_dev_set_screen_on_fp_mode+0x54>
    a040: 128002a0     	mov	w0, #-0x16              // =-22
    a044: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    a048: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    a04c: d50323bf     	autiasp
    a050: d65f03c0     	ret
    a054: 90000008     	adrp	x8, 0xa000 <syna_dev_set_screen_on_fp_mode+0x10>
		000000000000a054:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5b8d
    a058: 91000108     	add	x8, x8, #0x0
		000000000000a058:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5b8d
    a05c: 90000001     	adrp	x1, 0xa000 <syna_dev_set_screen_on_fp_mode+0x10>
		000000000000a05c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1711
    a060: 91000021     	add	x1, x1, #0x0
		000000000000a060:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1711
    a064: 2a0003f3     	mov	w19, w0
    a068: aa0803e0     	mov	x0, x8
    a06c: 94000000     	bl	0xa06c <syna_dev_set_screen_on_fp_mode+0x7c>
		000000000000a06c:  R_AARCH64_CALL26	_printk
    a070: 2a1303e0     	mov	w0, w19
    a074: 17fffff4     	b	0xa044 <syna_dev_set_screen_on_fp_mode+0x54>
