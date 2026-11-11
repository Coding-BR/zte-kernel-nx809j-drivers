
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000b18 <gf_release>:
     b18: d503233f     	paciasp
     b1c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     b20: a9014ff4     	stp	x20, x19, [sp, #0x10]
     b24: 910003fd     	mov	x29, sp
     b28: aa0103f4     	mov	x20, x1
     b2c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x67e
     b30: 91000000     	add	x0, x0, #0x0
		0000000000000b30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x67e
     b34: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf6c
     b38: 91000021     	add	x1, x1, #0x0
		0000000000000b38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf6c
     b3c: 94000000     	bl	0xb3c <gf_release+0x24>
		0000000000000b3c:  R_AARCH64_CALL26	_printk
     b40: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b40:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x168
     b44: 91000000     	add	x0, x0, #0x0
		0000000000000b44:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x168
     b48: 94000000     	bl	0xb48 <gf_release+0x30>
		0000000000000b48:  R_AARCH64_CALL26	mutex_lock
     b4c: f9401293     	ldr	x19, [x20, #0x20]
     b50: f900129f     	str	xzr, [x20, #0x20]
     b54: b40000d3     	cbz	x19, 0xb6c <gf_release+0x54>
     b58: b9403a68     	ldr	w8, [x19, #0x38]
     b5c: 34000188     	cbz	w8, 0xb8c <gf_release+0x74>
     b60: 71000508     	subs	w8, w8, #0x1
     b64: b9003a68     	str	w8, [x19, #0x38]
     b68: 54000120     	b.eq	0xb8c <gf_release+0x74>
     b6c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b6c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x168
     b70: 91000000     	add	x0, x0, #0x0
		0000000000000b70:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x168
     b74: 94000000     	bl	0xb74 <gf_release+0x5c>
		0000000000000b74:  R_AARCH64_CALL26	mutex_unlock
     b78: 2a1f03e0     	mov	w0, wzr
     b7c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     b80: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     b84: d50323bf     	autiasp
     b88: d65f03c0     	ret
     b8c: b9404a61     	ldr	w1, [x19, #0x48]
     b90: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc57
     b94: 91000000     	add	x0, x0, #0x0
		0000000000000b94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc57
     b98: 94000000     	bl	0xb98 <gf_release+0x80>
		0000000000000b98:  R_AARCH64_CALL26	_printk
     b9c: 3941ca68     	ldrb	w8, [x19, #0x72]
     ba0: 340001a8     	cbz	w8, 0xbd4 <gf_release+0xbc>
     ba4: b9404a60     	ldr	w0, [x19, #0x48]
     ba8: 2a1f03e1     	mov	w1, wzr
     bac: 94000000     	bl	0xbac <gf_release+0x94>
		0000000000000bac:  R_AARCH64_CALL26	irq_set_irq_wake
     bb0: b9404e68     	ldr	w8, [x19, #0x4c]
     bb4: 34000088     	cbz	w8, 0xbc4 <gf_release+0xac>
     bb8: b9404a60     	ldr	w0, [x19, #0x48]
     bbc: b9004e7f     	str	wzr, [x19, #0x4c]
     bc0: 94000000     	bl	0xbc0 <gf_release+0xa8>
		0000000000000bc0:  R_AARCH64_CALL26	disable_irq
     bc4: b9404a60     	ldr	w0, [x19, #0x48]
     bc8: aa1303e1     	mov	x1, x19
     bcc: 94000000     	bl	0xbcc <gf_release+0xb4>
		0000000000000bcc:  R_AARCH64_CALL26	free_irq
     bd0: 3901ca7f     	strb	wzr, [x19, #0x72]
     bd4: 3941ce68     	ldrb	w8, [x19, #0x73]
     bd8: 35000068     	cbnz	w8, 0xbe4 <gf_release+0xcc>
     bdc: aa1303e0     	mov	x0, x19
     be0: 94000000     	bl	0xbe0 <gf_release+0xc8>
		0000000000000be0:  R_AARCH64_CALL26	gf_cleanup
     be4: 3901c27f     	strb	wzr, [x19, #0x70]
     be8: f9403e60     	ldr	x0, [x19, #0x78]
     bec: b4fffc00     	cbz	x0, 0xb6c <gf_release+0x54>
     bf0: 94000000     	bl	0xbf0 <gf_release+0xd8>
		0000000000000bf0:  R_AARCH64_CALL26	zlog_unregister_client
     bf4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000bf4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x299
     bf8: 91000000     	add	x0, x0, #0x0
		0000000000000bf8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x299
     bfc: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000bfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf6c
     c00: 91000021     	add	x1, x1, #0x0
		0000000000000c00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf6c
     c04: f9003e7f     	str	xzr, [x19, #0x78]
     c08: 94000000     	bl	0xc08 <gf_release+0xf0>
		0000000000000c08:  R_AARCH64_CALL26	_printk
     c0c: 17ffffd8     	b	0xb6c <gf_release+0x54>
