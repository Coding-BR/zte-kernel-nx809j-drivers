
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004bcc <aw9620x_send_once_cmd>:
    4bcc: d503233f     	paciasp
    4bd0: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    4bd4: f9000bf7     	str	x23, [sp, #0x10]
    4bd8: a90257f6     	stp	x22, x21, [sp, #0x20]
    4bdc: a9034ff4     	stp	x20, x19, [sp, #0x30]
    4be0: 910003fd     	mov	x29, sp
    4be4: f9401808     	ldr	x8, [x0, #0x30]
    4be8: 2a0403f6     	mov	w22, w4
    4bec: aa0303f7     	mov	x23, x3
    4bf0: 2a0203f4     	mov	w20, w2
    4bf4: aa0003f3     	mov	x19, x0
    4bf8: 2a0103f5     	mov	w21, w1
    4bfc: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004bfc:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2c9b
    4c00: 91000000     	add	x0, x0, #0x0
		0000000000004c00:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2c9b
    4c04: 90000002     	adrp	x2, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004c04:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0xebd
    4c08: 91000042     	add	x2, x2, #0x0
		0000000000004c08:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0xebd
    4c0c: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004c0c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1534
    4c10: 91000063     	add	x3, x3, #0x0
		0000000000004c10:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1534
    4c14: aa0803e1     	mov	x1, x8
    4c18: 5280ef64     	mov	w4, #0x77b              // =1915
    4c1c: 94000000     	bl	0x4c1c <aw9620x_send_once_cmd+0x50>
		0000000000004c1c:  R_AARCH64_CALL26	_dev_printk
    4c20: aa1303e0     	mov	x0, x19
    4c24: 2a1503e1     	mov	w1, w21
    4c28: 2a1403e2     	mov	w2, w20
    4c2c: 2a1603e3     	mov	w3, w22
    4c30: aa1703e4     	mov	x4, x23
    4c34: 94000000     	bl	0x4c34 <aw9620x_send_once_cmd+0x68>
		0000000000004c34:  R_AARCH64_CALL26	dri_to_soc_pack_send
    4c38: 350002e0     	cbnz	w0, 0x4c94 <aw9620x_send_once_cmd+0xc8>
    4c3c: 52810002     	mov	w2, #0x800              // =2048
    4c40: aa1303e0     	mov	x0, x19
    4c44: 52838201     	mov	w1, #0x1c10             // =7184
    4c48: 72a40002     	movk	w2, #0x2000, lsl #16
    4c4c: 97fff2f1     	bl	0x1810 <aw9620x_i2c_write>
		0000000000004c4c:  R_AARCH64_CALL26	aw9620x_i2c_write
    4c50: 35000340     	cbnz	w0, 0x4cb8 <aw9620x_send_once_cmd+0xec>
    4c54: aa1303e0     	mov	x0, x19
    4c58: 52888101     	mov	w1, #0x4408             // =17416
    4c5c: 528002a2     	mov	w2, #0x15               // =21
    4c60: 97fff2ec     	bl	0x1810 <aw9620x_i2c_write>
		0000000000004c60:  R_AARCH64_CALL26	aw9620x_i2c_write
    4c64: 350003c0     	cbnz	w0, 0x4cdc <aw9620x_send_once_cmd+0x110>
    4c68: b9402668     	ldr	w8, [x19, #0x24]
    4c6c: 51000508     	sub	w8, w8, #0x1
    4c70: 7100111f     	cmp	w8, #0x4
    4c74: 54000548     	b.hi	0x4d1c <aw9620x_send_once_cmd+0x150>
    4c78: 90000009     	adrp	x9, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004c78:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_base+0x928
    4c7c: 91000129     	add	x9, x9, #0x0
		0000000000004c7c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_base+0x928
    4c80: b8685936     	ldr	w22, [x9, w8, uxtw #2]
    4c84: 90000009     	adrp	x9, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004c84:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_base+0x93c
    4c88: 91000129     	add	x9, x9, #0x0
		0000000000004c88:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_base+0x93c
    4c8c: b8685937     	ldr	w23, [x9, w8, uxtw #2]
    4c90: 14000025     	b	0x4d24 <aw9620x_send_once_cmd+0x158>
    4c94: f9401a61     	ldr	x1, [x19, #0x30]
    4c98: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004c98:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    4c9c: 91000000     	add	x0, x0, #0x0
		0000000000004c9c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    4ca0: 90000002     	adrp	x2, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004ca0:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x21c4
    4ca4: 91000042     	add	x2, x2, #0x0
		0000000000004ca4:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x21c4
    4ca8: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004ca8:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1534
    4cac: 91000063     	add	x3, x3, #0x0
		0000000000004cac:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1534
    4cb0: 5280f024     	mov	w4, #0x781              // =1921
    4cb4: 14000012     	b	0x4cfc <aw9620x_send_once_cmd+0x130>
    4cb8: f9401a61     	ldr	x1, [x19, #0x30]
    4cbc: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004cbc:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    4cc0: 91000000     	add	x0, x0, #0x0
		0000000000004cc0:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    4cc4: 90000002     	adrp	x2, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004cc4:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ee7
    4cc8: 91000042     	add	x2, x2, #0x0
		0000000000004cc8:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ee7
    4ccc: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004ccc:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1534
    4cd0: 91000063     	add	x3, x3, #0x0
		0000000000004cd0:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1534
    4cd4: 5280f0e4     	mov	w4, #0x787              // =1927
    4cd8: 14000009     	b	0x4cfc <aw9620x_send_once_cmd+0x130>
    4cdc: f9401a61     	ldr	x1, [x19, #0x30]
    4ce0: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004ce0:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    4ce4: 91000000     	add	x0, x0, #0x0
		0000000000004ce4:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    4ce8: 90000002     	adrp	x2, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004ce8:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ee7
    4cec: 91000042     	add	x2, x2, #0x0
		0000000000004cec:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ee7
    4cf0: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004cf0:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1534
    4cf4: 91000063     	add	x3, x3, #0x0
		0000000000004cf4:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1534
    4cf8: 5280f1c4     	mov	w4, #0x78e              // =1934
    4cfc: 94000000     	bl	0x4cfc <aw9620x_send_once_cmd+0x130>
		0000000000004cfc:  R_AARCH64_CALL26	_dev_printk
    4d00: 12800000     	mov	w0, #-0x1               // =-1
    4d04: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    4d08: f9400bf7     	ldr	x23, [sp, #0x10]
    4d0c: a94257f6     	ldp	x22, x21, [sp, #0x20]
    4d10: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    4d14: d50323bf     	autiasp
    4d18: d65f03c0     	ret
    4d1c: 2a1f03f6     	mov	w22, wzr
    4d20: 2a1f03f7     	mov	w23, wzr
    4d24: f9401a61     	ldr	x1, [x19, #0x30]
    4d28: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004d28:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2c9b
    4d2c: 91000000     	add	x0, x0, #0x0
		0000000000004d2c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2c9b
    4d30: 90000002     	adrp	x2, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004d30:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1882
    4d34: 91000042     	add	x2, x2, #0x0
		0000000000004d34:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1882
    4d38: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004d38:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1534
    4d3c: 91000063     	add	x3, x3, #0x0
		0000000000004d3c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1534
    4d40: 5280f5a4     	mov	w4, #0x7ad              // =1965
    4d44: 2a1703e5     	mov	w5, w23
    4d48: 94000000     	bl	0x4d48 <aw9620x_send_once_cmd+0x17c>
		0000000000004d48:  R_AARCH64_CALL26	_dev_printk
    4d4c: 2a1703e0     	mov	w0, w23
    4d50: 94000000     	bl	0x4d50 <aw9620x_send_once_cmd+0x184>
		0000000000004d50:  R_AARCH64_CALL26	msleep
    4d54: aa1303e0     	mov	x0, x19
    4d58: 94000236     	bl	0x5630 <aw9620x_read_ack_irq>
		0000000000004d58:  R_AARCH64_CALL26	aw9620x_read_ack_irq
    4d5c: 35000200     	cbnz	w0, 0x4d9c <aw9620x_send_once_cmd+0x1d0>
    4d60: aa1303e0     	mov	x0, x19
    4d64: 2a1603e1     	mov	w1, w22
    4d68: 2a1503e2     	mov	w2, w21
    4d6c: 2a1403e3     	mov	w3, w20
    4d70: 94000000     	bl	0x4d70 <aw9620x_send_once_cmd+0x1a4>
		0000000000004d70:  R_AARCH64_CALL26	soc_to_dri_pack_parse
    4d74: 34fffc80     	cbz	w0, 0x4d04 <aw9620x_send_once_cmd+0x138>
    4d78: f9401a61     	ldr	x1, [x19, #0x30]
    4d7c: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004d7c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    4d80: 91000000     	add	x0, x0, #0x0
		0000000000004d80:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    4d84: 90000002     	adrp	x2, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004d84:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x29b5
    4d88: 91000042     	add	x2, x2, #0x0
		0000000000004d88:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x29b5
    4d8c: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004d8c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1534
    4d90: 91000063     	add	x3, x3, #0x0
		0000000000004d90:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1534
    4d94: 5280f764     	mov	w4, #0x7bb              // =1979
    4d98: 17ffffd9     	b	0x4cfc <aw9620x_send_once_cmd+0x130>
    4d9c: f9401a61     	ldr	x1, [x19, #0x30]
    4da0: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004da0:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    4da4: 91000000     	add	x0, x0, #0x0
		0000000000004da4:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    4da8: 90000002     	adrp	x2, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004da8:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x297a
    4dac: 91000042     	add	x2, x2, #0x0
		0000000000004dac:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x297a
    4db0: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004db0:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1534
    4db4: 91000063     	add	x3, x3, #0x0
		0000000000004db4:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1534
    4db8: 5280f684     	mov	w4, #0x7b4              // =1972
    4dbc: 17ffffd0     	b	0x4cfc <aw9620x_send_once_cmd+0x130>
