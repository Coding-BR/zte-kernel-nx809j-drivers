
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001a94 <zte_goodix_pinctrl_select>:
    1a94: d503233f     	paciasp
    1a98: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    1a9c: f9000bf5     	str	x21, [sp, #0x10]
    1aa0: a9024ff4     	stp	x20, x19, [sp, #0x20]
    1aa4: 910003fd     	mov	x29, sp
    1aa8: 2a0103f3     	mov	w19, w1
    1aac: aa0003f4     	mov	x20, x0
    1ab0: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		0000000000001ab0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ee
    1ab4: 91000000     	add	x0, x0, #0x0
		0000000000001ab4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ee
    1ab8: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2d8>
		0000000000001ab8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c3
    1abc: 91000021     	add	x1, x1, #0x0
		0000000000001abc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c3
    1ac0: 72000262     	ands	w2, w19, #0x1
    1ac4: 52801208     	mov	w8, #0x90               // =144
    1ac8: 52801109     	mov	w9, #0x88               // =136
    1acc: 9a881135     	csel	x21, x9, x8, ne
    1ad0: 94000000     	bl	0x1ad0 <zte_goodix_pinctrl_select+0x3c>
		0000000000001ad0:  R_AARCH64_CALL26	_printk
    1ad4: f8756a88     	ldr	x8, [x20, x21]
    1ad8: 128002a0     	mov	w0, #-0x16              // =-22
    1adc: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2d8>
		0000000000001adc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf84
    1ae0: 91000021     	add	x1, x1, #0x0
		0000000000001ae0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf84
    1ae4: b40001c8     	cbz	x8, 0x1b1c <zte_goodix_pinctrl_select+0x88>
    1ae8: b140051f     	cmn	x8, #0x1, lsl #12       // =0x1000
    1aec: 54000188     	b.hi	0x1b1c <zte_goodix_pinctrl_select+0x88>
    1af0: f9404280     	ldr	x0, [x20, #0x80]
    1af4: aa0803e1     	mov	x1, x8
    1af8: 94000000     	bl	0x1af8 <zte_goodix_pinctrl_select+0x64>
		0000000000001af8:  R_AARCH64_CALL26	pinctrl_select_state
    1afc: 350000c0     	cbnz	w0, 0x1b14 <zte_goodix_pinctrl_select+0x80>
    1b00: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1b04: f9400bf5     	ldr	x21, [sp, #0x10]
    1b08: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    1b0c: d50323bf     	autiasp
    1b10: d65f03c0     	ret
    1b14: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2d8>
		0000000000001b14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa1e
    1b18: 91000021     	add	x1, x1, #0x0
		0000000000001b18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa1e
    1b1c: f9400e88     	ldr	x8, [x20, #0x18]
    1b20: 90000009     	adrp	x9, 0x1000 <gf_probe+0x2d8>
		0000000000001b20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1366
    1b24: 91000129     	add	x9, x9, #0x0
		0000000000001b24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1366
    1b28: 7200027f     	tst	w19, #0x1
    1b2c: 9000000a     	adrp	x10, 0x1000 <gf_probe+0x2d8>
		0000000000001b2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1358
    1b30: 9100014a     	add	x10, x10, #0x0
		0000000000001b30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1358
    1b34: 9a891142     	csel	x2, x10, x9, ne
    1b38: 2a0003f3     	mov	w19, w0
    1b3c: 91004100     	add	x0, x8, #0x10
    1b40: 94000000     	bl	0x1b40 <zte_goodix_pinctrl_select+0xac>
		0000000000001b40:  R_AARCH64_CALL26	_dev_err
    1b44: 2a1303e0     	mov	w0, w19
    1b48: 17ffffee     	b	0x1b00 <zte_goodix_pinctrl_select+0x6c>
