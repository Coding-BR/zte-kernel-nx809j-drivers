
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000940 <nav_event_input>:
     940: d503233f     	paciasp
     944: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     948: a9014ff4     	stp	x20, x19, [sp, #0x10]
     94c: 910003fd     	mov	x29, sp
     950: 2a0003e2     	mov	w2, w0
     954: 7100141f     	cmp	w0, #0x5
     958: 540000ec     	b.gt	0x974 <nav_event_input+0x34>
     95c: 7100085f     	cmp	w2, #0x2
     960: 540005ed     	b.le	0xa1c <nav_event_input+0xdc>
     964: 71000c5f     	cmp	w2, #0x3
     968: 54000681     	b.ne	0xa38 <nav_event_input+0xf8>
     96c: 52800cf3     	mov	w19, #0x67              // =103
     970: 14000005     	b	0x984 <nav_event_input+0x44>
     974: 71001c5f     	cmp	w2, #0x7
     978: 5400038c     	b.gt	0x9e8 <nav_event_input+0xa8>
     97c: 54000741     	b.ne	0xa64 <nav_event_input+0x124>
     980: 52800e53     	mov	w19, #0x72              // =114
     984: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000984:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x40
     988: 52800021     	mov	w1, #0x1                // =1
     98c: 2a1303e2     	mov	w2, w19
     990: f9400280     	ldr	x0, [x20]
		0000000000000990:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
     994: 52800023     	mov	w3, #0x1                // =1
     998: 94000000     	bl	0x998 <nav_event_input+0x58>
		0000000000000998:  R_AARCH64_CALL26	input_event
     99c: f9400280     	ldr	x0, [x20]
		000000000000099c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
     9a0: 2a1f03e1     	mov	w1, wzr
     9a4: 2a1f03e2     	mov	w2, wzr
     9a8: 2a1f03e3     	mov	w3, wzr
     9ac: 94000000     	bl	0x9ac <nav_event_input+0x6c>
		00000000000009ac:  R_AARCH64_CALL26	input_event
     9b0: f9400280     	ldr	x0, [x20]
		00000000000009b0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
     9b4: 52800021     	mov	w1, #0x1                // =1
     9b8: 2a1303e2     	mov	w2, w19
     9bc: 2a1f03e3     	mov	w3, wzr
     9c0: 94000000     	bl	0x9c0 <nav_event_input+0x80>
		00000000000009c0:  R_AARCH64_CALL26	input_event
     9c4: f9400280     	ldr	x0, [x20]
		00000000000009c4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
     9c8: 2a1f03e1     	mov	w1, wzr
     9cc: 2a1f03e2     	mov	w2, wzr
     9d0: 2a1f03e3     	mov	w3, wzr
     9d4: 94000000     	bl	0x9d4 <nav_event_input+0x94>
		00000000000009d4:  R_AARCH64_CALL26	input_event
     9d8: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     9dc: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     9e0: d50323bf     	autiasp
     9e4: d65f03c0     	ret
     9e8: 7100205f     	cmp	w2, #0x8
     9ec: 54000760     	b.eq	0xad8 <nav_event_input+0x198>
     9f0: 7100245f     	cmp	w2, #0x9
     9f4: 540004a0     	b.eq	0xa88 <nav_event_input+0x148>
     9f8: 7100285f     	cmp	w2, #0xa
     9fc: 540007c1     	b.ne	0xaf4 <nav_event_input+0x1b4>
     a00: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcba
     a04: 91000000     	add	x0, x0, #0x0
		0000000000000a04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcba
     a08: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd31
     a0c: 91000021     	add	x1, x1, #0x0
		0000000000000a0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd31
     a10: 94000000     	bl	0xa10 <nav_event_input+0xd0>
		0000000000000a10:  R_AARCH64_CALL26	_printk
     a14: 52800e73     	mov	w19, #0x73              // =115
     a18: 17ffffdb     	b	0x984 <nav_event_input+0x44>
     a1c: 7100045f     	cmp	w2, #0x1
     a20: 54000420     	b.eq	0xaa4 <nav_event_input+0x164>
     a24: 7100085f     	cmp	w2, #0x2
     a28: 54000661     	b.ne	0xaf4 <nav_event_input+0x1b4>
     a2c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12f3
     a30: 91000000     	add	x0, x0, #0x0
		0000000000000a30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12f3
     a34: 1400001e     	b	0xaac <nav_event_input+0x16c>
     a38: 7100105f     	cmp	w2, #0x4
     a3c: 54000400     	b.eq	0xabc <nav_event_input+0x17c>
     a40: 7100145f     	cmp	w2, #0x5
     a44: 54000581     	b.ne	0xaf4 <nav_event_input+0x1b4>
     a48: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbde
     a4c: 91000000     	add	x0, x0, #0x0
		0000000000000a4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbde
     a50: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd31
     a54: 91000021     	add	x1, x1, #0x0
		0000000000000a54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd31
     a58: 94000000     	bl	0xa58 <nav_event_input+0x118>
		0000000000000a58:  R_AARCH64_CALL26	_printk
     a5c: 52800d33     	mov	w19, #0x69              // =105
     a60: 17ffffc9     	b	0x984 <nav_event_input+0x44>
     a64: 7100185f     	cmp	w2, #0x6
     a68: 54000461     	b.ne	0xaf4 <nav_event_input+0x1b4>
     a6c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc1d
     a70: 91000000     	add	x0, x0, #0x0
		0000000000000a70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc1d
     a74: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd31
     a78: 91000021     	add	x1, x1, #0x0
		0000000000000a78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd31
     a7c: 94000000     	bl	0xa7c <nav_event_input+0x13c>
		0000000000000a7c:  R_AARCH64_CALL26	_printk
     a80: 52800d53     	mov	w19, #0x6a              // =106
     a84: 17ffffc0     	b	0x984 <nav_event_input+0x44>
     a88: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x71e
     a8c: 91000000     	add	x0, x0, #0x0
		0000000000000a8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x71e
     a90: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd31
     a94: 91000021     	add	x1, x1, #0x0
		0000000000000a94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd31
     a98: 94000000     	bl	0xa98 <nav_event_input+0x158>
		0000000000000a98:  R_AARCH64_CALL26	_printk
     a9c: 52801b33     	mov	w19, #0xd9              // =217
     aa0: 17ffffb9     	b	0x984 <nav_event_input+0x44>
     aa4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000aa4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaeb
     aa8: 91000000     	add	x0, x0, #0x0
		0000000000000aa8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaeb
     aac: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000aac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd31
     ab0: 91000021     	add	x1, x1, #0x0
		0000000000000ab0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd31
     ab4: 94000000     	bl	0xab4 <nav_event_input+0x174>
		0000000000000ab4:  R_AARCH64_CALL26	_printk
     ab8: 17ffffc8     	b	0x9d8 <nav_event_input+0x98>
     abc: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000abc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a1
     ac0: 91000000     	add	x0, x0, #0x0
		0000000000000ac0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a1
     ac4: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000ac4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd31
     ac8: 91000021     	add	x1, x1, #0x0
		0000000000000ac8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd31
     acc: 94000000     	bl	0xacc <nav_event_input+0x18c>
		0000000000000acc:  R_AARCH64_CALL26	_printk
     ad0: 52800d93     	mov	w19, #0x6c              // =108
     ad4: 17ffffac     	b	0x984 <nav_event_input+0x44>
     ad8: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ad8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ac
     adc: 91000000     	add	x0, x0, #0x0
		0000000000000adc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ac
     ae0: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000ae0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd31
     ae4: 91000021     	add	x1, x1, #0x0
		0000000000000ae4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd31
     ae8: 94000000     	bl	0xae8 <nav_event_input+0x1a8>
		0000000000000ae8:  R_AARCH64_CALL26	_printk
     aec: 52801b13     	mov	w19, #0xd8              // =216
     af0: 17ffffa5     	b	0x984 <nav_event_input+0x44>
     af4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000af4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7be
     af8: 91000000     	add	x0, x0, #0x0
		0000000000000af8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7be
     afc: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000afc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd31
     b00: 91000021     	add	x1, x1, #0x0
		0000000000000b00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd31
     b04: 94000000     	bl	0xb04 <nav_event_input+0x1c4>
		0000000000000b04:  R_AARCH64_CALL26	_printk
     b08: 2a1f03f3     	mov	w19, wzr
     b0c: 17ffff9e     	b	0x984 <nav_event_input+0x44>
