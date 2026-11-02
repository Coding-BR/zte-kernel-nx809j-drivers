
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000d440 <tpd_zlog_check>:
    d440: 71004c1f     	cmp	w0, #0x13
    d444: 54000522     	b.hs	0xd4e8 <tpd_zlog_check+0xa8>
    d448: d503233f     	paciasp
    d44c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    d450: a90157f6     	stp	x22, x21, [sp, #0x10]
    d454: a9024ff4     	stp	x20, x19, [sp, #0x20]
    d458: 910003fd     	mov	x29, sp
    d45c: 90000008     	adrp	x8, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000d45c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    d460: 2a0003f3     	mov	w19, w0
    d464: f9400108     	ldr	x8, [x8]
		000000000000d464:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    d468: 912ae114     	add	x20, x8, #0xab8
    d46c: f8605a89     	ldr	x9, [x20, w0, uxtw #3]
    d470: b4000149     	cbz	x9, 0xd498 <tpd_zlog_check+0x58>
    d474: 90000015     	adrp	x21, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000d474:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
    d478: 912d4116     	add	x22, x8, #0xb50
    d47c: f94002a8     	ldr	x8, [x21]
		000000000000d47c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d480: f8735ac9     	ldr	x9, [x22, w19, uxtw #3]
    d484: cb090100     	sub	x0, x8, x9
    d488: 94000000     	bl	0xd488 <tpd_zlog_check+0x48>
		000000000000d488:  R_AARCH64_CALL26	jiffies_to_msecs
    d48c: 53057c08     	lsr	w8, w0, #5
    d490: 711d491f     	cmp	w8, #0x752
    d494: 54000149     	b.ls	0xd4bc <tpd_zlog_check+0x7c>
    d498: 2a1f03e0     	mov	w0, wzr
    d49c: f8735a88     	ldr	x8, [x20, w19, uxtw #3]
    d4a0: 91000508     	add	x8, x8, #0x1
    d4a4: f8335a88     	str	x8, [x20, w19, uxtw #3]
    d4a8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    d4ac: a94157f6     	ldp	x22, x21, [sp, #0x10]
    d4b0: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    d4b4: d50323bf     	autiasp
    d4b8: d65f03c0     	ret
    d4bc: f94002a8     	ldr	x8, [x21]
		000000000000d4bc:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    d4c0: f8735ac9     	ldr	x9, [x22, w19, uxtw #3]
    d4c4: cb090100     	sub	x0, x8, x9
    d4c8: 94000000     	bl	0xd4c8 <tpd_zlog_check+0x88>
		000000000000d4c8:  R_AARCH64_CALL26	jiffies_to_msecs
    d4cc: 2a0003e1     	mov	w1, w0
    d4d0: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000d4d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17657
    d4d4: 91000000     	add	x0, x0, #0x0
		000000000000d4d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17657
    d4d8: 2a1303e2     	mov	w2, w19
    d4dc: 94000000     	bl	0xd4dc <tpd_zlog_check+0x9c>
		000000000000d4dc:  R_AARCH64_CALL26	_printk
    d4e0: 12800080     	mov	w0, #-0x5               // =-5
    d4e4: 17ffffee     	b	0xd49c <tpd_zlog_check+0x5c>
    d4e8: d42aa240     	brk	#0x5512
