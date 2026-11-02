
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001aa0 <zte_goodix_pinctrl_select>:
    1aa0: d503233f     	paciasp
    1aa4: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    1aa8: f9000bf5     	str	x21, [sp, #0x10]
    1aac: a9024ff4     	stp	x20, x19, [sp, #0x20]
    1ab0: 910003fd     	mov	x29, sp
    1ab4: 2a0103f3     	mov	w19, w1
    1ab8: aa0003f4     	mov	x20, x0
    1abc: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		0000000000001abc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ee
    1ac0: 91000000     	add	x0, x0, #0x0
		0000000000001ac0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ee
    1ac4: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2cc>
		0000000000001ac4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c3
    1ac8: 91000021     	add	x1, x1, #0x0
		0000000000001ac8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c3
    1acc: 72000262     	ands	w2, w19, #0x1
    1ad0: 52801208     	mov	w8, #0x90               // =144
    1ad4: 52801109     	mov	w9, #0x88               // =136
    1ad8: 9a881135     	csel	x21, x9, x8, ne
    1adc: 94000000     	bl	0x1adc <zte_goodix_pinctrl_select+0x3c>
		0000000000001adc:  R_AARCH64_CALL26	_printk
    1ae0: f8756a88     	ldr	x8, [x20, x21]
    1ae4: 128002a0     	mov	w0, #-0x16              // =-22
    1ae8: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2cc>
		0000000000001ae8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf84
    1aec: 91000021     	add	x1, x1, #0x0
		0000000000001aec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf84
    1af0: b40001c8     	cbz	x8, 0x1b28 <zte_goodix_pinctrl_select+0x88>
    1af4: b140051f     	cmn	x8, #0x1, lsl #12       // =0x1000
    1af8: 54000188     	b.hi	0x1b28 <zte_goodix_pinctrl_select+0x88>
    1afc: f9404280     	ldr	x0, [x20, #0x80]
    1b00: aa0803e1     	mov	x1, x8
    1b04: 94000000     	bl	0x1b04 <zte_goodix_pinctrl_select+0x64>
		0000000000001b04:  R_AARCH64_CALL26	pinctrl_select_state
    1b08: 350000c0     	cbnz	w0, 0x1b20 <zte_goodix_pinctrl_select+0x80>
    1b0c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1b10: f9400bf5     	ldr	x21, [sp, #0x10]
    1b14: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    1b18: d50323bf     	autiasp
    1b1c: d65f03c0     	ret
    1b20: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2cc>
		0000000000001b20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa1e
    1b24: 91000021     	add	x1, x1, #0x0
		0000000000001b24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa1e
    1b28: f9400e88     	ldr	x8, [x20, #0x18]
    1b2c: 90000009     	adrp	x9, 0x1000 <gf_probe+0x2cc>
		0000000000001b2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1366
    1b30: 91000129     	add	x9, x9, #0x0
		0000000000001b30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1366
    1b34: 7200027f     	tst	w19, #0x1
    1b38: 9000000a     	adrp	x10, 0x1000 <gf_probe+0x2cc>
		0000000000001b38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1358
    1b3c: 9100014a     	add	x10, x10, #0x0
		0000000000001b3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1358
    1b40: 9a891142     	csel	x2, x10, x9, ne
    1b44: 2a0003f3     	mov	w19, w0
    1b48: 91004100     	add	x0, x8, #0x10
    1b4c: 94000000     	bl	0x1b4c <zte_goodix_pinctrl_select+0xac>
		0000000000001b4c:  R_AARCH64_CALL26	_dev_err
    1b50: 2a1303e0     	mov	w0, w19
    1b54: 17ffffee     	b	0x1b0c <zte_goodix_pinctrl_select+0x6c>
