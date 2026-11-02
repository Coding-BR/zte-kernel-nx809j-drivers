
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000d3e4 <tpd_zlog_check>:
    d3e4: 71004c1f     	cmp	w0, #0x13
    d3e8: 54000522     	b.hs	0xd48c <tpd_zlog_check+0xa8>
    d3ec: d503233f     	paciasp
    d3f0: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    d3f4: a90157f6     	stp	x22, x21, [sp, #0x10]
    d3f8: a9024ff4     	stp	x20, x19, [sp, #0x20]
    d3fc: 910003fd     	mov	x29, sp
    d400: 90000008     	adrp	x8, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000d400:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    d404: 2a0003f3     	mov	w19, w0
    d408: f9400108     	ldr	x8, [x8]
		000000000000d408:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    d40c: 912ae114     	add	x20, x8, #0xab8
    d410: f8605a89     	ldr	x9, [x20, w0, uxtw #3]
    d414: b4000149     	cbz	x9, 0xd43c <tpd_zlog_check+0x58>
    d418: 90000015     	adrp	x21, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000d418:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
    d41c: 912d4116     	add	x22, x8, #0xb50
    d420: f94002a8     	ldr	x8, [x21]
		000000000000d420:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d424: f8735ac9     	ldr	x9, [x22, w19, uxtw #3]
    d428: cb090100     	sub	x0, x8, x9
    d42c: 94000000     	bl	0xd42c <tpd_zlog_check+0x48>
		000000000000d42c:  R_AARCH64_CALL26	jiffies_to_msecs
    d430: 53057c08     	lsr	w8, w0, #5
    d434: 711d491f     	cmp	w8, #0x752
    d438: 54000149     	b.ls	0xd460 <tpd_zlog_check+0x7c>
    d43c: 2a1f03e0     	mov	w0, wzr
    d440: f8735a88     	ldr	x8, [x20, w19, uxtw #3]
    d444: 91000508     	add	x8, x8, #0x1
    d448: f8335a88     	str	x8, [x20, w19, uxtw #3]
    d44c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    d450: a94157f6     	ldp	x22, x21, [sp, #0x10]
    d454: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    d458: d50323bf     	autiasp
    d45c: d65f03c0     	ret
    d460: f94002a8     	ldr	x8, [x21]
		000000000000d460:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d464: f8735ac9     	ldr	x9, [x22, w19, uxtw #3]
    d468: cb090100     	sub	x0, x8, x9
    d46c: 94000000     	bl	0xd46c <tpd_zlog_check+0x88>
		000000000000d46c:  R_AARCH64_CALL26	jiffies_to_msecs
    d470: 2a0003e1     	mov	w1, w0
    d474: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000d474:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17657
    d478: 91000000     	add	x0, x0, #0x0
		000000000000d478:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17657
    d47c: 2a1303e2     	mov	w2, w19
    d480: 94000000     	bl	0xd480 <tpd_zlog_check+0x9c>
		000000000000d480:  R_AARCH64_CALL26	_printk
    d484: 12800080     	mov	w0, #-0x5               // =-5
    d488: 17ffffee     	b	0xd440 <tpd_zlog_check+0x5c>
    d48c: d42aa240     	brk	#0x5512
