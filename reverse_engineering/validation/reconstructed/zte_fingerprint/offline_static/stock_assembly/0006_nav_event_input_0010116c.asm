
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000094c <nav_event_input>:
     94c: d503233f     	paciasp
     950: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     954: a9014ff4     	stp	x20, x19, [sp, #0x10]
     958: 910003fd     	mov	x29, sp
     95c: 2a0003e2     	mov	w2, w0
     960: 7100141f     	cmp	w0, #0x5
     964: 540000ec     	b.gt	0x980 <nav_event_input+0x34>
     968: 7100085f     	cmp	w2, #0x2
     96c: 540005ed     	b.le	0xa28 <nav_event_input+0xdc>
     970: 71000c5f     	cmp	w2, #0x3
     974: 54000681     	b.ne	0xa44 <nav_event_input+0xf8>
     978: 52800cf3     	mov	w19, #0x67              // =103
     97c: 14000005     	b	0x990 <nav_event_input+0x44>
     980: 71001c5f     	cmp	w2, #0x7
     984: 5400038c     	b.gt	0x9f4 <nav_event_input+0xa8>
     988: 54000741     	b.ne	0xa70 <nav_event_input+0x124>
     98c: 52800e53     	mov	w19, #0x72              // =114
     990: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000990:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x40
     994: 52800021     	mov	w1, #0x1                // =1
     998: 2a1303e2     	mov	w2, w19
     99c: f9400280     	ldr	x0, [x20]
		000000000000099c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
     9a0: 52800023     	mov	w3, #0x1                // =1
     9a4: 94000000     	bl	0x9a4 <nav_event_input+0x58>
		00000000000009a4:  R_AARCH64_CALL26	input_event
     9a8: f9400280     	ldr	x0, [x20]
		00000000000009a8:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
     9ac: 2a1f03e1     	mov	w1, wzr
     9b0: 2a1f03e2     	mov	w2, wzr
     9b4: 2a1f03e3     	mov	w3, wzr
     9b8: 94000000     	bl	0x9b8 <nav_event_input+0x6c>
		00000000000009b8:  R_AARCH64_CALL26	input_event
     9bc: f9400280     	ldr	x0, [x20]
		00000000000009bc:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
     9c0: 52800021     	mov	w1, #0x1                // =1
     9c4: 2a1303e2     	mov	w2, w19
     9c8: 2a1f03e3     	mov	w3, wzr
     9cc: 94000000     	bl	0x9cc <nav_event_input+0x80>
		00000000000009cc:  R_AARCH64_CALL26	input_event
     9d0: f9400280     	ldr	x0, [x20]
		00000000000009d0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
     9d4: 2a1f03e1     	mov	w1, wzr
     9d8: 2a1f03e2     	mov	w2, wzr
     9dc: 2a1f03e3     	mov	w3, wzr
     9e0: 94000000     	bl	0x9e0 <nav_event_input+0x94>
		00000000000009e0:  R_AARCH64_CALL26	input_event
     9e4: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     9e8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     9ec: d50323bf     	autiasp
     9f0: d65f03c0     	ret
     9f4: 7100205f     	cmp	w2, #0x8
     9f8: 54000760     	b.eq	0xae4 <nav_event_input+0x198>
     9fc: 7100245f     	cmp	w2, #0x9
     a00: 540004a0     	b.eq	0xa94 <nav_event_input+0x148>
     a04: 7100285f     	cmp	w2, #0xa
     a08: 540007c1     	b.ne	0xb00 <nav_event_input+0x1b4>
     a0c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc92
     a10: 91000000     	add	x0, x0, #0x0
		0000000000000a10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc92
     a14: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe8f
     a18: 91000021     	add	x1, x1, #0x0
		0000000000000a18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe8f
     a1c: 94000000     	bl	0xa1c <nav_event_input+0xd0>
		0000000000000a1c:  R_AARCH64_CALL26	_printk
     a20: 52800e73     	mov	w19, #0x73              // =115
     a24: 17ffffdb     	b	0x990 <nav_event_input+0x44>
     a28: 7100045f     	cmp	w2, #0x1
     a2c: 54000420     	b.eq	0xab0 <nav_event_input+0x164>
     a30: 7100085f     	cmp	w2, #0x2
     a34: 54000661     	b.ne	0xb00 <nav_event_input+0x1b4>
     a38: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x132f
     a3c: 91000000     	add	x0, x0, #0x0
		0000000000000a3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x132f
     a40: 1400001e     	b	0xab8 <nav_event_input+0x16c>
     a44: 7100105f     	cmp	w2, #0x4
     a48: 54000400     	b.eq	0xac8 <nav_event_input+0x17c>
     a4c: 7100145f     	cmp	w2, #0x5
     a50: 54000581     	b.ne	0xb00 <nav_event_input+0x1b4>
     a54: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x93b
     a58: 91000000     	add	x0, x0, #0x0
		0000000000000a58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x93b
     a5c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe8f
     a60: 91000021     	add	x1, x1, #0x0
		0000000000000a60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe8f
     a64: 94000000     	bl	0xa64 <nav_event_input+0x118>
		0000000000000a64:  R_AARCH64_CALL26	_printk
     a68: 52800d33     	mov	w19, #0x69              // =105
     a6c: 17ffffc9     	b	0x990 <nav_event_input+0x44>
     a70: 7100185f     	cmp	w2, #0x6
     a74: 54000461     	b.ne	0xb00 <nav_event_input+0x1b4>
     a78: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe9f
     a7c: 91000000     	add	x0, x0, #0x0
		0000000000000a7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe9f
     a80: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe8f
     a84: 91000021     	add	x1, x1, #0x0
		0000000000000a84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe8f
     a88: 94000000     	bl	0xa88 <nav_event_input+0x13c>
		0000000000000a88:  R_AARCH64_CALL26	_printk
     a8c: 52800d53     	mov	w19, #0x6a              // =106
     a90: 17ffffc0     	b	0x990 <nav_event_input+0x44>
     a94: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1356
     a98: 91000000     	add	x0, x0, #0x0
		0000000000000a98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1356
     a9c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe8f
     aa0: 91000021     	add	x1, x1, #0x0
		0000000000000aa0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe8f
     aa4: 94000000     	bl	0xaa4 <nav_event_input+0x158>
		0000000000000aa4:  R_AARCH64_CALL26	_printk
     aa8: 52801b33     	mov	w19, #0xd9              // =217
     aac: 17ffffb9     	b	0x990 <nav_event_input+0x44>
     ab0: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ab0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x188
     ab4: 91000000     	add	x0, x0, #0x0
		0000000000000ab4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x188
     ab8: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000ab8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe8f
     abc: 91000021     	add	x1, x1, #0x0
		0000000000000abc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe8f
     ac0: 94000000     	bl	0xac0 <nav_event_input+0x174>
		0000000000000ac0:  R_AARCH64_CALL26	_printk
     ac4: 17ffffc8     	b	0x9e4 <nav_event_input+0x98>
     ac8: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ac8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x68c
     acc: 91000000     	add	x0, x0, #0x0
		0000000000000acc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x68c
     ad0: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000ad0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe8f
     ad4: 91000021     	add	x1, x1, #0x0
		0000000000000ad4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe8f
     ad8: 94000000     	bl	0xad8 <nav_event_input+0x18c>
		0000000000000ad8:  R_AARCH64_CALL26	_printk
     adc: 52800d93     	mov	w19, #0x6c              // =108
     ae0: 17ffffac     	b	0x990 <nav_event_input+0x44>
     ae4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ae4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x113b
     ae8: 91000000     	add	x0, x0, #0x0
		0000000000000ae8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x113b
     aec: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000aec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe8f
     af0: 91000021     	add	x1, x1, #0x0
		0000000000000af0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe8f
     af4: 94000000     	bl	0xaf4 <nav_event_input+0x1a8>
		0000000000000af4:  R_AARCH64_CALL26	_printk
     af8: 52801b13     	mov	w19, #0xd8              // =216
     afc: 17ffffa5     	b	0x990 <nav_event_input+0x44>
     b00: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32
     b04: 91000000     	add	x0, x0, #0x0
		0000000000000b04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32
     b08: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe8f
     b0c: 91000021     	add	x1, x1, #0x0
		0000000000000b0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe8f
     b10: 94000000     	bl	0xb10 <nav_event_input+0x1c4>
		0000000000000b10:  R_AARCH64_CALL26	_printk
     b14: 2a1f03f3     	mov	w19, wzr
     b18: 17ffff9e     	b	0x990 <nav_event_input+0x44>
