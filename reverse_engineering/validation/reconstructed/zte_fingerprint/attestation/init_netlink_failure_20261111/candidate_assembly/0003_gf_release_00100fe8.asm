
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000b4c <gf_release>:
     b4c: d503233f     	paciasp
     b50: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     b54: a9014ff4     	stp	x20, x19, [sp, #0x10]
     b58: 910003fd     	mov	x29, sp
     b5c: aa0103f4     	mov	x20, x1
     b60: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x67e
     b64: 91000000     	add	x0, x0, #0x0
		0000000000000b64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x67e
     b68: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf6c
     b6c: 91000021     	add	x1, x1, #0x0
		0000000000000b6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf6c
     b70: 94000000     	bl	0xb70 <gf_release+0x24>
		0000000000000b70:  R_AARCH64_CALL26	_printk
     b74: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b74:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x168
     b78: 91000000     	add	x0, x0, #0x0
		0000000000000b78:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x168
     b7c: 94000000     	bl	0xb7c <gf_release+0x30>
		0000000000000b7c:  R_AARCH64_CALL26	mutex_lock
     b80: f9401293     	ldr	x19, [x20, #0x20]
     b84: f900129f     	str	xzr, [x20, #0x20]
     b88: b40000d3     	cbz	x19, 0xba0 <gf_release+0x54>
     b8c: b9403a68     	ldr	w8, [x19, #0x38]
     b90: 34000188     	cbz	w8, 0xbc0 <gf_release+0x74>
     b94: 71000508     	subs	w8, w8, #0x1
     b98: b9003a68     	str	w8, [x19, #0x38]
     b9c: 54000120     	b.eq	0xbc0 <gf_release+0x74>
     ba0: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ba0:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x168
     ba4: 91000000     	add	x0, x0, #0x0
		0000000000000ba4:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x168
     ba8: 94000000     	bl	0xba8 <gf_release+0x5c>
		0000000000000ba8:  R_AARCH64_CALL26	mutex_unlock
     bac: 2a1f03e0     	mov	w0, wzr
     bb0: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     bb4: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     bb8: d50323bf     	autiasp
     bbc: d65f03c0     	ret
     bc0: b9404a61     	ldr	w1, [x19, #0x48]
     bc4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000bc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc57
     bc8: 91000000     	add	x0, x0, #0x0
		0000000000000bc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc57
     bcc: 94000000     	bl	0xbcc <gf_release+0x80>
		0000000000000bcc:  R_AARCH64_CALL26	_printk
     bd0: 3941ca68     	ldrb	w8, [x19, #0x72]
     bd4: 340001a8     	cbz	w8, 0xc08 <gf_release+0xbc>
     bd8: b9404a60     	ldr	w0, [x19, #0x48]
     bdc: 2a1f03e1     	mov	w1, wzr
     be0: 94000000     	bl	0xbe0 <gf_release+0x94>
		0000000000000be0:  R_AARCH64_CALL26	irq_set_irq_wake
     be4: b9404e68     	ldr	w8, [x19, #0x4c]
     be8: 34000088     	cbz	w8, 0xbf8 <gf_release+0xac>
     bec: b9404a60     	ldr	w0, [x19, #0x48]
     bf0: b9004e7f     	str	wzr, [x19, #0x4c]
     bf4: 94000000     	bl	0xbf4 <gf_release+0xa8>
		0000000000000bf4:  R_AARCH64_CALL26	disable_irq
     bf8: b9404a60     	ldr	w0, [x19, #0x48]
     bfc: aa1303e1     	mov	x1, x19
     c00: 94000000     	bl	0xc00 <gf_release+0xb4>
		0000000000000c00:  R_AARCH64_CALL26	free_irq
     c04: 3901ca7f     	strb	wzr, [x19, #0x72]
     c08: 3941ce68     	ldrb	w8, [x19, #0x73]
     c0c: 35000068     	cbnz	w8, 0xc18 <gf_release+0xcc>
     c10: aa1303e0     	mov	x0, x19
     c14: 94000000     	bl	0xc14 <gf_release+0xc8>
		0000000000000c14:  R_AARCH64_CALL26	gf_cleanup
     c18: 3901c27f     	strb	wzr, [x19, #0x70]
     c1c: f9403e60     	ldr	x0, [x19, #0x78]
     c20: b4fffc00     	cbz	x0, 0xba0 <gf_release+0x54>
     c24: 94000000     	bl	0xc24 <gf_release+0xd8>
		0000000000000c24:  R_AARCH64_CALL26	zlog_unregister_client
     c28: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000c28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x299
     c2c: 91000000     	add	x0, x0, #0x0
		0000000000000c2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x299
     c30: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf6c
     c34: 91000021     	add	x1, x1, #0x0
		0000000000000c34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf6c
     c38: f9003e7f     	str	xzr, [x19, #0x78]
     c3c: 94000000     	bl	0xc3c <gf_release+0xf0>
		0000000000000c3c:  R_AARCH64_CALL26	_printk
     c40: 17ffffd8     	b	0xba0 <gf_release+0x54>
