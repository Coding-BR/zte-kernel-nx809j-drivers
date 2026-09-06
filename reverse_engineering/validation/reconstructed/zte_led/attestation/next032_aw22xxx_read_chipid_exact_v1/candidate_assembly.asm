
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001ac4 <aw22xxx_read_chipid>:
    1ac4: d503233f     	paciasp
    1ac8: d100c3ff     	sub	sp, sp, #0x30
    1acc: a9017bfd     	stp	x29, x30, [sp, #0x10]
    1ad0: f90013f3     	str	x19, [sp, #0x20]
    1ad4: 910043fd     	add	x29, sp, #0x10
    1ad8: d5384108     	mrs	x8, SP_EL0
    1adc: 52801fe1     	mov	w1, #0xff               // =255
    1ae0: 2a1f03e2     	mov	w2, wzr
    1ae4: f9438908     	ldr	x8, [x8, #0x710]
    1ae8: aa0003f3     	mov	x19, x0
    1aec: f90007e8     	str	x8, [sp, #0x8]
    1af0: 390013ff     	strb	wzr, [sp, #0x4]
    1af4: 97fffd5a     	bl	0x105c <aw22xxx_i2c_write>
    1af8: aa1303e0     	mov	x0, x19
    1afc: 52800021     	mov	w1, #0x1                // =1
    1b00: 52800aa2     	mov	w2, #0x55               // =85
    1b04: 97fffd56     	bl	0x105c <aw22xxx_i2c_write>
    1b08: 5280fa00     	mov	w0, #0x7d0              // =2000
    1b0c: 52817701     	mov	w1, #0xbb8              // =3000
    1b10: 52800042     	mov	w2, #0x2                // =2
    1b14: 94000000     	bl	0x1b14 <aw22xxx_read_chipid+0x50>
		0000000000001b14:  R_AARCH64_CALL26	usleep_range_state
    1b18: 910013e2     	add	x2, sp, #0x4
    1b1c: aa1303e0     	mov	x0, x19
    1b20: 52800021     	mov	w1, #0x1                // =1
    1b24: 97fffd9a     	bl	0x118c <aw22xxx_i2c_read>
    1b28: 2a0003e3     	mov	w3, w0
    1b2c: 36f80120     	tbz	w0, #0x1f, 0x1b50 <aw22xxx_read_chipid+0x8c>
    1b30: f9400660     	ldr	x0, [x19, #0x8]
    1b34: 90000001     	adrp	x1, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001b34:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1843
    1b38: 91000021     	add	x1, x1, #0x0
		0000000000001b38:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1843
    1b3c: 90000002     	adrp	x2, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001b3c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1873
    1b40: 91000042     	add	x2, x2, #0x0
		0000000000001b40:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1873
    1b44: 94000000     	bl	0x1b44 <aw22xxx_read_chipid+0x80>
		0000000000001b44:  R_AARCH64_CALL26	_dev_err
    1b48: 12800080     	mov	w0, #-0x5               // =-5
    1b4c: 14000046     	b	0x1c64 <aw22xxx_read_chipid+0x1a0>
    1b50: 394013e2     	ldrb	w2, [sp, #0x4]
    1b54: 7101d85f     	cmp	w2, #0x76
    1b58: 540002a1     	b.ne	0x1bac <aw22xxx_read_chipid+0xe8>
    1b5c: 90000000     	adrp	x0, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001b5c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xbe9
    1b60: 91000000     	add	x0, x0, #0x0
		0000000000001b60:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xbe9
    1b64: 90000001     	adrp	x1, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001b64:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1873
    1b68: 91000021     	add	x1, x1, #0x0
		0000000000001b68:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1873
    1b6c: 94000000     	bl	0x1b6c <aw22xxx_read_chipid+0xa8>
		0000000000001b6c:  R_AARCH64_CALL26	_printk
    1b70: 910013e2     	add	x2, sp, #0x4
    1b74: aa1303e0     	mov	x0, x19
    1b78: 2a1f03e1     	mov	w1, wzr
    1b7c: 97fffd84     	bl	0x118c <aw22xxx_i2c_read>
    1b80: 394013e2     	ldrb	w2, [sp, #0x4]
    1b84: 7100605f     	cmp	w2, #0x18
    1b88: 54000420     	b.eq	0x1c0c <aw22xxx_read_chipid+0x148>
    1b8c: 71009c5f     	cmp	w2, #0x27
    1b90: 540005e1     	b.ne	0x1c4c <aw22xxx_read_chipid+0x188>
    1b94: d28eec28     	mov	x8, #0x7761             // =30561
    1b98: 52800049     	mov	w9, #0x2                // =2
    1b9c: f2a64648     	movk	x8, #0x3232, lsl #16
    1ba0: f2c64628     	movk	x8, #0x3231, lsl #32
    1ba4: f2e006e8     	movk	x8, #0x37, lsl #48
    1ba8: 1400001e     	b	0x1c20 <aw22xxx_read_chipid+0x15c>
    1bac: 90000000     	adrp	x0, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001bac:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x17a7
    1bb0: 91000000     	add	x0, x0, #0x0
		0000000000001bb0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x17a7
    1bb4: 90000001     	adrp	x1, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001bb4:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1873
    1bb8: 91000021     	add	x1, x1, #0x0
		0000000000001bb8:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1873
    1bbc: 94000000     	bl	0x1bbc <aw22xxx_read_chipid+0xf8>
		0000000000001bbc:  R_AARCH64_CALL26	_printk
    1bc0: 52800020     	mov	w0, #0x1                // =1
    1bc4: 94000000     	bl	0x1bc4 <aw22xxx_read_chipid+0x100>
		0000000000001bc4:  R_AARCH64_CALL26	msleep
    1bc8: 910013e2     	add	x2, sp, #0x4
    1bcc: aa1303e0     	mov	x0, x19
    1bd0: 52800021     	mov	w1, #0x1                // =1
    1bd4: 97fffd6e     	bl	0x118c <aw22xxx_i2c_read>
    1bd8: 2a0003e3     	mov	w3, w0
    1bdc: 37fffaa0     	tbnz	w0, #0x1f, 0x1b30 <aw22xxx_read_chipid+0x6c>
    1be0: 394013e2     	ldrb	w2, [sp, #0x4]
    1be4: 7101d85f     	cmp	w2, #0x76
    1be8: 54fffba0     	b.eq	0x1b5c <aw22xxx_read_chipid+0x98>
    1bec: 90000000     	adrp	x0, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001bec:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x17a7
    1bf0: 91000000     	add	x0, x0, #0x0
		0000000000001bf0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x17a7
    1bf4: 90000001     	adrp	x1, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001bf4:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1873
    1bf8: 91000021     	add	x1, x1, #0x0
		0000000000001bf8:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1873
    1bfc: 94000000     	bl	0x1bfc <aw22xxx_read_chipid+0x138>
		0000000000001bfc:  R_AARCH64_CALL26	_printk
    1c00: 52800020     	mov	w0, #0x1                // =1
    1c04: 94000000     	bl	0x1c04 <aw22xxx_read_chipid+0x140>
		0000000000001c04:  R_AARCH64_CALL26	msleep
    1c08: 14000016     	b	0x1c60 <aw22xxx_read_chipid+0x19c>
    1c0c: d28eec28     	mov	x8, #0x7761             // =30561
    1c10: 52800029     	mov	w9, #0x1                // =1
    1c14: f2a64648     	movk	x8, #0x3232, lsl #16
    1c18: f2c62628     	movk	x8, #0x3131, lsl #32
    1c1c: f2e00708     	movk	x8, #0x38, lsl #48
    1c20: 90000002     	adrp	x2, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001c20:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_data_base+0x378
    1c24: 91000042     	add	x2, x2, #0x0
		0000000000001c24:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_data_base+0x378
    1c28: 90000000     	adrp	x0, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001c28:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1000
    1c2c: 91000000     	add	x0, x0, #0x0
		0000000000001c2c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1000
    1c30: 90000001     	adrp	x1, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001c30:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1873
    1c34: 91000021     	add	x1, x1, #0x0
		0000000000001c34:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1873
    1c38: 390bb669     	strb	w9, [x19, #0x2ed]
    1c3c: f9000048     	str	x8, [x2]
    1c40: 94000000     	bl	0x1c40 <aw22xxx_read_chipid+0x17c>
		0000000000001c40:  R_AARCH64_CALL26	_printk
    1c44: 2a1f03e0     	mov	w0, wzr
    1c48: 14000007     	b	0x1c64 <aw22xxx_read_chipid+0x1a0>
    1c4c: 90000000     	adrp	x0, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001c4c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x2af
    1c50: 91000000     	add	x0, x0, #0x0
		0000000000001c50:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x2af
    1c54: 90000001     	adrp	x1, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001c54:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1873
    1c58: 91000021     	add	x1, x1, #0x0
		0000000000001c58:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1873
    1c5c: 94000000     	bl	0x1c5c <aw22xxx_read_chipid+0x198>
		0000000000001c5c:  R_AARCH64_CALL26	_printk
    1c60: 128002a0     	mov	w0, #-0x16              // =-22
    1c64: d5384108     	mrs	x8, SP_EL0
    1c68: f9438908     	ldr	x8, [x8, #0x710]
    1c6c: f94007e9     	ldr	x9, [sp, #0x8]
    1c70: eb09011f     	cmp	x8, x9
    1c74: 540000c1     	b.ne	0x1c8c <aw22xxx_read_chipid+0x1c8>
    1c78: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1c7c: f94013f3     	ldr	x19, [sp, #0x20]
    1c80: 9100c3ff     	add	sp, sp, #0x30
    1c84: d50323bf     	autiasp
    1c88: d65f03c0     	ret
    1c8c: 94000000     	bl	0x1c8c <aw22xxx_read_chipid+0x1c8>
		0000000000001c8c:  R_AARCH64_CALL26	__stack_chk_fail
