
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000022a6c <tpd_zlog_check>:
   22a6c: 71004c1f     	cmp	w0, #0x13
   22a70: 54000522     	b.hs	0x22b14 <tpd_zlog_check+0xa8>
   22a74: d503233f     	paciasp
   22a78: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   22a7c: a90157f6     	stp	x22, x21, [sp, #0x10]
   22a80: a9024ff4     	stp	x20, x19, [sp, #0x20]
   22a84: 910003fd     	mov	x29, sp
   22a88: 90000008     	adrp	x8, 0x22000 <tpd_touch_press+0x6f4>
		0000000000022a88:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   22a8c: 2a0003f3     	mov	w19, w0
   22a90: f9400108     	ldr	x8, [x8]
		0000000000022a90:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   22a94: 912ae114     	add	x20, x8, #0xab8
   22a98: f8605a89     	ldr	x9, [x20, w0, uxtw #3]
   22a9c: b4000149     	cbz	x9, 0x22ac4 <tpd_zlog_check+0x58>
   22aa0: 90000015     	adrp	x21, 0x22000 <tpd_touch_press+0x6f4>
		0000000000022aa0:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   22aa4: 912d4116     	add	x22, x8, #0xb50
   22aa8: f94002a8     	ldr	x8, [x21]
		0000000000022aa8:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   22aac: f8735ac9     	ldr	x9, [x22, w19, uxtw #3]
   22ab0: cb090100     	sub	x0, x8, x9
   22ab4: 94000000     	bl	0x22ab4 <tpd_zlog_check+0x48>
		0000000000022ab4:  R_AARCH64_CALL26	jiffies_to_msecs
   22ab8: 53057c08     	lsr	w8, w0, #5
   22abc: 711d491f     	cmp	w8, #0x752
   22ac0: 54000149     	b.ls	0x22ae8 <tpd_zlog_check+0x7c>
   22ac4: 2a1f03e0     	mov	w0, wzr
   22ac8: f8735a88     	ldr	x8, [x20, w19, uxtw #3]
   22acc: 91000508     	add	x8, x8, #0x1
   22ad0: f8335a88     	str	x8, [x20, w19, uxtw #3]
   22ad4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   22ad8: a94157f6     	ldp	x22, x21, [sp, #0x10]
   22adc: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   22ae0: d50323bf     	autiasp
   22ae4: d65f03c0     	ret
   22ae8: f94002a8     	ldr	x8, [x21]
		0000000000022ae8:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   22aec: f8735ac9     	ldr	x9, [x22, w19, uxtw #3]
   22af0: cb090100     	sub	x0, x8, x9
   22af4: 94000000     	bl	0x22af4 <tpd_zlog_check+0x88>
		0000000000022af4:  R_AARCH64_CALL26	jiffies_to_msecs
   22af8: 2a0003e1     	mov	w1, w0
   22afc: 90000000     	adrp	x0, 0x22000 <tpd_touch_press+0x6f4>
		0000000000022afc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x63c
   22b00: 91000000     	add	x0, x0, #0x0
		0000000000022b00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x63c
   22b04: 2a1303e2     	mov	w2, w19
   22b08: 94000000     	bl	0x22b08 <tpd_zlog_check+0x9c>
		0000000000022b08:  R_AARCH64_CALL26	_printk
   22b0c: 12800080     	mov	w0, #-0x5               // =-5
   22b10: 17ffffee     	b	0x22ac8 <tpd_zlog_check+0x5c>
   22b14: d42aa240     	brk	#0x5512
