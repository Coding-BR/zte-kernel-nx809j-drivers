
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001b48 <zte_power_supply_get_battery_info>:
    1b48: d503233f     	paciasp
    1b4c: d103c3ff     	sub	sp, sp, #0xf0
    1b50: a9097bfd     	stp	x29, x30, [sp, #0x90]
    1b54: a90a6ffc     	stp	x28, x27, [sp, #0xa0]
    1b58: a90b67fa     	stp	x26, x25, [sp, #0xb0]
    1b5c: a90c5ff8     	stp	x24, x23, [sp, #0xc0]
    1b60: a90d57f6     	stp	x22, x21, [sp, #0xd0]
    1b64: a90e4ff4     	stp	x20, x19, [sp, #0xe0]
    1b68: 910243fd     	add	x29, sp, #0x90
    1b6c: d5384109     	mrs	x9, SP_EL0
    1b70: 128002a8     	mov	w8, #-0x16              // =-22
    1b74: aa0103f6     	mov	x22, x1
    1b78: f9438929     	ldr	x9, [x9, #0x710]
    1b7c: 928002aa     	mov	x10, #-0x16             // =-22
    1b80: aa0003f5     	mov	x21, x0
    1b84: f2dffd4a     	movk	x10, #0xffea, lsl #32
    1b88: f81f83a9     	stur	x9, [x29, #-0x8]
    1b8c: b805cec8     	str	w8, [x22, #0x5c]!
    1b90: 910572c9     	add	x9, x22, #0x15c
    1b94: f900013f     	str	xzr, [x9]
    1b98: 910472c9     	add	x9, x22, #0x11c
    1b9c: aa1603fc     	mov	x28, x22
    1ba0: f900012a     	str	x10, [x9]
    1ba4: 910492c9     	add	x9, x22, #0x124
    1ba8: aa1603fb     	mov	x27, x22
    1bac: f900012a     	str	x10, [x9]
    1bb0: 9104b2c9     	add	x9, x22, #0x12c
    1bb4: aa1603fa     	mov	x26, x22
    1bb8: f900012a     	str	x10, [x9]
    1bbc: 9104d2c9     	add	x9, x22, #0x134
    1bc0: aa1603f9     	mov	x25, x22
    1bc4: aa1603f8     	mov	x24, x22
    1bc8: aa1603f7     	mov	x23, x22
    1bcc: aa1603f3     	mov	x19, x22
    1bd0: f900012a     	str	x10, [x9]
    1bd4: 910412c9     	add	x9, x22, #0x104
    1bd8: f81a8f8a     	str	x10, [x28, #-0x58]!
    1bdc: f81b0f6a     	str	x10, [x27, #-0x50]!
    1be0: b81bcf48     	str	w8, [x26, #-0x44]!
    1be4: b81c4f28     	str	w8, [x25, #-0x3c]!
    1be8: f81d0f0a     	str	x10, [x24, #-0x30]!
    1bec: b81f8ee8     	str	w8, [x23, #-0x8]!
    1bf0: f806ce7f     	str	xzr, [x19, #0x6c]!
    1bf4: b9010ec8     	str	w8, [x22, #0x10c]
    1bf8: f80742df     	stur	xzr, [x22, #0x74]
    1bfc: f80042ca     	stur	x10, [x22, #0x4]
    1c00: f9008aca     	str	x10, [x22, #0x110]
    1c04: f807c2df     	stur	xzr, [x22, #0x7c]
    1c08: f80842df     	stur	xzr, [x22, #0x84]
    1c0c: b9011ac8     	str	w8, [x22, #0x118]
    1c10: f808c2df     	stur	xzr, [x22, #0x8c]
    1c14: 2901a2c8     	stp	w8, w8, [x22, #0xc]
    1c18: f80942df     	stur	xzr, [x22, #0x94]
    1c1c: f80142ca     	stur	x10, [x22, #0x14]
    1c20: f809c2df     	stur	xzr, [x22, #0x9c]
    1c24: f80a42df     	stur	xzr, [x22, #0xa4]
    1c28: f801c2ca     	stur	x10, [x22, #0x1c]
    1c2c: f80ac2df     	stur	xzr, [x22, #0xac]
    1c30: f80b42df     	stur	xzr, [x22, #0xb4]
    1c34: f80242ca     	stur	x10, [x22, #0x24]
    1c38: f80bc2df     	stur	xzr, [x22, #0xbc]
    1c3c: f80c42df     	stur	xzr, [x22, #0xc4]
    1c40: f80cc2df     	stur	xzr, [x22, #0xcc]
    1c44: 2905a2c8     	stp	w8, w8, [x22, #0x2c]
    1c48: b9013ec8     	str	w8, [x22, #0x13c]
    1c4c: f80d42df     	stur	xzr, [x22, #0xd4]
    1c50: b90142c8     	str	w8, [x22, #0x140]
    1c54: f80dc2df     	stur	xzr, [x22, #0xdc]
    1c58: 2906a2c8     	stp	w8, w8, [x22, #0x34]
    1c5c: b90146c8     	str	w8, [x22, #0x144]
    1c60: f80e42df     	stur	xzr, [x22, #0xe4]
    1c64: b9014ac8     	str	w8, [x22, #0x148]
    1c68: f80ec2df     	stur	xzr, [x22, #0xec]
    1c6c: 2907a2c8     	stp	w8, w8, [x22, #0x3c]
    1c70: b9014ec8     	str	w8, [x22, #0x14c]
    1c74: f80f42df     	stur	xzr, [x22, #0xf4]
    1c78: b90152c8     	str	w8, [x22, #0x150]
    1c7c: f80fc2df     	stur	xzr, [x22, #0xfc]
    1c80: 2908a2c8     	stp	w8, w8, [x22, #0x44]
    1c84: b90156c8     	str	w8, [x22, #0x154]
    1c88: f900013f     	str	xzr, [x9]
    1c8c: b9004ec8     	str	w8, [x22, #0x4c]
    1c90: b9015ac8     	str	w8, [x22, #0x158]
    1c94: f9401400     	ldr	x0, [x0, #0x28]
    1c98: f9001bff     	str	xzr, [sp, #0x30]
    1c9c: b9002fff     	str	wzr, [sp, #0x2c]
    1ca0: b40016e0     	cbz	x0, 0x1f7c <zte_power_supply_get_battery_info+0x434>
    1ca4: f9000fe1     	str	x1, [sp, #0x18]
    1ca8: 90000001     	adrp	x1, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		0000000000001ca8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f7
    1cac: 91000021     	add	x1, x1, #0x0
		0000000000001cac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f7
    1cb0: 9100e3e5     	add	x5, sp, #0x38
    1cb4: aa1f03e2     	mov	x2, xzr
    1cb8: 2a1f03e3     	mov	w3, wzr
    1cbc: 2a1f03e4     	mov	w4, wzr
    1cc0: a907ffff     	stp	xzr, xzr, [sp, #0x78]
    1cc4: a906ffff     	stp	xzr, xzr, [sp, #0x68]
    1cc8: a905ffff     	stp	xzr, xzr, [sp, #0x58]
    1ccc: a904ffff     	stp	xzr, xzr, [sp, #0x48]
    1cd0: a903ffff     	stp	xzr, xzr, [sp, #0x38]
    1cd4: 94000000     	bl	0x1cd4 <zte_power_supply_get_battery_info+0x18c>
		0000000000001cd4:  R_AARCH64_CALL26	__of_parse_phandle_with_args
    1cd8: 12800254     	mov	w20, #-0x13             // =-19
    1cdc: 350015e0     	cbnz	w0, 0x1f98 <zte_power_supply_get_battery_info+0x450>
    1ce0: f90013f5     	str	x21, [sp, #0x20]
    1ce4: f9401ff5     	ldr	x21, [sp, #0x38]
    1ce8: b4001595     	cbz	x21, 0x1f98 <zte_power_supply_get_battery_info+0x450>
    1cec: 90000001     	adrp	x1, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		0000000000001cec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4dc
    1cf0: 91000021     	add	x1, x1, #0x0
		0000000000001cf0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4dc
    1cf4: 9100c3e2     	add	x2, sp, #0x30
    1cf8: aa1503e0     	mov	x0, x21
    1cfc: 94000000     	bl	0x1cfc <zte_power_supply_get_battery_info+0x1b4>
		0000000000001cfc:  R_AARCH64_CALL26	of_property_read_string
    1d00: 2a0003f4     	mov	w20, w0
    1d04: 350014a0     	cbnz	w0, 0x1f98 <zte_power_supply_get_battery_info+0x450>
    1d08: f9401be1     	ldr	x1, [sp, #0x30]
    1d0c: 90000000     	adrp	x0, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		0000000000001d0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x409
    1d10: 91000000     	add	x0, x0, #0x0
		0000000000001d10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x409
    1d14: 94000000     	bl	0x1d14 <zte_power_supply_get_battery_info+0x1cc>
		0000000000001d14:  R_AARCH64_CALL26	strcmp
    1d18: 34000060     	cbz	w0, 0x1d24 <zte_power_supply_get_battery_info+0x1dc>
    1d1c: 12800254     	mov	w20, #-0x13             // =-19
    1d20: 1400009e     	b	0x1f98 <zte_power_supply_get_battery_info+0x450>
    1d24: d10132c9     	sub	x9, x22, #0x4c
    1d28: d100b2c8     	sub	x8, x22, #0x2c
    1d2c: 90000001     	adrp	x1, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		0000000000001d2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2fc
    1d30: 91000021     	add	x1, x1, #0x0
		0000000000001d30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2fc
    1d34: aa1503e0     	mov	x0, x21
    1d38: aa1c03e2     	mov	x2, x28
    1d3c: 52800023     	mov	w3, #0x1                // =1
    1d40: aa1f03e4     	mov	x4, xzr
    1d44: d10152d4     	sub	x20, x22, #0x54
    1d48: a900a3e9     	stp	x9, x8, [sp, #0x8]
    1d4c: 94000000     	bl	0x1d4c <zte_power_supply_get_battery_info+0x204>
		0000000000001d4c:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    1d50: 90000001     	adrp	x1, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		0000000000001d50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b9
    1d54: 91000021     	add	x1, x1, #0x0
		0000000000001d54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b9
    1d58: aa1503e0     	mov	x0, x21
    1d5c: aa1403e2     	mov	x2, x20
    1d60: 52800023     	mov	w3, #0x1                // =1
    1d64: aa1f03e4     	mov	x4, xzr
    1d68: 94000000     	bl	0x1d68 <zte_power_supply_get_battery_info+0x220>
		0000000000001d68:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    1d6c: 90000001     	adrp	x1, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		0000000000001d6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a4
    1d70: 91000021     	add	x1, x1, #0x0
		0000000000001d70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a4
    1d74: aa1503e0     	mov	x0, x21
    1d78: aa1b03e2     	mov	x2, x27
    1d7c: 52800023     	mov	w3, #0x1                // =1
    1d80: aa1f03e4     	mov	x4, xzr
    1d84: 94000000     	bl	0x1d84 <zte_power_supply_get_battery_info+0x23c>
		0000000000001d84:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    1d88: f94007e2     	ldr	x2, [sp, #0x8]
    1d8c: 90000001     	adrp	x1, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		0000000000001d8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x67a
    1d90: 91000021     	add	x1, x1, #0x0
		0000000000001d90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x67a
    1d94: aa1503e0     	mov	x0, x21
    1d98: 52800023     	mov	w3, #0x1                // =1
    1d9c: aa1f03e4     	mov	x4, xzr
    1da0: 94000000     	bl	0x1da0 <zte_power_supply_get_battery_info+0x258>
		0000000000001da0:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    1da4: 90000001     	adrp	x1, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		0000000000001da4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x602
    1da8: 91000021     	add	x1, x1, #0x0
		0000000000001da8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x602
    1dac: aa1503e0     	mov	x0, x21
    1db0: aa1a03e2     	mov	x2, x26
    1db4: 52800023     	mov	w3, #0x1                // =1
    1db8: aa1f03e4     	mov	x4, xzr
    1dbc: 94000000     	bl	0x1dbc <zte_power_supply_get_battery_info+0x274>
		0000000000001dbc:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    1dc0: 90000001     	adrp	x1, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		0000000000001dc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x424
    1dc4: 91000021     	add	x1, x1, #0x0
		0000000000001dc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x424
    1dc8: aa1503e0     	mov	x0, x21
    1dcc: aa1903e2     	mov	x2, x25
    1dd0: 52800023     	mov	w3, #0x1                // =1
    1dd4: aa1f03e4     	mov	x4, xzr
    1dd8: 94000000     	bl	0x1dd8 <zte_power_supply_get_battery_info+0x290>
		0000000000001dd8:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    1ddc: 90000001     	adrp	x1, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		0000000000001ddc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf2
    1de0: 91000021     	add	x1, x1, #0x0
		0000000000001de0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf2
    1de4: aa1503e0     	mov	x0, x21
    1de8: aa1803e2     	mov	x2, x24
    1dec: 52800023     	mov	w3, #0x1                // =1
    1df0: aa1f03e4     	mov	x4, xzr
    1df4: 94000000     	bl	0x1df4 <zte_power_supply_get_battery_info+0x2ac>
		0000000000001df4:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    1df8: f9400be2     	ldr	x2, [sp, #0x10]
    1dfc: 90000001     	adrp	x1, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		0000000000001dfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x61d
    1e00: 91000021     	add	x1, x1, #0x0
		0000000000001e00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x61d
    1e04: aa1503e0     	mov	x0, x21
    1e08: 52800023     	mov	w3, #0x1                // =1
    1e0c: aa1f03e4     	mov	x4, xzr
    1e10: 94000000     	bl	0x1e10 <zte_power_supply_get_battery_info+0x2c8>
		0000000000001e10:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    1e14: 90000001     	adrp	x1, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		0000000000001e14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x369
    1e18: 91000021     	add	x1, x1, #0x0
		0000000000001e18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x369
    1e1c: aa1503e0     	mov	x0, x21
    1e20: aa1703e2     	mov	x2, x23
    1e24: 52800023     	mov	w3, #0x1                // =1
    1e28: aa1f03e4     	mov	x4, xzr
    1e2c: 94000000     	bl	0x1e2c <zte_power_supply_get_battery_info+0x2e4>
		0000000000001e2c:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    1e30: 90000001     	adrp	x1, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		0000000000001e30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x246
    1e34: 91000021     	add	x1, x1, #0x0
		0000000000001e34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x246
    1e38: aa1503e0     	mov	x0, x21
    1e3c: 52800082     	mov	w2, #0x4                // =4
    1e40: 94000000     	bl	0x1e40 <zte_power_supply_get_battery_info+0x2f8>
		0000000000001e40:  R_AARCH64_CALL26	of_property_count_elems_of_size
    1e44: 2a0003f4     	mov	w20, w0
    1e48: b9002fe0     	str	w0, [sp, #0x2c]
    1e4c: 36f80060     	tbz	w0, #0x1f, 0x1e58 <zte_power_supply_get_battery_info+0x310>
    1e50: 31005a9f     	cmn	w20, #0x16
    1e54: 54000a21     	b.ne	0x1f98 <zte_power_supply_get_battery_info+0x450>
    1e58: 7100569f     	cmp	w20, #0x15
    1e5c: 540011aa     	b.ge	0x2090 <zte_power_supply_get_battery_info+0x548>
    1e60: 7100069f     	cmp	w20, #0x1
    1e64: 54000b8b     	b.lt	0x1fd4 <zte_power_supply_get_battery_info+0x48c>
    1e68: 2a1403f7     	mov	w23, w20
    1e6c: 90000001     	adrp	x1, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		0000000000001e6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x246
    1e70: 91000021     	add	x1, x1, #0x0
		0000000000001e70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x246
    1e74: aa1503e0     	mov	x0, x21
    1e78: aa1603e2     	mov	x2, x22
    1e7c: aa1703e3     	mov	x3, x23
    1e80: aa1f03e4     	mov	x4, xzr
    1e84: 910432da     	add	x26, x22, #0x10c
    1e88: 94000000     	bl	0x1e88 <zte_power_supply_get_battery_info+0x340>
		0000000000001e88:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    1e8c: aa1f03f4     	mov	x20, xzr
    1e90: 90000016     	adrp	x22, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		0000000000001e90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20
    1e94: 910002d6     	add	x22, x22, #0x0
		0000000000001e94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20
    1e98: 14000004     	b	0x1ea8 <zte_power_supply_get_battery_info+0x360>
    1e9c: 91000694     	add	x20, x20, #0x1
    1ea0: eb17029f     	cmp	x20, x23
    1ea4: 54000982     	b.hs	0x1fd4 <zte_power_supply_get_battery_info+0x48c>
    1ea8: 52819800     	mov	w0, #0xcc0              // =3264
    1eac: aa1603e1     	mov	x1, x22
    1eb0: 2a1403e2     	mov	w2, w20
    1eb4: b9003bff     	str	wzr, [sp, #0x38]
    1eb8: 94000000     	bl	0x1eb8 <zte_power_supply_get_battery_info+0x370>
		0000000000001eb8:  R_AARCH64_CALL26	kasprintf
    1ebc: aa0003f9     	mov	x25, x0
    1ec0: 9100e3e2     	add	x2, sp, #0x38
    1ec4: aa1503e0     	mov	x0, x21
    1ec8: aa1903e1     	mov	x1, x25
    1ecc: 94000000     	bl	0x1ecc <zte_power_supply_get_battery_info+0x384>
		0000000000001ecc:  R_AARCH64_CALL26	of_get_property
    1ed0: b4000ee0     	cbz	x0, 0x20ac <zte_power_supply_get_battery_info+0x564>
    1ed4: b9403be8     	ldr	w8, [sp, #0x38]
    1ed8: 34000ea8     	cbz	w8, 0x20ac <zte_power_supply_get_battery_info+0x564>
    1edc: aa0003f8     	mov	x24, x0
    1ee0: aa1903e0     	mov	x0, x25
    1ee4: 94000000     	bl	0x1ee4 <zte_power_supply_get_battery_info+0x39c>
		0000000000001ee4:  R_AARCH64_CALL26	kfree
    1ee8: f100529f     	cmp	x20, #0x14
    1eec: 54001460     	b.eq	0x2178 <zte_power_supply_get_battery_info+0x630>
    1ef0: b9403bfc     	ldr	w28, [sp, #0x38]
    1ef4: 13037f9b     	asr	w27, w28, #3
    1ef8: b8347b5b     	str	w27, [x26, x20, lsl #2]
    1efc: 37f8107b     	tbnz	w27, #0x1f, 0x2108 <zte_power_supply_get_battery_info+0x5c0>
    1f00: d37d7f79     	ubfiz	x25, x27, #3, #32
    1f04: f94013e8     	ldr	x8, [sp, #0x20]
    1f08: 5281b802     	mov	w2, #0xdc0              // =3520
    1f0c: 9100e100     	add	x0, x8, #0x38
    1f10: aa1903e1     	mov	x1, x25
    1f14: 94000000     	bl	0x1f14 <zte_power_supply_get_battery_info+0x3cc>
		0000000000001f14:  R_AARCH64_CALL26	devm_kmalloc
    1f18: f8347a60     	str	x0, [x19, x20, lsl #3]
    1f1c: b4000f80     	cbz	x0, 0x210c <zte_power_supply_get_battery_info+0x5c4>
    1f20: 7100239f     	cmp	w28, #0x8
    1f24: 54fffbc3     	b.lo	0x1e9c <zte_power_supply_get_battery_info+0x354>
    1f28: 7100077f     	cmp	w27, #0x1
    1f2c: aa1f03e9     	mov	x9, xzr
    1f30: 1a9f8768     	csinc	w8, w27, wzr, hi
    1f34: d37d7d08     	ubfiz	x8, x8, #3, #32
    1f38: eb09033f     	cmp	x25, x9
    1f3c: 540010c9     	b.ls	0x2154 <zte_power_supply_get_battery_info+0x60c>
    1f40: 8b09030a     	add	x10, x24, x9
    1f44: 9100112c     	add	x12, x9, #0x4
    1f48: b940014b     	ldr	w11, [x10]
    1f4c: eb0c033f     	cmp	x25, x12
    1f50: 5ac0096b     	rev	w11, w11
    1f54: b829680b     	str	w11, [x0, x9]
    1f58: 54000fe3     	b.lo	0x2154 <zte_power_supply_get_battery_info+0x60c>
    1f5c: b940054a     	ldr	w10, [x10, #0x4]
    1f60: 8b09000b     	add	x11, x0, x9
    1f64: 91002129     	add	x9, x9, #0x8
    1f68: eb09011f     	cmp	x8, x9
    1f6c: 5ac0094a     	rev	w10, w10
    1f70: b900056a     	str	w10, [x11, #0x4]
    1f74: 54fffe21     	b.ne	0x1f38 <zte_power_supply_get_battery_info+0x3f0>
    1f78: 17ffffc9     	b	0x1e9c <zte_power_supply_get_battery_info+0x354>
    1f7c: 90000001     	adrp	x1, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		0000000000001f7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5db
    1f80: 91000021     	add	x1, x1, #0x0
		0000000000001f80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5db
    1f84: 90000002     	adrp	x2, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		0000000000001f84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4a6
    1f88: 91000042     	add	x2, x2, #0x0
		0000000000001f88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4a6
    1f8c: 9100e2a0     	add	x0, x21, #0x38
    1f90: 94000000     	bl	0x1f90 <zte_power_supply_get_battery_info+0x448>
		0000000000001f90:  R_AARCH64_CALL26	_dev_warn
    1f94: 128000b4     	mov	w20, #-0x6              // =-6
    1f98: d5384108     	mrs	x8, SP_EL0
    1f9c: f9438908     	ldr	x8, [x8, #0x710]
    1fa0: f85f83a9     	ldur	x9, [x29, #-0x8]
    1fa4: eb09011f     	cmp	x8, x9
    1fa8: 54000e61     	b.ne	0x2174 <zte_power_supply_get_battery_info+0x62c>
    1fac: 2a1403e0     	mov	w0, w20
    1fb0: a94e4ff4     	ldp	x20, x19, [sp, #0xe0]
    1fb4: a94d57f6     	ldp	x22, x21, [sp, #0xd0]
    1fb8: a94c5ff8     	ldp	x24, x23, [sp, #0xc0]
    1fbc: a94b67fa     	ldp	x26, x25, [sp, #0xb0]
    1fc0: a94a6ffc     	ldp	x28, x27, [sp, #0xa0]
    1fc4: a9497bfd     	ldp	x29, x30, [sp, #0x90]
    1fc8: 9103c3ff     	add	sp, sp, #0xf0
    1fcc: d50323bf     	autiasp
    1fd0: d65f03c0     	ret
    1fd4: 90000001     	adrp	x1, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		0000000000001fd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x478
    1fd8: 91000021     	add	x1, x1, #0x0
		0000000000001fd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x478
    1fdc: 9100b3e2     	add	x2, sp, #0x2c
    1fe0: aa1503e0     	mov	x0, x21
    1fe4: 94000000     	bl	0x1fe4 <zte_power_supply_get_battery_info+0x49c>
		0000000000001fe4:  R_AARCH64_CALL26	of_get_property
    1fe8: 2a1f03f4     	mov	w20, wzr
    1fec: b4fffd60     	cbz	x0, 0x1f98 <zte_power_supply_get_battery_info+0x450>
    1ff0: b9402fe8     	ldr	w8, [sp, #0x2c]
    1ff4: 34fffd28     	cbz	w8, 0x1f98 <zte_power_supply_get_battery_info+0x450>
    1ff8: 13037d08     	asr	w8, w8, #3
    1ffc: f9400ff4     	ldr	x20, [sp, #0x18]
    2000: b901c288     	str	w8, [x20, #0x1c0]
    2004: 37f80aa8     	tbnz	w8, #0x1f, 0x2158 <zte_power_supply_get_battery_info+0x610>
    2008: d37d7d16     	ubfiz	x22, x8, #3, #32
    200c: f94013f3     	ldr	x19, [sp, #0x20]
    2010: aa0003f5     	mov	x21, x0
    2014: 5281b802     	mov	w2, #0xdc0              // =3520
    2018: 9100e260     	add	x0, x19, #0x38
    201c: aa1603e1     	mov	x1, x22
    2020: 94000000     	bl	0x2020 <zte_power_supply_get_battery_info+0x4d8>
		0000000000002020:  R_AARCH64_CALL26	devm_kmalloc
    2024: f900de80     	str	x0, [x20, #0x1b8]
    2028: b40009c0     	cbz	x0, 0x2160 <zte_power_supply_get_battery_info+0x618>
    202c: b941c288     	ldr	w8, [x20, #0x1c0]
    2030: 7100051f     	cmp	w8, #0x1
    2034: 540002ab     	b.lt	0x2088 <zte_power_supply_get_battery_info+0x540>
    2038: d37df108     	lsl	x8, x8, #3
    203c: aa1f03e9     	mov	x9, xzr
    2040: eb0902df     	cmp	x22, x9
    2044: 54000889     	b.ls	0x2154 <zte_power_supply_get_battery_info+0x60c>
    2048: 8b0902aa     	add	x10, x21, x9
    204c: 9100112c     	add	x12, x9, #0x4
    2050: b940014b     	ldr	w11, [x10]
    2054: eb0c02df     	cmp	x22, x12
    2058: 5ac0096b     	rev	w11, w11
    205c: b829680b     	str	w11, [x0, x9]
    2060: 540007a3     	b.lo	0x2154 <zte_power_supply_get_battery_info+0x60c>
    2064: b940054a     	ldr	w10, [x10, #0x4]
    2068: 8b09000b     	add	x11, x0, x9
    206c: 91002129     	add	x9, x9, #0x8
    2070: 2a1f03f4     	mov	w20, wzr
    2074: eb09011f     	cmp	x8, x9
    2078: 5ac0094a     	rev	w10, w10
    207c: b900056a     	str	w10, [x11, #0x4]
    2080: 54fffe01     	b.ne	0x2040 <zte_power_supply_get_battery_info+0x4f8>
    2084: 17ffffc5     	b	0x1f98 <zte_power_supply_get_battery_info+0x450>
    2088: 2a1f03f4     	mov	w20, wzr
    208c: 17ffffc3     	b	0x1f98 <zte_power_supply_get_battery_info+0x450>
    2090: f94013e8     	ldr	x8, [sp, #0x20]
    2094: 90000001     	adrp	x1, 0x2000 <zte_power_supply_get_battery_info+0x4b8>
		0000000000002094:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e0
    2098: 91000021     	add	x1, x1, #0x0
		0000000000002098:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e0
    209c: 9100e100     	add	x0, x8, #0x38
    20a0: 94000000     	bl	0x20a0 <zte_power_supply_get_battery_info+0x558>
		00000000000020a0:  R_AARCH64_CALL26	_dev_err
    20a4: 128002b4     	mov	w20, #-0x16             // =-22
    20a8: 17ffffbc     	b	0x1f98 <zte_power_supply_get_battery_info+0x450>
    20ac: f94013f5     	ldr	x21, [sp, #0x20]
    20b0: 90000001     	adrp	x1, 0x2000 <zte_power_supply_get_battery_info+0x4b8>
		00000000000020b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3dd
    20b4: 91000021     	add	x1, x1, #0x0
		00000000000020b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3dd
    20b8: aa1903e2     	mov	x2, x25
    20bc: 9100e2a0     	add	x0, x21, #0x38
    20c0: 94000000     	bl	0x20c0 <zte_power_supply_get_battery_info+0x578>
		00000000000020c0:  R_AARCH64_CALL26	_dev_err
    20c4: aa1903e0     	mov	x0, x25
    20c8: 94000000     	bl	0x20c8 <zte_power_supply_get_battery_info+0x580>
		00000000000020c8:  R_AARCH64_CALL26	kfree
    20cc: aa1f03f4     	mov	x20, xzr
    20d0: 14000004     	b	0x20e0 <zte_power_supply_get_battery_info+0x598>
    20d4: 91002294     	add	x20, x20, #0x8
    20d8: f102829f     	cmp	x20, #0xa0
    20dc: 540000c0     	b.eq	0x20f4 <zte_power_supply_get_battery_info+0x5ac>
    20e0: f8746a61     	ldr	x1, [x19, x20]
    20e4: b4ffff81     	cbz	x1, 0x20d4 <zte_power_supply_get_battery_info+0x58c>
    20e8: 9100e2a0     	add	x0, x21, #0x38
    20ec: 94000000     	bl	0x20ec <zte_power_supply_get_battery_info+0x5a4>
		00000000000020ec:  R_AARCH64_CALL26	devm_kfree
    20f0: 17fffff9     	b	0x20d4 <zte_power_supply_get_battery_info+0x58c>
    20f4: f9400fe8     	ldr	x8, [sp, #0x18]
    20f8: 128002b4     	mov	w20, #-0x16             // =-22
    20fc: f940dd01     	ldr	x1, [x8, #0x1b8]
    2100: b5000241     	cbnz	x1, 0x2148 <zte_power_supply_get_battery_info+0x600>
    2104: 17ffffa5     	b	0x1f98 <zte_power_supply_get_battery_info+0x450>
    2108: f8347a7f     	str	xzr, [x19, x20, lsl #3]
    210c: f94013f5     	ldr	x21, [sp, #0x20]
    2110: aa1f03f4     	mov	x20, xzr
    2114: 14000004     	b	0x2124 <zte_power_supply_get_battery_info+0x5dc>
    2118: 91002294     	add	x20, x20, #0x8
    211c: f102829f     	cmp	x20, #0xa0
    2120: 540000c0     	b.eq	0x2138 <zte_power_supply_get_battery_info+0x5f0>
    2124: f8746a61     	ldr	x1, [x19, x20]
    2128: b4ffff81     	cbz	x1, 0x2118 <zte_power_supply_get_battery_info+0x5d0>
    212c: 9100e2a0     	add	x0, x21, #0x38
    2130: 94000000     	bl	0x2130 <zte_power_supply_get_battery_info+0x5e8>
		0000000000002130:  R_AARCH64_CALL26	devm_kfree
    2134: 17fffff9     	b	0x2118 <zte_power_supply_get_battery_info+0x5d0>
    2138: f9400fe8     	ldr	x8, [sp, #0x18]
    213c: 12800174     	mov	w20, #-0xc              // =-12
    2140: f940dd01     	ldr	x1, [x8, #0x1b8]
    2144: b4fff2a1     	cbz	x1, 0x1f98 <zte_power_supply_get_battery_info+0x450>
    2148: 9100e2a0     	add	x0, x21, #0x38
    214c: 94000000     	bl	0x214c <zte_power_supply_get_battery_info+0x604>
		000000000000214c:  R_AARCH64_CALL26	devm_kfree
    2150: 17ffff92     	b	0x1f98 <zte_power_supply_get_battery_info+0x450>
    2154: d4200020     	brk	#0x1
    2158: f94013f3     	ldr	x19, [sp, #0x20]
    215c: f900de9f     	str	xzr, [x20, #0x1b8]
    2160: aa1303e0     	mov	x0, x19
    2164: aa1403e1     	mov	x1, x20
    2168: 94000000     	bl	0x2168 <zte_power_supply_get_battery_info+0x620>
		0000000000002168:  R_AARCH64_CALL26	zte_power_supply_put_battery_info
    216c: 12800174     	mov	w20, #-0xc              // =-12
    2170: 17ffff8a     	b	0x1f98 <zte_power_supply_get_battery_info+0x450>
    2174: 94000000     	bl	0x2174 <zte_power_supply_get_battery_info+0x62c>
		0000000000002174:  R_AARCH64_CALL26	__stack_chk_fail
    2178: d42aa240     	brk	#0x5512
