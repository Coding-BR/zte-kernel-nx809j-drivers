
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000005b70 <tp_sensibility_level_write>:
    5b70: d503233f     	paciasp
    5b74: d10143ff     	sub	sp, sp, #0x50
    5b78: a9027bfd     	stp	x29, x30, [sp, #0x20]
    5b7c: f9001bf5     	str	x21, [sp, #0x30]
    5b80: a9044ff4     	stp	x20, x19, [sp, #0x40]
    5b84: 910083fd     	add	x29, sp, #0x20
    5b88: d5384108     	mrs	x8, SP_EL0
    5b8c: aa0103f5     	mov	x21, x1
    5b90: 910023e0     	add	x0, sp, #0x8
    5b94: f9438908     	ldr	x8, [x8, #0x710]
    5b98: f100245f     	cmp	x2, #0x9
    5b9c: f81f83a8     	stur	x8, [x29, #-0x8]
    5ba0: 90000008     	adrp	x8, 0x5000 <tp_edge_report_limit_write+0x1f8>
		0000000000005ba0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    5ba4: f9400114     	ldr	x20, [x8]
		0000000000005ba4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    5ba8: 52800128     	mov	w8, #0x9                // =9
    5bac: b90007ff     	str	wzr, [sp, #0x4]
    5bb0: 9a883053     	csel	x19, x2, x8, lo
    5bb4: 2a1f03e2     	mov	w2, wzr
    5bb8: 790023ff     	strh	wzr, [sp, #0x10]
    5bbc: aa1303e1     	mov	x1, x19
    5bc0: f90007ff     	str	xzr, [sp, #0x8]
    5bc4: 94000000     	bl	0x5bc4 <tp_sensibility_level_write+0x54>
		0000000000005bc4:  R_AARCH64_CALL26	__check_object_size
    5bc8: 910023e0     	add	x0, sp, #0x8
    5bcc: aa1503e1     	mov	x1, x21
    5bd0: aa1303e2     	mov	x2, x19
    5bd4: 97fff85b     	bl	0x3d40 <_inline_copy_from_user>
    5bd8: 350000c0     	cbnz	w0, 0x5bf0 <tp_sensibility_level_write+0x80>
    5bdc: 910023e0     	add	x0, sp, #0x8
    5be0: 910013e2     	add	x2, sp, #0x4
    5be4: 2a1f03e1     	mov	w1, wzr
    5be8: 94000000     	bl	0x5be8 <tp_sensibility_level_write+0x78>
		0000000000005be8:  R_AARCH64_CALL26	kstrtouint
    5bec: 340001c0     	cbz	w0, 0x5c24 <tp_sensibility_level_write+0xb4>
    5bf0: 928002b3     	mov	x19, #-0x16             // =-22
    5bf4: d5384108     	mrs	x8, SP_EL0
    5bf8: f9438908     	ldr	x8, [x8, #0x710]
    5bfc: f85f83a9     	ldur	x9, [x29, #-0x8]
    5c00: eb09011f     	cmp	x8, x9
    5c04: 54000381     	b.ne	0x5c74 <tp_sensibility_level_write+0x104>
    5c08: aa1303e0     	mov	x0, x19
    5c0c: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    5c10: f9401bf5     	ldr	x21, [sp, #0x30]
    5c14: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    5c18: 910143ff     	add	sp, sp, #0x50
    5c1c: d50323bf     	autiasp
    5c20: d65f03c0     	ret
    5c24: b94007e8     	ldr	w8, [sp, #0x4]
    5c28: 90000000     	adrp	x0, 0x5000 <tp_edge_report_limit_write+0x1f8>
		0000000000005c28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e39
    5c2c: 91000000     	add	x0, x0, #0x0
		0000000000005c2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e39
    5c30: 90000001     	adrp	x1, 0x5000 <tp_edge_report_limit_write+0x1f8>
		0000000000005c30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbf55
    5c34: 91000021     	add	x1, x1, #0x0
		0000000000005c34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbf55
    5c38: 12001d02     	and	w2, w8, #0xff
    5c3c: 39010288     	strb	w8, [x20, #0x40]
    5c40: 94000000     	bl	0x5c40 <tp_sensibility_level_write+0xd0>
		0000000000005c40:  R_AARCH64_CALL26	_printk
    5c44: f947b688     	ldr	x8, [x20, #0xf68]
    5c48: b4fffd68     	cbz	x8, 0x5bf4 <tp_sensibility_level_write+0x84>
    5c4c: b94007e1     	ldr	w1, [sp, #0x4]
    5c50: aa1403e0     	mov	x0, x20
    5c54: b85fc110     	ldur	w16, [x8, #-0x4]
    5c58: 7287b831     	movk	w17, #0x3dc1
    5c5c: 72bc3ad1     	movk	w17, #0xe1d6, lsl #16
    5c60: 6b11021f     	cmp	w16, w17
    5c64: 54000040     	b.eq	0x5c6c <tp_sensibility_level_write+0xfc>
    5c68: d4304500     	brk	#0x8228
    5c6c: d63f0100     	blr	x8
    5c70: 17ffffe1     	b	0x5bf4 <tp_sensibility_level_write+0x84>
    5c74: 94000000     	bl	0x5c74 <tp_sensibility_level_write+0x104>
		0000000000005c74:  R_AARCH64_CALL26	__stack_chk_fail
