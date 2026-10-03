
/input/zte_reboot_ext.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000099c <save_panic_buf_data_to_nvmem>:
     99c: d503233f     	paciasp
     9a0: d100c3ff     	sub	sp, sp, #0x30
     9a4: a9017bfd     	stp	x29, x30, [sp, #0x10]
     9a8: a9024ff4     	stp	x20, x19, [sp, #0x20]
     9ac: 910043fd     	add	x29, sp, #0x10
     9b0: b50000a0     	cbnz	x0, 0x9c4 <save_panic_buf_data_to_nvmem+0x28>
     9b4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000009b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e0
     9b8: 91000000     	add	x0, x0, #0x0
		00000000000009b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e0
     9bc: 94000000     	bl	0x9bc <save_panic_buf_data_to_nvmem+0x20>
		00000000000009bc:  R_AARCH64_CALL26	_printk
     9c0: 1400004e     	b	0xaf8 <save_panic_buf_data_to_nvmem+0x15c>
     9c4: f9404801     	ldr	x1, [x0, #0x90]
     9c8: aa0003f3     	mov	x19, x0
     9cc: b13ffc3f     	cmn	x1, #0xfff
     9d0: 540000a3     	b.lo	0x9e4 <save_panic_buf_data_to_nvmem+0x48>
     9d4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000009d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5ba
     9d8: 91000000     	add	x0, x0, #0x0
		00000000000009d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5ba
     9dc: 94000000     	bl	0x9dc <save_panic_buf_data_to_nvmem+0x40>
		00000000000009dc:  R_AARCH64_CALL26	_printk
     9e0: 1400000b     	b	0xa0c <save_panic_buf_data_to_nvmem+0x70>
     9e4: 90000014     	adrp	x20, 0x0 <.text>
		00000000000009e4:  R_AARCH64_ADR_PREL_PG_HI21	saved_nvmem_buf+0x3
     9e8: 91000294     	add	x20, x20, #0x0
		00000000000009e8:  R_AARCH64_ADD_ABS_LO12_NC	saved_nvmem_buf+0x3
     9ec: 90000000     	adrp	x0, 0x0 <.text>
		00000000000009ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfc
     9f0: 91000000     	add	x0, x0, #0x0
		00000000000009f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfc
     9f4: 39400281     	ldrb	w1, [x20]
     9f8: 94000000     	bl	0x9f8 <save_panic_buf_data_to_nvmem+0x5c>
		00000000000009f8:  R_AARCH64_CALL26	_printk
     9fc: f9404a60     	ldr	x0, [x19, #0x90]
     a00: aa1403e1     	mov	x1, x20
     a04: 52800022     	mov	w2, #0x1                // =1
     a08: 94000000     	bl	0xa08 <save_panic_buf_data_to_nvmem+0x6c>
		0000000000000a08:  R_AARCH64_CALL26	nvmem_cell_write
     a0c: f9404661     	ldr	x1, [x19, #0x88]
     a10: b13ffc3f     	cmn	x1, #0xfff
     a14: 540000a3     	b.lo	0xa28 <save_panic_buf_data_to_nvmem+0x8c>
     a18: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x427
     a1c: 91000000     	add	x0, x0, #0x0
		0000000000000a1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x427
     a20: 94000000     	bl	0xa20 <save_panic_buf_data_to_nvmem+0x84>
		0000000000000a20:  R_AARCH64_CALL26	_printk
     a24: 1400000b     	b	0xa50 <save_panic_buf_data_to_nvmem+0xb4>
     a28: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000a28:  R_AARCH64_ADR_PREL_PG_HI21	saved_nvmem_buf+0x1
     a2c: 91000294     	add	x20, x20, #0x0
		0000000000000a2c:  R_AARCH64_ADD_ABS_LO12_NC	saved_nvmem_buf+0x1
     a30: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4b8
     a34: 91000000     	add	x0, x0, #0x0
		0000000000000a34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4b8
     a38: 39400281     	ldrb	w1, [x20]
     a3c: 94000000     	bl	0xa3c <save_panic_buf_data_to_nvmem+0xa0>
		0000000000000a3c:  R_AARCH64_CALL26	_printk
     a40: f9404660     	ldr	x0, [x19, #0x88]
     a44: aa1403e1     	mov	x1, x20
     a48: 52800022     	mov	w2, #0x1                // =1
     a4c: 94000000     	bl	0xa4c <save_panic_buf_data_to_nvmem+0xb0>
		0000000000000a4c:  R_AARCH64_CALL26	nvmem_cell_write
     a50: f9404261     	ldr	x1, [x19, #0x80]
     a54: b13ffc3f     	cmn	x1, #0xfff
     a58: 540000a3     	b.lo	0xa6c <save_panic_buf_data_to_nvmem+0xd0>
     a5c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x189
     a60: 91000000     	add	x0, x0, #0x0
		0000000000000a60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x189
     a64: 94000000     	bl	0xa64 <save_panic_buf_data_to_nvmem+0xc8>
		0000000000000a64:  R_AARCH64_CALL26	_printk
     a68: 1400000b     	b	0xa94 <save_panic_buf_data_to_nvmem+0xf8>
     a6c: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000a6c:  R_AARCH64_ADR_PREL_PG_HI21	saved_nvmem_buf
     a70: 91000294     	add	x20, x20, #0x0
		0000000000000a70:  R_AARCH64_ADD_ABS_LO12_NC	saved_nvmem_buf
     a74: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x703
     a78: 91000000     	add	x0, x0, #0x0
		0000000000000a78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x703
     a7c: 39400281     	ldrb	w1, [x20]
     a80: 94000000     	bl	0xa80 <save_panic_buf_data_to_nvmem+0xe4>
		0000000000000a80:  R_AARCH64_CALL26	_printk
     a84: f9404260     	ldr	x0, [x19, #0x80]
     a88: aa1403e1     	mov	x1, x20
     a8c: 52800022     	mov	w2, #0x1                // =1
     a90: 94000000     	bl	0xa90 <save_panic_buf_data_to_nvmem+0xf4>
		0000000000000a90:  R_AARCH64_CALL26	nvmem_cell_write
     a94: f9404e61     	ldr	x1, [x19, #0x98]
     a98: b13ffc3f     	cmn	x1, #0xfff
     a9c: 540000a3     	b.lo	0xab0 <save_panic_buf_data_to_nvmem+0x114>
     aa0: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000aa0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4e2
     aa4: 91000000     	add	x0, x0, #0x0
		0000000000000aa4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4e2
     aa8: 94000000     	bl	0xaa8 <save_panic_buf_data_to_nvmem+0x10c>
		0000000000000aa8:  R_AARCH64_CALL26	_printk
     aac: 14000013     	b	0xaf8 <save_panic_buf_data_to_nvmem+0x15c>
     ab0: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000ab0:  R_AARCH64_ADR_PREL_PG_HI21	saved_nvmem_buf+0x4
     ab4: 91000294     	add	x20, x20, #0x0
		0000000000000ab4:  R_AARCH64_ADD_ABS_LO12_NC	saved_nvmem_buf+0x4
     ab8: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ab8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36
     abc: 91000000     	add	x0, x0, #0x0
		0000000000000abc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36
     ac0: 39400281     	ldrb	w1, [x20]
     ac4: 39400682     	ldrb	w2, [x20, #0x1]
     ac8: 39400a83     	ldrb	w3, [x20, #0x2]
     acc: 39400e84     	ldrb	w4, [x20, #0x3]
     ad0: 39401285     	ldrb	w5, [x20, #0x4]
     ad4: 39401686     	ldrb	w6, [x20, #0x5]
     ad8: 39401a87     	ldrb	w7, [x20, #0x6]
     adc: 39401e88     	ldrb	w8, [x20, #0x7]
     ae0: b90003e8     	str	w8, [sp]
     ae4: 94000000     	bl	0xae4 <save_panic_buf_data_to_nvmem+0x148>
		0000000000000ae4:  R_AARCH64_CALL26	_printk
     ae8: f9404e60     	ldr	x0, [x19, #0x98]
     aec: aa1403e1     	mov	x1, x20
     af0: 52800022     	mov	w2, #0x1                // =1
     af4: 94000000     	bl	0xaf4 <save_panic_buf_data_to_nvmem+0x158>
		0000000000000af4:  R_AARCH64_CALL26	nvmem_cell_write
     af8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     afc: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     b00: 9100c3ff     	add	sp, sp, #0x30
     b04: d50323bf     	autiasp
     b08: d65f03c0     	ret
