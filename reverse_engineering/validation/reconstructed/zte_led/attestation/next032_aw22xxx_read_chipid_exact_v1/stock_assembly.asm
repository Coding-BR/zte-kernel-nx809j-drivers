
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000e84 <aw22xxx_read_chipid>:
     e84: d503233f     	paciasp
     e88: d100c3ff     	sub	sp, sp, #0x30
     e8c: a9017bfd     	stp	x29, x30, [sp, #0x10]
     e90: f90013f3     	str	x19, [sp, #0x20]
     e94: 910043fd     	add	x29, sp, #0x10
     e98: d5384108     	mrs	x8, SP_EL0
     e9c: 52801fe1     	mov	w1, #0xff               // =255
     ea0: 2a1f03e2     	mov	w2, wzr
     ea4: f9438908     	ldr	x8, [x8, #0x710]
     ea8: aa0003f3     	mov	x19, x0
     eac: f90007e8     	str	x8, [sp, #0x8]
     eb0: 390013ff     	strb	wzr, [sp, #0x4]
     eb4: 97fffd5a     	bl	0x41c <aw22xxx_i2c_write>
     eb8: aa1303e0     	mov	x0, x19
     ebc: 52800021     	mov	w1, #0x1                // =1
     ec0: 52800aa2     	mov	w2, #0x55               // =85
     ec4: 97fffd56     	bl	0x41c <aw22xxx_i2c_write>
     ec8: 5280fa00     	mov	w0, #0x7d0              // =2000
     ecc: 52817701     	mov	w1, #0xbb8              // =3000
     ed0: 52800042     	mov	w2, #0x2                // =2
     ed4: 94000000     	bl	0xed4 <aw22xxx_read_chipid+0x50>
		0000000000000ed4:  R_AARCH64_CALL26	usleep_range_state
     ed8: 910013e2     	add	x2, sp, #0x4
     edc: aa1303e0     	mov	x0, x19
     ee0: 52800021     	mov	w1, #0x1                // =1
     ee4: 97fffd9a     	bl	0x54c <aw22xxx_i2c_read>
     ee8: 2a0003e3     	mov	w3, w0
     eec: 36f80120     	tbz	w0, #0x1f, 0xf10 <aw22xxx_read_chipid+0x8c>
     ef0: f9400660     	ldr	x0, [x19, #0x8]
     ef4: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000ef4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1843
     ef8: 91000021     	add	x1, x1, #0x0
		0000000000000ef8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1843
     efc: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000efc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1873
     f00: 91000042     	add	x2, x2, #0x0
		0000000000000f00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1873
     f04: 94000000     	bl	0xf04 <aw22xxx_read_chipid+0x80>
		0000000000000f04:  R_AARCH64_CALL26	_dev_err
     f08: 12800080     	mov	w0, #-0x5               // =-5
     f0c: 14000046     	b	0x1024 <aw22xxx_read_chipid+0x1a0>
     f10: 394013e2     	ldrb	w2, [sp, #0x4]
     f14: 7101d85f     	cmp	w2, #0x76
     f18: 540002a1     	b.ne	0xf6c <aw22xxx_read_chipid+0xe8>
     f1c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbe9
     f20: 91000000     	add	x0, x0, #0x0
		0000000000000f20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbe9
     f24: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000f24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1873
     f28: 91000021     	add	x1, x1, #0x0
		0000000000000f28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1873
     f2c: 94000000     	bl	0xf2c <aw22xxx_read_chipid+0xa8>
		0000000000000f2c:  R_AARCH64_CALL26	_printk
     f30: 910013e2     	add	x2, sp, #0x4
     f34: aa1303e0     	mov	x0, x19
     f38: 2a1f03e1     	mov	w1, wzr
     f3c: 97fffd84     	bl	0x54c <aw22xxx_i2c_read>
     f40: 394013e2     	ldrb	w2, [sp, #0x4]
     f44: 7100605f     	cmp	w2, #0x18
     f48: 54000420     	b.eq	0xfcc <aw22xxx_read_chipid+0x148>
     f4c: 71009c5f     	cmp	w2, #0x27
     f50: 540005e1     	b.ne	0x100c <aw22xxx_read_chipid+0x188>
     f54: d28eec28     	mov	x8, #0x7761             // =30561
     f58: 52800049     	mov	w9, #0x2                // =2
     f5c: f2a64648     	movk	x8, #0x3232, lsl #16
     f60: f2c64628     	movk	x8, #0x3231, lsl #32
     f64: f2e006e8     	movk	x8, #0x37, lsl #48
     f68: 1400001e     	b	0xfe0 <aw22xxx_read_chipid+0x15c>
     f6c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17a7
     f70: 91000000     	add	x0, x0, #0x0
		0000000000000f70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17a7
     f74: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000f74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1873
     f78: 91000021     	add	x1, x1, #0x0
		0000000000000f78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1873
     f7c: 94000000     	bl	0xf7c <aw22xxx_read_chipid+0xf8>
		0000000000000f7c:  R_AARCH64_CALL26	_printk
     f80: 52800020     	mov	w0, #0x1                // =1
     f84: 94000000     	bl	0xf84 <aw22xxx_read_chipid+0x100>
		0000000000000f84:  R_AARCH64_CALL26	msleep
     f88: 910013e2     	add	x2, sp, #0x4
     f8c: aa1303e0     	mov	x0, x19
     f90: 52800021     	mov	w1, #0x1                // =1
     f94: 97fffd6e     	bl	0x54c <aw22xxx_i2c_read>
     f98: 2a0003e3     	mov	w3, w0
     f9c: 37fffaa0     	tbnz	w0, #0x1f, 0xef0 <aw22xxx_read_chipid+0x6c>
     fa0: 394013e2     	ldrb	w2, [sp, #0x4]
     fa4: 7101d85f     	cmp	w2, #0x76
     fa8: 54fffba0     	b.eq	0xf1c <aw22xxx_read_chipid+0x98>
     fac: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000fac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17a7
     fb0: 91000000     	add	x0, x0, #0x0
		0000000000000fb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17a7
     fb4: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000fb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1873
     fb8: 91000021     	add	x1, x1, #0x0
		0000000000000fb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1873
     fbc: 94000000     	bl	0xfbc <aw22xxx_read_chipid+0x138>
		0000000000000fbc:  R_AARCH64_CALL26	_printk
     fc0: 52800020     	mov	w0, #0x1                // =1
     fc4: 94000000     	bl	0xfc4 <aw22xxx_read_chipid+0x140>
		0000000000000fc4:  R_AARCH64_CALL26	msleep
     fc8: 14000016     	b	0x1020 <aw22xxx_read_chipid+0x19c>
     fcc: d28eec28     	mov	x8, #0x7761             // =30561
     fd0: 52800029     	mov	w9, #0x1                // =1
     fd4: f2a64648     	movk	x8, #0x3232, lsl #16
     fd8: f2c62628     	movk	x8, #0x3131, lsl #32
     fdc: f2e00708     	movk	x8, #0x38, lsl #48
     fe0: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000fe0:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x378
     fe4: 91000042     	add	x2, x2, #0x0
		0000000000000fe4:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x378
     fe8: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000fe8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1000
     fec: 91000000     	add	x0, x0, #0x0
		0000000000000fec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1000
     ff0: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000ff0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1873
     ff4: 91000021     	add	x1, x1, #0x0
		0000000000000ff4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1873
     ff8: 390bb669     	strb	w9, [x19, #0x2ed]
     ffc: f9000048     	str	x8, [x2]
    1000: 94000000     	bl	0x1000 <aw22xxx_read_chipid+0x17c>
		0000000000001000:  R_AARCH64_CALL26	_printk
    1004: 2a1f03e0     	mov	w0, wzr
    1008: 14000007     	b	0x1024 <aw22xxx_read_chipid+0x1a0>
    100c: 90000000     	adrp	x0, 0x1000 <aw22xxx_read_chipid+0x17c>
		000000000000100c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2af
    1010: 91000000     	add	x0, x0, #0x0
		0000000000001010:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2af
    1014: 90000001     	adrp	x1, 0x1000 <aw22xxx_read_chipid+0x17c>
		0000000000001014:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1873
    1018: 91000021     	add	x1, x1, #0x0
		0000000000001018:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1873
    101c: 94000000     	bl	0x101c <aw22xxx_read_chipid+0x198>
		000000000000101c:  R_AARCH64_CALL26	_printk
    1020: 128002a0     	mov	w0, #-0x16              // =-22
    1024: d5384108     	mrs	x8, SP_EL0
    1028: f9438908     	ldr	x8, [x8, #0x710]
    102c: f94007e9     	ldr	x9, [sp, #0x8]
    1030: eb09011f     	cmp	x8, x9
    1034: 540000c1     	b.ne	0x104c <aw22xxx_read_chipid+0x1c8>
    1038: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    103c: f94013f3     	ldr	x19, [sp, #0x20]
    1040: 9100c3ff     	add	sp, sp, #0x30
    1044: d50323bf     	autiasp
    1048: d65f03c0     	ret
    104c: 94000000     	bl	0x104c <aw22xxx_read_chipid+0x1c8>
		000000000000104c:  R_AARCH64_CALL26	__stack_chk_fail
