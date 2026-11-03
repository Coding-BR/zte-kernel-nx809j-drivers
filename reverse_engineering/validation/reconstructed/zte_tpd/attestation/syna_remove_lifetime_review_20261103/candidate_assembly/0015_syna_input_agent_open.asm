
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000ba00 <syna_input_agent_open>:
    ba00: d503233f     	paciasp
    ba04: d101c3ff     	sub	sp, sp, #0x70
    ba08: a9027bfd     	stp	x29, x30, [sp, #0x20]
    ba0c: a90367fa     	stp	x26, x25, [sp, #0x30]
    ba10: a9045ff8     	stp	x24, x23, [sp, #0x40]
    ba14: a90557f6     	stp	x22, x21, [sp, #0x50]
    ba18: a9064ff4     	stp	x20, x19, [sp, #0x60]
    ba1c: 910083fd     	add	x29, sp, #0x20
    ba20: d5384108     	mrs	x8, SP_EL0
    ba24: aa0003f5     	mov	x21, x0
    ba28: aa0103f3     	mov	x19, x1
    ba2c: f9438908     	ldr	x8, [x8, #0x710]
    ba30: 910023e2     	add	x2, sp, #0x8
    ba34: f81f83a8     	stur	x8, [x29, #-0x8]
    ba38: f9401020     	ldr	x0, [x1, #0x20]
    ba3c: 910043e1     	add	x1, sp, #0x10
    ba40: a900ffff     	stp	xzr, xzr, [sp, #0x8]
    ba44: 94000000     	bl	0xba44 <syna_input_agent_open+0x44>
		000000000000ba44:  R_AARCH64_CALL26	syna_cdev_misc_operation_begin
    ba48: 360002a0     	tbz	w0, #0x0, 0xba9c <syna_input_agent_open+0x9c>
    ba4c: d503201f     	nop
    ba50: 90000008     	adrp	x8, 0xb000 <syna_dev_process_unexpected_reset+0x84>
		000000000000ba50:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
    ba54: 5281b801     	mov	w1, #0xdc0              // =3520
    ba58: 52800302     	mov	w2, #0x18               // =24
    ba5c: f9400100     	ldr	x0, [x8]
		000000000000ba5c:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
    ba60: 94000000     	bl	0xba60 <syna_input_agent_open+0x60>
		000000000000ba60:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    ba64: aa0003f4     	mov	x20, x0
    ba68: b4000974     	cbz	x20, 0xbb94 <syna_input_agent_open+0x194>
    ba6c: f9400bf7     	ldr	x23, [sp, #0x10]
    ba70: 90000000     	adrp	x0, 0xb000 <syna_dev_process_unexpected_reset+0x84>
		000000000000ba70:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x306a8
    ba74: 91000000     	add	x0, x0, #0x0
		000000000000ba74:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x306a8
    ba78: 94000000     	bl	0xba78 <syna_input_agent_open+0x78>
		000000000000ba78:  R_AARCH64_CALL26	mutex_lock
    ba7c: 90000018     	adrp	x24, 0xb000 <syna_dev_process_unexpected_reset+0x84>
		000000000000ba7c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x2700
    ba80: f9400316     	ldr	x22, [x24]
		000000000000ba80:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x2700
    ba84: b4000116     	cbz	x22, 0xbaa4 <syna_input_agent_open+0xa4>
    ba88: f94002c8     	ldr	x8, [x22]
    ba8c: eb17011f     	cmp	x8, x23
    ba90: 54000260     	b.eq	0xbadc <syna_input_agent_open+0xdc>
    ba94: 128001f5     	mov	w21, #-0x10             // =-16
    ba98: 14000059     	b	0xbbfc <syna_input_agent_open+0x1fc>
    ba9c: 12800255     	mov	w21, #-0x13             // =-19
    baa0: 1400006a     	b	0xbc48 <syna_input_agent_open+0x248>
    baa4: d503201f     	nop
    baa8: 90000008     	adrp	x8, 0xb000 <syna_dev_process_unexpected_reset+0x84>
		000000000000baa8:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
    baac: 5281b801     	mov	w1, #0xdc0              // =3520
    bab0: 52800302     	mov	w2, #0x18               // =24
    bab4: f9400100     	ldr	x0, [x8]
		000000000000bab4:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
    bab8: 94000000     	bl	0xbab8 <syna_input_agent_open+0xb8>
		000000000000bab8:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    babc: aa0003f6     	mov	x22, x0
    bac0: b40009d6     	cbz	x22, 0xbbf8 <syna_input_agent_open+0x1f8>
    bac4: f90002d7     	str	x23, [x22]
    bac8: 52800029     	mov	w9, #0x1                // =1
    bacc: f94232e8     	ldr	x8, [x23, #0x460]
    bad0: f90006c8     	str	x8, [x22, #0x8]
    bad4: b90012c9     	str	w9, [x22, #0x10]
    bad8: f9000316     	str	x22, [x24]
		000000000000bad8:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x2700
    badc: 910042d7     	add	x23, x22, #0x10
    bae0: 1400002f     	b	0xbb9c <syna_input_agent_open+0x19c>
    bae4: 52800028     	mov	w8, #0x1                // =1
    bae8: b82802e8     	ldadd	w8, w8, [x23]
    baec: 34000648     	cbz	w8, 0xbbb4 <syna_input_agent_open+0x1b4>
    baf0: 11000509     	add	w9, w8, #0x1
    baf4: 2a080128     	orr	w8, w9, w8
    baf8: 37f80308     	tbnz	w8, #0x1f, 0xbb58 <syna_input_agent_open+0x158>
    bafc: 90000000     	adrp	x0, 0xb000 <syna_dev_process_unexpected_reset+0x84>
		000000000000bafc:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x306a8
    bb00: 91000000     	add	x0, x0, #0x0
		000000000000bb00:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x306a8
    bb04: 94000000     	bl	0xbb04 <syna_input_agent_open+0x104>
		000000000000bb04:  R_AARCH64_CALL26	mutex_unlock
    bb08: aa1503e0     	mov	x0, x21
    bb0c: aa1303e1     	mov	x1, x19
    bb10: 94000000     	bl	0xbb10 <syna_input_agent_open+0x110>
		000000000000bb10:  R_AARCH64_CALL26	syna_open
    bb14: 2a0003f5     	mov	w21, w0
    bb18: 34000180     	cbz	w0, 0xbb48 <syna_input_agent_open+0x148>
    bb1c: 1400003c     	b	0xbc0c <syna_input_agent_open+0x20c>
    bb20: 12800008     	mov	w8, #-0x1               // =-1
    bb24: b86802e8     	ldaddl	w8, w8, [x23]
    bb28: 7100051f     	cmp	w8, #0x1
    bb2c: 54000801     	b.ne	0xbc2c <syna_input_agent_open+0x22c>
    bb30: d50339bf     	dmb	ishld
    bb34: f94006c0     	ldr	x0, [x22, #0x8]
    bb38: 94000000     	bl	0xbb38 <syna_input_agent_open+0x138>
		000000000000bb38:  R_AARCH64_CALL26	kfree
    bb3c: aa1603e0     	mov	x0, x22
    bb40: 94000000     	bl	0xbb40 <syna_input_agent_open+0x140>
		000000000000bb40:  R_AARCH64_CALL26	kfree
    bb44: 1400003c     	b	0xbc34 <syna_input_agent_open+0x234>
    bb48: a940a3e9     	ldp	x9, x8, [sp, #0x8]
    bb4c: f9000a96     	str	x22, [x20, #0x10]
    bb50: a9002688     	stp	x8, x9, [x20]
    bb54: 1400003b     	b	0xbc40 <syna_input_agent_open+0x240>
    bb58: 52800021     	mov	w1, #0x1                // =1
    bb5c: 14000017     	b	0xbbb8 <syna_input_agent_open+0x1b8>
    bb60: 90000008     	adrp	x8, 0xb000 <syna_dev_process_unexpected_reset+0x84>
		000000000000bb60:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
    bb64: d5384116     	mrs	x22, SP_EL0
    bb68: f9402ad7     	ldr	x23, [x22, #0x50]
    bb6c: f9400100     	ldr	x0, [x8]
		000000000000bb6c:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
    bb70: 90000008     	adrp	x8, 0xb000 <syna_dev_process_unexpected_reset+0x84>
		000000000000bb70:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags
    bb74: 91000108     	add	x8, x8, #0x0
		000000000000bb74:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags
    bb78: 5281b801     	mov	w1, #0xdc0              // =3520
    bb7c: 52800302     	mov	w2, #0x18               // =24
    bb80: f9002ac8     	str	x8, [x22, #0x50]
    bb84: 94000000     	bl	0xbb84 <syna_input_agent_open+0x184>
		000000000000bb84:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    bb88: aa0003f4     	mov	x20, x0
    bb8c: f9002ad7     	str	x23, [x22, #0x50]
    bb90: b5fff6f4     	cbnz	x20, 0xba6c <syna_input_agent_open+0x6c>
    bb94: 12800175     	mov	w21, #-0xc              // =-12
    bb98: 1400002a     	b	0xbc40 <syna_input_agent_open+0x240>
    bb9c: f98002f1     	prfm	pstl1strm, [x23]
    bba0: 885f7ee8     	ldxr	w8, [x23]
    bba4: 11000509     	add	w9, w8, #0x1
    bba8: 880a7ee9     	stxr	w10, w9, [x23]
    bbac: 35ffffaa     	cbnz	w10, 0xbba0 <syna_input_agent_open+0x1a0>
    bbb0: 35fffa08     	cbnz	w8, 0xbaf0 <syna_input_agent_open+0xf0>
    bbb4: 52800041     	mov	w1, #0x2                // =2
    bbb8: aa1703e0     	mov	x0, x23
    bbbc: 94000000     	bl	0xbbbc <syna_input_agent_open+0x1bc>
		000000000000bbbc:  R_AARCH64_CALL26	refcount_warn_saturate
    bbc0: 17ffffcf     	b	0xbafc <syna_input_agent_open+0xfc>
    bbc4: 90000008     	adrp	x8, 0xb000 <syna_dev_process_unexpected_reset+0x84>
		000000000000bbc4:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
    bbc8: d5384119     	mrs	x25, SP_EL0
    bbcc: f9402b3a     	ldr	x26, [x25, #0x50]
    bbd0: f9400100     	ldr	x0, [x8]
		000000000000bbd0:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
    bbd4: 90000008     	adrp	x8, 0xb000 <syna_dev_process_unexpected_reset+0x84>
		000000000000bbd4:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x28
    bbd8: 91000108     	add	x8, x8, #0x0
		000000000000bbd8:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x28
    bbdc: 5281b801     	mov	w1, #0xdc0              // =3520
    bbe0: 52800302     	mov	w2, #0x18               // =24
    bbe4: f9002b28     	str	x8, [x25, #0x50]
    bbe8: 94000000     	bl	0xbbe8 <syna_input_agent_open+0x1e8>
		000000000000bbe8:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    bbec: aa0003f6     	mov	x22, x0
    bbf0: f9002b3a     	str	x26, [x25, #0x50]
    bbf4: b5fff696     	cbnz	x22, 0xbac4 <syna_input_agent_open+0xc4>
    bbf8: 12800175     	mov	w21, #-0xc              // =-12
    bbfc: 90000000     	adrp	x0, 0xb000 <syna_dev_process_unexpected_reset+0x84>
		000000000000bbfc:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x306a8
    bc00: 91000000     	add	x0, x0, #0x0
		000000000000bc00:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x306a8
    bc04: 94000000     	bl	0xbc04 <syna_input_agent_open+0x204>
		000000000000bc04:  R_AARCH64_CALL26	mutex_unlock
    bc08: 1400000b     	b	0xbc34 <syna_input_agent_open+0x234>
    bc0c: 52800029     	mov	w9, #0x1                // =1
    bc10: f98002f1     	prfm	pstl1strm, [x23]
    bc14: 885f7ee8     	ldxr	w8, [x23]
    bc18: 4b09010a     	sub	w10, w8, w9
    bc1c: 880bfeea     	stlxr	w11, w10, [x23]
    bc20: 35ffffab     	cbnz	w11, 0xbc14 <syna_input_agent_open+0x214>
    bc24: 7100051f     	cmp	w8, #0x1
    bc28: 54fff840     	b.eq	0xbb30 <syna_input_agent_open+0x130>
    bc2c: 7100011f     	cmp	w8, #0x0
    bc30: 5400028d     	b.le	0xbc80 <syna_input_agent_open+0x280>
    bc34: aa1403e0     	mov	x0, x20
    bc38: 94000000     	bl	0xbc38 <syna_input_agent_open+0x238>
		000000000000bc38:  R_AARCH64_CALL26	kfree
    bc3c: aa1f03f4     	mov	x20, xzr
    bc40: f9001274     	str	x20, [x19, #0x20]
    bc44: 94000000     	bl	0xbc44 <syna_input_agent_open+0x244>
		000000000000bc44:  R_AARCH64_CALL26	syna_cdev_operation_end
    bc48: d5384108     	mrs	x8, SP_EL0
    bc4c: f9438908     	ldr	x8, [x8, #0x710]
    bc50: f85f83a9     	ldur	x9, [x29, #-0x8]
    bc54: eb09011f     	cmp	x8, x9
    bc58: 540001c1     	b.ne	0xbc90 <syna_input_agent_open+0x290>
    bc5c: 2a1503e0     	mov	w0, w21
    bc60: a9464ff4     	ldp	x20, x19, [sp, #0x60]
    bc64: a94557f6     	ldp	x22, x21, [sp, #0x50]
    bc68: a9445ff8     	ldp	x24, x23, [sp, #0x40]
    bc6c: a94367fa     	ldp	x26, x25, [sp, #0x30]
    bc70: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    bc74: 9101c3ff     	add	sp, sp, #0x70
    bc78: d50323bf     	autiasp
    bc7c: d65f03c0     	ret
    bc80: aa1703e0     	mov	x0, x23
    bc84: 52800061     	mov	w1, #0x3                // =3
    bc88: 94000000     	bl	0xbc88 <syna_input_agent_open+0x288>
		000000000000bc88:  R_AARCH64_CALL26	refcount_warn_saturate
    bc8c: 17ffffea     	b	0xbc34 <syna_input_agent_open+0x234>
    bc90: 94000000     	bl	0xbc90 <syna_input_agent_open+0x290>
		000000000000bc90:  R_AARCH64_CALL26	__stack_chk_fail
