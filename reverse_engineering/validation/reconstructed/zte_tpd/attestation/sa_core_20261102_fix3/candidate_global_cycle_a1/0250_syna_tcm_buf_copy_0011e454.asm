
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000f87c <syna_tcm_buf_copy_1>:
    f87c: d503233f     	paciasp
    f880: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    f884: f9000bf7     	str	x23, [sp, #0x10]
    f888: a90257f6     	stp	x22, x21, [sp, #0x20]
    f88c: a9034ff4     	stp	x20, x19, [sp, #0x30]
    f890: 910003fd     	mov	x29, sp
    f894: 39410002     	ldrb	w2, [x0, #0x40]
    f898: aa0003f3     	mov	x19, x0
    f89c: aa0103f4     	mov	x20, x1
    f8a0: 350009e2     	cbnz	w2, 0xf9dc <syna_tcm_buf_copy_1+0x160>
    f8a4: 91004260     	add	x0, x19, #0x10
    f8a8: 94000000     	bl	0xf8a8 <syna_tcm_buf_copy_1+0x2c>
		000000000000f8a8:  R_AARCH64_CALL26	mutex_lock
    f8ac: 39410268     	ldrb	w8, [x19, #0x40]
    f8b0: 11000508     	add	w8, w8, #0x1
    f8b4: 39010268     	strb	w8, [x19, #0x40]
    f8b8: 39410282     	ldrb	w2, [x20, #0x40]
    f8bc: 350009c2     	cbnz	w2, 0xf9f4 <syna_tcm_buf_copy_1+0x178>
    f8c0: 91004280     	add	x0, x20, #0x10
    f8c4: 94000000     	bl	0xf8c4 <syna_tcm_buf_copy_1+0x48>
		000000000000f8c4:  R_AARCH64_CALL26	mutex_lock
    f8c8: 39410288     	ldrb	w8, [x20, #0x40]
    f8cc: b9400e95     	ldr	w21, [x20, #0xc]
    f8d0: 11000508     	add	w8, w8, #0x1
    f8d4: 39010288     	strb	w8, [x20, #0x40]
    f8d8: b9400a63     	ldr	w3, [x19, #0x8]
    f8dc: 6b15007f     	cmp	w3, w21
    f8e0: 540003c2     	b.hs	0xf958 <syna_tcm_buf_copy_1+0xdc>
    f8e4: 110006b6     	add	w22, w21, #0x1
    f8e8: f9400260     	ldr	x0, [x19]
    f8ec: 6b16007f     	cmp	w3, w22
    f8f0: 54000262     	b.hs	0xf93c <syna_tcm_buf_copy_1+0xc0>
    f8f4: b40000c0     	cbz	x0, 0xf90c <syna_tcm_buf_copy_1+0x90>
    f8f8: aa0003f7     	mov	x23, x0
    f8fc: 94000000     	bl	0xf8fc <syna_tcm_buf_copy_1+0x80>
		000000000000f8fc:  R_AARCH64_CALL26	syna_request_managed_device
    f900: b4000c60     	cbz	x0, 0xfa8c <syna_tcm_buf_copy_1+0x210>
    f904: aa1703e1     	mov	x1, x23
    f908: 94000000     	bl	0xf908 <syna_tcm_buf_copy_1+0x8c>
		000000000000f908:  R_AARCH64_CALL26	devm_kfree
    f90c: 94000000     	bl	0xf90c <syna_tcm_buf_copy_1+0x90>
		000000000000f90c:  R_AARCH64_CALL26	syna_request_managed_device
    f910: b4000cc0     	cbz	x0, 0xfaa8 <syna_tcm_buf_copy_1+0x22c>
    f914: 12b00008     	mov	w8, #0x7fffffff         // =2147483647
    f918: 6b0802bf     	cmp	w21, w8
    f91c: 54000b22     	b.hs	0xfa80 <syna_tcm_buf_copy_1+0x204>
    f920: aa1603e1     	mov	x1, x22
    f924: 5281b802     	mov	w2, #0xdc0              // =3520
    f928: 94000000     	bl	0xf928 <syna_tcm_buf_copy_1+0xac>
		000000000000f928:  R_AARCH64_CALL26	devm_kmalloc
    f92c: f9000260     	str	x0, [x19]
    f930: b4000c80     	cbz	x0, 0xfac0 <syna_tcm_buf_copy_1+0x244>
    f934: b9000a76     	str	w22, [x19, #0x8]
    f938: 14000002     	b	0xf940 <syna_tcm_buf_copy_1+0xc4>
    f93c: aa0303f6     	mov	x22, x3
    f940: 2a1f03e1     	mov	w1, wzr
    f944: aa1603e2     	mov	x2, x22
    f948: 94000000     	bl	0xf948 <syna_tcm_buf_copy_1+0xcc>
		000000000000f948:  R_AARCH64_CALL26	memset
    f94c: b9000e7f     	str	wzr, [x19, #0xc]
    f950: b9400a63     	ldr	w3, [x19, #0x8]
    f954: b9400e95     	ldr	w21, [x20, #0xc]
    f958: f9400260     	ldr	x0, [x19]
    f95c: b4000860     	cbz	x0, 0xfa68 <syna_tcm_buf_copy_1+0x1ec>
    f960: f9400281     	ldr	x1, [x20]
    f964: b4000821     	cbz	x1, 0xfa68 <syna_tcm_buf_copy_1+0x1ec>
    f968: b9400a82     	ldr	w2, [x20, #0x8]
    f96c: 6b0302bf     	cmp	w21, w3
    f970: 540006e8     	b.hi	0xfa4c <syna_tcm_buf_copy_1+0x1d0>
    f974: 6b0202bf     	cmp	w21, w2
    f978: 540006a8     	b.hi	0xfa4c <syna_tcm_buf_copy_1+0x1d0>
    f97c: 2a1503e2     	mov	w2, w21
    f980: 94000000     	bl	0xf980 <syna_tcm_buf_copy_1+0x104>
		000000000000f980:  R_AARCH64_CALL26	memcpy
    f984: b9400e88     	ldr	w8, [x20, #0xc]
    f988: b9000e68     	str	w8, [x19, #0xc]
    f98c: 39410282     	ldrb	w2, [x20, #0x40]
    f990: 7100045f     	cmp	w2, #0x1
    f994: 540004c1     	b.ne	0xfa2c <syna_tcm_buf_copy_1+0x1b0>
    f998: 2a1f03e8     	mov	w8, wzr
    f99c: 91004280     	add	x0, x20, #0x10
    f9a0: 39010288     	strb	w8, [x20, #0x40]
    f9a4: 94000000     	bl	0xf9a4 <syna_tcm_buf_copy_1+0x128>
		000000000000f9a4:  R_AARCH64_CALL26	mutex_unlock
    f9a8: 39410262     	ldrb	w2, [x19, #0x40]
    f9ac: 7100045f     	cmp	w2, #0x1
    f9b0: 540002e1     	b.ne	0xfa0c <syna_tcm_buf_copy_1+0x190>
    f9b4: 2a1f03e8     	mov	w8, wzr
    f9b8: 91004260     	add	x0, x19, #0x10
    f9bc: 39010268     	strb	w8, [x19, #0x40]
    f9c0: 94000000     	bl	0xf9c0 <syna_tcm_buf_copy_1+0x144>
		000000000000f9c0:  R_AARCH64_CALL26	mutex_unlock
    f9c4: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    f9c8: f9400bf7     	ldr	x23, [sp, #0x10]
    f9cc: a94257f6     	ldp	x22, x21, [sp, #0x20]
    f9d0: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    f9d4: d50323bf     	autiasp
    f9d8: d65f03c0     	ret
    f9dc: 90000000     	adrp	x0, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f9dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
    f9e0: 91000000     	add	x0, x0, #0x0
		000000000000f9e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
    f9e4: 90000001     	adrp	x1, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f9e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70c4
    f9e8: 91000021     	add	x1, x1, #0x0
		000000000000f9e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70c4
    f9ec: 94000000     	bl	0xf9ec <syna_tcm_buf_copy_1+0x170>
		000000000000f9ec:  R_AARCH64_CALL26	_printk
    f9f0: 17ffffad     	b	0xf8a4 <syna_tcm_buf_copy_1+0x28>
    f9f4: 90000000     	adrp	x0, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f9f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
    f9f8: 91000000     	add	x0, x0, #0x0
		000000000000f9f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
    f9fc: 90000001     	adrp	x1, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f9fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70c4
    fa00: 91000021     	add	x1, x1, #0x0
		000000000000fa00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70c4
    fa04: 94000000     	bl	0xfa04 <syna_tcm_buf_copy_1+0x188>
		000000000000fa04:  R_AARCH64_CALL26	_printk
    fa08: 17ffffae     	b	0xf8c0 <syna_tcm_buf_copy_1+0x44>
    fa0c: 90000000     	adrp	x0, 0xf000 <syna_dev_resume+0x5d8>
		000000000000fa0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
    fa10: 91000000     	add	x0, x0, #0x0
		000000000000fa10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
    fa14: 90000001     	adrp	x1, 0xf000 <syna_dev_resume+0x5d8>
		000000000000fa14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
    fa18: 91000021     	add	x1, x1, #0x0
		000000000000fa18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
    fa1c: 94000000     	bl	0xfa1c <syna_tcm_buf_copy_1+0x1a0>
		000000000000fa1c:  R_AARCH64_CALL26	_printk
    fa20: 39410268     	ldrb	w8, [x19, #0x40]
    fa24: 51000508     	sub	w8, w8, #0x1
    fa28: 17ffffe4     	b	0xf9b8 <syna_tcm_buf_copy_1+0x13c>
    fa2c: 90000000     	adrp	x0, 0xf000 <syna_dev_resume+0x5d8>
		000000000000fa2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
    fa30: 91000000     	add	x0, x0, #0x0
		000000000000fa30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
    fa34: 90000001     	adrp	x1, 0xf000 <syna_dev_resume+0x5d8>
		000000000000fa34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
    fa38: 91000021     	add	x1, x1, #0x0
		000000000000fa38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
    fa3c: 94000000     	bl	0xfa3c <syna_tcm_buf_copy_1+0x1c0>
		000000000000fa3c:  R_AARCH64_CALL26	_printk
    fa40: 39410288     	ldrb	w8, [x20, #0x40]
    fa44: 51000508     	sub	w8, w8, #0x1
    fa48: 17ffffd5     	b	0xf99c <syna_tcm_buf_copy_1+0x120>
    fa4c: 90000000     	adrp	x0, 0xf000 <syna_dev_resume+0x5d8>
		000000000000fa4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8406
    fa50: 91000000     	add	x0, x0, #0x0
		000000000000fa50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8406
    fa54: 90000001     	adrp	x1, 0xf000 <syna_dev_resume+0x5d8>
		000000000000fa54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a80
    fa58: 91000021     	add	x1, x1, #0x0
		000000000000fa58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a80
    fa5c: 2a1503e4     	mov	w4, w21
    fa60: 94000000     	bl	0xfa60 <syna_tcm_buf_copy_1+0x1e4>
		000000000000fa60:  R_AARCH64_CALL26	_printk
    fa64: b9400e95     	ldr	w21, [x20, #0xc]
    fa68: 90000000     	adrp	x0, 0xf000 <syna_dev_resume+0x5d8>
		000000000000fa68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b20
    fa6c: 91000000     	add	x0, x0, #0x0
		000000000000fa6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b20
    fa70: 90000001     	adrp	x1, 0xf000 <syna_dev_resume+0x5d8>
		000000000000fa70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x140a
    fa74: 91000021     	add	x1, x1, #0x0
		000000000000fa74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x140a
    fa78: 2a1503e2     	mov	w2, w21
    fa7c: 1400001e     	b	0xfaf4 <syna_tcm_buf_copy_1+0x278>
    fa80: 90000000     	adrp	x0, 0xf000 <syna_dev_resume+0x5d8>
		000000000000fa80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70d6
    fa84: 91000000     	add	x0, x0, #0x0
		000000000000fa84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70d6
    fa88: 1400000a     	b	0xfab0 <syna_tcm_buf_copy_1+0x234>
    fa8c: 90000000     	adrp	x0, 0xf000 <syna_dev_resume+0x5d8>
		000000000000fa8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
    fa90: 91000000     	add	x0, x0, #0x0
		000000000000fa90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
    fa94: 90000001     	adrp	x1, 0xf000 <syna_dev_resume+0x5d8>
		000000000000fa94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
    fa98: 91000021     	add	x1, x1, #0x0
		000000000000fa98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
    fa9c: 94000000     	bl	0xfa9c <syna_tcm_buf_copy_1+0x220>
		000000000000fa9c:  R_AARCH64_CALL26	_printk
    faa0: 94000000     	bl	0xfaa0 <syna_tcm_buf_copy_1+0x224>
		000000000000faa0:  R_AARCH64_CALL26	syna_request_managed_device
    faa4: b5fff380     	cbnz	x0, 0xf914 <syna_tcm_buf_copy_1+0x98>
    faa8: 90000000     	adrp	x0, 0xf000 <syna_dev_resume+0x5d8>
		000000000000faa8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
    faac: 91000000     	add	x0, x0, #0x0
		000000000000faac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
    fab0: 90000001     	adrp	x1, 0xf000 <syna_dev_resume+0x5d8>
		000000000000fab0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bfa
    fab4: 91000021     	add	x1, x1, #0x0
		000000000000fab4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bfa
    fab8: 94000000     	bl	0xfab8 <syna_tcm_buf_copy_1+0x23c>
		000000000000fab8:  R_AARCH64_CALL26	_printk
    fabc: f900027f     	str	xzr, [x19]
    fac0: 90000000     	adrp	x0, 0xf000 <syna_dev_resume+0x5d8>
		000000000000fac0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d74
    fac4: 91000000     	add	x0, x0, #0x0
		000000000000fac4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d74
    fac8: 90000001     	adrp	x1, 0xf000 <syna_dev_resume+0x5d8>
		000000000000fac8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x77fc
    facc: 91000021     	add	x1, x1, #0x0
		000000000000facc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x77fc
    fad0: 2a1603e2     	mov	w2, w22
    fad4: 94000000     	bl	0xfad4 <syna_tcm_buf_copy_1+0x258>
		000000000000fad4:  R_AARCH64_CALL26	_printk
    fad8: f900067f     	str	xzr, [x19, #0x8]
    fadc: 90000000     	adrp	x0, 0xf000 <syna_dev_resume+0x5d8>
		000000000000fadc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x667c
    fae0: 91000000     	add	x0, x0, #0x0
		000000000000fae0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x667c
    fae4: b9400e88     	ldr	w8, [x20, #0xc]
    fae8: 90000001     	adrp	x1, 0xf000 <syna_dev_resume+0x5d8>
		000000000000fae8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x140a
    faec: 91000021     	add	x1, x1, #0x0
		000000000000faec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x140a
    faf0: 11000502     	add	w2, w8, #0x1
    faf4: 94000000     	bl	0xfaf4 <syna_tcm_buf_copy_1+0x278>
		000000000000faf4:  R_AARCH64_CALL26	_printk
    faf8: 17ffffa5     	b	0xf98c <syna_tcm_buf_copy_1+0x110>
