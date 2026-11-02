
/input/aw86320.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000018d4 <enableMicroPump>:
    18d4: d503233f     	paciasp
    18d8: d100c3ff     	sub	sp, sp, #0x30
    18dc: a9017bfd     	stp	x29, x30, [sp, #0x10]
    18e0: a9024ff4     	stp	x20, x19, [sp, #0x20]
    18e4: 910043fd     	add	x29, sp, #0x10
    18e8: d5384108     	mrs	x8, SP_EL0
    18ec: 2a0103f4     	mov	w20, w1
    18f0: aa0003f3     	mov	x19, x0
    18f4: f9438908     	ldr	x8, [x8, #0x710]
    18f8: 90000000     	adrp	x0, 0x1000 <irq_handle+0x1c>
		00000000000018f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1fd
    18fc: 91000000     	add	x0, x0, #0x0
		00000000000018fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1fd
    1900: 90000001     	adrp	x1, 0x1000 <irq_handle+0x1c>
		0000000000001900:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    1904: 91000021     	add	x1, x1, #0x0
		0000000000001904:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    1908: 90000003     	adrp	x3, 0x1000 <irq_handle+0x1c>
		0000000000001908:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x640
    190c: 91000063     	add	x3, x3, #0x0
		000000000000190c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x640
    1910: 52805382     	mov	w2, #0x29c              // =668
    1914: 2a1403e4     	mov	w4, w20
    1918: f90007e8     	str	x8, [sp, #0x8]
    191c: 94000000     	bl	0x191c <enableMicroPump+0x48>
		000000000000191c:  R_AARCH64_CALL26	_printk
    1920: 35000574     	cbnz	w20, 0x19cc <enableMicroPump+0xf8>
    1924: 90000000     	adrp	x0, 0x1000 <irq_handle+0x1c>
		0000000000001924:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x101
    1928: 91000000     	add	x0, x0, #0x0
		0000000000001928:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x101
    192c: 90000001     	adrp	x1, 0x1000 <irq_handle+0x1c>
		000000000000192c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    1930: 91000021     	add	x1, x1, #0x0
		0000000000001930:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    1934: 90000003     	adrp	x3, 0x1000 <irq_handle+0x1c>
		0000000000001934:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf20
    1938: 91000063     	add	x3, x3, #0x0
		0000000000001938:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf20
    193c: 52802462     	mov	w2, #0x123              // =291
    1940: b900127f     	str	wzr, [x19, #0x10]
    1944: 94000000     	bl	0x1944 <enableMicroPump+0x70>
		0000000000001944:  R_AARCH64_CALL26	_printk
    1948: aa1303e0     	mov	x0, x19
    194c: 52800361     	mov	w1, #0x1b               // =27
    1950: 5281c1c2     	mov	w2, #0xe0e              // =3598
    1954: 97fffaba     	bl	0x43c <haptic_i2c_write>
    1958: aa1303e0     	mov	x0, x19
    195c: 528004a1     	mov	w1, #0x25               // =37
    1960: 2a1f03e2     	mov	w2, wzr
    1964: 97fffab6     	bl	0x43c <haptic_i2c_write>
    1968: 52938100     	mov	w0, #0x9c08             // =39944
    196c: 72a01880     	movk	w0, #0xc4, lsl #16
    1970: 94000000     	bl	0x1970 <enableMicroPump+0x9c>
		0000000000001970:  R_AARCH64_CALL26	__const_udelay
    1974: b9401a60     	ldr	w0, [x19, #0x18]
    1978: 37f80180     	tbnz	w0, #0x1f, 0x19a8 <enableMicroPump+0xd4>
    197c: 94000000     	bl	0x197c <enableMicroPump+0xa8>
		000000000000197c:  R_AARCH64_CALL26	gpio_to_desc
    1980: 2a1f03e1     	mov	w1, wzr
    1984: 94000000     	bl	0x1984 <enableMicroPump+0xb0>
		0000000000001984:  R_AARCH64_CALL26	gpiod_direction_output_raw
    1988: 90000000     	adrp	x0, 0x1000 <irq_handle+0x1c>
		0000000000001988:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa1f
    198c: 91000000     	add	x0, x0, #0x0
		000000000000198c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa1f
    1990: 90000001     	adrp	x1, 0x1000 <irq_handle+0x1c>
		0000000000001990:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    1994: 91000021     	add	x1, x1, #0x0
		0000000000001994:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    1998: 90000003     	adrp	x3, 0x1000 <irq_handle+0x1c>
		0000000000001998:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x640
    199c: 91000063     	add	x3, x3, #0x0
		000000000000199c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x640
    19a0: 52805782     	mov	w2, #0x2bc              // =700
    19a4: 94000000     	bl	0x19a4 <enableMicroPump+0xd0>
		00000000000019a4:  R_AARCH64_CALL26	_printk
    19a8: 90000000     	adrp	x0, 0x1000 <irq_handle+0x1c>
		00000000000019a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x79e
    19ac: 91000000     	add	x0, x0, #0x0
		00000000000019ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x79e
    19b0: 90000001     	adrp	x1, 0x1000 <irq_handle+0x1c>
		00000000000019b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    19b4: 91000021     	add	x1, x1, #0x0
		00000000000019b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    19b8: 90000003     	adrp	x3, 0x1000 <irq_handle+0x1c>
		00000000000019b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x640
    19bc: 91000063     	add	x3, x3, #0x0
		00000000000019bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x640
    19c0: 528057c2     	mov	w2, #0x2be              // =702
    19c4: 94000000     	bl	0x19c4 <enableMicroPump+0xf0>
		00000000000019c4:  R_AARCH64_CALL26	_printk
    19c8: 1400005d     	b	0x1b3c <enableMicroPump+0x268>
    19cc: b9401a68     	ldr	w8, [x19, #0x18]
    19d0: 37f801a8     	tbnz	w8, #0x1f, 0x1a04 <enableMicroPump+0x130>
    19d4: 90000000     	adrp	x0, 0x1000 <irq_handle+0x1c>
		00000000000019d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfe4
    19d8: 91000000     	add	x0, x0, #0x0
		00000000000019d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfe4
    19dc: 90000001     	adrp	x1, 0x1000 <irq_handle+0x1c>
		00000000000019dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    19e0: 91000021     	add	x1, x1, #0x0
		00000000000019e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    19e4: 90000003     	adrp	x3, 0x1000 <irq_handle+0x1c>
		00000000000019e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x640
    19e8: 91000063     	add	x3, x3, #0x0
		00000000000019e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x640
    19ec: 52805562     	mov	w2, #0x2ab              // =683
    19f0: 94000000     	bl	0x19f0 <enableMicroPump+0x11c>
		00000000000019f0:  R_AARCH64_CALL26	_printk
    19f4: b9401a60     	ldr	w0, [x19, #0x18]
    19f8: 94000000     	bl	0x19f8 <enableMicroPump+0x124>
		00000000000019f8:  R_AARCH64_CALL26	gpio_to_desc
    19fc: 52800021     	mov	w1, #0x1                // =1
    1a00: 94000000     	bl	0x1a00 <enableMicroPump+0x12c>
		0000000000001a00:  R_AARCH64_CALL26	gpiod_direction_output_raw
    1a04: aa1303e0     	mov	x0, x19
    1a08: 97fffe79     	bl	0x13ec <aw86320_misc_para_init>
    1a0c: 910013e2     	add	x2, sp, #0x4
    1a10: aa1303e0     	mov	x0, x19
    1a14: 52800021     	mov	w1, #0x1                // =1
    1a18: 79000bff     	strh	wzr, [sp, #0x4]
    1a1c: 97fffaf6     	bl	0x5f4 <haptic_i2c_read>
    1a20: 36f80140     	tbz	w0, #0x1f, 0x1a48 <enableMicroPump+0x174>
    1a24: 2a0003e4     	mov	w4, w0
    1a28: 90000000     	adrp	x0, 0x1000 <irq_handle+0x1c>
		0000000000001a28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc38
    1a2c: 91000000     	add	x0, x0, #0x0
		0000000000001a2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc38
    1a30: 90000001     	adrp	x1, 0x1000 <irq_handle+0x1c>
		0000000000001a30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    1a34: 91000021     	add	x1, x1, #0x0
		0000000000001a34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    1a38: 90000003     	adrp	x3, 0x1000 <irq_handle+0x1c>
		0000000000001a38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4cd
    1a3c: 91000063     	add	x3, x3, #0x0
		0000000000001a3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4cd
    1a40: 528015e2     	mov	w2, #0xaf               // =175
    1a44: 14000010     	b	0x1a84 <enableMicroPump+0x1b0>
    1a48: 79400be8     	ldrh	w8, [sp, #0x4]
    1a4c: aa1303e0     	mov	x0, x19
    1a50: 52800021     	mov	w1, #0x1                // =1
    1a54: 121a7508     	and	w8, w8, #0xffffffcf
    1a58: 321c0102     	orr	w2, w8, #0x10
    1a5c: 97fffa78     	bl	0x43c <haptic_i2c_write>
    1a60: 36f80140     	tbz	w0, #0x1f, 0x1a88 <enableMicroPump+0x1b4>
    1a64: 2a0003e4     	mov	w4, w0
    1a68: 90000000     	adrp	x0, 0x1000 <irq_handle+0x1c>
		0000000000001a68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xea8
    1a6c: 91000000     	add	x0, x0, #0x0
		0000000000001a6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xea8
    1a70: 90000001     	adrp	x1, 0x1000 <irq_handle+0x1c>
		0000000000001a70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    1a74: 91000021     	add	x1, x1, #0x0
		0000000000001a74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    1a78: 90000003     	adrp	x3, 0x1000 <irq_handle+0x1c>
		0000000000001a78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4cd
    1a7c: 91000063     	add	x3, x3, #0x0
		0000000000001a7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4cd
    1a80: 52801702     	mov	w2, #0xb8               // =184
    1a84: 94000000     	bl	0x1a84 <enableMicroPump+0x1b0>
		0000000000001a84:  R_AARCH64_CALL26	_printk
    1a88: 90000000     	adrp	x0, 0x1000 <irq_handle+0x1c>
		0000000000001a88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x101
    1a8c: 91000000     	add	x0, x0, #0x0
		0000000000001a8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x101
    1a90: 90000001     	adrp	x1, 0x1000 <irq_handle+0x1c>
		0000000000001a90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    1a94: 91000021     	add	x1, x1, #0x0
		0000000000001a94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    1a98: 90000003     	adrp	x3, 0x1000 <irq_handle+0x1c>
		0000000000001a98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf20
    1a9c: 91000063     	add	x3, x3, #0x0
		0000000000001a9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf20
    1aa0: 52802462     	mov	w2, #0x123              // =291
    1aa4: 94000000     	bl	0x1aa4 <enableMicroPump+0x1d0>
		0000000000001aa4:  R_AARCH64_CALL26	_printk
    1aa8: aa1303e0     	mov	x0, x19
    1aac: 52800361     	mov	w1, #0x1b               // =27
    1ab0: 5281c1c2     	mov	w2, #0xe0e              // =3598
    1ab4: 97fffa62     	bl	0x43c <haptic_i2c_write>
    1ab8: aa1303e0     	mov	x0, x19
    1abc: 528004a1     	mov	w1, #0x25               // =37
    1ac0: 2a1f03e2     	mov	w2, wzr
    1ac4: 97fffa5e     	bl	0x43c <haptic_i2c_write>
    1ac8: 52938100     	mov	w0, #0x9c08             // =39944
    1acc: 72a01880     	movk	w0, #0xc4, lsl #16
    1ad0: 94000000     	bl	0x1ad0 <enableMicroPump+0x1fc>
		0000000000001ad0:  R_AARCH64_CALL26	__const_udelay
    1ad4: aa1303e0     	mov	x0, x19
    1ad8: 97fffe75     	bl	0x14ac <aw86320_interrupt_setup>
    1adc: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
    1ae0: 9109a269     	add	x9, x19, #0x268
    1ae4: 90000001     	adrp	x1, 0x1000 <irq_handle+0x1c>
		0000000000001ae4:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
    1ae8: 91000021     	add	x1, x1, #0x0
		0000000000001ae8:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
    1aec: f9013268     	str	x8, [x19, #0x260]
    1af0: 90000008     	adrp	x8, 0x1000 <irq_handle+0x1c>
		0000000000001af0:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x33cc
    1af4: 91000108     	add	x8, x8, #0x0
		0000000000001af4:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x33cc
    1af8: 910a0260     	add	x0, x19, #0x280
    1afc: 52a00402     	mov	w2, #0x200000           // =2097152
    1b00: aa1f03e3     	mov	x3, xzr
    1b04: aa1f03e4     	mov	x4, xzr
    1b08: f9013669     	str	x9, [x19, #0x268]
    1b0c: f9013a69     	str	x9, [x19, #0x270]
    1b10: f9013e68     	str	x8, [x19, #0x278]
    1b14: 94000000     	bl	0x1b14 <enableMicroPump+0x240>
		0000000000001b14:  R_AARCH64_CALL26	init_timer_key
    1b18: 90000008     	adrp	x8, 0x1000 <irq_handle+0x1c>
		0000000000001b18:  R_AARCH64_ADR_PREL_PG_HI21	system_wq
    1b1c: 91098262     	add	x2, x19, #0x260
    1b20: 52800400     	mov	w0, #0x20               // =32
    1b24: f9400101     	ldr	x1, [x8]
		0000000000001b24:  R_AARCH64_LDST64_ABS_LO12_NC	system_wq
    1b28: 5280fa03     	mov	w3, #0x7d0              // =2000
    1b2c: 94000000     	bl	0x1b2c <enableMicroPump+0x258>
		0000000000001b2c:  R_AARCH64_CALL26	queue_delayed_work_on
    1b30: 29410261     	ldp	w1, w0, [x19, #0x8]
    1b34: 79402a62     	ldrh	w2, [x19, #0x14]
    1b38: 94000000     	bl	0x1b38 <enableMicroPump+0x264>
		0000000000001b38:  R_AARCH64_CALL26	aw86320_play_atsin0
    1b3c: d5384108     	mrs	x8, SP_EL0
    1b40: f9438908     	ldr	x8, [x8, #0x710]
    1b44: f94007e9     	ldr	x9, [sp, #0x8]
    1b48: eb09011f     	cmp	x8, x9
    1b4c: 540000c1     	b.ne	0x1b64 <enableMicroPump+0x290>
    1b50: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1b54: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1b58: 9100c3ff     	add	sp, sp, #0x30
    1b5c: d50323bf     	autiasp
    1b60: d65f03c0     	ret
    1b64: 94000000     	bl	0x1b64 <enableMicroPump+0x290>
		0000000000001b64:  R_AARCH64_CALL26	__stack_chk_fail
