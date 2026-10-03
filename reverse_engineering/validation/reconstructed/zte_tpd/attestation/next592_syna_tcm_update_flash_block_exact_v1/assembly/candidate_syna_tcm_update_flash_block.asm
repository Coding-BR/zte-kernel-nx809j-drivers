
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001d34 <syna_tcm_update_flash_block>:
    1d34: d503233f     	paciasp
    1d38: d10243ff     	sub	sp, sp, #0x90
    1d3c: a9037bfd     	stp	x29, x30, [sp, #0x30]
    1d40: a9046ffc     	stp	x28, x27, [sp, #0x40]
    1d44: a90567fa     	stp	x26, x25, [sp, #0x50]
    1d48: a9065ff8     	stp	x24, x23, [sp, #0x60]
    1d4c: a90757f6     	stp	x22, x21, [sp, #0x70]
    1d50: a9084ff4     	stp	x20, x19, [sp, #0x80]
    1d54: 9100c3fd     	add	x29, sp, #0x30
    1d58: d5384108     	mrs	x8, SP_EL0
    1d5c: f9438908     	ldr	x8, [x8, #0x710]
    1d60: f81f83a8     	stur	x8, [x29, #-0x8]
    1d64: b4000381     	cbz	x1, 0x1dd4 <syna_tcm_update_flash_block+0xa0>
    1d68: aa0203f3     	mov	x19, x2
    1d6c: b40003a2     	cbz	x2, 0x1de0 <syna_tcm_update_flash_block+0xac>
    1d70: aa1303e2     	mov	x2, x19
    1d74: 2a0503fa     	mov	w26, w5
    1d78: 2a0403f7     	mov	w23, w4
    1d7c: 2a0303fc     	mov	w28, w3
    1d80: aa0103f4     	mov	x20, x1
    1d84: aa0003f8     	mov	x24, x0
    1d88: 94000000     	bl	0x1d88 <syna_tcm_update_flash_block+0x54>
		0000000000001d88:  R_AARCH64_CALL26	syna_tcm_check_flash_block
    1d8c: 2a0003f5     	mov	w21, w0
    1d90: 37f80360     	tbnz	w0, #0x1f, 0x1dfc <syna_tcm_update_flash_block+0xc8>
    1d94: 35000415     	cbnz	w21, 0x1e14 <syna_tcm_update_flash_block+0xe0>
    1d98: d5384108     	mrs	x8, SP_EL0
    1d9c: f9438908     	ldr	x8, [x8, #0x710]
    1da0: f85f83a9     	ldur	x9, [x29, #-0x8]
    1da4: eb09011f     	cmp	x8, x9
    1da8: 54003fe1     	b.ne	0x25a4 <syna_tcm_update_flash_block+0x870>
    1dac: 2a1503e0     	mov	w0, w21
    1db0: a9484ff4     	ldp	x20, x19, [sp, #0x80]
    1db4: a94757f6     	ldp	x22, x21, [sp, #0x70]
    1db8: a9465ff8     	ldp	x24, x23, [sp, #0x60]
    1dbc: a94567fa     	ldp	x26, x25, [sp, #0x50]
    1dc0: a9446ffc     	ldp	x28, x27, [sp, #0x40]
    1dc4: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    1dc8: 910243ff     	add	sp, sp, #0x90
    1dcc: d50323bf     	autiasp
    1dd0: d65f03c0     	ret
    1dd4: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001dd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x29ae
    1dd8: 91000000     	add	x0, x0, #0x0
		0000000000001dd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x29ae
    1ddc: 14000003     	b	0x1de8 <syna_tcm_update_flash_block+0xb4>
    1de0: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001de0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x42e
    1de4: 91000000     	add	x0, x0, #0x0
		0000000000001de4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x42e
    1de8: 90000001     	adrp	x1, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001de8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9e8a
    1dec: 91000021     	add	x1, x1, #0x0
		0000000000001dec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9e8a
    1df0: 94000000     	bl	0x1df0 <syna_tcm_update_flash_block+0xbc>
		0000000000001df0:  R_AARCH64_CALL26	_printk
    1df4: 12801e15     	mov	w21, #-0xf1             // =-241
    1df8: 17ffffe8     	b	0x1d98 <syna_tcm_update_flash_block+0x64>
    1dfc: 39406260     	ldrb	w0, [x19, #0x18]
    1e00: 94000000     	bl	0x1e00 <syna_tcm_update_flash_block+0xcc>
		0000000000001e00:  R_AARCH64_CALL26	syna_tcm_get_partition_id_string
    1e04: aa0003e2     	mov	x2, x0
    1e08: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001e08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9e1e
    1e0c: 91000000     	add	x0, x0, #0x0
		0000000000001e0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9e1e
    1e10: 140001d6     	b	0x2568 <syna_tcm_update_flash_block+0x834>
    1e14: 39406260     	ldrb	w0, [x19, #0x18]
    1e18: 94000000     	bl	0x1e18 <syna_tcm_update_flash_block+0xe4>
		0000000000001e18:  R_AARCH64_CALL26	syna_tcm_get_partition_id_string
    1e1c: aa0003e2     	mov	x2, x0
    1e20: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001e20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x450
    1e24: 91000000     	add	x0, x0, #0x0
		0000000000001e24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x450
    1e28: 90000001     	adrp	x1, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001e28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9e8a
    1e2c: 91000021     	add	x1, x1, #0x0
		0000000000001e2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9e8a
    1e30: 94000000     	bl	0x1e30 <syna_tcm_update_flash_block+0xfc>
		0000000000001e30:  R_AARCH64_CALL26	_printk
    1e34: 3600009a     	tbz	w26, #0x0, 0x1e44 <syna_tcm_update_flash_block+0x110>
    1e38: 90000015     	adrp	x21, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001e38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb992
    1e3c: 910002b5     	add	x21, x21, #0x0
		0000000000001e3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb992
    1e40: 1400000b     	b	0x1e6c <syna_tcm_update_flash_block+0x138>
    1e44: b9401279     	ldr	w25, [x19, #0x10]
    1e48: 35001b39     	cbnz	w25, 0x21ac <syna_tcm_update_flash_block+0x478>
    1e4c: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001e4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x478
    1e50: 91000000     	add	x0, x0, #0x0
		0000000000001e50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x478
    1e54: 90000001     	adrp	x1, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001e54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8fa6
    1e58: 91000021     	add	x1, x1, #0x0
		0000000000001e58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8fa6
    1e5c: 2a1f03e2     	mov	w2, wzr
    1e60: 94000000     	bl	0x1e60 <syna_tcm_update_flash_block+0x12c>
		0000000000001e60:  R_AARCH64_CALL26	_printk
    1e64: 90000015     	adrp	x21, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001e64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4a4
    1e68: 910002b5     	add	x21, x21, #0x0
		0000000000001e68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4a4
    1e6c: 39406260     	ldrb	w0, [x19, #0x18]
    1e70: 94000000     	bl	0x1e70 <syna_tcm_update_flash_block+0x13c>
		0000000000001e70:  R_AARCH64_CALL26	syna_tcm_get_partition_id_string
    1e74: aa0003e2     	mov	x2, x0
    1e78: 90000001     	adrp	x1, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001e78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8fa6
    1e7c: 91000021     	add	x1, x1, #0x0
		0000000000001e7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8fa6
    1e80: aa1503e0     	mov	x0, x21
    1e84: 94000000     	bl	0x1e84 <syna_tcm_update_flash_block+0x150>
		0000000000001e84:  R_AARCH64_CALL26	_printk
    1e88: 39406260     	ldrb	w0, [x19, #0x18]
    1e8c: 94000000     	bl	0x1e8c <syna_tcm_update_flash_block+0x158>
		0000000000001e8c:  R_AARCH64_CALL26	syna_tcm_get_partition_id_string
    1e90: aa0003e2     	mov	x2, x0
    1e94: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001e94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1086
    1e98: 91000000     	add	x0, x0, #0x0
		0000000000001e98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1086
    1e9c: 90000001     	adrp	x1, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001e9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9e8a
    1ea0: 91000021     	add	x1, x1, #0x0
		0000000000001ea0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9e8a
    1ea4: 94000000     	bl	0x1ea4 <syna_tcm_update_flash_block+0x170>
		0000000000001ea4:  R_AARCH64_CALL26	_printk
    1ea8: b940126a     	ldr	w10, [x19, #0x10]
    1eac: 3500022a     	cbnz	w10, 0x1ef0 <syna_tcm_update_flash_block+0x1bc>
    1eb0: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001eb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5a34
    1eb4: 91000000     	add	x0, x0, #0x0
		0000000000001eb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5a34
    1eb8: 90000001     	adrp	x1, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001eb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c2
    1ebc: 91000021     	add	x1, x1, #0x0
		0000000000001ebc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c2
    1ec0: 2a1f03e2     	mov	w2, wzr
    1ec4: 94000000     	bl	0x1ec4 <syna_tcm_update_flash_block+0x190>
		0000000000001ec4:  R_AARCH64_CALL26	_printk
    1ec8: 39406260     	ldrb	w0, [x19, #0x18]
    1ecc: 94000000     	bl	0x1ecc <syna_tcm_update_flash_block+0x198>
		0000000000001ecc:  R_AARCH64_CALL26	syna_tcm_get_partition_id_string
    1ed0: aa0003e2     	mov	x2, x0
    1ed4: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001ed4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6084
    1ed8: 91000000     	add	x0, x0, #0x0
		0000000000001ed8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6084
    1edc: 90000001     	adrp	x1, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001edc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c2
    1ee0: 91000021     	add	x1, x1, #0x0
		0000000000001ee0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c2
    1ee4: 94000000     	bl	0x1ee4 <syna_tcm_update_flash_block+0x1b0>
		0000000000001ee4:  R_AARCH64_CALL26	_printk
    1ee8: 2a1f03f5     	mov	w21, wzr
    1eec: 17ffffab     	b	0x1d98 <syna_tcm_update_flash_block+0x64>
    1ef0: b9401679     	ldr	w25, [x19, #0x14]
    1ef4: b9402e95     	ldr	w21, [x20, #0x2c]
    1ef8: 1ad50b28     	udiv	w8, w25, w21
    1efc: 1b15e509     	msub	w9, w8, w21, w25
    1f00: 35001749     	cbnz	w9, 0x21e8 <syna_tcm_update_flash_block+0x4b4>
    1f04: f9400663     	ldr	x3, [x19, #0x8]
    1f08: 3600191a     	tbz	w26, #0x0, 0x2228 <syna_tcm_update_flash_block+0x4f4>
    1f0c: 39422289     	ldrb	w9, [x20, #0x88]
    1f10: 36001ca9     	tbz	w9, #0x0, 0x22a4 <syna_tcm_update_flash_block+0x570>
    1f14: 0b150149     	add	w9, w10, w21
    1f18: b81f03aa     	stur	w10, [x29, #-0x10]
    1f1c: b940328a     	ldr	w10, [x20, #0x30]
    1f20: 51000529     	sub	w9, w9, #0x1
    1f24: 39420282     	ldrb	w2, [x20, #0x80]
    1f28: f90007e3     	str	x3, [sp, #0x8]
    1f2c: 1ad50929     	udiv	w9, w9, w21
    1f30: b90017f7     	str	w23, [sp, #0x14]
    1f34: 1ad50956     	udiv	w22, w10, w21
    1f38: 0b080128     	add	w8, w9, w8
    1f3c: b81ec3a8     	stur	w8, [x29, #-0x14]
    1f40: 340000c2     	cbz	w2, 0x1f58 <syna_tcm_update_flash_block+0x224>
    1f44: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001f44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x706c
    1f48: 91000000     	add	x0, x0, #0x0
		0000000000001f48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x706c
    1f4c: 90000001     	adrp	x1, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001f4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x709c
    1f50: 91000021     	add	x1, x1, #0x0
		0000000000001f50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x709c
    1f54: 94000000     	bl	0x1f54 <syna_tcm_update_flash_block+0x220>
		0000000000001f54:  R_AARCH64_CALL26	_printk
    1f58: 1b157ec8     	mul	w8, w22, w21
    1f5c: 91014280     	add	x0, x20, #0x50
    1f60: b9001be8     	str	w8, [sp, #0x18]
    1f64: 94000000     	bl	0x1f64 <syna_tcm_update_flash_block+0x230>
		0000000000001f64:  R_AARCH64_CALL26	mutex_lock
    1f68: b85ec3a9     	ldur	w9, [x29, #-0x14]
    1f6c: 39420288     	ldrb	w8, [x20, #0x80]
    1f70: 2a1f03f6     	mov	w22, wzr
    1f74: b85f03b7     	ldur	w23, [x29, #-0x10]
    1f78: 53087d29     	lsr	w9, w9, #8
    1f7c: 11000508     	add	w8, w8, #0x1
    1f80: 39020288     	strb	w8, [x20, #0x80]
    1f84: b90013e9     	str	w9, [sp, #0x10]
    1f88: b9401be8     	ldr	w8, [sp, #0x18]
    1f8c: b9404a82     	ldr	w2, [x20, #0x48]
    1f90: f9402280     	ldr	x0, [x20, #0x40]
    1f94: 6b0802ff     	cmp	w23, w8
    1f98: 1a8832fc     	csel	w28, w23, w8, lo
    1f9c: 11001b9b     	add	w27, w28, #0x6
    1fa0: 6b1b005f     	cmp	w2, w27
    1fa4: 54000242     	b.hs	0x1fec <syna_tcm_update_flash_block+0x2b8>
    1fa8: b40000c0     	cbz	x0, 0x1fc0 <syna_tcm_update_flash_block+0x28c>
    1fac: aa0003f5     	mov	x21, x0
    1fb0: 94000000     	bl	0x1fb0 <syna_tcm_update_flash_block+0x27c>
		0000000000001fb0:  R_AARCH64_CALL26	syna_request_managed_device
    1fb4: b4000e80     	cbz	x0, 0x2184 <syna_tcm_update_flash_block+0x450>
    1fb8: aa1503e1     	mov	x1, x21
    1fbc: 94000000     	bl	0x1fbc <syna_tcm_update_flash_block+0x288>
		0000000000001fbc:  R_AARCH64_CALL26	devm_kfree
    1fc0: 94000000     	bl	0x1fc0 <syna_tcm_update_flash_block+0x28c>
		0000000000001fc0:  R_AARCH64_CALL26	syna_request_managed_device
    1fc4: b4000ee0     	cbz	x0, 0x21a0 <syna_tcm_update_flash_block+0x46c>
    1fc8: 7100037f     	cmp	w27, #0x0
    1fcc: 5400252d     	b.le	0x2470 <syna_tcm_update_flash_block+0x73c>
    1fd0: aa1b03e1     	mov	x1, x27
    1fd4: 5281b802     	mov	w2, #0xdc0              // =3520
    1fd8: 94000000     	bl	0x1fd8 <syna_tcm_update_flash_block+0x2a4>
		0000000000001fd8:  R_AARCH64_CALL26	devm_kmalloc
    1fdc: f9002280     	str	x0, [x20, #0x40]
    1fe0: b4002540     	cbz	x0, 0x2488 <syna_tcm_update_flash_block+0x754>
    1fe4: aa1b03e2     	mov	x2, x27
    1fe8: b9004a9b     	str	w27, [x20, #0x48]
    1fec: 2a1f03e1     	mov	w1, wzr
    1ff0: 94000000     	bl	0x1ff0 <syna_tcm_update_flash_block+0x2bc>
		0000000000001ff0:  R_AARCH64_CALL26	memset
    1ff4: b9402e88     	ldr	w8, [x20, #0x2c]
    1ff8: 0b1902cc     	add	w12, w22, w25
    1ffc: b85f03ab     	ldur	w11, [x29, #-0x10]
    2000: f9402289     	ldr	x9, [x20, #0x40]
    2004: b9004e9f     	str	wzr, [x20, #0x4c]
    2008: 1ac80988     	udiv	w8, w12, w8
    200c: 6b0b02ff     	cmp	w23, w11
    2010: 1a9f17ea     	cset	w10, eq
    2014: 3900012a     	strb	w10, [x9]
    2018: f9402289     	ldr	x9, [x20, #0x40]
    201c: 39000928     	strb	w8, [x9, #0x2]
    2020: 53087d08     	lsr	w8, w8, #8
    2024: f9402289     	ldr	x9, [x20, #0x40]
    2028: 39000d28     	strb	w8, [x9, #0x3]
    202c: b85ec3a9     	ldur	w9, [x29, #-0x14]
    2030: f9402288     	ldr	x8, [x20, #0x40]
    2034: 39001109     	strb	w9, [x8, #0x4]
    2038: b94013e9     	ldr	w9, [sp, #0x10]
    203c: f9402288     	ldr	x8, [x20, #0x40]
    2040: 39001509     	strb	w9, [x8, #0x5]
    2044: b9402e88     	ldr	w8, [x20, #0x2c]
    2048: 34000088     	cbz	w8, 0x2058 <syna_tcm_update_flash_block+0x324>
    204c: 0b080389     	add	w9, w28, w8
    2050: 51000529     	sub	w9, w9, #0x1
    2054: 1ac80928     	udiv	w8, w9, w8
    2058: f94007ea     	ldr	x10, [sp, #0x8]
    205c: b94017e9     	ldr	w9, [sp, #0x14]
    2060: 34000129     	cbz	w9, 0x2084 <syna_tcm_update_flash_block+0x350>
    2064: 1b097d08     	mul	w8, w8, w9
    2068: 5289ba69     	mov	w9, #0x4dd3             // =19923
    206c: 72a20c49     	movk	w9, #0x1062, lsl #16
    2070: 9ba97d08     	umull	x8, w8, w9
    2074: d366fd15     	lsr	x21, x8, #38
    2078: ab364141     	adds	x1, x10, w22, uxtw
    207c: 540000a1     	b.ne	0x2090 <syna_tcm_update_flash_block+0x35c>
    2080: 140000cb     	b	0x23ac <syna_tcm_update_flash_block+0x678>
    2084: 2a1f03f5     	mov	w21, wzr
    2088: ab364141     	adds	x1, x10, w22, uxtw
    208c: 54001900     	b.eq	0x23ac <syna_tcm_update_flash_block+0x678>
    2090: f9402288     	ldr	x8, [x20, #0x40]
    2094: 91001900     	add	x0, x8, #0x6
    2098: b40018a0     	cbz	x0, 0x23ac <syna_tcm_update_flash_block+0x678>
    209c: b9404a88     	ldr	w8, [x20, #0x48]
    20a0: 4b160162     	sub	w2, w11, w22
    20a4: 6b02039f     	cmp	w28, w2
    20a8: 51001903     	sub	w3, w8, #0x6
    20ac: 54001748     	b.hi	0x2394 <syna_tcm_update_flash_block+0x660>
    20b0: 6b03039f     	cmp	w28, w3
    20b4: 54001708     	b.hi	0x2394 <syna_tcm_update_flash_block+0x660>
    20b8: aa1c03e2     	mov	x2, x28
    20bc: b90007ec     	str	w12, [sp, #0x4]
    20c0: 2a1903fa     	mov	w26, w25
    20c4: 94000000     	bl	0x20c4 <syna_tcm_update_flash_block+0x390>
		00000000000020c4:  R_AARCH64_CALL26	memcpy
    20c8: 39402702     	ldrb	w2, [x24, #0x9]
    20cc: f9402299     	ldr	x25, [x20, #0x40]
    20d0: 71002c5f     	cmp	w2, #0xb
    20d4: 540003a1     	b.ne	0x2148 <syna_tcm_update_flash_block+0x414>
    20d8: 350000b5     	cbnz	w21, 0x20ec <syna_tcm_update_flash_block+0x3b8>
    20dc: f9402708     	ldr	x8, [x24, #0x48]
    20e0: 39405108     	ldrb	w8, [x8, #0x14]
    20e4: 36000408     	tbz	w8, #0x0, 0x2164 <syna_tcm_update_flash_block+0x430>
    20e8: 2a1f03f5     	mov	w21, wzr
    20ec: f941cf08     	ldr	x8, [x24, #0x398]
    20f0: aa1803e0     	mov	x0, x24
    20f4: 52801fc1     	mov	w1, #0xfe               // =254
    20f8: aa1903e2     	mov	x2, x25
    20fc: 2a1b03e3     	mov	w3, w27
    2100: aa1f03e4     	mov	x4, xzr
    2104: 2a1503e5     	mov	w5, w21
    2108: b85fc110     	ldur	w16, [x8, #-0x4]
    210c: 728751d1     	movk	w17, #0x3a8e
    2110: 72a48411     	movk	w17, #0x2420, lsl #16
    2114: 6b11021f     	cmp	w16, w17
    2118: 54000040     	b.eq	0x2120 <syna_tcm_update_flash_block+0x3ec>
    211c: d4304500     	brk	#0x8228
    2120: d63f0100     	blr	x8
    2124: 37f81740     	tbnz	w0, #0x1f, 0x240c <syna_tcm_update_flash_block+0x6d8>
    2128: b9409288     	ldr	w8, [x20, #0x90]
    212c: 6b1c02f7     	subs	w23, w23, w28
    2130: 0b160396     	add	w22, w28, w22
    2134: 2a1a03f9     	mov	w25, w26
    2138: 0b1c0108     	add	w8, w8, w28
    213c: b9009288     	str	w8, [x20, #0x90]
    2140: 54fff241     	b.ne	0x1f88 <syna_tcm_update_flash_block+0x254>
    2144: 140000c6     	b	0x245c <syna_tcm_update_flash_block+0x728>
    2148: 90000000     	adrp	x0, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002148:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x67e0
    214c: 91000000     	add	x0, x0, #0x0
		000000000000214c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x67e0
    2150: 90000001     	adrp	x1, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002150:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x79fc
    2154: 91000021     	add	x1, x1, #0x0
		0000000000002154:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x79fc
    2158: 94000000     	bl	0x2158 <syna_tcm_update_flash_block+0x424>
		0000000000002158:  R_AARCH64_CALL26	_printk
    215c: 35fffc95     	cbnz	w21, 0x20ec <syna_tcm_update_flash_block+0x3b8>
    2160: 17ffffdf     	b	0x20dc <syna_tcm_update_flash_block+0x3a8>
    2164: b9420f15     	ldr	w21, [x24, #0x20c]
    2168: 90000000     	adrp	x0, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002168:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x54e4
    216c: 91000000     	add	x0, x0, #0x0
		000000000000216c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x54e4
    2170: 90000001     	adrp	x1, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002170:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x79fc
    2174: 91000021     	add	x1, x1, #0x0
		0000000000002174:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x79fc
    2178: 2a1503e2     	mov	w2, w21
    217c: 94000000     	bl	0x217c <syna_tcm_update_flash_block+0x448>
		000000000000217c:  R_AARCH64_CALL26	_printk
    2180: 17ffffdb     	b	0x20ec <syna_tcm_update_flash_block+0x3b8>
    2184: 90000000     	adrp	x0, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002184:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafb2
    2188: 91000000     	add	x0, x0, #0x0
		0000000000002188:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafb2
    218c: 90000001     	adrp	x1, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		000000000000218c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa204
    2190: 91000021     	add	x1, x1, #0x0
		0000000000002190:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa204
    2194: 94000000     	bl	0x2194 <syna_tcm_update_flash_block+0x460>
		0000000000002194:  R_AARCH64_CALL26	_printk
    2198: 94000000     	bl	0x2198 <syna_tcm_update_flash_block+0x464>
		0000000000002198:  R_AARCH64_CALL26	syna_request_managed_device
    219c: b5fff160     	cbnz	x0, 0x1fc8 <syna_tcm_update_flash_block+0x294>
    21a0: 90000000     	adrp	x0, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		00000000000021a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafb2
    21a4: 91000000     	add	x0, x0, #0x0
		00000000000021a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafb2
    21a8: 140000b4     	b	0x2478 <syna_tcm_update_flash_block+0x744>
    21ac: b9401676     	ldr	w22, [x19, #0x14]
    21b0: b9402a88     	ldr	w8, [x20, #0x28]
    21b4: 1ac80adb     	udiv	w27, w22, w8
    21b8: 1b08db69     	msub	w9, w27, w8, w22
    21bc: 35000269     	cbnz	w9, 0x2208 <syna_tcm_update_flash_block+0x4d4>
    21c0: 0b080329     	add	w9, w25, w8
    21c4: b81f43bf     	stur	wzr, [x29, #-0xc]
    21c8: 51000529     	sub	w9, w9, #0x1
    21cc: 1ac80929     	udiv	w9, w9, w8
    21d0: 2a1b0128     	orr	w8, w9, w27
    21d4: 7104011f     	cmp	w8, #0x100
    21d8: 540003c2     	b.hs	0x2250 <syna_tcm_update_flash_block+0x51c>
    21dc: 52800055     	mov	w21, #0x2               // =2
    21e0: 2a0903e8     	mov	w8, w9
    21e4: 1400001e     	b	0x225c <syna_tcm_update_flash_block+0x528>
    21e8: 90000000     	adrp	x0, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		00000000000021e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8b0a
    21ec: 91000000     	add	x0, x0, #0x0
		00000000000021ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8b0a
    21f0: 90000001     	adrp	x1, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		00000000000021f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c2
    21f4: 91000021     	add	x1, x1, #0x0
		00000000000021f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c2
    21f8: 2a1903e2     	mov	w2, w25
    21fc: 94000000     	bl	0x21fc <syna_tcm_update_flash_block+0x4c8>
		00000000000021fc:  R_AARCH64_CALL26	_printk
    2200: 12801e15     	mov	w21, #-0xf1             // =-241
    2204: 140000d4     	b	0x2554 <syna_tcm_update_flash_block+0x820>
    2208: 90000000     	adrp	x0, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002208:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa59c
    220c: 91000000     	add	x0, x0, #0x0
		000000000000220c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa59c
    2210: 90000001     	adrp	x1, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002210:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8fa6
    2214: 91000021     	add	x1, x1, #0x0
		0000000000002214:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8fa6
    2218: 2a1603e2     	mov	w2, w22
    221c: 94000000     	bl	0x221c <syna_tcm_update_flash_block+0x4e8>
		000000000000221c:  R_AARCH64_CALL26	_printk
    2220: 12801e15     	mov	w21, #-0xf1             // =-241
    2224: 14000056     	b	0x237c <syna_tcm_update_flash_block+0x648>
    2228: aa1803e0     	mov	x0, x24
    222c: aa1403e1     	mov	x1, x20
    2230: 2a1903e2     	mov	w2, w25
    2234: 2a0a03e4     	mov	w4, w10
    2238: 2a1703e5     	mov	w5, w23
    223c: 2a0a03f4     	mov	w20, w10
    2240: 94000000     	bl	0x2240 <syna_tcm_update_flash_block+0x50c>
		0000000000002240:  R_AARCH64_CALL26	syna_tcm_write_flash
    2244: 2a0003f5     	mov	w21, w0
    2248: 36ffe400     	tbz	w0, #0x1f, 0x1ec8 <syna_tcm_update_flash_block+0x194>
    224c: 140000b8     	b	0x252c <syna_tcm_update_flash_block+0x7f8>
    2250: 53087f68     	lsr	w8, w27, #8
    2254: 52800095     	mov	w21, #0x4               // =4
    2258: 781f63a9     	sturh	w9, [x29, #-0xa]
    225c: 39402702     	ldrb	w2, [x24, #0x9]
    2260: 1b1c7d3c     	mul	w28, w9, w28
    2264: b81f03a9     	stur	w9, [x29, #-0x10]
    2268: 381f43bb     	sturb	w27, [x29, #-0xc]
    226c: 71002c5f     	cmp	w2, #0xb
    2270: 381f53a8     	sturb	w8, [x29, #-0xb]
    2274: 540000c0     	b.eq	0x228c <syna_tcm_update_flash_block+0x558>
    2278: 90000000     	adrp	x0, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002278:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x67e0
    227c: 91000000     	add	x0, x0, #0x0
		000000000000227c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x67e0
    2280: 90000001     	adrp	x1, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002280:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x79fc
    2284: 91000021     	add	x1, x1, #0x0
		0000000000002284:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x79fc
    2288: 94000000     	bl	0x2288 <syna_tcm_update_flash_block+0x554>
		0000000000002288:  R_AARCH64_CALL26	_printk
    228c: 350002bc     	cbnz	w28, 0x22e0 <syna_tcm_update_flash_block+0x5ac>
    2290: f9402708     	ldr	x8, [x24, #0x48]
    2294: 39405108     	ldrb	w8, [x8, #0x14]
    2298: 36000168     	tbz	w8, #0x0, 0x22c4 <syna_tcm_update_flash_block+0x590>
    229c: 2a1f03fc     	mov	w28, wzr
    22a0: 14000010     	b	0x22e0 <syna_tcm_update_flash_block+0x5ac>
    22a4: 90000000     	adrp	x0, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		00000000000022a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x680e
    22a8: 91000000     	add	x0, x0, #0x0
		00000000000022a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x680e
    22ac: 90000001     	adrp	x1, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		00000000000022ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15e6
    22b0: 91000021     	add	x1, x1, #0x0
		00000000000022b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15e6
    22b4: 2a0a03f4     	mov	w20, w10
    22b8: 94000000     	bl	0x22b8 <syna_tcm_update_flash_block+0x584>
		00000000000022b8:  R_AARCH64_CALL26	_printk
    22bc: 12801e15     	mov	w21, #-0xf1             // =-241
    22c0: 1400009b     	b	0x252c <syna_tcm_update_flash_block+0x7f8>
    22c4: b9420f1c     	ldr	w28, [x24, #0x20c]
    22c8: 90000000     	adrp	x0, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		00000000000022c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x54e4
    22cc: 91000000     	add	x0, x0, #0x0
		00000000000022cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x54e4
    22d0: 90000001     	adrp	x1, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		00000000000022d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x79fc
    22d4: 91000021     	add	x1, x1, #0x0
		00000000000022d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x79fc
    22d8: 2a1c03e2     	mov	w2, w28
    22dc: 94000000     	bl	0x22dc <syna_tcm_update_flash_block+0x5a8>
		00000000000022dc:  R_AARCH64_CALL26	_printk
    22e0: f941cf08     	ldr	x8, [x24, #0x398]
    22e4: d10033a2     	sub	x2, x29, #0xc
    22e8: aa1803e0     	mov	x0, x24
    22ec: 52800221     	mov	w1, #0x11               // =17
    22f0: 2a1503e3     	mov	w3, w21
    22f4: aa1f03e4     	mov	x4, xzr
    22f8: 2a1c03e5     	mov	w5, w28
    22fc: b85fc110     	ldur	w16, [x8, #-0x4]
    2300: 728751d1     	movk	w17, #0x3a8e
    2304: 72a48411     	movk	w17, #0x2420, lsl #16
    2308: 6b11021f     	cmp	w16, w17
    230c: 54000040     	b.eq	0x2314 <syna_tcm_update_flash_block+0x5e0>
    2310: d4304500     	brk	#0x8228
    2314: d63f0100     	blr	x8
    2318: 36ffda60     	tbz	w0, #0x1f, 0x1e64 <syna_tcm_update_flash_block+0x130>
    231c: 2a0003f5     	mov	w21, w0
    2320: 90000000     	adrp	x0, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002320:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8a5e
    2324: 91000000     	add	x0, x0, #0x0
		0000000000002324:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8a5e
    2328: 90000001     	adrp	x1, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002328:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x79fc
    232c: 91000021     	add	x1, x1, #0x0
		000000000000232c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x79fc
    2330: 52800222     	mov	w2, #0x11               // =17
    2334: 94000000     	bl	0x2334 <syna_tcm_update_flash_block+0x600>
		0000000000002334:  R_AARCH64_CALL26	_printk
    2338: b85f03a3     	ldur	w3, [x29, #-0x10]
    233c: 90000000     	adrp	x0, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		000000000000233c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x50c2
    2340: 91000000     	add	x0, x0, #0x0
		0000000000002340:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x50c2
    2344: 90000001     	adrp	x1, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002344:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d2e
    2348: 91000021     	add	x1, x1, #0x0
		0000000000002348:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d2e
    234c: 2a1b03e2     	mov	w2, w27
    2350: 94000000     	bl	0x2350 <syna_tcm_update_flash_block+0x61c>
		0000000000002350:  R_AARCH64_CALL26	_printk
    2354: 39406260     	ldrb	w0, [x19, #0x18]
    2358: 94000000     	bl	0x2358 <syna_tcm_update_flash_block+0x624>
		0000000000002358:  R_AARCH64_CALL26	syna_tcm_get_partition_id_string
    235c: aa0003e2     	mov	x2, x0
    2360: 90000000     	adrp	x0, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002360:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa5e6
    2364: 91000000     	add	x0, x0, #0x0
		0000000000002364:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa5e6
    2368: 90000001     	adrp	x1, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002368:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8fa6
    236c: 91000021     	add	x1, x1, #0x0
		000000000000236c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8fa6
    2370: 2a1603e3     	mov	w3, w22
    2374: 2a1903e4     	mov	w4, w25
    2378: 94000000     	bl	0x2378 <syna_tcm_update_flash_block+0x644>
		0000000000002378:  R_AARCH64_CALL26	_printk
    237c: 39406260     	ldrb	w0, [x19, #0x18]
    2380: 94000000     	bl	0x2380 <syna_tcm_update_flash_block+0x64c>
		0000000000002380:  R_AARCH64_CALL26	syna_tcm_get_partition_id_string
    2384: aa0003e2     	mov	x2, x0
    2388: 90000000     	adrp	x0, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002388:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc6a2
    238c: 91000000     	add	x0, x0, #0x0
		000000000000238c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc6a2
    2390: 14000076     	b	0x2568 <syna_tcm_update_flash_block+0x834>
    2394: 90000000     	adrp	x0, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002394:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x83de
    2398: 91000000     	add	x0, x0, #0x0
		0000000000002398:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x83de
    239c: 90000001     	adrp	x1, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		000000000000239c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a80
    23a0: 91000021     	add	x1, x1, #0x0
		00000000000023a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a80
    23a4: 2a1c03e4     	mov	w4, w28
    23a8: 94000000     	bl	0x23a8 <syna_tcm_update_flash_block+0x674>
		00000000000023a8:  R_AARCH64_CALL26	_printk
    23ac: 90000000     	adrp	x0, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		00000000000023ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d98
    23b0: 91000000     	add	x0, x0, #0x0
		00000000000023b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d98
    23b4: 90000001     	adrp	x1, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		00000000000023b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15e6
    23b8: 91000021     	add	x1, x1, #0x0
		00000000000023b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15e6
    23bc: 2a1c03e2     	mov	w2, w28
    23c0: 94000000     	bl	0x23c0 <syna_tcm_update_flash_block+0x68c>
		00000000000023c0:  R_AARCH64_CALL26	_printk
    23c4: 39420282     	ldrb	w2, [x20, #0x80]
    23c8: 7100045f     	cmp	w2, #0x1
    23cc: 54000061     	b.ne	0x23d8 <syna_tcm_update_flash_block+0x6a4>
    23d0: 2a1f03e8     	mov	w8, wzr
    23d4: 14000008     	b	0x23f4 <syna_tcm_update_flash_block+0x6c0>
    23d8: 90000000     	adrp	x0, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		00000000000023d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x706c
    23dc: 91000000     	add	x0, x0, #0x0
		00000000000023dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x706c
    23e0: 90000001     	adrp	x1, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		00000000000023e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbd9c
    23e4: 91000021     	add	x1, x1, #0x0
		00000000000023e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbd9c
    23e8: 94000000     	bl	0x23e8 <syna_tcm_update_flash_block+0x6b4>
		00000000000023e8:  R_AARCH64_CALL26	_printk
    23ec: 39420288     	ldrb	w8, [x20, #0x80]
    23f0: 51000508     	sub	w8, w8, #0x1
    23f4: 91014280     	add	x0, x20, #0x50
    23f8: 39020288     	strb	w8, [x20, #0x80]
    23fc: 94000000     	bl	0x23fc <syna_tcm_update_flash_block+0x6c8>
		00000000000023fc:  R_AARCH64_CALL26	mutex_unlock
    2400: b85f03b4     	ldur	w20, [x29, #-0x10]
    2404: 128002b5     	mov	w21, #-0x16             // =-22
    2408: 14000049     	b	0x252c <syna_tcm_update_flash_block+0x7f8>
    240c: 2a0003f5     	mov	w21, w0
    2410: 90000000     	adrp	x0, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002410:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8a5e
    2414: 91000000     	add	x0, x0, #0x0
		0000000000002414:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8a5e
    2418: 90000001     	adrp	x1, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002418:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x79fc
    241c: 91000021     	add	x1, x1, #0x0
		000000000000241c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x79fc
    2420: 52801fc2     	mov	w2, #0xfe               // =254
    2424: 94000000     	bl	0x2424 <syna_tcm_update_flash_block+0x6f0>
		0000000000002424:  R_AARCH64_CALL26	_printk
    2428: b94007e2     	ldr	w2, [sp, #0x4]
    242c: 90000000     	adrp	x0, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		000000000000242c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7fb8
    2430: 91000000     	add	x0, x0, #0x0
		0000000000002430:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7fb8
    2434: 90000001     	adrp	x1, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002434:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15e6
    2438: 91000021     	add	x1, x1, #0x0
		0000000000002438:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15e6
    243c: 2a1b03e3     	mov	w3, w27
    2440: 94000000     	bl	0x2440 <syna_tcm_update_flash_block+0x70c>
		0000000000002440:  R_AARCH64_CALL26	_printk
    2444: 39420282     	ldrb	w2, [x20, #0x80]
    2448: 2a1a03f9     	mov	w25, w26
    244c: 7100045f     	cmp	w2, #0x1
    2450: 54000581     	b.ne	0x2500 <syna_tcm_update_flash_block+0x7cc>
    2454: 2a1f03e8     	mov	w8, wzr
    2458: 14000031     	b	0x251c <syna_tcm_update_flash_block+0x7e8>
    245c: 39420282     	ldrb	w2, [x20, #0x80]
    2460: 7100045f     	cmp	w2, #0x1
    2464: 540008a1     	b.ne	0x2578 <syna_tcm_update_flash_block+0x844>
    2468: 2a1f03e8     	mov	w8, wzr
    246c: 1400004a     	b	0x2594 <syna_tcm_update_flash_block+0x860>
    2470: 90000000     	adrp	x0, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002470:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70ae
    2474: 91000000     	add	x0, x0, #0x0
		0000000000002474:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70ae
    2478: 90000001     	adrp	x1, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002478:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bf8
    247c: 91000021     	add	x1, x1, #0x0
		000000000000247c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bf8
    2480: 94000000     	bl	0x2480 <syna_tcm_update_flash_block+0x74c>
		0000000000002480:  R_AARCH64_CALL26	_printk
    2484: f900229f     	str	xzr, [x20, #0x40]
    2488: 90000000     	adrp	x0, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002488:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d72
    248c: 91000000     	add	x0, x0, #0x0
		000000000000248c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d72
    2490: 90000001     	adrp	x1, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002490:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x77d4
    2494: 91000021     	add	x1, x1, #0x0
		0000000000002494:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x77d4
    2498: 2a1b03e2     	mov	w2, w27
    249c: 94000000     	bl	0x249c <syna_tcm_update_flash_block+0x768>
		000000000000249c:  R_AARCH64_CALL26	_printk
    24a0: 90000000     	adrp	x0, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		00000000000024a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5078
    24a4: 91000000     	add	x0, x0, #0x0
		00000000000024a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5078
    24a8: 90000001     	adrp	x1, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		00000000000024a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15e6
    24ac: 91000021     	add	x1, x1, #0x0
		00000000000024ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15e6
    24b0: f900269f     	str	xzr, [x20, #0x48]
    24b4: 94000000     	bl	0x24b4 <syna_tcm_update_flash_block+0x780>
		00000000000024b4:  R_AARCH64_CALL26	_printk
    24b8: 39420282     	ldrb	w2, [x20, #0x80]
    24bc: 7100045f     	cmp	w2, #0x1
    24c0: 54000061     	b.ne	0x24cc <syna_tcm_update_flash_block+0x798>
    24c4: 2a1f03e8     	mov	w8, wzr
    24c8: 14000008     	b	0x24e8 <syna_tcm_update_flash_block+0x7b4>
    24cc: 90000000     	adrp	x0, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		00000000000024cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x706c
    24d0: 91000000     	add	x0, x0, #0x0
		00000000000024d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x706c
    24d4: 90000001     	adrp	x1, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		00000000000024d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbd9c
    24d8: 91000021     	add	x1, x1, #0x0
		00000000000024d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbd9c
    24dc: 94000000     	bl	0x24dc <syna_tcm_update_flash_block+0x7a8>
		00000000000024dc:  R_AARCH64_CALL26	_printk
    24e0: 39420288     	ldrb	w8, [x20, #0x80]
    24e4: 51000508     	sub	w8, w8, #0x1
    24e8: 91014280     	add	x0, x20, #0x50
    24ec: 39020288     	strb	w8, [x20, #0x80]
    24f0: 94000000     	bl	0x24f0 <syna_tcm_update_flash_block+0x7bc>
		00000000000024f0:  R_AARCH64_CALL26	mutex_unlock
    24f4: b85f03b4     	ldur	w20, [x29, #-0x10]
    24f8: 12801e55     	mov	w21, #-0xf3             // =-243
    24fc: 1400000c     	b	0x252c <syna_tcm_update_flash_block+0x7f8>
    2500: 90000000     	adrp	x0, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002500:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x706c
    2504: 91000000     	add	x0, x0, #0x0
		0000000000002504:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x706c
    2508: 90000001     	adrp	x1, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002508:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbd9c
    250c: 91000021     	add	x1, x1, #0x0
		000000000000250c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbd9c
    2510: 94000000     	bl	0x2510 <syna_tcm_update_flash_block+0x7dc>
		0000000000002510:  R_AARCH64_CALL26	_printk
    2514: 39420288     	ldrb	w8, [x20, #0x80]
    2518: 51000508     	sub	w8, w8, #0x1
    251c: 91014280     	add	x0, x20, #0x50
    2520: 39020288     	strb	w8, [x20, #0x80]
    2524: 94000000     	bl	0x2524 <syna_tcm_update_flash_block+0x7f0>
		0000000000002524:  R_AARCH64_CALL26	mutex_unlock
    2528: b85f03b4     	ldur	w20, [x29, #-0x10]
    252c: 39406260     	ldrb	w0, [x19, #0x18]
    2530: 94000000     	bl	0x2530 <syna_tcm_update_flash_block+0x7fc>
		0000000000002530:  R_AARCH64_CALL26	syna_tcm_get_partition_id_string
    2534: aa0003e2     	mov	x2, x0
    2538: 90000000     	adrp	x0, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002538:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6044
    253c: 91000000     	add	x0, x0, #0x0
		000000000000253c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6044
    2540: 90000001     	adrp	x1, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002540:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c2
    2544: 91000021     	add	x1, x1, #0x0
		0000000000002544:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c2
    2548: 2a1903e3     	mov	w3, w25
    254c: 2a1403e4     	mov	w4, w20
    2550: 94000000     	bl	0x2550 <syna_tcm_update_flash_block+0x81c>
		0000000000002550:  R_AARCH64_CALL26	_printk
    2554: 39406260     	ldrb	w0, [x19, #0x18]
    2558: 94000000     	bl	0x2558 <syna_tcm_update_flash_block+0x824>
		0000000000002558:  R_AARCH64_CALL26	syna_tcm_get_partition_id_string
    255c: aa0003e2     	mov	x2, x0
    2560: 90000000     	adrp	x0, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002560:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5534
    2564: 91000000     	add	x0, x0, #0x0
		0000000000002564:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5534
    2568: 90000001     	adrp	x1, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002568:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9e8a
    256c: 91000021     	add	x1, x1, #0x0
		000000000000256c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9e8a
    2570: 94000000     	bl	0x2570 <syna_tcm_update_flash_block+0x83c>
		0000000000002570:  R_AARCH64_CALL26	_printk
    2574: 17fffe09     	b	0x1d98 <syna_tcm_update_flash_block+0x64>
    2578: 90000000     	adrp	x0, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002578:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x706c
    257c: 91000000     	add	x0, x0, #0x0
		000000000000257c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x706c
    2580: 90000001     	adrp	x1, 0x2000 <syna_tcm_update_flash_block+0x2cc>
		0000000000002580:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbd9c
    2584: 91000021     	add	x1, x1, #0x0
		0000000000002584:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbd9c
    2588: 94000000     	bl	0x2588 <syna_tcm_update_flash_block+0x854>
		0000000000002588:  R_AARCH64_CALL26	_printk
    258c: 39420288     	ldrb	w8, [x20, #0x80]
    2590: 51000508     	sub	w8, w8, #0x1
    2594: 91014280     	add	x0, x20, #0x50
    2598: 39020288     	strb	w8, [x20, #0x80]
    259c: 94000000     	bl	0x259c <syna_tcm_update_flash_block+0x868>
		000000000000259c:  R_AARCH64_CALL26	mutex_unlock
    25a0: 17fffe4a     	b	0x1ec8 <syna_tcm_update_flash_block+0x194>
    25a4: 94000000     	bl	0x25a4 <syna_tcm_update_flash_block+0x870>
		00000000000025a4:  R_AARCH64_CALL26	__stack_chk_fail
