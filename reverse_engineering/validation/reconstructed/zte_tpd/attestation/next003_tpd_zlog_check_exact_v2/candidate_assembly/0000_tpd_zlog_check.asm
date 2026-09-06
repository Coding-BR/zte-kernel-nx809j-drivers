
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000126c4 <tpd_zlog_check>:
   126c4: 71004c1f     	cmp	w0, #0x13
   126c8: 54000522     	b.hs	0x1276c <tpd_zlog_check+0xa8>
   126cc: d503233f     	paciasp
   126d0: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   126d4: a90157f6     	stp	x22, x21, [sp, #0x10]
   126d8: a9024ff4     	stp	x20, x19, [sp, #0x20]
   126dc: 910003fd     	mov	x29, sp
   126e0: 90000008     	adrp	x8, 0x12000 <tpd_set_one_key+0x3c>
		00000000000126e0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   126e4: 2a0003f3     	mov	w19, w0
   126e8: f9400108     	ldr	x8, [x8]
		00000000000126e8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   126ec: 912ae114     	add	x20, x8, #0xab8
   126f0: f8605a89     	ldr	x9, [x20, w0, uxtw #3]
   126f4: b4000149     	cbz	x9, 0x1271c <tpd_zlog_check+0x58>
   126f8: 90000015     	adrp	x21, 0x12000 <tpd_set_one_key+0x3c>
		00000000000126f8:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   126fc: 912d4116     	add	x22, x8, #0xb50
   12700: f94002a8     	ldr	x8, [x21]
		0000000000012700:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   12704: f8735ac9     	ldr	x9, [x22, w19, uxtw #3]
   12708: cb090100     	sub	x0, x8, x9
   1270c: 94000000     	bl	0x1270c <tpd_zlog_check+0x48>
		000000000001270c:  R_AARCH64_CALL26	jiffies_to_msecs
   12710: 53057c08     	lsr	w8, w0, #5
   12714: 711d491f     	cmp	w8, #0x752
   12718: 54000149     	b.ls	0x12740 <tpd_zlog_check+0x7c>
   1271c: 2a1f03e0     	mov	w0, wzr
   12720: f8735a88     	ldr	x8, [x20, w19, uxtw #3]
   12724: 91000508     	add	x8, x8, #0x1
   12728: f8335a88     	str	x8, [x20, w19, uxtw #3]
   1272c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   12730: a94157f6     	ldp	x22, x21, [sp, #0x10]
   12734: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   12738: d50323bf     	autiasp
   1273c: d65f03c0     	ret
   12740: f94002a8     	ldr	x8, [x21]
		0000000000012740:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   12744: f8735ac9     	ldr	x9, [x22, w19, uxtw #3]
   12748: cb090100     	sub	x0, x8, x9
   1274c: 94000000     	bl	0x1274c <tpd_zlog_check+0x88>
		000000000001274c:  R_AARCH64_CALL26	jiffies_to_msecs
   12750: 2a0003e1     	mov	w1, w0
   12754: 90000000     	adrp	x0, 0x12000 <tpd_set_one_key+0x3c>
		0000000000012754:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17735
   12758: 91000000     	add	x0, x0, #0x0
		0000000000012758:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17735
   1275c: 2a1303e2     	mov	w2, w19
   12760: 94000000     	bl	0x12760 <tpd_zlog_check+0x9c>
		0000000000012760:  R_AARCH64_CALL26	_printk
   12764: 12800080     	mov	w0, #-0x5               // =-5
   12768: 17ffffee     	b	0x12720 <tpd_zlog_check+0x5c>
   1276c: d42aa240     	brk	#0x5512
