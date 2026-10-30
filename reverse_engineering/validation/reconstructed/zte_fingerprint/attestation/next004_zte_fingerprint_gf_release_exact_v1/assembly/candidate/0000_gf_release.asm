
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000f2c <gf_release>:
     f2c: d503233f     	paciasp
     f30: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     f34: a9014ff4     	stp	x20, x19, [sp, #0x10]
     f38: 910003fd     	mov	x29, sp
     f3c: aa0103f4     	mov	x20, x1
     f40: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x349
     f44: 91000000     	add	x0, x0, #0x0
		0000000000000f44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x349
     f48: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000f48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbbe
     f4c: 91000021     	add	x1, x1, #0x0
		0000000000000f4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbbe
     f50: 94000000     	bl	0xf50 <gf_release+0x24>
		0000000000000f50:  R_AARCH64_CALL26	_printk
     f54: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f54:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     f58: 91000000     	add	x0, x0, #0x0
		0000000000000f58:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     f5c: 94000000     	bl	0xf5c <gf_release+0x30>
		0000000000000f5c:  R_AARCH64_CALL26	mutex_lock
     f60: f9401293     	ldr	x19, [x20, #0x20]
     f64: f900129f     	str	xzr, [x20, #0x20]
     f68: b9403a68     	ldr	w8, [x19, #0x38]
     f6c: 71000508     	subs	w8, w8, #0x1
     f70: b9003a68     	str	w8, [x19, #0x38]
     f74: 54000160     	b.eq	0xfa0 <gf_release+0x74>
     f78: f9403e60     	ldr	x0, [x19, #0x78]
     f7c: b50003a0     	cbnz	x0, 0xff0 <gf_release+0xc4>
     f80: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f80:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     f84: 91000000     	add	x0, x0, #0x0
		0000000000000f84:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     f88: 94000000     	bl	0xf88 <gf_release+0x5c>
		0000000000000f88:  R_AARCH64_CALL26	mutex_unlock
     f8c: 2a1f03e0     	mov	w0, wzr
     f90: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     f94: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     f98: d50323bf     	autiasp
     f9c: d65f03c0     	ret
     fa0: b9404a61     	ldr	w1, [x19, #0x48]
     fa4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000fa4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x859
     fa8: 91000000     	add	x0, x0, #0x0
		0000000000000fa8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x859
     fac: 94000000     	bl	0xfac <gf_release+0x80>
		0000000000000fac:  R_AARCH64_CALL26	_printk
     fb0: b9404a60     	ldr	w0, [x19, #0x48]
     fb4: 2a1f03e1     	mov	w1, wzr
     fb8: 94000000     	bl	0xfb8 <gf_release+0x8c>
		0000000000000fb8:  R_AARCH64_CALL26	irq_set_irq_wake
     fbc: b9404e68     	ldr	w8, [x19, #0x4c]
     fc0: 34000268     	cbz	w8, 0x100c <gf_release+0xe0>
     fc4: b9404a60     	ldr	w0, [x19, #0x48]
     fc8: b9004e7f     	str	wzr, [x19, #0x4c]
     fcc: 94000000     	bl	0xfcc <gf_release+0xa0>
		0000000000000fcc:  R_AARCH64_CALL26	disable_irq
     fd0: b9404a60     	ldr	w0, [x19, #0x48]
     fd4: aa1303e1     	mov	x1, x19
     fd8: 94000000     	bl	0xfd8 <gf_release+0xac>
		0000000000000fd8:  R_AARCH64_CALL26	free_irq
     fdc: aa1303e0     	mov	x0, x19
     fe0: 94000000     	bl	0xfe0 <gf_release+0xb4>
		0000000000000fe0:  R_AARCH64_CALL26	gf_cleanup
     fe4: 3901c27f     	strb	wzr, [x19, #0x70]
     fe8: f9403e60     	ldr	x0, [x19, #0x78]
     fec: b4fffca0     	cbz	x0, 0xf80 <gf_release+0x54>
     ff0: 94000000     	bl	0xff0 <gf_release+0xc4>
		0000000000000ff0:  R_AARCH64_CALL26	zlog_unregister_client
     ff4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ff4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10c
     ff8: 91000000     	add	x0, x0, #0x0
		0000000000000ff8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10c
     ffc: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000ffc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbbe
    1000: 91000021     	add	x1, x1, #0x0
		0000000000001000:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbbe
    1004: 94000000     	bl	0x1004 <gf_release+0xd8>
		0000000000001004:  R_AARCH64_CALL26	_printk
    1008: 17ffffde     	b	0xf80 <gf_release+0x54>
    100c: 90000000     	adrp	x0, 0x1000 <gf_release+0xd4>
		000000000000100c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x62e
    1010: 91000000     	add	x0, x0, #0x0
		0000000000001010:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x62e
    1014: 94000000     	bl	0x1014 <gf_release+0xe8>
		0000000000001014:  R_AARCH64_CALL26	_printk
    1018: 17ffffee     	b	0xfd0 <gf_release+0xa4>
