
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001fcb8 <syna_tcm_allocate_device>:
   1fcb8: d503233f     	paciasp
   1fcbc: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
   1fcc0: f9000bf7     	str	x23, [sp, #0x10]
   1fcc4: a90257f6     	stp	x22, x21, [sp, #0x20]
   1fcc8: a9034ff4     	stp	x20, x19, [sp, #0x30]
   1fccc: 910003fd     	mov	x29, sp
   1fcd0: b5000081     	cbnz	x1, 0x1fce0 <syna_tcm_allocate_device+0x28>
   1fcd4: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0xba8>
		000000000001fcd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14988
   1fcd8: 91000000     	add	x0, x0, #0x0
		000000000001fcd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14988
   1fcdc: 1400000a     	b	0x1fd04 <syna_tcm_allocate_device+0x4c>
   1fce0: f9401028     	ldr	x8, [x1, #0x20]
   1fce4: b5000088     	cbnz	x8, 0x1fcf4 <syna_tcm_allocate_device+0x3c>
   1fce8: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0xba8>
		000000000001fce8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11fd4
   1fcec: 91000000     	add	x0, x0, #0x0
		000000000001fcec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11fd4
   1fcf0: 14000005     	b	0x1fd04 <syna_tcm_allocate_device+0x4c>
   1fcf4: f9401428     	ldr	x8, [x1, #0x28]
   1fcf8: b50001a8     	cbnz	x8, 0x1fd2c <syna_tcm_allocate_device+0x74>
   1fcfc: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0xba8>
		000000000001fcfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdb9e
   1fd00: 91000000     	add	x0, x0, #0x0
		000000000001fd00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdb9e
   1fd04: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0xba8>
		000000000001fd04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10144
   1fd08: 91000021     	add	x1, x1, #0x0
		000000000001fd08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10144
   1fd0c: 94000000     	bl	0x1fd0c <syna_tcm_allocate_device+0x54>
		000000000001fd0c:  R_AARCH64_CALL26	_printk
   1fd10: 12801e00     	mov	w0, #-0xf1              // =-241
   1fd14: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   1fd18: f9400bf7     	ldr	x23, [sp, #0x10]
   1fd1c: a94257f6     	ldp	x22, x21, [sp, #0x20]
   1fd20: a8c47bfd     	ldp	x29, x30, [sp], #0x40
   1fd24: d50323bf     	autiasp
   1fd28: d65f03c0     	ret
   1fd2c: 90000008     	adrp	x8, 0x1f000 <syna_tcm_v1_read_message+0xba8>
		000000000001fd2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1015e
   1fd30: 91000108     	add	x8, x8, #0x0
		000000000001fd30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1015e
   1fd34: aa0103f6     	mov	x22, x1
   1fd38: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0xba8>
		000000000001fd38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10144
   1fd3c: 91000021     	add	x1, x1, #0x0
		000000000001fd3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10144
   1fd40: aa0003f3     	mov	x19, x0
   1fd44: aa0803e0     	mov	x0, x8
   1fd48: aa0203f4     	mov	x20, x2
   1fd4c: 94000000     	bl	0x1fd4c <syna_tcm_allocate_device+0x94>
		000000000001fd4c:  R_AARCH64_CALL26	_printk
   1fd50: aa1303f7     	mov	x23, x19
   1fd54: f900027f     	str	xzr, [x19]
   1fd58: 94000000     	bl	0x1fd58 <syna_tcm_allocate_device+0xa0>
		000000000001fd58:  R_AARCH64_CALL26	syna_request_managed_device
   1fd5c: b50000e0     	cbnz	x0, 0x1fd78 <syna_tcm_allocate_device+0xc0>
   1fd60: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0xba8>
		000000000001fd60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15a80
   1fd64: 91000000     	add	x0, x0, #0x0
		000000000001fd64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15a80
   1fd68: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0xba8>
		000000000001fd68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf952
   1fd6c: 91000021     	add	x1, x1, #0x0
		000000000001fd6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf952
   1fd70: 94000000     	bl	0x1fd70 <syna_tcm_allocate_device+0xb8>
		000000000001fd70:  R_AARCH64_CALL26	_printk
   1fd74: 14000005     	b	0x1fd88 <syna_tcm_allocate_device+0xd0>
   1fd78: 52847d01     	mov	w1, #0x23e8             // =9192
   1fd7c: 5281b802     	mov	w2, #0xdc0              // =3520
   1fd80: 94000000     	bl	0x1fd80 <syna_tcm_allocate_device+0xc8>
		000000000001fd80:  R_AARCH64_CALL26	devm_kmalloc
   1fd84: b5000100     	cbnz	x0, 0x1fda4 <syna_tcm_allocate_device+0xec>
   1fd88: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0xba8>
		000000000001fd88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf5ac
   1fd8c: 91000000     	add	x0, x0, #0x0
		000000000001fd8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf5ac
   1fd90: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0xba8>
		000000000001fd90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10144
   1fd94: 91000021     	add	x1, x1, #0x0
		000000000001fd94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10144
   1fd98: 94000000     	bl	0x1fd98 <syna_tcm_allocate_device+0xe0>
		000000000001fd98:  R_AARCH64_CALL26	_printk
   1fd9c: 12801e40     	mov	w0, #-0xf3              // =-243
   1fda0: 17ffffdd     	b	0x1fd14 <syna_tcm_allocate_device+0x5c>
   1fda4: 2941a2c9     	ldp	w9, w8, [x22, #0xc]
   1fda8: f9000014     	str	x20, [x0]
   1fdac: 90000014     	adrp	x20, 0x1f000 <syna_tcm_v1_read_message+0xba8>
		000000000001fdac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15a6c
   1fdb0: 91000294     	add	x20, x20, #0x0
		000000000001fdb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15a6c
   1fdb4: 90000015     	adrp	x21, 0x1f000 <syna_tcm_v1_read_message+0xba8>
		000000000001fdb4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x962
   1fdb8: 910002b5     	add	x21, x21, #0x0
		000000000001fdb8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x962
   1fdbc: aa0003f3     	mov	x19, x0
   1fdc0: f9002416     	str	x22, [x0, #0x48]
   1fdc4: aa1403e1     	mov	x1, x20
   1fdc8: aa1503e2     	mov	x2, x21
   1fdcc: f901c81f     	str	xzr, [x0, #0x390]
   1fdd0: f901cc1f     	str	xzr, [x0, #0x398]
   1fdd4: f901d01f     	str	xzr, [x0, #0x3a0]
   1fdd8: f901d41f     	str	xzr, [x0, #0x3a8]
   1fddc: 29082408     	stp	w8, w9, [x0, #0x40]
   1fde0: 29072408     	stp	w8, w9, [x0, #0x38]
   1fde4: 91014000     	add	x0, x0, #0x50
   1fde8: 94000000     	bl	0x1fde8 <syna_tcm_allocate_device+0x130>
		000000000001fde8:  R_AARCH64_CALL26	__mutex_init
   1fdec: 91044260     	add	x0, x19, #0x110
   1fdf0: aa1403e1     	mov	x1, x20
   1fdf4: aa1503e2     	mov	x2, x21
   1fdf8: 3905027f     	strb	wzr, [x19, #0x140]
   1fdfc: a9107e7f     	stp	xzr, xzr, [x19, #0x100]
   1fe00: 94000000     	bl	0x1fe00 <syna_tcm_allocate_device+0x148>
		000000000001fe00:  R_AARCH64_CALL26	__mutex_init
   1fe04: 91056260     	add	x0, x19, #0x158
   1fe08: aa1403e1     	mov	x1, x20
   1fe0c: aa1503e2     	mov	x2, x21
   1fe10: 3906227f     	strb	wzr, [x19, #0x188]
   1fe14: a914fe7f     	stp	xzr, xzr, [x19, #0x148]
   1fe18: 94000000     	bl	0x1fe18 <syna_tcm_allocate_device+0x160>
		000000000001fe18:  R_AARCH64_CALL26	__mutex_init
   1fe1c: 91068260     	add	x0, x19, #0x1a0
   1fe20: aa1403e1     	mov	x1, x20
   1fe24: aa1503e2     	mov	x2, x21
   1fe28: 3907427f     	strb	wzr, [x19, #0x1d0]
   1fe2c: a9197e7f     	stp	xzr, xzr, [x19, #0x190]
   1fe30: 94000000     	bl	0x1fe30 <syna_tcm_allocate_device+0x178>
		000000000001fe30:  R_AARCH64_CALL26	__mutex_init
   1fe34: 91094260     	add	x0, x19, #0x250
   1fe38: aa1403e1     	mov	x1, x20
   1fe3c: aa1503e2     	mov	x2, x21
   1fe40: 390a027f     	strb	wzr, [x19, #0x280]
   1fe44: f901227f     	str	xzr, [x19, #0x240]
   1fe48: f901267f     	str	xzr, [x19, #0x248]
   1fe4c: 94000000     	bl	0x1fe4c <syna_tcm_allocate_device+0x194>
		000000000001fe4c:  R_AARCH64_CALL26	__mutex_init
   1fe50: 910a6260     	add	x0, x19, #0x298
   1fe54: aa1403e1     	mov	x1, x20
   1fe58: aa1503e2     	mov	x2, x21
   1fe5c: 390b227f     	strb	wzr, [x19, #0x2c8]
   1fe60: f901467f     	str	xzr, [x19, #0x288]
   1fe64: f9014a7f     	str	xzr, [x19, #0x290]
   1fe68: 94000000     	bl	0x1fe68 <syna_tcm_allocate_device+0x1b0>
		000000000001fe68:  R_AARCH64_CALL26	__mutex_init
   1fe6c: 910b8260     	add	x0, x19, #0x2e0
   1fe70: aa1403e1     	mov	x1, x20
   1fe74: aa1503e2     	mov	x2, x21
   1fe78: 390c427f     	strb	wzr, [x19, #0x310]
   1fe7c: f9016a7f     	str	xzr, [x19, #0x2d0]
   1fe80: f9016e7f     	str	xzr, [x19, #0x2d8]
   1fe84: 94000000     	bl	0x1fe84 <syna_tcm_allocate_device+0x1cc>
		000000000001fe84:  R_AARCH64_CALL26	__mutex_init
   1fe88: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0xba8>
		000000000001fe88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd85e
   1fe8c: 91000021     	add	x1, x1, #0x0
		000000000001fe8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd85e
   1fe90: 90000002     	adrp	x2, 0x1f000 <syna_tcm_v1_read_message+0xba8>
		000000000001fe90:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x963
   1fe94: 91000042     	add	x2, x2, #0x0
		000000000001fe94:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x963
   1fe98: 9108a260     	add	x0, x19, #0x228
   1fe9c: b902227f     	str	wzr, [x19, #0x220]
   1fea0: 94000000     	bl	0x1fea0 <syna_tcm_allocate_device+0x1e8>
		000000000001fea0:  R_AARCH64_CALL26	__init_swait_queue_head
   1fea4: 910c6260     	add	x0, x19, #0x318
   1fea8: aa1403e1     	mov	x1, x20
   1feac: aa1503e2     	mov	x2, x21
   1feb0: 94000000     	bl	0x1feb0 <syna_tcm_allocate_device+0x1f8>
		000000000001feb0:  R_AARCH64_CALL26	__mutex_init
   1feb4: 910d2260     	add	x0, x19, #0x348
   1feb8: aa1403e1     	mov	x1, x20
   1febc: aa1503e2     	mov	x2, x21
   1fec0: 94000000     	bl	0x1fec0 <syna_tcm_allocate_device+0x208>
		000000000001fec0:  R_AARCH64_CALL26	__mutex_init
   1fec4: b901fa7f     	str	wzr, [x19, #0x1f8]
   1fec8: 394a0262     	ldrb	w2, [x19, #0x280]
   1fecc: 7903fa7f     	strh	wzr, [x19, #0x1fc]
   1fed0: b902027f     	str	wzr, [x19, #0x200]
   1fed4: 3908127f     	strb	wzr, [x19, #0x204]
   1fed8: 340000c2     	cbz	w2, 0x1fef0 <syna_tcm_allocate_device+0x238>
   1fedc: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0xba8>
		000000000001fedc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   1fee0: 91000000     	add	x0, x0, #0x0
		000000000001fee0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   1fee4: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0xba8>
		000000000001fee4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d70
   1fee8: 91000021     	add	x1, x1, #0x0
		000000000001fee8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d70
   1feec: 94000000     	bl	0x1feec <syna_tcm_allocate_device+0x234>
		000000000001feec:  R_AARCH64_CALL26	_printk
   1fef0: 91094260     	add	x0, x19, #0x250
   1fef4: 94000000     	bl	0x1fef4 <syna_tcm_allocate_device+0x23c>
		000000000001fef4:  R_AARCH64_CALL26	mutex_lock
   1fef8: 394a0268     	ldrb	w8, [x19, #0x280]
   1fefc: b9424a75     	ldr	w21, [x19, #0x248]
   1ff00: f9412260     	ldr	x0, [x19, #0x240]
   1ff04: 11000508     	add	w8, w8, #0x1
   1ff08: 71000ebf     	cmp	w21, #0x3
   1ff0c: 390a0268     	strb	w8, [x19, #0x280]
   1ff10: 54000c88     	b.hi	0x200a0 <syna_tcm_allocate_device+0x3e8>
   1ff14: b4000180     	cbz	x0, 0x1ff44 <syna_tcm_allocate_device+0x28c>
   1ff18: aa0003f4     	mov	x20, x0
   1ff1c: 94000000     	bl	0x1ff1c <syna_tcm_allocate_device+0x264>
		000000000001ff1c:  R_AARCH64_CALL26	syna_request_managed_device
   1ff20: b50000e0     	cbnz	x0, 0x1ff3c <syna_tcm_allocate_device+0x284>
   1ff24: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0xba8>
		000000000001ff24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15a80
   1ff28: 91000000     	add	x0, x0, #0x0
		000000000001ff28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15a80
   1ff2c: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0xba8>
		000000000001ff2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14c56
   1ff30: 91000021     	add	x1, x1, #0x0
		000000000001ff30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14c56
   1ff34: 94000000     	bl	0x1ff34 <syna_tcm_allocate_device+0x27c>
		000000000001ff34:  R_AARCH64_CALL26	_printk
   1ff38: 14000003     	b	0x1ff44 <syna_tcm_allocate_device+0x28c>
   1ff3c: aa1403e1     	mov	x1, x20
   1ff40: 94000000     	bl	0x1ff40 <syna_tcm_allocate_device+0x288>
		000000000001ff40:  R_AARCH64_CALL26	devm_kfree
   1ff44: 91090274     	add	x20, x19, #0x240
   1ff48: 94000000     	bl	0x1ff48 <syna_tcm_allocate_device+0x290>
		000000000001ff48:  R_AARCH64_CALL26	syna_request_managed_device
   1ff4c: b5000100     	cbnz	x0, 0x1ff6c <syna_tcm_allocate_device+0x2b4>
   1ff50: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0xba8>
		000000000001ff50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15a80
   1ff54: 91000000     	add	x0, x0, #0x0
		000000000001ff54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15a80
   1ff58: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0xba8>
		000000000001ff58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf952
   1ff5c: 91000021     	add	x1, x1, #0x0
		000000000001ff5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf952
   1ff60: 94000000     	bl	0x1ff60 <syna_tcm_allocate_device+0x2a8>
		000000000001ff60:  R_AARCH64_CALL26	_printk
   1ff64: f900029f     	str	xzr, [x20]
   1ff68: 14000007     	b	0x1ff84 <syna_tcm_allocate_device+0x2cc>
   1ff6c: 52800081     	mov	w1, #0x4                // =4
   1ff70: 5281b802     	mov	w2, #0xdc0              // =3520
   1ff74: 52800095     	mov	w21, #0x4               // =4
   1ff78: 94000000     	bl	0x1ff78 <syna_tcm_allocate_device+0x2c0>
		000000000001ff78:  R_AARCH64_CALL26	devm_kmalloc
   1ff7c: f9000280     	str	x0, [x20]
   1ff80: b50008e0     	cbnz	x0, 0x2009c <syna_tcm_allocate_device+0x3e4>
   1ff84: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0xba8>
		000000000001ff84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10a46
   1ff88: 91000000     	add	x0, x0, #0x0
		000000000001ff88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10a46
   1ff8c: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0xba8>
		000000000001ff8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x124ae
   1ff90: 91000021     	add	x1, x1, #0x0
		000000000001ff90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x124ae
   1ff94: 52800082     	mov	w2, #0x4                // =4
   1ff98: 94000000     	bl	0x1ff98 <syna_tcm_allocate_device+0x2e0>
		000000000001ff98:  R_AARCH64_CALL26	_printk
   1ff9c: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0xba8>
		000000000001ff9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf5dc
   1ffa0: 91000000     	add	x0, x0, #0x0
		000000000001ffa0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf5dc
   1ffa4: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0xba8>
		000000000001ffa4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14a76
   1ffa8: 91000021     	add	x1, x1, #0x0
		000000000001ffa8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14a76
   1ffac: 52800082     	mov	w2, #0x4                // =4
   1ffb0: f901267f     	str	xzr, [x19, #0x248]
   1ffb4: 94000000     	bl	0x1ffb4 <syna_tcm_allocate_device+0x2fc>
		000000000001ffb4:  R_AARCH64_CALL26	_printk
   1ffb8: 394a0262     	ldrb	w2, [x19, #0x280]
   1ffbc: f901267f     	str	xzr, [x19, #0x248]
   1ffc0: 7100045f     	cmp	w2, #0x1
   1ffc4: 54000061     	b.ne	0x1ffd0 <syna_tcm_allocate_device+0x318>
   1ffc8: 2a1f03e8     	mov	w8, wzr
   1ffcc: 14000008     	b	0x1ffec <syna_tcm_allocate_device+0x334>
   1ffd0: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0xba8>
		000000000001ffd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   1ffd4: 91000000     	add	x0, x0, #0x0
		000000000001ffd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   1ffd8: 90000001     	adrp	x1, 0x1f000 <syna_tcm_v1_read_message+0xba8>
		000000000001ffd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16aa8
   1ffdc: 91000021     	add	x1, x1, #0x0
		000000000001ffdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16aa8
   1ffe0: 94000000     	bl	0x1ffe0 <syna_tcm_allocate_device+0x328>
		000000000001ffe0:  R_AARCH64_CALL26	_printk
   1ffe4: 394a0268     	ldrb	w8, [x19, #0x280]
   1ffe8: 51000508     	sub	w8, w8, #0x1
   1ffec: 91094260     	add	x0, x19, #0x250
   1fff0: 390a0268     	strb	w8, [x19, #0x280]
   1fff4: 94000000     	bl	0x1fff4 <syna_tcm_allocate_device+0x33c>
		000000000001fff4:  R_AARCH64_CALL26	mutex_unlock
   1fff8: 90000000     	adrp	x0, 0x1f000 <syna_tcm_v1_read_message+0xba8>
		000000000001fff8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x150de
   1fffc: 91000000     	add	x0, x0, #0x0
		000000000001fffc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x150de
   20000: 90000001     	adrp	x1, 0x20000 <syna_tcm_allocate_device+0x348>
		0000000000020000:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10144
   20004: 91000021     	add	x1, x1, #0x0
		0000000000020004:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10144
   20008: 94000000     	bl	0x20008 <syna_tcm_allocate_device+0x350>
		0000000000020008:  R_AARCH64_CALL26	_printk
   2000c: 39474262     	ldrb	w2, [x19, #0x1d0]
   20010: 35000d62     	cbnz	w2, 0x201bc <syna_tcm_allocate_device+0x504>
   20014: f940ca74     	ldr	x20, [x19, #0x190]
   20018: 94000000     	bl	0x20018 <syna_tcm_allocate_device+0x360>
		0000000000020018:  R_AARCH64_CALL26	syna_request_managed_device
   2001c: b4000dc0     	cbz	x0, 0x201d4 <syna_tcm_allocate_device+0x51c>
   20020: b4000074     	cbz	x20, 0x2002c <syna_tcm_allocate_device+0x374>
   20024: aa1403e1     	mov	x1, x20
   20028: 94000000     	bl	0x20028 <syna_tcm_allocate_device+0x370>
		0000000000020028:  R_AARCH64_CALL26	devm_kfree
   2002c: 39450262     	ldrb	w2, [x19, #0x140]
   20030: f900ce7f     	str	xzr, [x19, #0x198]
   20034: 3907427f     	strb	wzr, [x19, #0x1d0]
   20038: 35000da2     	cbnz	w2, 0x201ec <syna_tcm_allocate_device+0x534>
   2003c: f9408274     	ldr	x20, [x19, #0x100]
   20040: 94000000     	bl	0x20040 <syna_tcm_allocate_device+0x388>
		0000000000020040:  R_AARCH64_CALL26	syna_request_managed_device
   20044: b4000e00     	cbz	x0, 0x20204 <syna_tcm_allocate_device+0x54c>
   20048: b4000074     	cbz	x20, 0x20054 <syna_tcm_allocate_device+0x39c>
   2004c: aa1403e1     	mov	x1, x20
   20050: 94000000     	bl	0x20050 <syna_tcm_allocate_device+0x398>
		0000000000020050:  R_AARCH64_CALL26	devm_kfree
   20054: 39462262     	ldrb	w2, [x19, #0x188]
   20058: f900867f     	str	xzr, [x19, #0x108]
   2005c: 3905027f     	strb	wzr, [x19, #0x140]
   20060: 35000de2     	cbnz	w2, 0x2021c <syna_tcm_allocate_device+0x564>
   20064: f940a674     	ldr	x20, [x19, #0x148]
   20068: 94000000     	bl	0x20068 <syna_tcm_allocate_device+0x3b0>
		0000000000020068:  R_AARCH64_CALL26	syna_request_managed_device
   2006c: b4000e40     	cbz	x0, 0x20234 <syna_tcm_allocate_device+0x57c>
   20070: b4000074     	cbz	x20, 0x2007c <syna_tcm_allocate_device+0x3c4>
   20074: aa1403e1     	mov	x1, x20
   20078: 94000000     	bl	0x20078 <syna_tcm_allocate_device+0x3c0>
		0000000000020078:  R_AARCH64_CALL26	devm_kfree
   2007c: f900aa7f     	str	xzr, [x19, #0x150]
   20080: 3906227f     	strb	wzr, [x19, #0x188]
   20084: f900267f     	str	xzr, [x19, #0x48]
   20088: 94000000     	bl	0x20088 <syna_tcm_allocate_device+0x3d0>
		0000000000020088:  R_AARCH64_CALL26	syna_request_managed_device
   2008c: b4000e00     	cbz	x0, 0x2024c <syna_tcm_allocate_device+0x594>
   20090: aa1303e1     	mov	x1, x19
   20094: 94000000     	bl	0x20094 <syna_tcm_allocate_device+0x3dc>
		0000000000020094:  R_AARCH64_CALL26	devm_kfree
   20098: 17ffff41     	b	0x1fd9c <syna_tcm_allocate_device+0xe4>
   2009c: b9024a75     	str	w21, [x19, #0x248]
   200a0: 2a1503e2     	mov	w2, w21
   200a4: 2a1f03e1     	mov	w1, wzr
   200a8: 94000000     	bl	0x200a8 <syna_tcm_allocate_device+0x3f0>
		00000000000200a8:  R_AARCH64_CALL26	memset
   200ac: 394a0262     	ldrb	w2, [x19, #0x280]
   200b0: 2a1f03e8     	mov	w8, wzr
   200b4: 52800089     	mov	w9, #0x4                // =4
   200b8: f9012669     	str	x9, [x19, #0x248]
   200bc: 7100045f     	cmp	w2, #0x1
   200c0: 54000100     	b.eq	0x200e0 <syna_tcm_allocate_device+0x428>
   200c4: 90000000     	adrp	x0, 0x20000 <syna_tcm_allocate_device+0x348>
		00000000000200c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   200c8: 91000000     	add	x0, x0, #0x0
		00000000000200c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   200cc: 90000001     	adrp	x1, 0x20000 <syna_tcm_allocate_device+0x348>
		00000000000200cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16aa8
   200d0: 91000021     	add	x1, x1, #0x0
		00000000000200d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16aa8
   200d4: 94000000     	bl	0x200d4 <syna_tcm_allocate_device+0x41c>
		00000000000200d4:  R_AARCH64_CALL26	_printk
   200d8: 394a0268     	ldrb	w8, [x19, #0x280]
   200dc: 51000508     	sub	w8, w8, #0x1
   200e0: 91094260     	add	x0, x19, #0x250
   200e4: 390a0268     	strb	w8, [x19, #0x280]
   200e8: 94000000     	bl	0x200e8 <syna_tcm_allocate_device+0x430>
		00000000000200e8:  R_AARCH64_CALL26	mutex_unlock
   200ec: 910e0a68     	add	x8, x19, #0x382
   200f0: 390dea7f     	strb	wzr, [x19, #0x37a]
   200f4: 90000000     	adrp	x0, 0x20000 <syna_tcm_allocate_device+0x348>
		00000000000200f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15770
   200f8: 91000000     	add	x0, x0, #0x0
		00000000000200f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15770
   200fc: b900011f     	str	wzr, [x8]
   20100: d2817708     	mov	x8, #0xbb8              // =3000
   20104: f2c00288     	movk	x8, #0x14, lsl #32
   20108: b9037e7f     	str	wzr, [x19, #0x37c]
   2010c: 52800042     	mov	w2, #0x2                // =2
   20110: f9010668     	str	x8, [x19, #0x208]
   20114: d2800648     	mov	x8, #0x32               // =50
   20118: 52800183     	mov	w3, #0xc                // =12
   2011c: f2c00c88     	movk	x8, #0x64, lsl #32
   20120: 390e027f     	strb	wzr, [x19, #0x380]
   20124: 2a1f03e4     	mov	w4, wzr
   20128: f9010a68     	str	x8, [x19, #0x210]
   2012c: 52800148     	mov	w8, #0xa                // =10
   20130: b9021a68     	str	w8, [x19, #0x218]
   20134: d2800c88     	mov	x8, #0x64               // =100
   20138: f2c00c88     	movk	x8, #0x64, lsl #32
   2013c: 3900267f     	strb	wzr, [x19, #0x9]
   20140: f900f668     	str	x8, [x19, #0x1e8]
   20144: f90002f3     	str	x19, [x23]
   20148: 90000013     	adrp	x19, 0x20000 <syna_tcm_allocate_device+0x348>
		0000000000020148:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10144
   2014c: 91000273     	add	x19, x19, #0x0
		000000000002014c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10144
   20150: aa1303e1     	mov	x1, x19
   20154: 94000000     	bl	0x20154 <syna_tcm_allocate_device+0x49c>
		0000000000020154:  R_AARCH64_CALL26	_printk
   20158: 394052c8     	ldrb	w8, [x22, #0x14]
   2015c: 90000014     	adrp	x20, 0x20000 <syna_tcm_allocate_device+0x348>
		000000000002015c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13532
   20160: 91000294     	add	x20, x20, #0x0
		0000000000020160:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13532
   20164: 90000015     	adrp	x21, 0x20000 <syna_tcm_allocate_device+0x348>
		0000000000020164:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf35e
   20168: 910002b5     	add	x21, x21, #0x0
		0000000000020168:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf35e
   2016c: 90000000     	adrp	x0, 0x20000 <syna_tcm_allocate_device+0x348>
		000000000002016c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x105f4
   20170: 91000000     	add	x0, x0, #0x0
		0000000000020170:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x105f4
   20174: 7100011f     	cmp	w8, #0x0
   20178: aa1303e1     	mov	x1, x19
   2017c: 9a9412a2     	csel	x2, x21, x20, ne
   20180: 94000000     	bl	0x20180 <syna_tcm_allocate_device+0x4c8>
		0000000000020180:  R_AARCH64_CALL26	_printk
   20184: 394056c9     	ldrb	w9, [x22, #0x15]
   20188: 2a1f03e0     	mov	w0, wzr
   2018c: 7100053f     	cmp	w9, #0x1
   20190: 54ffdc21     	b.ne	0x1fd14 <syna_tcm_allocate_device+0x5c>
   20194: 294312c3     	ldp	w3, w4, [x22, #0x18]
   20198: 90000000     	adrp	x0, 0x20000 <syna_tcm_allocate_device+0x348>
		0000000000020198:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16b96
   2019c: 91000000     	add	x0, x0, #0x0
		000000000002019c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16b96
   201a0: 90000001     	adrp	x1, 0x20000 <syna_tcm_allocate_device+0x348>
		00000000000201a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10144
   201a4: 91000021     	add	x1, x1, #0x0
		00000000000201a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10144
   201a8: 7100007f     	cmp	w3, #0x0
   201ac: 9a950282     	csel	x2, x20, x21, eq
   201b0: 94000000     	bl	0x201b0 <syna_tcm_allocate_device+0x4f8>
		00000000000201b0:  R_AARCH64_CALL26	_printk
   201b4: 2a1f03e0     	mov	w0, wzr
   201b8: 17fffed7     	b	0x1fd14 <syna_tcm_allocate_device+0x5c>
   201bc: 90000000     	adrp	x0, 0x20000 <syna_tcm_allocate_device+0x348>
		00000000000201bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdda2
   201c0: 91000000     	add	x0, x0, #0x0
		00000000000201c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdda2
   201c4: 90000001     	adrp	x1, 0x20000 <syna_tcm_allocate_device+0x348>
		00000000000201c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x115e0
   201c8: 91000021     	add	x1, x1, #0x0
		00000000000201c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x115e0
   201cc: 94000000     	bl	0x201cc <syna_tcm_allocate_device+0x514>
		00000000000201cc:  R_AARCH64_CALL26	_printk
   201d0: 17ffff91     	b	0x20014 <syna_tcm_allocate_device+0x35c>
   201d4: 90000000     	adrp	x0, 0x20000 <syna_tcm_allocate_device+0x348>
		00000000000201d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15a80
   201d8: 91000000     	add	x0, x0, #0x0
		00000000000201d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15a80
   201dc: 90000001     	adrp	x1, 0x20000 <syna_tcm_allocate_device+0x348>
		00000000000201dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14c56
   201e0: 91000021     	add	x1, x1, #0x0
		00000000000201e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14c56
   201e4: 94000000     	bl	0x201e4 <syna_tcm_allocate_device+0x52c>
		00000000000201e4:  R_AARCH64_CALL26	_printk
   201e8: 17ffff91     	b	0x2002c <syna_tcm_allocate_device+0x374>
   201ec: 90000000     	adrp	x0, 0x20000 <syna_tcm_allocate_device+0x348>
		00000000000201ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdda2
   201f0: 91000000     	add	x0, x0, #0x0
		00000000000201f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdda2
   201f4: 90000001     	adrp	x1, 0x20000 <syna_tcm_allocate_device+0x348>
		00000000000201f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x115e0
   201f8: 91000021     	add	x1, x1, #0x0
		00000000000201f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x115e0
   201fc: 94000000     	bl	0x201fc <syna_tcm_allocate_device+0x544>
		00000000000201fc:  R_AARCH64_CALL26	_printk
   20200: 17ffff8f     	b	0x2003c <syna_tcm_allocate_device+0x384>
   20204: 90000000     	adrp	x0, 0x20000 <syna_tcm_allocate_device+0x348>
		0000000000020204:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15a80
   20208: 91000000     	add	x0, x0, #0x0
		0000000000020208:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15a80
   2020c: 90000001     	adrp	x1, 0x20000 <syna_tcm_allocate_device+0x348>
		000000000002020c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14c56
   20210: 91000021     	add	x1, x1, #0x0
		0000000000020210:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14c56
   20214: 94000000     	bl	0x20214 <syna_tcm_allocate_device+0x55c>
		0000000000020214:  R_AARCH64_CALL26	_printk
   20218: 17ffff8f     	b	0x20054 <syna_tcm_allocate_device+0x39c>
   2021c: 90000000     	adrp	x0, 0x20000 <syna_tcm_allocate_device+0x348>
		000000000002021c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdda2
   20220: 91000000     	add	x0, x0, #0x0
		0000000000020220:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdda2
   20224: 90000001     	adrp	x1, 0x20000 <syna_tcm_allocate_device+0x348>
		0000000000020224:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x115e0
   20228: 91000021     	add	x1, x1, #0x0
		0000000000020228:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x115e0
   2022c: 94000000     	bl	0x2022c <syna_tcm_allocate_device+0x574>
		000000000002022c:  R_AARCH64_CALL26	_printk
   20230: 17ffff8d     	b	0x20064 <syna_tcm_allocate_device+0x3ac>
   20234: 90000000     	adrp	x0, 0x20000 <syna_tcm_allocate_device+0x348>
		0000000000020234:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15a80
   20238: 91000000     	add	x0, x0, #0x0
		0000000000020238:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15a80
   2023c: 90000001     	adrp	x1, 0x20000 <syna_tcm_allocate_device+0x348>
		000000000002023c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14c56
   20240: 91000021     	add	x1, x1, #0x0
		0000000000020240:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14c56
   20244: 94000000     	bl	0x20244 <syna_tcm_allocate_device+0x58c>
		0000000000020244:  R_AARCH64_CALL26	_printk
   20248: 17ffff8d     	b	0x2007c <syna_tcm_allocate_device+0x3c4>
   2024c: 90000000     	adrp	x0, 0x20000 <syna_tcm_allocate_device+0x348>
		000000000002024c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15a80
   20250: 91000000     	add	x0, x0, #0x0
		0000000000020250:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15a80
   20254: 90000001     	adrp	x1, 0x20000 <syna_tcm_allocate_device+0x348>
		0000000000020254:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14c56
   20258: 91000021     	add	x1, x1, #0x0
		0000000000020258:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14c56
   2025c: 17fffecf     	b	0x1fd98 <syna_tcm_allocate_device+0xe0>
