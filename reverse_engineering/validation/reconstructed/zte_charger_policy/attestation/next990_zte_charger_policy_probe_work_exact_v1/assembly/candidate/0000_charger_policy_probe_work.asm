
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001914 <charger_policy_probe_work>:
    1914: d503233f     	paciasp
    1918: d101c3ff     	sub	sp, sp, #0x70
    191c: a9047bfd     	stp	x29, x30, [sp, #0x40]
    1920: a90557f6     	stp	x22, x21, [sp, #0x50]
    1924: a9064ff4     	stp	x20, x19, [sp, #0x60]
    1928: 910103fd     	add	x29, sp, #0x40
    192c: d5384108     	mrs	x8, SP_EL0
    1930: aa0003f3     	mov	x19, x0
    1934: 90000000     	adrp	x0, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001934:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2133
    1938: 91000000     	add	x0, x0, #0x0
		0000000000001938:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2133
    193c: f9438908     	ldr	x8, [x8, #0x710]
    1940: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001940:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ba3
    1944: 91000021     	add	x1, x1, #0x0
		0000000000001944:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ba3
    1948: f81f83a8     	stur	x8, [x29, #-0x8]
    194c: a902ffff     	stp	xzr, xzr, [sp, #0x28]
    1950: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    1954: a900ffff     	stp	xzr, xzr, [sp, #0x8]
    1958: f90003ff     	str	xzr, [sp]
    195c: 94000000     	bl	0x195c <charger_policy_probe_work+0x48>
		000000000000195c:  R_AARCH64_CALL26	_printk
    1960: 294daa69     	ldp	w9, w10, [x19, #0x6c]
    1964: b9407e68     	ldr	w8, [x19, #0x7c]
    1968: d103c260     	sub	x0, x19, #0xf0
    196c: 90000002     	adrp	x2, 0x1000 <charger_policy_demo_sts_set+0x18>
		000000000000196c:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x3f94
    1970: 91000042     	add	x2, x2, #0x0
		0000000000001970:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x3f94
    1974: 52800021     	mov	w1, #0x1                // =1
    1978: b900c27f     	str	wzr, [x19, #0xc0]
    197c: 7100013f     	cmp	w9, #0x0
    1980: 5291a009     	mov	w9, #0x8d00             // =36096
    1984: f80d427f     	stur	xzr, [x19, #0xd4]
    1988: 72a004e9     	movk	w9, #0x27, lsl #16
    198c: 3904067f     	strb	wzr, [x19, #0x101]
    1990: 291ba668     	stp	w8, w9, [x19, #0xdc]
    1994: 1a9f07e8     	cset	w8, ne
    1998: 528ea609     	mov	w9, #0x7530             // =30000
    199c: 39040a68     	strb	w8, [x19, #0x102]
    19a0: b9407668     	ldr	w8, [x19, #0x74]
    19a4: a90efe69     	stp	x9, xzr, [x19, #0xe8]
    19a8: 7100011f     	cmp	w8, #0x0
    19ac: 39040e7f     	strb	wzr, [x19, #0x103]
    19b0: 1a9f07e8     	cset	w8, ne
    19b4: 7100015f     	cmp	w10, #0x0
    19b8: 39041268     	strb	w8, [x19, #0x104]
    19bc: 1a9f07e8     	cset	w8, ne
    19c0: 39040268     	strb	w8, [x19, #0x100]
    19c4: 94000000     	bl	0x19c4 <charger_policy_probe_work+0xb0>
		00000000000019c4:  R_AARCH64_CALL26	alarm_init
    19c8: 52800141     	mov	w1, #0xa                // =10
    19cc: 90000000     	adrp	x0, 0x1000 <charger_policy_demo_sts_set+0x18>
		00000000000019cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12b9
    19d0: 91000000     	add	x0, x0, #0x0
		00000000000019d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12b9
    19d4: 90000003     	adrp	x3, 0x1000 <charger_policy_demo_sts_set+0x18>
		00000000000019d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1167
    19d8: 91000063     	add	x3, x3, #0x0
		00000000000019d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1167
    19dc: 72a000c1     	movk	w1, #0x6, lsl #16
    19e0: 52800022     	mov	w2, #0x1                // =1
    19e4: 94000000     	bl	0x19e4 <charger_policy_probe_work+0xd0>
		00000000000019e4:  R_AARCH64_CALL26	alloc_workqueue
    19e8: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
    19ec: aa1303f5     	mov	x21, x19
    19f0: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		00000000000019f0:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
    19f4: 91000021     	add	x1, x1, #0x0
		00000000000019f4:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
    19f8: f8190ea8     	str	x8, [x21, #-0x70]!
    19fc: 910022a8     	add	x8, x21, #0x8
    1a00: f81f82a0     	stur	x0, [x21, #-0x8]
    1a04: 910082a0     	add	x0, x21, #0x20
    1a08: f90006a8     	str	x8, [x21, #0x8]
    1a0c: 52a00402     	mov	w2, #0x200000           // =2097152
    1a10: aa1f03e3     	mov	x3, xzr
    1a14: f9000aa8     	str	x8, [x21, #0x10]
    1a18: 90000008     	adrp	x8, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001a18:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x3ff0
    1a1c: 91000108     	add	x8, x8, #0x0
		0000000000001a1c:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x3ff0
    1a20: aa1f03e4     	mov	x4, xzr
    1a24: d102a2b4     	sub	x20, x21, #0xa8
    1a28: f9000ea8     	str	x8, [x21, #0x18]
    1a2c: 94000000     	bl	0x1a2c <charger_policy_probe_work+0x118>
		0000000000001a2c:  R_AARCH64_CALL26	init_timer_key
    1a30: b50000f4     	cbnz	x20, 0x1a4c <charger_policy_probe_work+0x138>
    1a34: 90000000     	adrp	x0, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001a34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x162c
    1a38: 91000000     	add	x0, x0, #0x0
		0000000000001a38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x162c
    1a3c: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001a3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ba3
    1a40: 91000021     	add	x1, x1, #0x0
		0000000000001a40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ba3
    1a44: 94000000     	bl	0x1a44 <charger_policy_probe_work+0x130>
		0000000000001a44:  R_AARCH64_CALL26	_printk
    1a48: 14000063     	b	0x1bd4 <charger_policy_probe_work+0x2c0>
    1a4c: d1042276     	sub	x22, x19, #0x108
    1a50: 90000008     	adrp	x8, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001a50:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x4340
    1a54: 91000108     	add	x8, x8, #0x0
		0000000000001a54:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x4340
    1a58: aa1603e0     	mov	x0, x22
    1a5c: f90002c8     	str	x8, [x22]
    1a60: 94000000     	bl	0x1a60 <charger_policy_probe_work+0x14c>
		0000000000001a60:  R_AARCH64_CALL26	power_supply_reg_notifier
    1a64: 36f801a0     	tbz	w0, #0x1f, 0x1a98 <charger_policy_probe_work+0x184>
    1a68: 2a0003e2     	mov	w2, w0
    1a6c: 90000000     	adrp	x0, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001a6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b70
    1a70: 91000000     	add	x0, x0, #0x0
		0000000000001a70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b70
    1a74: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001a74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x224a
    1a78: 91000021     	add	x1, x1, #0x0
		0000000000001a78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x224a
    1a7c: 94000000     	bl	0x1a7c <charger_policy_probe_work+0x168>
		0000000000001a7c:  R_AARCH64_CALL26	_printk
    1a80: 90000000     	adrp	x0, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001a80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x162c
    1a84: 91000000     	add	x0, x0, #0x0
		0000000000001a84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x162c
    1a88: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001a88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ba3
    1a8c: 91000021     	add	x1, x1, #0x0
		0000000000001a8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ba3
    1a90: 94000000     	bl	0x1a90 <charger_policy_probe_work+0x17c>
		0000000000001a90:  R_AARCH64_CALL26	_printk
    1a94: 1400003e     	b	0x1b8c <charger_policy_probe_work+0x278>
    1a98: f9400280     	ldr	x0, [x20]
    1a9c: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001a9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x60
    1aa0: 91000021     	add	x1, x1, #0x0
		0000000000001aa0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x60
    1aa4: 910003e2     	mov	x2, sp
    1aa8: a902ffff     	stp	xzr, xzr, [sp, #0x28]
    1aac: a9017ff4     	stp	x20, xzr, [sp, #0x10]
    1ab0: a9007fff     	stp	xzr, xzr, [sp]
    1ab4: f90013ff     	str	xzr, [sp, #0x20]
    1ab8: 94000000     	bl	0x1ab8 <charger_policy_probe_work+0x1a4>
		0000000000001ab8:  R_AARCH64_CALL26	devm_power_supply_register
    1abc: d1044268     	sub	x8, x19, #0x110
    1ac0: b13ffc1f     	cmn	x0, #0xfff
    1ac4: f9000100     	str	x0, [x8]
    1ac8: 54000103     	b.lo	0x1ae8 <charger_policy_probe_work+0x1d4>
    1acc: aa0003e2     	mov	x2, x0
    1ad0: 90000000     	adrp	x0, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001ad0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x100
    1ad4: 91000000     	add	x0, x0, #0x0
		0000000000001ad4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x100
    1ad8: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001ad8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ba3
    1adc: 91000021     	add	x1, x1, #0x0
		0000000000001adc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ba3
    1ae0: 94000000     	bl	0x1ae0 <charger_policy_probe_work+0x1cc>
		0000000000001ae0:  R_AARCH64_CALL26	_printk
    1ae4: 14000028     	b	0x1b84 <charger_policy_probe_work+0x270>
    1ae8: 90000000     	adrp	x0, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001ae8:  R_AARCH64_ADR_PREL_PG_HI21	.data
    1aec: 91000000     	add	x0, x0, #0x0
		0000000000001aec:  R_AARCH64_ADD_ABS_LO12_NC	.data
    1af0: aa1403e1     	mov	x1, x20
    1af4: 94000000     	bl	0x1af4 <charger_policy_probe_work+0x1e0>
		0000000000001af4:  R_AARCH64_CALL26	zte_misc_register_callback
    1af8: 90000000     	adrp	x0, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001af8:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x28
    1afc: 91000000     	add	x0, x0, #0x0
		0000000000001afc:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x28
    1b00: aa1403e1     	mov	x1, x20
    1b04: 94000000     	bl	0x1b04 <charger_policy_probe_work+0x1f0>
		0000000000001b04:  R_AARCH64_CALL26	zte_misc_register_callback
    1b08: 90000000     	adrp	x0, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001b08:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x50
    1b0c: 91000000     	add	x0, x0, #0x0
		0000000000001b0c:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x50
    1b10: aa1403e1     	mov	x1, x20
    1b14: 94000000     	bl	0x1b14 <charger_policy_probe_work+0x200>
		0000000000001b14:  R_AARCH64_CALL26	zte_misc_register_callback
    1b18: 90000000     	adrp	x0, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001b18:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x78
    1b1c: 91000000     	add	x0, x0, #0x0
		0000000000001b1c:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x78
    1b20: aa1403e1     	mov	x1, x20
    1b24: 94000000     	bl	0x1b24 <charger_policy_probe_work+0x210>
		0000000000001b24:  R_AARCH64_CALL26	zte_misc_register_callback
    1b28: 90000000     	adrp	x0, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001b28:  R_AARCH64_ADR_PREL_PG_HI21	.data+0xa0
    1b2c: 91000000     	add	x0, x0, #0x0
		0000000000001b2c:  R_AARCH64_ADD_ABS_LO12_NC	.data+0xa0
    1b30: aa1403e1     	mov	x1, x20
    1b34: 94000000     	bl	0x1b34 <charger_policy_probe_work+0x220>
		0000000000001b34:  R_AARCH64_CALL26	zte_misc_register_callback
    1b38: 90000000     	adrp	x0, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001b38:  R_AARCH64_ADR_PREL_PG_HI21	.data+0xc8
    1b3c: 91000000     	add	x0, x0, #0x0
		0000000000001b3c:  R_AARCH64_ADD_ABS_LO12_NC	.data+0xc8
    1b40: aa1403e1     	mov	x1, x20
    1b44: 94000000     	bl	0x1b44 <charger_policy_probe_work+0x230>
		0000000000001b44:  R_AARCH64_CALL26	zte_misc_register_callback
    1b48: 90000000     	adrp	x0, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001b48:  R_AARCH64_ADR_PREL_PG_HI21	.data+0xf0
    1b4c: 91000000     	add	x0, x0, #0x0
		0000000000001b4c:  R_AARCH64_ADD_ABS_LO12_NC	.data+0xf0
    1b50: aa1403e1     	mov	x1, x20
    1b54: 94000000     	bl	0x1b54 <charger_policy_probe_work+0x240>
		0000000000001b54:  R_AARCH64_CALL26	zte_misc_register_callback
    1b58: f9400280     	ldr	x0, [x20]
    1b5c: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001b5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x25bb
    1b60: 91000021     	add	x1, x1, #0x0
		0000000000001b60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x25bb
    1b64: 94000000     	bl	0x1b64 <charger_policy_probe_work+0x250>
		0000000000001b64:  R_AARCH64_CALL26	wakeup_source_register
    1b68: f9006660     	str	x0, [x19, #0xc8]
    1b6c: b50005a0     	cbnz	x0, 0x1c20 <charger_policy_probe_work+0x30c>
    1b70: 90000000     	adrp	x0, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001b70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x27cf
    1b74: 91000000     	add	x0, x0, #0x0
		0000000000001b74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x27cf
    1b78: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001b78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ba3
    1b7c: 91000021     	add	x1, x1, #0x0
		0000000000001b7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ba3
    1b80: 94000000     	bl	0x1b80 <charger_policy_probe_work+0x26c>
		0000000000001b80:  R_AARCH64_CALL26	_printk
    1b84: aa1603e0     	mov	x0, x22
    1b88: 94000000     	bl	0x1b88 <charger_policy_probe_work+0x274>
		0000000000001b88:  R_AARCH64_CALL26	power_supply_unreg_notifier
    1b8c: 90000008     	adrp	x8, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001b8c:  R_AARCH64_ADR_PREL_PG_HI21	.bss
    1b90: b9400109     	ldr	w9, [x8]
		0000000000001b90:  R_AARCH64_LDST32_ABS_LO12_NC	.bss
    1b94: 11000522     	add	w2, w9, #0x1
    1b98: b9000102     	str	w2, [x8]
		0000000000001b98:  R_AARCH64_LDST32_ABS_LO12_NC	.bss
    1b9c: b9407a68     	ldr	w8, [x19, #0x78]
    1ba0: 6b08005f     	cmp	w2, w8
    1ba4: 54000182     	b.hs	0x1bd4 <charger_policy_probe_work+0x2c0>
    1ba8: 90000000     	adrp	x0, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001ba8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x770
    1bac: 91000000     	add	x0, x0, #0x0
		0000000000001bac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x770
    1bb0: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001bb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ba8
    1bb4: 91000021     	add	x1, x1, #0x0
		0000000000001bb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ba8
    1bb8: 94000000     	bl	0x1bb8 <charger_policy_probe_work+0x2a4>
		0000000000001bb8:  R_AARCH64_CALL26	_printk
    1bbc: f85f8261     	ldur	x1, [x19, #-0x8]
    1bc0: 52800400     	mov	w0, #0x20               // =32
    1bc4: aa1303e2     	mov	x2, x19
    1bc8: 52809c43     	mov	w3, #0x4e2              // =1250
    1bcc: 94000000     	bl	0x1bcc <charger_policy_probe_work+0x2b8>
		0000000000001bcc:  R_AARCH64_CALL26	queue_delayed_work_on
    1bd0: 14000009     	b	0x1bf4 <charger_policy_probe_work+0x2e0>
    1bd4: f9400280     	ldr	x0, [x20]
    1bd8: aa1403e1     	mov	x1, x20
    1bdc: 94000000     	bl	0x1bdc <charger_policy_probe_work+0x2c8>
		0000000000001bdc:  R_AARCH64_CALL26	devm_kfree
    1be0: 90000000     	adrp	x0, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001be0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2cfa
    1be4: 91000000     	add	x0, x0, #0x0
		0000000000001be4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2cfa
    1be8: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001be8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ba3
    1bec: 91000021     	add	x1, x1, #0x0
		0000000000001bec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ba3
    1bf0: 94000000     	bl	0x1bf0 <charger_policy_probe_work+0x2dc>
		0000000000001bf0:  R_AARCH64_CALL26	_printk
    1bf4: d5384108     	mrs	x8, SP_EL0
    1bf8: f9438908     	ldr	x8, [x8, #0x710]
    1bfc: f85f83a9     	ldur	x9, [x29, #-0x8]
    1c00: eb09011f     	cmp	x8, x9
    1c04: 540001e1     	b.ne	0x1c40 <charger_policy_probe_work+0x32c>
    1c08: a9464ff4     	ldp	x20, x19, [sp, #0x60]
    1c0c: a94557f6     	ldp	x22, x21, [sp, #0x50]
    1c10: a9447bfd     	ldp	x29, x30, [sp, #0x40]
    1c14: 9101c3ff     	add	sp, sp, #0x70
    1c18: d50323bf     	autiasp
    1c1c: d65f03c0     	ret
    1c20: f8588261     	ldur	x1, [x19, #-0x78]
    1c24: 52800400     	mov	w0, #0x20               // =32
    1c28: aa1503e2     	mov	x2, x21
    1c2c: 52800323     	mov	w3, #0x19               // =25
    1c30: 94000000     	bl	0x1c30 <charger_policy_probe_work+0x31c>
		0000000000001c30:  R_AARCH64_CALL26	queue_delayed_work_on
    1c34: 90000000     	adrp	x0, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001c34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17ac
    1c38: 91000000     	add	x0, x0, #0x0
		0000000000001c38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17ac
    1c3c: 17ffffeb     	b	0x1be8 <charger_policy_probe_work+0x2d4>
    1c40: 94000000     	bl	0x1c40 <charger_policy_probe_work+0x32c>
		0000000000001c40:  R_AARCH64_CALL26	__stack_chk_fail
