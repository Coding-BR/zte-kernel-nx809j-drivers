
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000028d8 <aw22xxx_task_work>:
    28d8: d503233f     	paciasp
    28dc: d10143ff     	sub	sp, sp, #0x50
    28e0: a9027bfd     	stp	x29, x30, [sp, #0x20]
    28e4: f9001bf5     	str	x21, [sp, #0x30]
    28e8: a9044ff4     	stp	x20, x19, [sp, #0x40]
    28ec: 910083fd     	add	x29, sp, #0x20
    28f0: d5384108     	mrs	x8, SP_EL0
    28f4: aa0003f4     	mov	x20, x0
    28f8: d107c013     	sub	x19, x0, #0x1f0
    28fc: f9438908     	ldr	x8, [x8, #0x710]
    2900: 90000000     	adrp	x0, 0x2000 <aw22xxx_irq+0x20>
		0000000000002900:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x8dd
    2904: 91000000     	add	x0, x0, #0x0
		0000000000002904:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x8dd
    2908: 90000001     	adrp	x1, 0x2000 <aw22xxx_irq+0x20>
		0000000000002908:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1344
    290c: 91000021     	add	x1, x1, #0x0
		000000000000290c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1344
    2910: f81f83a8     	stur	x8, [x29, #-0x8]
    2914: 94000000     	bl	0x2914 <aw22xxx_task_work+0x3c>
		0000000000002914:  R_AARCH64_CALL26	_printk
    2918: aa1303e0     	mov	x0, x19
    291c: 528000a1     	mov	w1, #0x5                // =5
    2920: 52801fe2     	mov	w2, #0xff               // =255
    2924: 97fff9ce     	bl	0x105c <aw22xxx_i2c_write>
		0000000000002924:  R_AARCH64_CALL26	aw22xxx_i2c_write
    2928: 910013e2     	add	x2, sp, #0x4
    292c: aa1303e0     	mov	x0, x19
    2930: 52800081     	mov	w1, #0x4                // =4
    2934: 390013ff     	strb	wzr, [sp, #0x4]
    2938: 97fffa15     	bl	0x118c <aw22xxx_i2c_read>
		0000000000002938:  R_AARCH64_CALL26	aw22xxx_i2c_read
    293c: 394013e8     	ldrb	w8, [sp, #0x4]
    2940: aa1303e0     	mov	x0, x19
    2944: 52800081     	mov	w1, #0x4                // =4
    2948: 121e7902     	and	w2, w8, #0xfffffffd
    294c: 390013e2     	strb	w2, [sp, #0x4]
    2950: 97fff9c3     	bl	0x105c <aw22xxx_i2c_write>
		0000000000002950:  R_AARCH64_CALL26	aw22xxx_i2c_write
    2954: 90000000     	adrp	x0, 0x2000 <aw22xxx_irq+0x20>
		0000000000002954:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x148c
    2958: 91000000     	add	x0, x0, #0x0
		0000000000002958:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x148c
    295c: 90000001     	adrp	x1, 0x2000 <aw22xxx_irq+0x20>
		000000000000295c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x181c
    2960: 91000021     	add	x1, x1, #0x0
		0000000000002960:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x181c
    2964: 52803542     	mov	w2, #0x1aa              // =426
    2968: 2a1f03e3     	mov	w3, wzr
    296c: 94000000     	bl	0x296c <aw22xxx_task_work+0x94>
		000000000000296c:  R_AARCH64_CALL26	_printk
    2970: 910023e2     	add	x2, sp, #0x8
    2974: aa1303e0     	mov	x0, x19
    2978: 52800041     	mov	w1, #0x2                // =2
    297c: 390023ff     	strb	wzr, [sp, #0x8]
    2980: 97fffa03     	bl	0x118c <aw22xxx_i2c_read>
		0000000000002980:  R_AARCH64_CALL26	aw22xxx_i2c_read
    2984: 394023e8     	ldrb	w8, [sp, #0x8]
    2988: aa1303e0     	mov	x0, x19
    298c: 52800041     	mov	w1, #0x2                // =2
    2990: 121f7902     	and	w2, w8, #0xfffffffe
    2994: 390023e2     	strb	w2, [sp, #0x8]
    2998: 97fff9b1     	bl	0x105c <aw22xxx_i2c_write>
		0000000000002998:  R_AARCH64_CALL26	aw22xxx_i2c_write
    299c: 5280fa00     	mov	w0, #0x7d0              // =2000
    29a0: 52817701     	mov	w1, #0xbb8              // =3000
    29a4: 52800042     	mov	w2, #0x2                // =2
    29a8: 94000000     	bl	0x29a8 <aw22xxx_task_work+0xd0>
		00000000000029a8:  R_AARCH64_CALL26	usleep_range_state
    29ac: 39443288     	ldrb	w8, [x20, #0x10c]
    29b0: 35000188     	cbnz	w8, 0x29e0 <aw22xxx_task_work+0x108>
    29b4: d5384108     	mrs	x8, SP_EL0
    29b8: f9438908     	ldr	x8, [x8, #0x710]
    29bc: f85f83a9     	ldur	x9, [x29, #-0x8]
    29c0: eb09011f     	cmp	x8, x9
    29c4: 54000b81     	b.ne	0x2b34 <aw22xxx_task_work+0x25c>
    29c8: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    29cc: f9401bf5     	ldr	x21, [sp, #0x30]
    29d0: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    29d4: 910143ff     	add	sp, sp, #0x50
    29d8: d50323bf     	autiasp
    29dc: d65f03c0     	ret
    29e0: 90000000     	adrp	x0, 0x2000 <aw22xxx_irq+0x20>
		00000000000029e0:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x148c
    29e4: 91000000     	add	x0, x0, #0x0
		00000000000029e4:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x148c
    29e8: 90000001     	adrp	x1, 0x2000 <aw22xxx_irq+0x20>
		00000000000029e8:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x181c
    29ec: 91000021     	add	x1, x1, #0x0
		00000000000029ec:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x181c
    29f0: 52803542     	mov	w2, #0x1aa              // =426
    29f4: 52800023     	mov	w3, #0x1                // =1
    29f8: 94000000     	bl	0x29f8 <aw22xxx_task_work+0x120>
		00000000000029f8:  R_AARCH64_CALL26	_printk
    29fc: 910033e2     	add	x2, sp, #0xc
    2a00: aa1303e0     	mov	x0, x19
    2a04: 52800041     	mov	w1, #0x2                // =2
    2a08: 390033ff     	strb	wzr, [sp, #0xc]
    2a0c: 97fff9e0     	bl	0x118c <aw22xxx_i2c_read>
		0000000000002a0c:  R_AARCH64_CALL26	aw22xxx_i2c_read
    2a10: 394033e8     	ldrb	w8, [sp, #0xc]
    2a14: aa1303e0     	mov	x0, x19
    2a18: 52800041     	mov	w1, #0x2                // =2
    2a1c: 32000102     	orr	w2, w8, #0x1
    2a20: 390033e2     	strb	w2, [sp, #0xc]
    2a24: 97fff98e     	bl	0x105c <aw22xxx_i2c_write>
		0000000000002a24:  R_AARCH64_CALL26	aw22xxx_i2c_write
    2a28: 5280fa00     	mov	w0, #0x7d0              // =2000
    2a2c: 52817701     	mov	w1, #0xbb8              // =3000
    2a30: 52800042     	mov	w2, #0x2                // =2
    2a34: 94000000     	bl	0x2a34 <aw22xxx_task_work+0x15c>
		0000000000002a34:  R_AARCH64_CALL26	usleep_range_state
    2a38: 910043e2     	add	x2, sp, #0x10
    2a3c: aa1303e0     	mov	x0, x19
    2a40: 52800081     	mov	w1, #0x4                // =4
    2a44: 390043ff     	strb	wzr, [sp, #0x10]
    2a48: 97fff9d1     	bl	0x118c <aw22xxx_i2c_read>
		0000000000002a48:  R_AARCH64_CALL26	aw22xxx_i2c_read
    2a4c: 394043e8     	ldrb	w8, [sp, #0x10]
    2a50: aa1303e0     	mov	x0, x19
    2a54: 52800081     	mov	w1, #0x4                // =4
    2a58: 32000102     	orr	w2, w8, #0x1
    2a5c: 390043e2     	strb	w2, [sp, #0x10]
    2a60: 97fff97f     	bl	0x105c <aw22xxx_i2c_write>
		0000000000002a60:  R_AARCH64_CALL26	aw22xxx_i2c_write
    2a64: 39440288     	ldrb	w8, [x20, #0x100]
    2a68: 528001e9     	mov	w9, #0xf                // =15
    2a6c: aa1303e0     	mov	x0, x19
    2a70: 52801fe1     	mov	w1, #0xff               // =255
    2a74: 2a1f03e2     	mov	w2, wzr
    2a78: 71003d1f     	cmp	w8, #0xf
    2a7c: 1a893115     	csel	w21, w8, w9, lo
    2a80: 97fff977     	bl	0x105c <aw22xxx_i2c_write>
		0000000000002a80:  R_AARCH64_CALL26	aw22xxx_i2c_write
    2a84: aa1303e0     	mov	x0, x19
    2a88: 52800161     	mov	w1, #0xb                // =11
    2a8c: 2a1503e2     	mov	w2, w21
    2a90: 97fff973     	bl	0x105c <aw22xxx_i2c_write>
		0000000000002a90:  R_AARCH64_CALL26	aw22xxx_i2c_write
    2a94: aa1303e0     	mov	x0, x19
    2a98: 52800421     	mov	w1, #0x21               // =33
    2a9c: 52801c22     	mov	w2, #0xe1               // =225
    2aa0: 97fff96f     	bl	0x105c <aw22xxx_i2c_write>
		0000000000002aa0:  R_AARCH64_CALL26	aw22xxx_i2c_write
    2aa4: aa1303e0     	mov	x0, x19
    2aa8: 52800441     	mov	w1, #0x22               // =34
    2aac: 2a1f03e2     	mov	w2, wzr
    2ab0: 97fff96b     	bl	0x105c <aw22xxx_i2c_write>
		0000000000002ab0:  R_AARCH64_CALL26	aw22xxx_i2c_write
    2ab4: aa1303e0     	mov	x0, x19
    2ab8: 52800401     	mov	w1, #0x20               // =32
    2abc: 52800042     	mov	w2, #0x2                // =2
    2ac0: 97fff967     	bl	0x105c <aw22xxx_i2c_write>
		0000000000002ac0:  R_AARCH64_CALL26	aw22xxx_i2c_write
    2ac4: aa1303e0     	mov	x0, x19
    2ac8: 52800461     	mov	w1, #0x23               // =35
    2acc: 528007a2     	mov	w2, #0x3d               // =61
    2ad0: 97fff963     	bl	0x105c <aw22xxx_i2c_write>
		0000000000002ad0:  R_AARCH64_CALL26	aw22xxx_i2c_write
    2ad4: aa1303e0     	mov	x0, x19
    2ad8: 52800401     	mov	w1, #0x20               // =32
    2adc: 2a1f03e2     	mov	w2, wzr
    2ae0: 97fff95f     	bl	0x105c <aw22xxx_i2c_write>
		0000000000002ae0:  R_AARCH64_CALL26	aw22xxx_i2c_write
    2ae4: 39443282     	ldrb	w2, [x20, #0x10c]
    2ae8: aa1303e0     	mov	x0, x19
    2aec: 528000a1     	mov	w1, #0x5                // =5
    2af0: 97fff95b     	bl	0x105c <aw22xxx_i2c_write>
		0000000000002af0:  R_AARCH64_CALL26	aw22xxx_i2c_write
    2af4: 39443682     	ldrb	w2, [x20, #0x10d]
    2af8: aa1303e0     	mov	x0, x19
    2afc: 528000c1     	mov	w1, #0x6                // =6
    2b00: 97fff957     	bl	0x105c <aw22xxx_i2c_write>
		0000000000002b00:  R_AARCH64_CALL26	aw22xxx_i2c_write
    2b04: d10033a2     	sub	x2, x29, #0xc
    2b08: aa1303e0     	mov	x0, x19
    2b0c: 52800081     	mov	w1, #0x4                // =4
    2b10: 381f43bf     	sturb	wzr, [x29, #-0xc]
    2b14: 97fff99e     	bl	0x118c <aw22xxx_i2c_read>
		0000000000002b14:  R_AARCH64_CALL26	aw22xxx_i2c_read
    2b18: 385f43a8     	ldurb	w8, [x29, #-0xc]
    2b1c: aa1303e0     	mov	x0, x19
    2b20: 52800081     	mov	w1, #0x4                // =4
    2b24: 321f0102     	orr	w2, w8, #0x2
    2b28: 381f43a2     	sturb	w2, [x29, #-0xc]
    2b2c: 97fff94c     	bl	0x105c <aw22xxx_i2c_write>
		0000000000002b2c:  R_AARCH64_CALL26	aw22xxx_i2c_write
    2b30: 17ffffa1     	b	0x29b4 <aw22xxx_task_work+0xdc>
    2b34: 94000000     	bl	0x2b34 <aw22xxx_task_work+0x25c>
		0000000000002b34:  R_AARCH64_CALL26	__stack_chk_fail
