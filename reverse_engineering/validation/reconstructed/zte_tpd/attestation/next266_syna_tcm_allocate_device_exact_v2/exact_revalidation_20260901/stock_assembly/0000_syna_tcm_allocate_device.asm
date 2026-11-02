
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001a89c <syna_tcm_allocate_device>:
   1a89c: d503233f     	paciasp
   1a8a0: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
   1a8a4: f9000bf7     	str	x23, [sp, #0x10]
   1a8a8: a90257f6     	stp	x22, x21, [sp, #0x20]
   1a8ac: a9034ff4     	stp	x20, x19, [sp, #0x30]
   1a8b0: 910003fd     	mov	x29, sp
   1a8b4: b5000081     	cbnz	x1, 0x1a8c4 <syna_tcm_allocate_device+0x28>
   1a8b8: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a8b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9a6d
   1a8bc: 91000000     	add	x0, x0, #0x0
		000000000001a8bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9a6d
   1a8c0: 1400000a     	b	0x1a8e8 <syna_tcm_allocate_device+0x4c>
   1a8c4: f9401028     	ldr	x8, [x1, #0x20]
   1a8c8: b5000088     	cbnz	x8, 0x1a8d8 <syna_tcm_allocate_device+0x3c>
   1a8cc: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a8cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x715f
   1a8d0: 91000000     	add	x0, x0, #0x0
		000000000001a8d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x715f
   1a8d4: 14000005     	b	0x1a8e8 <syna_tcm_allocate_device+0x4c>
   1a8d8: f9401428     	ldr	x8, [x1, #0x28]
   1a8dc: b50001a8     	cbnz	x8, 0x1a910 <syna_tcm_allocate_device+0x74>
   1a8e0: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a8e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e22
   1a8e4: 91000000     	add	x0, x0, #0x0
		000000000001a8e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e22
   1a8e8: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a8e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5344
   1a8ec: 91000021     	add	x1, x1, #0x0
		000000000001a8ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5344
   1a8f0: 94000000     	bl	0x1a8f0 <syna_tcm_allocate_device+0x54>
		000000000001a8f0:  R_AARCH64_CALL26	_printk
   1a8f4: 12801e00     	mov	w0, #-0xf1              // =-241
   1a8f8: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   1a8fc: f9400bf7     	ldr	x23, [sp, #0x10]
   1a900: a94257f6     	ldp	x22, x21, [sp, #0x20]
   1a904: a8c47bfd     	ldp	x29, x30, [sp], #0x40
   1a908: d50323bf     	autiasp
   1a90c: d65f03c0     	ret
   1a910: 90000008     	adrp	x8, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a910:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x535d
   1a914: 91000108     	add	x8, x8, #0x0
		000000000001a914:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x535d
   1a918: aa0103f6     	mov	x22, x1
   1a91c: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a91c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5344
   1a920: 91000021     	add	x1, x1, #0x0
		000000000001a920:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5344
   1a924: aa0003f3     	mov	x19, x0
   1a928: aa0803e0     	mov	x0, x8
   1a92c: aa0203f4     	mov	x20, x2
   1a930: 94000000     	bl	0x1a930 <syna_tcm_allocate_device+0x94>
		000000000001a930:  R_AARCH64_CALL26	_printk
   1a934: aa1303f7     	mov	x23, x19
   1a938: f900027f     	str	xzr, [x19]
   1a93c: 94000000     	bl	0x1a93c <syna_tcm_allocate_device+0xa0>
		000000000001a93c:  R_AARCH64_CALL26	syna_request_managed_device
   1a940: b50000e0     	cbnz	x0, 0x1a95c <syna_tcm_allocate_device+0xc0>
   1a944: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a944:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   1a948: 91000000     	add	x0, x0, #0x0
		000000000001a948:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   1a94c: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a94c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ae7
   1a950: 91000021     	add	x1, x1, #0x0
		000000000001a950:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ae7
   1a954: 94000000     	bl	0x1a954 <syna_tcm_allocate_device+0xb8>
		000000000001a954:  R_AARCH64_CALL26	_printk
   1a958: 14000005     	b	0x1a96c <syna_tcm_allocate_device+0xd0>
   1a95c: 52847d01     	mov	w1, #0x23e8             // =9192
   1a960: 5281b802     	mov	w2, #0xdc0              // =3520
   1a964: 94000000     	bl	0x1a964 <syna_tcm_allocate_device+0xc8>
		000000000001a964:  R_AARCH64_CALL26	devm_kmalloc
   1a968: b5000100     	cbnz	x0, 0x1a988 <syna_tcm_allocate_device+0xec>
   1a96c: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a96c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x47d2
   1a970: 91000000     	add	x0, x0, #0x0
		000000000001a970:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x47d2
   1a974: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a974:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5344
   1a978: 91000021     	add	x1, x1, #0x0
		000000000001a978:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5344
   1a97c: 94000000     	bl	0x1a97c <syna_tcm_allocate_device+0xe0>
		000000000001a97c:  R_AARCH64_CALL26	_printk
   1a980: 12801e40     	mov	w0, #-0xf3              // =-243
   1a984: 17ffffdd     	b	0x1a8f8 <syna_tcm_allocate_device+0x5c>
   1a988: 2941a2c9     	ldp	w9, w8, [x22, #0xc]
   1a98c: f9000014     	str	x20, [x0]
   1a990: 90000014     	adrp	x20, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a990:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad58
   1a994: 91000294     	add	x20, x20, #0x0
		000000000001a994:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad58
   1a998: 90000015     	adrp	x21, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a998:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x962
   1a99c: 910002b5     	add	x21, x21, #0x0
		000000000001a99c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x962
   1a9a0: aa0003f3     	mov	x19, x0
   1a9a4: f9002416     	str	x22, [x0, #0x48]
   1a9a8: aa1403e1     	mov	x1, x20
   1a9ac: aa1503e2     	mov	x2, x21
   1a9b0: f901c81f     	str	xzr, [x0, #0x390]
   1a9b4: f901cc1f     	str	xzr, [x0, #0x398]
   1a9b8: f901d01f     	str	xzr, [x0, #0x3a0]
   1a9bc: f901d41f     	str	xzr, [x0, #0x3a8]
   1a9c0: 29082408     	stp	w8, w9, [x0, #0x40]
   1a9c4: 29072408     	stp	w8, w9, [x0, #0x38]
   1a9c8: 91014000     	add	x0, x0, #0x50
   1a9cc: 94000000     	bl	0x1a9cc <syna_tcm_allocate_device+0x130>
		000000000001a9cc:  R_AARCH64_CALL26	__mutex_init
   1a9d0: 91044260     	add	x0, x19, #0x110
   1a9d4: aa1403e1     	mov	x1, x20
   1a9d8: aa1503e2     	mov	x2, x21
   1a9dc: 3905027f     	strb	wzr, [x19, #0x140]
   1a9e0: a9107e7f     	stp	xzr, xzr, [x19, #0x100]
   1a9e4: 94000000     	bl	0x1a9e4 <syna_tcm_allocate_device+0x148>
		000000000001a9e4:  R_AARCH64_CALL26	__mutex_init
   1a9e8: 91056260     	add	x0, x19, #0x158
   1a9ec: aa1403e1     	mov	x1, x20
   1a9f0: aa1503e2     	mov	x2, x21
   1a9f4: 3906227f     	strb	wzr, [x19, #0x188]
   1a9f8: a914fe7f     	stp	xzr, xzr, [x19, #0x148]
   1a9fc: 94000000     	bl	0x1a9fc <syna_tcm_allocate_device+0x160>
		000000000001a9fc:  R_AARCH64_CALL26	__mutex_init
   1aa00: 91068260     	add	x0, x19, #0x1a0
   1aa04: aa1403e1     	mov	x1, x20
   1aa08: aa1503e2     	mov	x2, x21
   1aa0c: 3907427f     	strb	wzr, [x19, #0x1d0]
   1aa10: a9197e7f     	stp	xzr, xzr, [x19, #0x190]
   1aa14: 94000000     	bl	0x1aa14 <syna_tcm_allocate_device+0x178>
		000000000001aa14:  R_AARCH64_CALL26	__mutex_init
   1aa18: 91094260     	add	x0, x19, #0x250
   1aa1c: aa1403e1     	mov	x1, x20
   1aa20: aa1503e2     	mov	x2, x21
   1aa24: 390a027f     	strb	wzr, [x19, #0x280]
   1aa28: f901227f     	str	xzr, [x19, #0x240]
   1aa2c: f901267f     	str	xzr, [x19, #0x248]
   1aa30: 94000000     	bl	0x1aa30 <syna_tcm_allocate_device+0x194>
		000000000001aa30:  R_AARCH64_CALL26	__mutex_init
   1aa34: 910a6260     	add	x0, x19, #0x298
   1aa38: aa1403e1     	mov	x1, x20
   1aa3c: aa1503e2     	mov	x2, x21
   1aa40: 390b227f     	strb	wzr, [x19, #0x2c8]
   1aa44: f901467f     	str	xzr, [x19, #0x288]
   1aa48: f9014a7f     	str	xzr, [x19, #0x290]
   1aa4c: 94000000     	bl	0x1aa4c <syna_tcm_allocate_device+0x1b0>
		000000000001aa4c:  R_AARCH64_CALL26	__mutex_init
   1aa50: 910b8260     	add	x0, x19, #0x2e0
   1aa54: aa1403e1     	mov	x1, x20
   1aa58: aa1503e2     	mov	x2, x21
   1aa5c: 390c427f     	strb	wzr, [x19, #0x310]
   1aa60: f9016a7f     	str	xzr, [x19, #0x2d0]
   1aa64: f9016e7f     	str	xzr, [x19, #0x2d8]
   1aa68: 94000000     	bl	0x1aa68 <syna_tcm_allocate_device+0x1cc>
		000000000001aa68:  R_AARCH64_CALL26	__mutex_init
   1aa6c: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001aa6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2aeb
   1aa70: 91000021     	add	x1, x1, #0x0
		000000000001aa70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2aeb
   1aa74: 90000002     	adrp	x2, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001aa74:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x963
   1aa78: 91000042     	add	x2, x2, #0x0
		000000000001aa78:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x963
   1aa7c: 9108a260     	add	x0, x19, #0x228
   1aa80: b902227f     	str	wzr, [x19, #0x220]
   1aa84: 94000000     	bl	0x1aa84 <syna_tcm_allocate_device+0x1e8>
		000000000001aa84:  R_AARCH64_CALL26	__init_swait_queue_head
   1aa88: 910c6260     	add	x0, x19, #0x318
   1aa8c: aa1403e1     	mov	x1, x20
   1aa90: aa1503e2     	mov	x2, x21
   1aa94: 94000000     	bl	0x1aa94 <syna_tcm_allocate_device+0x1f8>
		000000000001aa94:  R_AARCH64_CALL26	__mutex_init
   1aa98: 910d2260     	add	x0, x19, #0x348
   1aa9c: aa1403e1     	mov	x1, x20
   1aaa0: aa1503e2     	mov	x2, x21
   1aaa4: 94000000     	bl	0x1aaa4 <syna_tcm_allocate_device+0x208>
		000000000001aaa4:  R_AARCH64_CALL26	__mutex_init
   1aaa8: b901fa7f     	str	wzr, [x19, #0x1f8]
   1aaac: 394a0262     	ldrb	w2, [x19, #0x280]
   1aab0: 7903fa7f     	strh	wzr, [x19, #0x1fc]
   1aab4: b902027f     	str	wzr, [x19, #0x200]
   1aab8: 3908127f     	strb	wzr, [x19, #0x204]
   1aabc: 340000c2     	cbz	w2, 0x1aad4 <syna_tcm_allocate_device+0x238>
   1aac0: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001aac0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   1aac4: 91000000     	add	x0, x0, #0x0
		000000000001aac4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   1aac8: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001aac8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f05
   1aacc: 91000021     	add	x1, x1, #0x0
		000000000001aacc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f05
   1aad0: 94000000     	bl	0x1aad0 <syna_tcm_allocate_device+0x234>
		000000000001aad0:  R_AARCH64_CALL26	_printk
   1aad4: 91094260     	add	x0, x19, #0x250
   1aad8: 94000000     	bl	0x1aad8 <syna_tcm_allocate_device+0x23c>
		000000000001aad8:  R_AARCH64_CALL26	mutex_lock
   1aadc: 394a0268     	ldrb	w8, [x19, #0x280]
   1aae0: b9424a75     	ldr	w21, [x19, #0x248]
   1aae4: f9412260     	ldr	x0, [x19, #0x240]
   1aae8: 11000508     	add	w8, w8, #0x1
   1aaec: 71000ebf     	cmp	w21, #0x3
   1aaf0: 390a0268     	strb	w8, [x19, #0x280]
   1aaf4: 54000c88     	b.hi	0x1ac84 <syna_tcm_allocate_device+0x3e8>
   1aaf8: b4000180     	cbz	x0, 0x1ab28 <syna_tcm_allocate_device+0x28c>
   1aafc: aa0003f4     	mov	x20, x0
   1ab00: 94000000     	bl	0x1ab00 <syna_tcm_allocate_device+0x264>
		000000000001ab00:  R_AARCH64_CALL26	syna_request_managed_device
   1ab04: b50000e0     	cbnz	x0, 0x1ab20 <syna_tcm_allocate_device+0x284>
   1ab08: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001ab08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   1ab0c: 91000000     	add	x0, x0, #0x0
		000000000001ab0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   1ab10: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001ab10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   1ab14: 91000021     	add	x1, x1, #0x0
		000000000001ab14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   1ab18: 94000000     	bl	0x1ab18 <syna_tcm_allocate_device+0x27c>
		000000000001ab18:  R_AARCH64_CALL26	_printk
   1ab1c: 14000003     	b	0x1ab28 <syna_tcm_allocate_device+0x28c>
   1ab20: aa1403e1     	mov	x1, x20
   1ab24: 94000000     	bl	0x1ab24 <syna_tcm_allocate_device+0x288>
		000000000001ab24:  R_AARCH64_CALL26	devm_kfree
   1ab28: 91090274     	add	x20, x19, #0x240
   1ab2c: 94000000     	bl	0x1ab2c <syna_tcm_allocate_device+0x290>
		000000000001ab2c:  R_AARCH64_CALL26	syna_request_managed_device
   1ab30: b5000100     	cbnz	x0, 0x1ab50 <syna_tcm_allocate_device+0x2b4>
   1ab34: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001ab34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   1ab38: 91000000     	add	x0, x0, #0x0
		000000000001ab38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   1ab3c: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001ab3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ae7
   1ab40: 91000021     	add	x1, x1, #0x0
		000000000001ab40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ae7
   1ab44: 94000000     	bl	0x1ab44 <syna_tcm_allocate_device+0x2a8>
		000000000001ab44:  R_AARCH64_CALL26	_printk
   1ab48: f900029f     	str	xzr, [x20]
   1ab4c: 14000007     	b	0x1ab68 <syna_tcm_allocate_device+0x2cc>
   1ab50: 52800081     	mov	w1, #0x4                // =4
   1ab54: 5281b802     	mov	w2, #0xdc0              // =3520
   1ab58: 52800095     	mov	w21, #0x4               // =4
   1ab5c: 94000000     	bl	0x1ab5c <syna_tcm_allocate_device+0x2c0>
		000000000001ab5c:  R_AARCH64_CALL26	devm_kmalloc
   1ab60: f9000280     	str	x0, [x20]
   1ab64: b50008e0     	cbnz	x0, 0x1ac80 <syna_tcm_allocate_device+0x3e4>
   1ab68: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001ab68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5c25
   1ab6c: 91000000     	add	x0, x0, #0x0
		000000000001ab6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5c25
   1ab70: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001ab70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7620
   1ab74: 91000021     	add	x1, x1, #0x0
		000000000001ab74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7620
   1ab78: 52800082     	mov	w2, #0x4                // =4
   1ab7c: 94000000     	bl	0x1ab7c <syna_tcm_allocate_device+0x2e0>
		000000000001ab7c:  R_AARCH64_CALL26	_printk
   1ab80: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001ab80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4802
   1ab84: 91000000     	add	x0, x0, #0x0
		000000000001ab84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4802
   1ab88: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001ab88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9b59
   1ab8c: 91000021     	add	x1, x1, #0x0
		000000000001ab8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9b59
   1ab90: 52800082     	mov	w2, #0x4                // =4
   1ab94: f901267f     	str	xzr, [x19, #0x248]
   1ab98: 94000000     	bl	0x1ab98 <syna_tcm_allocate_device+0x2fc>
		000000000001ab98:  R_AARCH64_CALL26	_printk
   1ab9c: 394a0262     	ldrb	w2, [x19, #0x280]
   1aba0: f901267f     	str	xzr, [x19, #0x248]
   1aba4: 7100045f     	cmp	w2, #0x1
   1aba8: 54000061     	b.ne	0x1abb4 <syna_tcm_allocate_device+0x318>
   1abac: 2a1f03e8     	mov	w8, wzr
   1abb0: 14000008     	b	0x1abd0 <syna_tcm_allocate_device+0x334>
   1abb4: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001abb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   1abb8: 91000000     	add	x0, x0, #0x0
		000000000001abb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   1abbc: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001abbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
   1abc0: 91000021     	add	x1, x1, #0x0
		000000000001abc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
   1abc4: 94000000     	bl	0x1abc4 <syna_tcm_allocate_device+0x328>
		000000000001abc4:  R_AARCH64_CALL26	_printk
   1abc8: 394a0268     	ldrb	w8, [x19, #0x280]
   1abcc: 51000508     	sub	w8, w8, #0x1
   1abd0: 91094260     	add	x0, x19, #0x250
   1abd4: 390a0268     	strb	w8, [x19, #0x280]
   1abd8: 94000000     	bl	0x1abd8 <syna_tcm_allocate_device+0x33c>
		000000000001abd8:  R_AARCH64_CALL26	mutex_unlock
   1abdc: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001abdc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa1ae
   1abe0: 91000000     	add	x0, x0, #0x0
		000000000001abe0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa1ae
   1abe4: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001abe4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5344
   1abe8: 91000021     	add	x1, x1, #0x0
		000000000001abe8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5344
   1abec: 94000000     	bl	0x1abec <syna_tcm_allocate_device+0x350>
		000000000001abec:  R_AARCH64_CALL26	_printk
   1abf0: 39474262     	ldrb	w2, [x19, #0x1d0]
   1abf4: 35000d62     	cbnz	w2, 0x1ada0 <syna_tcm_allocate_device+0x504>
   1abf8: f940ca74     	ldr	x20, [x19, #0x190]
   1abfc: 94000000     	bl	0x1abfc <syna_tcm_allocate_device+0x360>
		000000000001abfc:  R_AARCH64_CALL26	syna_request_managed_device
   1ac00: b4000dc0     	cbz	x0, 0x1adb8 <syna_tcm_allocate_device+0x51c>
   1ac04: b4000074     	cbz	x20, 0x1ac10 <syna_tcm_allocate_device+0x374>
   1ac08: aa1403e1     	mov	x1, x20
   1ac0c: 94000000     	bl	0x1ac0c <syna_tcm_allocate_device+0x370>
		000000000001ac0c:  R_AARCH64_CALL26	devm_kfree
   1ac10: 39450262     	ldrb	w2, [x19, #0x140]
   1ac14: f900ce7f     	str	xzr, [x19, #0x198]
   1ac18: 3907427f     	strb	wzr, [x19, #0x1d0]
   1ac1c: 35000da2     	cbnz	w2, 0x1add0 <syna_tcm_allocate_device+0x534>
   1ac20: f9408274     	ldr	x20, [x19, #0x100]
   1ac24: 94000000     	bl	0x1ac24 <syna_tcm_allocate_device+0x388>
		000000000001ac24:  R_AARCH64_CALL26	syna_request_managed_device
   1ac28: b4000e00     	cbz	x0, 0x1ade8 <syna_tcm_allocate_device+0x54c>
   1ac2c: b4000074     	cbz	x20, 0x1ac38 <syna_tcm_allocate_device+0x39c>
   1ac30: aa1403e1     	mov	x1, x20
   1ac34: 94000000     	bl	0x1ac34 <syna_tcm_allocate_device+0x398>
		000000000001ac34:  R_AARCH64_CALL26	devm_kfree
   1ac38: 39462262     	ldrb	w2, [x19, #0x188]
   1ac3c: f900867f     	str	xzr, [x19, #0x108]
   1ac40: 3905027f     	strb	wzr, [x19, #0x140]
   1ac44: 35000de2     	cbnz	w2, 0x1ae00 <syna_tcm_allocate_device+0x564>
   1ac48: f940a674     	ldr	x20, [x19, #0x148]
   1ac4c: 94000000     	bl	0x1ac4c <syna_tcm_allocate_device+0x3b0>
		000000000001ac4c:  R_AARCH64_CALL26	syna_request_managed_device
   1ac50: b4000e40     	cbz	x0, 0x1ae18 <syna_tcm_allocate_device+0x57c>
   1ac54: b4000074     	cbz	x20, 0x1ac60 <syna_tcm_allocate_device+0x3c4>
   1ac58: aa1403e1     	mov	x1, x20
   1ac5c: 94000000     	bl	0x1ac5c <syna_tcm_allocate_device+0x3c0>
		000000000001ac5c:  R_AARCH64_CALL26	devm_kfree
   1ac60: f900aa7f     	str	xzr, [x19, #0x150]
   1ac64: 3906227f     	strb	wzr, [x19, #0x188]
   1ac68: f900267f     	str	xzr, [x19, #0x48]
   1ac6c: 94000000     	bl	0x1ac6c <syna_tcm_allocate_device+0x3d0>
		000000000001ac6c:  R_AARCH64_CALL26	syna_request_managed_device
   1ac70: b4000e00     	cbz	x0, 0x1ae30 <syna_tcm_allocate_device+0x594>
   1ac74: aa1303e1     	mov	x1, x19
   1ac78: 94000000     	bl	0x1ac78 <syna_tcm_allocate_device+0x3dc>
		000000000001ac78:  R_AARCH64_CALL26	devm_kfree
   1ac7c: 17ffff41     	b	0x1a980 <syna_tcm_allocate_device+0xe4>
   1ac80: b9024a75     	str	w21, [x19, #0x248]
   1ac84: 2a1503e2     	mov	w2, w21
   1ac88: 2a1f03e1     	mov	w1, wzr
   1ac8c: 94000000     	bl	0x1ac8c <syna_tcm_allocate_device+0x3f0>
		000000000001ac8c:  R_AARCH64_CALL26	memset
   1ac90: 394a0262     	ldrb	w2, [x19, #0x280]
   1ac94: 2a1f03e8     	mov	w8, wzr
   1ac98: 52800089     	mov	w9, #0x4                // =4
   1ac9c: f9012669     	str	x9, [x19, #0x248]
   1aca0: 7100045f     	cmp	w2, #0x1
   1aca4: 54000100     	b.eq	0x1acc4 <syna_tcm_allocate_device+0x428>
   1aca8: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001aca8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   1acac: 91000000     	add	x0, x0, #0x0
		000000000001acac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   1acb0: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001acb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
   1acb4: 91000021     	add	x1, x1, #0x0
		000000000001acb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
   1acb8: 94000000     	bl	0x1acb8 <syna_tcm_allocate_device+0x41c>
		000000000001acb8:  R_AARCH64_CALL26	_printk
   1acbc: 394a0268     	ldrb	w8, [x19, #0x280]
   1acc0: 51000508     	sub	w8, w8, #0x1
   1acc4: 91094260     	add	x0, x19, #0x250
   1acc8: 390a0268     	strb	w8, [x19, #0x280]
   1accc: 94000000     	bl	0x1accc <syna_tcm_allocate_device+0x430>
		000000000001accc:  R_AARCH64_CALL26	mutex_unlock
   1acd0: 910e0a68     	add	x8, x19, #0x382
   1acd4: 390dea7f     	strb	wzr, [x19, #0x37a]
   1acd8: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001acd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa82e
   1acdc: 91000000     	add	x0, x0, #0x0
		000000000001acdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa82e
   1ace0: b900011f     	str	wzr, [x8]
   1ace4: d2817708     	mov	x8, #0xbb8              // =3000
   1ace8: f2c00288     	movk	x8, #0x14, lsl #32
   1acec: b9037e7f     	str	wzr, [x19, #0x37c]
   1acf0: 52800042     	mov	w2, #0x2                // =2
   1acf4: f9010668     	str	x8, [x19, #0x208]
   1acf8: d2800648     	mov	x8, #0x32               // =50
   1acfc: 52800183     	mov	w3, #0xc                // =12
   1ad00: f2c00c88     	movk	x8, #0x64, lsl #32
   1ad04: 390e027f     	strb	wzr, [x19, #0x380]
   1ad08: 2a1f03e4     	mov	w4, wzr
   1ad0c: f9010a68     	str	x8, [x19, #0x210]
   1ad10: 52800148     	mov	w8, #0xa                // =10
   1ad14: b9021a68     	str	w8, [x19, #0x218]
   1ad18: d2800c88     	mov	x8, #0x64               // =100
   1ad1c: f2c00c88     	movk	x8, #0x64, lsl #32
   1ad20: 3900267f     	strb	wzr, [x19, #0x9]
   1ad24: f900f668     	str	x8, [x19, #0x1e8]
   1ad28: f90002f3     	str	x19, [x23]
   1ad2c: 90000013     	adrp	x19, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001ad2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5344
   1ad30: 91000273     	add	x19, x19, #0x0
		000000000001ad30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5344
   1ad34: aa1303e1     	mov	x1, x19
   1ad38: 94000000     	bl	0x1ad38 <syna_tcm_allocate_device+0x49c>
		000000000001ad38:  R_AARCH64_CALL26	_printk
   1ad3c: 394052c8     	ldrb	w8, [x22, #0x14]
   1ad40: 90000014     	adrp	x20, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001ad40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8663
   1ad44: 91000294     	add	x20, x20, #0x0
		000000000001ad44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8663
   1ad48: 90000015     	adrp	x21, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001ad48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x458d
   1ad4c: 910002b5     	add	x21, x21, #0x0
		000000000001ad4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x458d
   1ad50: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001ad50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x57e7
   1ad54: 91000000     	add	x0, x0, #0x0
		000000000001ad54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x57e7
   1ad58: 7100011f     	cmp	w8, #0x0
   1ad5c: aa1303e1     	mov	x1, x19
   1ad60: 9a9412a2     	csel	x2, x21, x20, ne
   1ad64: 94000000     	bl	0x1ad64 <syna_tcm_allocate_device+0x4c8>
		000000000001ad64:  R_AARCH64_CALL26	_printk
   1ad68: 394056c9     	ldrb	w9, [x22, #0x15]
   1ad6c: 2a1f03e0     	mov	w0, wzr
   1ad70: 7100053f     	cmp	w9, #0x1
   1ad74: 54ffdc21     	b.ne	0x1a8f8 <syna_tcm_allocate_device+0x5c>
   1ad78: 294312c3     	ldp	w3, w4, [x22, #0x18]
   1ad7c: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001ad7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbc10
   1ad80: 91000000     	add	x0, x0, #0x0
		000000000001ad80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbc10
   1ad84: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001ad84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5344
   1ad88: 91000021     	add	x1, x1, #0x0
		000000000001ad88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5344
   1ad8c: 7100007f     	cmp	w3, #0x0
   1ad90: 9a950282     	csel	x2, x20, x21, eq
   1ad94: 94000000     	bl	0x1ad94 <syna_tcm_allocate_device+0x4f8>
		000000000001ad94:  R_AARCH64_CALL26	_printk
   1ad98: 2a1f03e0     	mov	w0, wzr
   1ad9c: 17fffed7     	b	0x1a8f8 <syna_tcm_allocate_device+0x5c>
   1ada0: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001ada0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3313
   1ada4: 91000000     	add	x0, x0, #0x0
		000000000001ada4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3313
   1ada8: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001ada8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a45
   1adac: 91000021     	add	x1, x1, #0x0
		000000000001adac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a45
   1adb0: 94000000     	bl	0x1adb0 <syna_tcm_allocate_device+0x514>
		000000000001adb0:  R_AARCH64_CALL26	_printk
   1adb4: 17ffff91     	b	0x1abf8 <syna_tcm_allocate_device+0x35c>
   1adb8: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001adb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   1adbc: 91000000     	add	x0, x0, #0x0
		000000000001adbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   1adc0: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001adc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   1adc4: 91000021     	add	x1, x1, #0x0
		000000000001adc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   1adc8: 94000000     	bl	0x1adc8 <syna_tcm_allocate_device+0x52c>
		000000000001adc8:  R_AARCH64_CALL26	_printk
   1adcc: 17ffff91     	b	0x1ac10 <syna_tcm_allocate_device+0x374>
   1add0: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001add0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3313
   1add4: 91000000     	add	x0, x0, #0x0
		000000000001add4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3313
   1add8: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001add8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a45
   1addc: 91000021     	add	x1, x1, #0x0
		000000000001addc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a45
   1ade0: 94000000     	bl	0x1ade0 <syna_tcm_allocate_device+0x544>
		000000000001ade0:  R_AARCH64_CALL26	_printk
   1ade4: 17ffff8f     	b	0x1ac20 <syna_tcm_allocate_device+0x384>
   1ade8: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001ade8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   1adec: 91000000     	add	x0, x0, #0x0
		000000000001adec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   1adf0: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001adf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   1adf4: 91000021     	add	x1, x1, #0x0
		000000000001adf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   1adf8: 94000000     	bl	0x1adf8 <syna_tcm_allocate_device+0x55c>
		000000000001adf8:  R_AARCH64_CALL26	_printk
   1adfc: 17ffff8f     	b	0x1ac38 <syna_tcm_allocate_device+0x39c>
   1ae00: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001ae00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3313
   1ae04: 91000000     	add	x0, x0, #0x0
		000000000001ae04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3313
   1ae08: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001ae08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a45
   1ae0c: 91000021     	add	x1, x1, #0x0
		000000000001ae0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a45
   1ae10: 94000000     	bl	0x1ae10 <syna_tcm_allocate_device+0x574>
		000000000001ae10:  R_AARCH64_CALL26	_printk
   1ae14: 17ffff8d     	b	0x1ac48 <syna_tcm_allocate_device+0x3ac>
   1ae18: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001ae18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   1ae1c: 91000000     	add	x0, x0, #0x0
		000000000001ae1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   1ae20: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001ae20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   1ae24: 91000021     	add	x1, x1, #0x0
		000000000001ae24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   1ae28: 94000000     	bl	0x1ae28 <syna_tcm_allocate_device+0x58c>
		000000000001ae28:  R_AARCH64_CALL26	_printk
   1ae2c: 17ffff8d     	b	0x1ac60 <syna_tcm_allocate_device+0x3c4>
   1ae30: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001ae30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   1ae34: 91000000     	add	x0, x0, #0x0
		000000000001ae34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   1ae38: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001ae38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   1ae3c: 91000021     	add	x1, x1, #0x0
		000000000001ae3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   1ae40: 17fffecf     	b	0x1a97c <syna_tcm_allocate_device+0xe0>
