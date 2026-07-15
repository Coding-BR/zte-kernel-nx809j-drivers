
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000e90 <tpd_zlog_check>:
     e90: 71004c1f     	cmp	w0, #0x13
     e94: 54000522     	b.hs	0xf38 <tpd_zlog_check+0xa8>
     e98: d503233f     	paciasp
     e9c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     ea0: a90157f6     	stp	x22, x21, [sp, #0x10]
     ea4: a9024ff4     	stp	x20, x19, [sp, #0x20]
     ea8: 910003fd     	mov	x29, sp
     eac: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000eac:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
     eb0: 2a0003f3     	mov	w19, w0
     eb4: f9400108     	ldr	x8, [x8]
		0000000000000eb4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
     eb8: 912ae114     	add	x20, x8, #0xab8
     ebc: f8605a89     	ldr	x9, [x20, w0, uxtw #3]
     ec0: b4000149     	cbz	x9, 0xee8 <tpd_zlog_check+0x58>
     ec4: 90000015     	adrp	x21, 0x0 <.text>
		0000000000000ec4:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
     ec8: 912d4116     	add	x22, x8, #0xb50
     ecc: f94002a8     	ldr	x8, [x21]
		0000000000000ecc:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
     ed0: f8735ac9     	ldr	x9, [x22, w19, uxtw #3]
     ed4: cb090100     	sub	x0, x8, x9
     ed8: 94000000     	bl	0xed8 <tpd_zlog_check+0x48>
		0000000000000ed8:  R_AARCH64_CALL26	jiffies_to_msecs
     edc: 53057c08     	lsr	w8, w0, #5
     ee0: 711d491f     	cmp	w8, #0x752
     ee4: 54000149     	b.ls	0xf0c <tpd_zlog_check+0x7c>
     ee8: 2a1f03e0     	mov	w0, wzr
     eec: f8735a88     	ldr	x8, [x20, w19, uxtw #3]
     ef0: 91000508     	add	x8, x8, #0x1
     ef4: f8335a88     	str	x8, [x20, w19, uxtw #3]
     ef8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     efc: a94157f6     	ldp	x22, x21, [sp, #0x10]
     f00: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     f04: d50323bf     	autiasp
     f08: d65f03c0     	ret
     f0c: f94002a8     	ldr	x8, [x21]
		0000000000000f0c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
     f10: f8735ac9     	ldr	x9, [x22, w19, uxtw #3]
     f14: cb090100     	sub	x0, x8, x9
     f18: 94000000     	bl	0xf18 <tpd_zlog_check+0x88>
		0000000000000f18:  R_AARCH64_CALL26	jiffies_to_msecs
     f1c: 2a0003e1     	mov	w1, w0
     f20: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x59d
     f24: 91000000     	add	x0, x0, #0x0
		0000000000000f24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x59d
     f28: 2a1303e2     	mov	w2, w19
     f2c: 94000000     	bl	0xf2c <tpd_zlog_check+0x9c>
		0000000000000f2c:  R_AARCH64_CALL26	_printk
     f30: 12800080     	mov	w0, #-0x5               // =-5
     f34: 17ffffee     	b	0xeec <tpd_zlog_check+0x5c>
     f38: d42aa240     	brk	#0x5512
