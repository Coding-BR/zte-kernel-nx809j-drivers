
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000bdd8 <syna_dev_set_screen_on_fp_mode>:
    bdd8: d503233f     	paciasp
    bddc: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    bde0: a9014ff4     	stp	x20, x19, [sp, #0x10]
    bde4: 910003fd     	mov	x29, sp
    bde8: 2a0103f3     	mov	w19, w1
    bdec: aa0003f4     	mov	x20, x0
    bdf0: 90000000     	adrp	x0, 0xb000 <syna_cdev_create+0xbc>
		000000000000bdf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a257
    bdf4: 91000000     	add	x0, x0, #0x0
		000000000000bdf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a257
    bdf8: 90000001     	adrp	x1, 0xb000 <syna_cdev_create+0xbc>
		000000000000bdf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x187e1
    bdfc: 91000021     	add	x1, x1, #0x0
		000000000000bdfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x187e1
    be00: 94000000     	bl	0xbe00 <syna_dev_set_screen_on_fp_mode+0x28>
		000000000000be00:  R_AARCH64_CALL26	_printk
    be04: b4000134     	cbz	x20, 0xbe28 <syna_dev_set_screen_on_fp_mode+0x50>
    be08: f9400280     	ldr	x0, [x20]
    be0c: 52801a81     	mov	w1, #0xd4               // =212
    be10: 52800062     	mov	w2, #0x3                // =3
    be14: 2a1303e3     	mov	w3, w19
    be18: 94000000     	bl	0xbe18 <syna_dev_set_screen_on_fp_mode+0x40>
		000000000000be18:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    be1c: 37f80100     	tbnz	w0, #0x1f, 0xbe3c <syna_dev_set_screen_on_fp_mode+0x64>
    be20: 2a1f03e0     	mov	w0, wzr
    be24: 14000002     	b	0xbe2c <syna_dev_set_screen_on_fp_mode+0x54>
    be28: 128002a0     	mov	w0, #-0x16              // =-22
    be2c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    be30: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    be34: d50323bf     	autiasp
    be38: d65f03c0     	ret
    be3c: 90000008     	adrp	x8, 0xb000 <syna_cdev_create+0xbc>
		000000000000be3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c9dd
    be40: 91000108     	add	x8, x8, #0x0
		000000000000be40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c9dd
    be44: 90000001     	adrp	x1, 0xb000 <syna_cdev_create+0xbc>
		000000000000be44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x187e1
    be48: 91000021     	add	x1, x1, #0x0
		000000000000be48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x187e1
    be4c: 2a0003f3     	mov	w19, w0
    be50: aa0803e0     	mov	x0, x8
    be54: 94000000     	bl	0xbe54 <syna_dev_set_screen_on_fp_mode+0x7c>
		000000000000be54:  R_AARCH64_CALL26	_printk
    be58: 2a1303e0     	mov	w0, w19
    be5c: 17fffff4     	b	0xbe2c <syna_dev_set_screen_on_fp_mode+0x54>
