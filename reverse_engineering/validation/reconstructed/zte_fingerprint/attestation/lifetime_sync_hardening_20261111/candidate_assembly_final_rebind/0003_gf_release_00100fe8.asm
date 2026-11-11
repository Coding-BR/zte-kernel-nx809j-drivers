
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000b38 <gf_release>:
     b38: d503233f     	paciasp
     b3c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     b40: a9014ff4     	stp	x20, x19, [sp, #0x10]
     b44: 910003fd     	mov	x29, sp
     b48: aa0103f4     	mov	x20, x1
     b4c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x64c
     b50: 91000000     	add	x0, x0, #0x0
		0000000000000b50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x64c
     b54: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf3a
     b58: 91000021     	add	x1, x1, #0x0
		0000000000000b58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf3a
     b5c: 94000000     	bl	0xb5c <gf_release+0x24>
		0000000000000b5c:  R_AARCH64_CALL26	_printk
     b60: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b60:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x168
     b64: 91000000     	add	x0, x0, #0x0
		0000000000000b64:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x168
     b68: 94000000     	bl	0xb68 <gf_release+0x30>
		0000000000000b68:  R_AARCH64_CALL26	mutex_lock
     b6c: f9401293     	ldr	x19, [x20, #0x20]
     b70: f900129f     	str	xzr, [x20, #0x20]
     b74: b40000d3     	cbz	x19, 0xb8c <gf_release+0x54>
     b78: b9403a68     	ldr	w8, [x19, #0x38]
     b7c: 34000188     	cbz	w8, 0xbac <gf_release+0x74>
     b80: 71000508     	subs	w8, w8, #0x1
     b84: b9003a68     	str	w8, [x19, #0x38]
     b88: 54000120     	b.eq	0xbac <gf_release+0x74>
     b8c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b8c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x168
     b90: 91000000     	add	x0, x0, #0x0
		0000000000000b90:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x168
     b94: 94000000     	bl	0xb94 <gf_release+0x5c>
		0000000000000b94:  R_AARCH64_CALL26	mutex_unlock
     b98: 2a1f03e0     	mov	w0, wzr
     b9c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     ba0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     ba4: d50323bf     	autiasp
     ba8: d65f03c0     	ret
     bac: b9404a61     	ldr	w1, [x19, #0x48]
     bb0: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000bb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc25
     bb4: 91000000     	add	x0, x0, #0x0
		0000000000000bb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc25
     bb8: 94000000     	bl	0xbb8 <gf_release+0x80>
		0000000000000bb8:  R_AARCH64_CALL26	_printk
     bbc: 3941ca68     	ldrb	w8, [x19, #0x72]
     bc0: 340001a8     	cbz	w8, 0xbf4 <gf_release+0xbc>
     bc4: b9404a60     	ldr	w0, [x19, #0x48]
     bc8: 2a1f03e1     	mov	w1, wzr
     bcc: 94000000     	bl	0xbcc <gf_release+0x94>
		0000000000000bcc:  R_AARCH64_CALL26	irq_set_irq_wake
     bd0: b9404e68     	ldr	w8, [x19, #0x4c]
     bd4: 34000088     	cbz	w8, 0xbe4 <gf_release+0xac>
     bd8: b9404a60     	ldr	w0, [x19, #0x48]
     bdc: b9004e7f     	str	wzr, [x19, #0x4c]
     be0: 94000000     	bl	0xbe0 <gf_release+0xa8>
		0000000000000be0:  R_AARCH64_CALL26	disable_irq
     be4: b9404a60     	ldr	w0, [x19, #0x48]
     be8: aa1303e1     	mov	x1, x19
     bec: 94000000     	bl	0xbec <gf_release+0xb4>
		0000000000000bec:  R_AARCH64_CALL26	free_irq
     bf0: 3901ca7f     	strb	wzr, [x19, #0x72]
     bf4: 3941ce68     	ldrb	w8, [x19, #0x73]
     bf8: 35000068     	cbnz	w8, 0xc04 <gf_release+0xcc>
     bfc: aa1303e0     	mov	x0, x19
     c00: 94000000     	bl	0xc00 <gf_release+0xc8>
		0000000000000c00:  R_AARCH64_CALL26	gf_cleanup
     c04: 3901c27f     	strb	wzr, [x19, #0x70]
     c08: f9403e60     	ldr	x0, [x19, #0x78]
     c0c: b4fffc00     	cbz	x0, 0xb8c <gf_release+0x54>
     c10: 94000000     	bl	0xc10 <gf_release+0xd8>
		0000000000000c10:  R_AARCH64_CALL26	zlog_unregister_client
     c14: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000c14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x267
     c18: 91000000     	add	x0, x0, #0x0
		0000000000000c18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x267
     c1c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf3a
     c20: 91000021     	add	x1, x1, #0x0
		0000000000000c20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf3a
     c24: f9003e7f     	str	xzr, [x19, #0x78]
     c28: 94000000     	bl	0xc28 <gf_release+0xf0>
		0000000000000c28:  R_AARCH64_CALL26	_printk
     c2c: 17ffffd8     	b	0xb8c <gf_release+0x54>
