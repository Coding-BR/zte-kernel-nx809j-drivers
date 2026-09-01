
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004874 <aw22xxx_cfg_recover_update_wait>:
    4874: d503233f     	paciasp
    4878: d10183ff     	sub	sp, sp, #0x60
    487c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    4880: a90267fa     	stp	x26, x25, [sp, #0x20]
    4884: a9035ff8     	stp	x24, x23, [sp, #0x30]
    4888: a90457f6     	stp	x22, x21, [sp, #0x40]
    488c: a9054ff4     	stp	x20, x19, [sp, #0x50]
    4890: 910043fd     	add	x29, sp, #0x10
    4894: d5384108     	mrs	x8, SP_EL0
    4898: aa0003f3     	mov	x19, x0
    489c: 90000000     	adrp	x0, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		000000000000489c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1518
    48a0: 91000000     	add	x0, x0, #0x0
		00000000000048a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1518
    48a4: f9438908     	ldr	x8, [x8, #0x710]
    48a8: 90000001     	adrp	x1, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		00000000000048a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd1c
    48ac: 91000021     	add	x1, x1, #0x0
		00000000000048ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd1c
    48b0: f90007e8     	str	x8, [sp, #0x8]
    48b4: f90003ff     	str	xzr, [sp]
    48b8: 94000000     	bl	0x48b8 <aw22xxx_cfg_recover_update_wait+0x44>
		00000000000048b8:  R_AARCH64_CALL26	_printk
    48bc: 394bbe61     	ldrb	w1, [x19, #0x2ef]
    48c0: 90000000     	adrp	x0, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		00000000000048c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x658
    48c4: 91000000     	add	x0, x0, #0x0
		00000000000048c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x658
    48c8: 94000000     	bl	0x48c8 <aw22xxx_cfg_recover_update_wait+0x54>
		00000000000048c8:  R_AARCH64_CALL26	_printk
    48cc: b9430262     	ldr	w2, [x19, #0x300]
    48d0: 121f7848     	and	w8, w2, #0xfffffffe
    48d4: 7100111f     	cmp	w8, #0x4
    48d8: 54000081     	b.ne	0x48e8 <aw22xxx_cfg_recover_update_wait+0x74>
    48dc: 90000008     	adrp	x8, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		00000000000048dc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1873c
    48e0: b9000102     	str	w2, [x8]
		00000000000048e0:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x1873c
    48e4: 14000003     	b	0x48f0 <aw22xxx_cfg_recover_update_wait+0x7c>
    48e8: 90000008     	adrp	x8, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		00000000000048e8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1873c
    48ec: b9400102     	ldr	w2, [x8]
		00000000000048ec:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x1873c
    48f0: 90000000     	adrp	x0, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		00000000000048f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17b2
    48f4: 91000000     	add	x0, x0, #0x0
		00000000000048f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17b2
    48f8: 90000001     	adrp	x1, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		00000000000048f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd1c
    48fc: 91000021     	add	x1, x1, #0x0
		00000000000048fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd1c
    4900: 94000000     	bl	0x4900 <aw22xxx_cfg_recover_update_wait+0x8c>
		0000000000004900:  R_AARCH64_CALL26	_printk
    4904: b9430262     	ldr	w2, [x19, #0x300]
    4908: 121f7848     	and	w8, w2, #0xfffffffe
    490c: 7100091f     	cmp	w8, #0x2
    4910: 54000081     	b.ne	0x4920 <aw22xxx_cfg_recover_update_wait+0xac>
    4914: 90000008     	adrp	x8, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		0000000000004914:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18740
    4918: b9000102     	str	w2, [x8]
		0000000000004918:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x18740
    491c: 14000003     	b	0x4928 <aw22xxx_cfg_recover_update_wait+0xb4>
    4920: 90000008     	adrp	x8, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		0000000000004920:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18740
    4924: b9400102     	ldr	w2, [x8]
		0000000000004924:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x18740
    4928: 90000000     	adrp	x0, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		0000000000004928:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6fa
    492c: 91000000     	add	x0, x0, #0x0
		000000000000492c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6fa
    4930: 90000001     	adrp	x1, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		0000000000004930:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd1c
    4934: 91000021     	add	x1, x1, #0x0
		0000000000004934:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd1c
    4938: 94000000     	bl	0x4938 <aw22xxx_cfg_recover_update_wait+0xc4>
		0000000000004938:  R_AARCH64_CALL26	_printk
    493c: 90000009     	adrp	x9, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		000000000000493c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x114
    4940: b9430268     	ldr	w8, [x19, #0x300]
    4944: b9400129     	ldr	w9, [x9]
		0000000000004944:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x114
    4948: 6b09011f     	cmp	w8, w9
    494c: 54000242     	b.hs	0x4994 <aw22xxx_cfg_recover_update_wait+0x120>
    4950: 90000009     	adrp	x9, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		0000000000004950:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x30
    4954: f9400129     	ldr	x9, [x9]
		0000000000004954:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x30
    4958: b40001e9     	cbz	x9, 0x4994 <aw22xxx_cfg_recover_update_wait+0x120>
    495c: f8687934     	ldr	x20, [x9, x8, lsl #3]
    4960: 90000000     	adrp	x0, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		0000000000004960:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf55
    4964: 91000000     	add	x0, x0, #0x0
		0000000000004964:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf55
    4968: 90000001     	adrp	x1, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		0000000000004968:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd1c
    496c: 91000021     	add	x1, x1, #0x0
		000000000000496c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd1c
    4970: aa1403e2     	mov	x2, x20
    4974: 94000000     	bl	0x4974 <aw22xxx_cfg_recover_update_wait+0x100>
		0000000000004974:  R_AARCH64_CALL26	_printk
    4978: aa1403e0     	mov	x0, x20
    497c: 94000000     	bl	0x497c <aw22xxx_cfg_recover_update_wait+0x108>
		000000000000497c:  R_AARCH64_CALL26	strlen
    4980: f100101f     	cmp	x0, #0x4
    4984: 540002c8     	b.hi	0x49dc <aw22xxx_cfg_recover_update_wait+0x168>
    4988: 90000000     	adrp	x0, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		0000000000004988:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe47
    498c: 91000000     	add	x0, x0, #0x0
		000000000000498c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe47
    4990: 14000003     	b	0x499c <aw22xxx_cfg_recover_update_wait+0x128>
    4994: 90000000     	adrp	x0, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		0000000000004994:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x74b
    4998: 91000000     	add	x0, x0, #0x0
		0000000000004998:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x74b
    499c: 90000001     	adrp	x1, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		000000000000499c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd1c
    49a0: 91000021     	add	x1, x1, #0x0
		00000000000049a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd1c
    49a4: 94000000     	bl	0x49a4 <aw22xxx_cfg_recover_update_wait+0x130>
		00000000000049a4:  R_AARCH64_CALL26	_printk
    49a8: d5384108     	mrs	x8, SP_EL0
    49ac: f9438908     	ldr	x8, [x8, #0x710]
    49b0: f94007e9     	ldr	x9, [sp, #0x8]
    49b4: eb09011f     	cmp	x8, x9
    49b8: 54001221     	b.ne	0x4bfc <aw22xxx_cfg_recover_update_wait+0x388>
    49bc: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    49c0: a94457f6     	ldp	x22, x21, [sp, #0x40]
    49c4: a9435ff8     	ldp	x24, x23, [sp, #0x30]
    49c8: a94267fa     	ldp	x26, x25, [sp, #0x20]
    49cc: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    49d0: 910183ff     	add	sp, sp, #0x60
    49d4: d50323bf     	autiasp
    49d8: d65f03c0     	ret
    49dc: 394bbe68     	ldrb	w8, [x19, #0x2ef]
    49e0: 7100091f     	cmp	w8, #0x2
    49e4: 54000381     	b.ne	0x4a54 <aw22xxx_cfg_recover_update_wait+0x1e0>
    49e8: b9430269     	ldr	w9, [x19, #0x300]
    49ec: 90000008     	adrp	x8, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		00000000000049ec:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x3d
    49f0: 7100093f     	cmp	w9, #0x2
    49f4: 39400109     	ldrb	w9, [x8]
		00000000000049f4:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x3d
    49f8: 1a9f07ea     	cset	w10, ne
    49fc: 390d226a     	strb	w10, [x19, #0x348]
    4a00: 370000a9     	tbnz	w9, #0x0, 0x4a14 <aw22xxx_cfg_recover_update_wait+0x1a0>
    4a04: 52800029     	mov	w9, #0x1                // =1
    4a08: aa1303e0     	mov	x0, x19
    4a0c: 39000109     	strb	w9, [x8]
		0000000000004a0c:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x3d
    4a10: 97fff5d7     	bl	0x216c <aw22xxx_init_cfg_update_array>
    4a14: f9400662     	ldr	x2, [x19, #0x8]
    4a18: 910003e0     	mov	x0, sp
    4a1c: aa1403e1     	mov	x1, x20
    4a20: 94000000     	bl	0x4a20 <aw22xxx_cfg_recover_update_wait+0x1ac>
		0000000000004a20:  R_AARCH64_CALL26	request_firmware
    4a24: 350001e0     	cbnz	w0, 0x4a60 <aw22xxx_cfg_recover_update_wait+0x1ec>
    4a28: 90000000     	adrp	x0, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		0000000000004a28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b8d
    4a2c: 91000000     	add	x0, x0, #0x0
		0000000000004a2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b8d
    4a30: 94000000     	bl	0x4a30 <aw22xxx_cfg_recover_update_wait+0x1bc>
		0000000000004a30:  R_AARCH64_CALL26	_printk
    4a34: f94003e8     	ldr	x8, [sp]
    4a38: b5000228     	cbnz	x8, 0x4a7c <aw22xxx_cfg_recover_update_wait+0x208>
    4a3c: 90000000     	adrp	x0, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		0000000000004a3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x898
    4a40: 91000000     	add	x0, x0, #0x0
		0000000000004a40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x898
    4a44: 94000000     	bl	0x4a44 <aw22xxx_cfg_recover_update_wait+0x1d0>
		0000000000004a44:  R_AARCH64_CALL26	_printk
    4a48: f94003e0     	ldr	x0, [sp]
    4a4c: 94000000     	bl	0x4a4c <aw22xxx_cfg_recover_update_wait+0x1d8>
		0000000000004a4c:  R_AARCH64_CALL26	release_firmware
    4a50: 17ffffd6     	b	0x49a8 <aw22xxx_cfg_recover_update_wait+0x134>
    4a54: 90000000     	adrp	x0, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		0000000000004a54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b6a
    4a58: 91000000     	add	x0, x0, #0x0
		0000000000004a58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b6a
    4a5c: 17ffffd0     	b	0x499c <aw22xxx_cfg_recover_update_wait+0x128>
    4a60: 2a0003e2     	mov	w2, w0
    4a64: 90000000     	adrp	x0, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		0000000000004a64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x313
    4a68: 91000000     	add	x0, x0, #0x0
		0000000000004a68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x313
    4a6c: 90000001     	adrp	x1, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		0000000000004a6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd1c
    4a70: 91000021     	add	x1, x1, #0x0
		0000000000004a70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd1c
    4a74: 94000000     	bl	0x4a74 <aw22xxx_cfg_recover_update_wait+0x200>
		0000000000004a74:  R_AARCH64_CALL26	_printk
    4a78: 17ffffcc     	b	0x49a8 <aw22xxx_cfg_recover_update_wait+0x134>
    4a7c: f9400101     	ldr	x1, [x8]
    4a80: 90000000     	adrp	x0, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		0000000000004a80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16b3
    4a84: 91000000     	add	x0, x0, #0x0
		0000000000004a84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16b3
    4a88: 94000000     	bl	0x4a88 <aw22xxx_cfg_recover_update_wait+0x214>
		0000000000004a88:  R_AARCH64_CALL26	_printk
    4a8c: f94003e0     	ldr	x0, [sp]
    4a90: f9400008     	ldr	x8, [x0]
    4a94: f100091f     	cmp	x8, #0x2
    4a98: 54000703     	b.lo	0x4b78 <aw22xxx_cfg_recover_update_wait+0x304>
    4a9c: 52955579     	mov	w25, #0xaaab            // =43691
    4aa0: aa1f03f8     	mov	x24, xzr
    4aa4: 2a1f03f6     	mov	w22, wzr
    4aa8: 910c3277     	add	x23, x19, #0x30c
    4aac: 72b55559     	movk	w25, #0xaaaa, lsl #16
    4ab0: 5280021a     	mov	w26, #0x10              // =16
    4ab4: 1400000b     	b	0x4ae0 <aw22xxx_cfg_recover_update_wait+0x26c>
    4ab8: aa1303e0     	mov	x0, x19
    4abc: 2a1403e1     	mov	w1, w20
    4ac0: 2a1503e2     	mov	w2, w21
    4ac4: 97ffed67     	bl	0x60 <aw22xxx_i2c_write>
    4ac8: f94003e0     	ldr	x0, [sp]
    4acc: 91000f09     	add	x9, x24, #0x3
    4ad0: 91000b18     	add	x24, x24, #0x2
    4ad4: f9400008     	ldr	x8, [x0]
    4ad8: eb08013f     	cmp	x9, x8
    4adc: 540004e2     	b.hs	0x4b78 <aw22xxx_cfg_recover_update_wait+0x304>
    4ae0: f9400408     	ldr	x8, [x0, #0x8]
    4ae4: 8b180108     	add	x8, x8, x24
    4ae8: 39400114     	ldrb	w20, [x8]
    4aec: 39400515     	ldrb	w21, [x8, #0x1]
    4af0: 394c1268     	ldrb	w8, [x19, #0x304]
    4af4: 7103fe9f     	cmp	w20, #0xff
    4af8: 1a9602b6     	csel	w22, w21, w22, eq
    4afc: 7100051f     	cmp	w8, #0x1
    4b00: 54000200     	b.eq	0x4b40 <aw22xxx_cfg_recover_update_wait+0x2cc>
    4b04: 12001ec8     	and	w8, w22, #0xff
    4b08: 7100051f     	cmp	w8, #0x1
    4b0c: 540001a1     	b.ne	0x4b40 <aw22xxx_cfg_recover_update_wait+0x2cc>
    4b10: 51004288     	sub	w8, w20, #0x10
    4b14: 7100691f     	cmp	w8, #0x1a
    4b18: 54fffd08     	b.hi	0x4ab8 <aw22xxx_cfg_recover_update_wait+0x244>
    4b1c: 51004288     	sub	w8, w20, #0x10
    4b20: 9bb97d09     	umull	x9, w8, w25
    4b24: d361fd29     	lsr	x9, x9, #33
    4b28: 0b09052a     	add	w10, w9, w9, lsl #1
    4b2c: b8697ae9     	ldr	w9, [x23, x9, lsl #2]
    4b30: 4b0a0108     	sub	w8, w8, w10
    4b34: 4b080f48     	sub	w8, w26, w8, lsl #3
    4b38: 1ac82535     	lsr	w21, w9, w8
    4b3c: 17ffffdf     	b	0x4ab8 <aw22xxx_cfg_recover_update_wait+0x244>
    4b40: aa1303e0     	mov	x0, x19
    4b44: 2a1403e1     	mov	w1, w20
    4b48: 2a1503e2     	mov	w2, w21
    4b4c: 97ffed45     	bl	0x60 <aw22xxx_i2c_write>
    4b50: 71000a9f     	cmp	w20, #0x2
    4b54: 54fffba1     	b.ne	0x4ac8 <aw22xxx_cfg_recover_update_wait+0x254>
    4b58: 72001edf     	tst	w22, #0xff
    4b5c: 54fffb61     	b.ne	0x4ac8 <aw22xxx_cfg_recover_update_wait+0x254>
    4b60: 3607fb55     	tbz	w21, #0x0, 0x4ac8 <aw22xxx_cfg_recover_update_wait+0x254>
    4b64: 5280fa00     	mov	w0, #0x7d0              // =2000
    4b68: 52813881     	mov	w1, #0x9c4              // =2500
    4b6c: 52800042     	mov	w2, #0x2                // =2
    4b70: 94000000     	bl	0x4b70 <aw22xxx_cfg_recover_update_wait+0x2fc>
		0000000000004b70:  R_AARCH64_CALL26	usleep_range_state
    4b74: 17ffffd5     	b	0x4ac8 <aw22xxx_cfg_recover_update_wait+0x254>
    4b78: 94000000     	bl	0x4b78 <aw22xxx_cfg_recover_update_wait+0x304>
		0000000000004b78:  R_AARCH64_CALL26	release_firmware
    4b7c: b942f268     	ldr	w8, [x19, #0x2f0]
    4b80: 7100311f     	cmp	w8, #0xc
    4b84: 540001e8     	b.hi	0x4bc0 <aw22xxx_cfg_recover_update_wait+0x34c>
    4b88: 90000009     	adrp	x9, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		0000000000004b88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x1f8
    4b8c: 91000129     	add	x9, x9, #0x0
		0000000000004b8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x1f8
    4b90: aa1303e0     	mov	x0, x19
    4b94: 38686928     	ldrb	w8, [x9, x8]
    4b98: 528001e9     	mov	w9, #0xf                // =15
    4b9c: 52801fe1     	mov	w1, #0xff               // =255
    4ba0: 2a1f03e2     	mov	w2, wzr
    4ba4: 71003d1f     	cmp	w8, #0xf
    4ba8: 1a893114     	csel	w20, w8, w9, lo
    4bac: 97ffed2d     	bl	0x60 <aw22xxx_i2c_write>
    4bb0: aa1303e0     	mov	x0, x19
    4bb4: 52800161     	mov	w1, #0xb                // =11
    4bb8: 2a1403e2     	mov	w2, w20
    4bbc: 97ffed29     	bl	0x60 <aw22xxx_i2c_write>
    4bc0: b942fa68     	ldr	w8, [x19, #0x2f8]
    4bc4: 90000000     	adrp	x0, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		0000000000004bc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31
    4bc8: 91000000     	add	x0, x0, #0x0
		0000000000004bc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31
    4bcc: 90000001     	adrp	x1, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		0000000000004bcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd1c
    4bd0: 91000021     	add	x1, x1, #0x0
		0000000000004bd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd1c
    4bd4: 11000508     	add	w8, w8, #0x1
    4bd8: b902fa68     	str	w8, [x19, #0x2f8]
    4bdc: 94000000     	bl	0x4bdc <aw22xxx_cfg_recover_update_wait+0x368>
		0000000000004bdc:  R_AARCH64_CALL26	_printk
    4be0: b942fa61     	ldr	w1, [x19, #0x2f8]
    4be4: 90000000     	adrp	x0, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		0000000000004be4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b17
    4be8: 91000000     	add	x0, x0, #0x0
		0000000000004be8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b17
    4bec: 94000000     	bl	0x4bec <aw22xxx_cfg_recover_update_wait+0x378>
		0000000000004bec:  R_AARCH64_CALL26	_printk
    4bf0: 52800280     	mov	w0, #0x14               // =20
    4bf4: 94000000     	bl	0x4bf4 <aw22xxx_cfg_recover_update_wait+0x380>
		0000000000004bf4:  R_AARCH64_CALL26	msleep
    4bf8: 17ffff6c     	b	0x49a8 <aw22xxx_cfg_recover_update_wait+0x134>
    4bfc: 94000000     	bl	0x4bfc <aw22xxx_cfg_recover_update_wait+0x388>
		0000000000004bfc:  R_AARCH64_CALL26	__stack_chk_fail
