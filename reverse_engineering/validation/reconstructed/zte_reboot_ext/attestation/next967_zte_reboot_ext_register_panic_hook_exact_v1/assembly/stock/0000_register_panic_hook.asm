
/input/zte_reboot_ext.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000b0c <register_panic_hook>:
     b0c: d503233f     	paciasp
     b10: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     b14: f9000bf3     	str	x19, [sp, #0x10]
     b18: 910003fd     	mov	x29, sp
     b1c: aa0003f3     	mov	x19, x0
     b20: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b20:  R_AARCH64_ADR_PREL_PG_HI21	panic_probe
     b24: 91000000     	add	x0, x0, #0x0
		0000000000000b24:  R_AARCH64_ADD_ABS_LO12_NC	panic_probe
     b28: 94000000     	bl	0xb28 <register_panic_hook+0x1c>
		0000000000000b28:  R_AARCH64_CALL26	register_kretprobe
     b2c: 350000c0     	cbnz	w0, 0xb44 <register_panic_hook+0x38>
     b30: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ff
     b34: 91000021     	add	x1, x1, #0x0
		0000000000000b34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ff
     b38: 91004260     	add	x0, x19, #0x10
     b3c: 94000000     	bl	0xb3c <register_panic_hook+0x30>
		0000000000000b3c:  R_AARCH64_CALL26	_dev_info
     b40: 14000006     	b	0xb58 <register_panic_hook+0x4c>
     b44: 2a0003e2     	mov	w2, w0
     b48: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d9
     b4c: 91000021     	add	x1, x1, #0x0
		0000000000000b4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d9
     b50: 91004260     	add	x0, x19, #0x10
     b54: 94000000     	bl	0xb54 <register_panic_hook+0x48>
		0000000000000b54:  R_AARCH64_CALL26	_dev_err
     b58: f9400bf3     	ldr	x19, [sp, #0x10]
     b5c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     b60: d50323bf     	autiasp
     b64: d65f03c0     	ret
