
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000d28 <gf_probe>:
     d28: d503233f     	paciasp
     d2c: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
     d30: a9015ff8     	stp	x24, x23, [sp, #0x10]
     d34: a90257f6     	stp	x22, x21, [sp, #0x20]
     d38: a9034ff4     	stp	x20, x19, [sp, #0x30]
     d3c: 910003fd     	mov	x29, sp
     d40: aa0003f3     	mov	x19, x0
     d44: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe1
     d48: 91000000     	add	x0, x0, #0x0
		0000000000000d48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe1
     d4c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1048
     d50: 91000021     	add	x1, x1, #0x0
		0000000000000d50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1048
     d54: 94000000     	bl	0xd54 <gf_probe+0x2c>
		0000000000000d54:  R_AARCH64_CALL26	_printk
     d58: 928002a8     	mov	x8, #-0x16              // =-22
     d5c: 90000017     	adrp	x23, 0x0 <.text>
		0000000000000d5c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
     d60: 910002f7     	add	x23, x23, #0x0
		0000000000000d60:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x18
     d64: f2dffd48     	movk	x8, #0xffea, lsl #32
     d68: 52800141     	mov	w1, #0xa                // =10
     d6c: f90002f7     	str	x23, [x23]
     d70: f90006f7     	str	x23, [x23, #0x8]
     d74: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x93a
     d78: 91000000     	add	x0, x0, #0x0
		0000000000000d78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x93a
     d7c: f80342e8     	stur	x8, [x23, #0x34]
     d80: 128002a8     	mov	w8, #-0x16              // =-22
     d84: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000d84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x85a
     d88: 91000063     	add	x3, x3, #0x0
		0000000000000d88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x85a
     d8c: 72a000c1     	movk	w1, #0x6, lsl #16
     d90: 52800022     	mov	w2, #0x1                // =1
     d94: b9003ee8     	str	w8, [x23, #0x3c]
     d98: 7900d2ff     	strh	wzr, [x23, #0x68]
     d9c: f9000af3     	str	x19, [x23, #0x10]
     da0: 94000000     	bl	0xda0 <gf_probe+0x78>
		0000000000000da0:  R_AARCH64_CALL26	alloc_workqueue
     da4: f9004ee0     	str	x0, [x23, #0x98]
     da8: b4000300     	cbz	x0, 0xe08 <gf_probe+0xe0>
     dac: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000dac:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0xb0
     db0: 91000294     	add	x20, x20, #0x0
		0000000000000db0:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0xb0
     db4: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
     db8: aa1403f3     	mov	x19, x20
     dbc: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000dbc:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
     dc0: 91000021     	add	x1, x1, #0x0
		0000000000000dc0:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
     dc4: f8008e68     	str	x8, [x19, #0x8]!
     dc8: 91004288     	add	x8, x20, #0x10
     dcc: f9000a88     	str	x8, [x20, #0x10]
     dd0: 9100a280     	add	x0, x20, #0x28
     dd4: 52a00402     	mov	w2, #0x200000           // =2097152
     dd8: f9000e88     	str	x8, [x20, #0x18]
     ddc: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000ddc:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1294
     de0: 91000108     	add	x8, x8, #0x0
		0000000000000de0:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1294
     de4: aa1f03e3     	mov	x3, xzr
     de8: aa1f03e4     	mov	x4, xzr
     dec: f9001288     	str	x8, [x20, #0x20]
     df0: 94000000     	bl	0xdf0 <gf_probe+0xc8>
		0000000000000df0:  R_AARCH64_CALL26	init_timer_key
     df4: f9400281     	ldr	x1, [x20]
     df8: 52800400     	mov	w0, #0x20               // =32
     dfc: aa1303e2     	mov	x2, x19
     e00: 52809c43     	mov	w3, #0x4e2              // =1250
     e04: 94000000     	bl	0xe04 <gf_probe+0xdc>
		0000000000000e04:  R_AARCH64_CALL26	queue_delayed_work_on
     e08: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e08:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     e0c: 91000000     	add	x0, x0, #0x0
		0000000000000e0c:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     e10: 94000000     	bl	0xe10 <gf_probe+0xe8>
		0000000000000e10:  R_AARCH64_CALL26	mutex_lock
     e14: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000e14:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1e0
     e18: 90000013     	adrp	x19, 0x0 <.text>
		0000000000000e18:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x10
     e1c: 91000273     	add	x19, x19, #0x0
		0000000000000e1c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x10
     e20: f9400108     	ldr	x8, [x8]
		0000000000000e20:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1e0
     e24: b2607d08     	orr	x8, x8, #0xffffffff00000000
     e28: b100051f     	cmn	x8, #0x1
     e2c: 54000300     	b.eq	0xe8c <gf_probe+0x164>
     e30: aa2803e8     	mvn	x8, x8
     e34: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000e34:  R_AARCH64_ADR_PREL_PG_HI21	.bss
     e38: 90000016     	adrp	x22, 0x0 <.text>
		0000000000000e38:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
     e3c: dac00108     	rbit	x8, x8
     e40: b9400129     	ldr	w9, [x9]
		0000000000000e40:  R_AARCH64_LDST32_ABS_LO12_NC	.bss
     e44: f94002c0     	ldr	x0, [x22]
		0000000000000e44:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8
     e48: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000e48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x80f
     e4c: 91000294     	add	x20, x20, #0x0
		0000000000000e4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x80f
     e50: aa1303e3     	mov	x3, x19
     e54: dac01118     	clz	x24, x8
     e58: f9400e68     	ldr	x8, [x19, #0x18]
     e5c: aa1403e4     	mov	x4, x20
     e60: 2a095302     	orr	w2, w24, w9, lsl #20
     e64: 91004101     	add	x1, x8, #0x10
     e68: b9000262     	str	w2, [x19]
     e6c: 94000000     	bl	0xe6c <gf_probe+0x144>
		0000000000000e6c:  R_AARCH64_CALL26	device_create
     e70: b13ffc1f     	cmn	x0, #0xfff
     e74: 54000283     	b.lo	0xec4 <gf_probe+0x19c>
     e78: aa0003f5     	mov	x21, x0
     e7c: 34000255     	cbz	w21, 0xec4 <gf_probe+0x19c>
     e80: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000e80:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x10
     e84: b900011f     	str	wzr, [x8]
		0000000000000e84:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x10
     e88: 14000005     	b	0xe9c <gf_probe+0x174>
     e8c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e8c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     e90: 91000000     	add	x0, x0, #0x0
		0000000000000e90:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     e94: 94000000     	bl	0xe94 <gf_probe+0x16c>
		0000000000000e94:  R_AARCH64_CALL26	mutex_unlock
     e98: 12800255     	mov	w21, #-0x13             // =-19
     e9c: aa1303e0     	mov	x0, x19
     ea0: 94000000     	bl	0xea0 <gf_probe+0x178>
		0000000000000ea0:  R_AARCH64_CALL26	gf_cleanup
     ea4: 3901c27f     	strb	wzr, [x19, #0x70]
     ea8: 2a1503e0     	mov	w0, w21
     eac: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     eb0: a94257f6     	ldp	x22, x21, [sp, #0x20]
     eb4: a9415ff8     	ldp	x24, x23, [sp, #0x10]
     eb8: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     ebc: d50323bf     	autiasp
     ec0: d65f03c0     	ret
     ec4: 52800028     	mov	w8, #0x1                // =1
     ec8: 9ad82108     	lsl	x8, x8, x24
     ecc: 1400008a     	b	0x10f4 <gf_probe+0x3cc>
     ed0: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000ed0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1e0
     ed4: 91000129     	add	x9, x9, #0x0
		0000000000000ed4:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1e0
     ed8: f828313f     	stset	x8, [x9]
     edc: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000edc:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x60
     ee0: 91000108     	add	x8, x8, #0x0
		0000000000000ee0:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x60
     ee4: f9400501     	ldr	x1, [x8, #0x8]
     ee8: f9400029     	ldr	x9, [x1]
     eec: eb08013f     	cmp	x9, x8
     ef0: 54000f61     	b.ne	0x10dc <gf_probe+0x3b4>
     ef4: eb17003f     	cmp	x1, x23
     ef8: 54000f20     	b.eq	0x10dc <gf_probe+0x3b4>
     efc: eb0802ff     	cmp	x23, x8
     f00: 54000ee0     	b.eq	0x10dc <gf_probe+0x3b4>
     f04: f9000517     	str	x23, [x8, #0x8]
     f08: a90006e8     	stp	x8, x1, [x23]
     f0c: f9000037     	str	x23, [x1]
     f10: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f10:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     f14: 91000000     	add	x0, x0, #0x0
		0000000000000f14:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     f18: 94000000     	bl	0xf18 <gf_probe+0x1f0>
		0000000000000f18:  R_AARCH64_CALL26	mutex_unlock
     f1c: 94000000     	bl	0xf1c <gf_probe+0x1f4>
		0000000000000f1c:  R_AARCH64_CALL26	input_allocate_device
     f20: 90000017     	adrp	x23, 0x0 <.text>
		0000000000000f20:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x40
     f24: f90002e0     	str	x0, [x23]
		0000000000000f24:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
     f28: b5000100     	cbnz	x0, 0xf48 <gf_probe+0x220>
     f2c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd49
     f30: 91000000     	add	x0, x0, #0x0
		0000000000000f30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd49
     f34: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000f34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1048
     f38: 91000021     	add	x1, x1, #0x0
		0000000000000f38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1048
     f3c: 94000000     	bl	0xf3c <gf_probe+0x214>
		0000000000000f3c:  R_AARCH64_CALL26	_printk
     f40: 12800175     	mov	w21, #-0xc              // =-12
     f44: 1400004b     	b	0x1070 <gf_probe+0x348>
     f48: 52800021     	mov	w1, #0x1                // =1
     f4c: 52800cc2     	mov	w2, #0x66               // =102
     f50: 94000000     	bl	0xf50 <gf_probe+0x228>
		0000000000000f50:  R_AARCH64_CALL26	input_set_capability
     f54: f94002e0     	ldr	x0, [x23]
		0000000000000f54:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
     f58: 52800021     	mov	w1, #0x1                // =1
     f5c: 52801162     	mov	w2, #0x8b               // =139
     f60: 94000000     	bl	0xf60 <gf_probe+0x238>
		0000000000000f60:  R_AARCH64_CALL26	input_set_capability
     f64: f94002e0     	ldr	x0, [x23]
		0000000000000f64:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
     f68: 52800021     	mov	w1, #0x1                // =1
     f6c: 528013c2     	mov	w2, #0x9e               // =158
     f70: 94000000     	bl	0xf70 <gf_probe+0x248>
		0000000000000f70:  R_AARCH64_CALL26	input_set_capability
     f74: f94002e0     	ldr	x0, [x23]
		0000000000000f74:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
     f78: 52800021     	mov	w1, #0x1                // =1
     f7c: 52800e82     	mov	w2, #0x74               // =116
     f80: 94000000     	bl	0xf80 <gf_probe+0x258>
		0000000000000f80:  R_AARCH64_CALL26	input_set_capability
     f84: f94002e0     	ldr	x0, [x23]
		0000000000000f84:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
     f88: 52800021     	mov	w1, #0x1                // =1
     f8c: 52800ce2     	mov	w2, #0x67               // =103
     f90: 94000000     	bl	0xf90 <gf_probe+0x268>
		0000000000000f90:  R_AARCH64_CALL26	input_set_capability
     f94: f94002e0     	ldr	x0, [x23]
		0000000000000f94:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
     f98: 52800021     	mov	w1, #0x1                // =1
     f9c: 52800d82     	mov	w2, #0x6c               // =108
     fa0: 94000000     	bl	0xfa0 <gf_probe+0x278>
		0000000000000fa0:  R_AARCH64_CALL26	input_set_capability
     fa4: f94002e0     	ldr	x0, [x23]
		0000000000000fa4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
     fa8: 52800021     	mov	w1, #0x1                // =1
     fac: 52800d42     	mov	w2, #0x6a               // =106
     fb0: 94000000     	bl	0xfb0 <gf_probe+0x288>
		0000000000000fb0:  R_AARCH64_CALL26	input_set_capability
     fb4: f94002e0     	ldr	x0, [x23]
		0000000000000fb4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
     fb8: 52800021     	mov	w1, #0x1                // =1
     fbc: 52800d22     	mov	w2, #0x69               // =105
     fc0: 94000000     	bl	0xfc0 <gf_probe+0x298>
		0000000000000fc0:  R_AARCH64_CALL26	input_set_capability
     fc4: f94002e0     	ldr	x0, [x23]
		0000000000000fc4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
     fc8: 52800021     	mov	w1, #0x1                // =1
     fcc: 52801a82     	mov	w2, #0xd4               // =212
     fd0: 94000000     	bl	0xfd0 <gf_probe+0x2a8>
		0000000000000fd0:  R_AARCH64_CALL26	input_set_capability
     fd4: f94002e0     	ldr	x0, [x23]
		0000000000000fd4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
     fd8: 52800021     	mov	w1, #0x1                // =1
     fdc: 52800e42     	mov	w2, #0x72               // =114
     fe0: 94000000     	bl	0xfe0 <gf_probe+0x2b8>
		0000000000000fe0:  R_AARCH64_CALL26	input_set_capability
     fe4: f94002e0     	ldr	x0, [x23]
		0000000000000fe4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
     fe8: 52800021     	mov	w1, #0x1                // =1
     fec: 52800e62     	mov	w2, #0x73               // =115
     ff0: 94000000     	bl	0xff0 <gf_probe+0x2c8>
		0000000000000ff0:  R_AARCH64_CALL26	input_set_capability
     ff4: f94002e0     	ldr	x0, [x23]
		0000000000000ff4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
     ff8: 52800021     	mov	w1, #0x1                // =1
     ffc: 52801b22     	mov	w2, #0xd9               // =217
    1000: 94000000     	bl	0x1000 <gf_probe+0x2d8>
		0000000000001000:  R_AARCH64_CALL26	input_set_capability
    1004: f94002e0     	ldr	x0, [x23]
		0000000000001004:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
    1008: 52800021     	mov	w1, #0x1                // =1
    100c: 52801b02     	mov	w2, #0xd8               // =216
    1010: 94000000     	bl	0x1010 <gf_probe+0x2e8>
		0000000000001010:  R_AARCH64_CALL26	input_set_capability
    1014: f94002e8     	ldr	x8, [x23]
		0000000000001014:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
    1018: f9000114     	str	x20, [x8]
    101c: f94002e0     	ldr	x0, [x23]
		000000000000101c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
    1020: 94000000     	bl	0x1020 <gf_probe+0x2f8>
		0000000000001020:  R_AARCH64_CALL26	input_register_device
    1024: 2a0003f5     	mov	w21, w0
    1028: 35000180     	cbnz	w0, 0x1058 <gf_probe+0x330>
    102c: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		000000000000102c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x120
    1030: 91000000     	add	x0, x0, #0x0
		0000000000001030:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x120
    1034: 94000000     	bl	0x1034 <gf_probe+0x30c>
		0000000000001034:  R_AARCH64_CALL26	wakeup_source_add
    1038: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		0000000000001038:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf3c
    103c: 91000000     	add	x0, x0, #0x0
		000000000000103c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf3c
    1040: 52800021     	mov	w1, #0x1                // =1
    1044: 52800042     	mov	w2, #0x2                // =2
    1048: 52800083     	mov	w3, #0x4                // =4
    104c: 52800044     	mov	w4, #0x2                // =2
    1050: 94000000     	bl	0x1050 <gf_probe+0x328>
		0000000000001050:  R_AARCH64_CALL26	_printk
    1054: 17ffff95     	b	0xea8 <gf_probe+0x180>
    1058: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		0000000000001058:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe9a
    105c: 91000000     	add	x0, x0, #0x0
		000000000000105c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe9a
    1060: 94000000     	bl	0x1060 <gf_probe+0x338>
		0000000000001060:  R_AARCH64_CALL26	_printk
    1064: f94002e0     	ldr	x0, [x23]
		0000000000001064:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
    1068: b4000040     	cbz	x0, 0x1070 <gf_probe+0x348>
    106c: 94000000     	bl	0x106c <gf_probe+0x344>
		000000000000106c:  R_AARCH64_CALL26	input_free_device
    1070: 90000014     	adrp	x20, 0x1000 <gf_probe+0x2d8>
		0000000000001070:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x10
    1074: b9400288     	ldr	w8, [x20]
		0000000000001074:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x10
    1078: 34fff128     	cbz	w8, 0xe9c <gf_probe+0x174>
    107c: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		000000000000107c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x73e
    1080: 91000000     	add	x0, x0, #0x0
		0000000000001080:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x73e
    1084: 2a1503e1     	mov	w1, w21
    1088: 94000000     	bl	0x1088 <gf_probe+0x360>
		0000000000001088:  R_AARCH64_CALL26	_printk
    108c: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		000000000000108c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
    1090: 91000000     	add	x0, x0, #0x0
		0000000000001090:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
    1094: 94000000     	bl	0x1094 <gf_probe+0x36c>
		0000000000001094:  R_AARCH64_CALL26	mutex_lock
    1098: 940000cd     	bl	0x13cc <list_del>
    109c: f94002c0     	ldr	x0, [x22]
		000000000000109c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8
    10a0: b9400281     	ldr	w1, [x20]
		00000000000010a0:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x10
    10a4: 94000000     	bl	0x10a4 <gf_probe+0x37c>
		00000000000010a4:  R_AARCH64_CALL26	device_destroy
    10a8: b9400288     	ldr	w8, [x20]
		00000000000010a8:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x10
    10ac: 5280002a     	mov	w10, #0x1               // =1
    10b0: d3464d09     	ubfx	x9, x8, #6, #14
    10b4: 9ac82148     	lsl	x8, x10, x8
    10b8: 14000017     	b	0x1114 <gf_probe+0x3ec>
    10bc: 9000000a     	adrp	x10, 0x1000 <gf_probe+0x2d8>
		00000000000010bc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1e0
    10c0: 9100014a     	add	x10, x10, #0x0
		00000000000010c0:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1e0
    10c4: 8b090d49     	add	x9, x10, x9, lsl #3
    10c8: f828113f     	stclr	x8, [x9]
    10cc: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		00000000000010cc:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
    10d0: 91000000     	add	x0, x0, #0x0
		00000000000010d0:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
    10d4: 94000000     	bl	0x10d4 <gf_probe+0x3ac>
		00000000000010d4:  R_AARCH64_CALL26	mutex_unlock
    10d8: 17ffff71     	b	0xe9c <gf_probe+0x174>
    10dc: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		00000000000010dc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
    10e0: 91000000     	add	x0, x0, #0x0
		00000000000010e0:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x18
    10e4: 90000002     	adrp	x2, 0x1000 <gf_probe+0x2d8>
		00000000000010e4:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x60
    10e8: 91000042     	add	x2, x2, #0x0
		00000000000010e8:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x60
    10ec: 94000000     	bl	0x10ec <gf_probe+0x3c4>
		00000000000010ec:  R_AARCH64_CALL26	__list_add_valid_or_report
    10f0: 17ffff88     	b	0xf10 <gf_probe+0x1e8>
    10f4: 90000009     	adrp	x9, 0x1000 <gf_probe+0x2d8>
		00000000000010f4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1e0
    10f8: 91000129     	add	x9, x9, #0x0
		00000000000010f8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1e0
    10fc: f9800131     	prfm	pstl1strm, [x9]
    1100: c85f7d2a     	ldxr	x10, [x9]
    1104: aa08014a     	orr	x10, x10, x8
    1108: c80b7d2a     	stxr	w11, x10, [x9]
    110c: 35ffffab     	cbnz	w11, 0x1100 <gf_probe+0x3d8>
    1110: 17ffff73     	b	0xedc <gf_probe+0x1b4>
    1114: 9000000a     	adrp	x10, 0x1000 <gf_probe+0x2d8>
		0000000000001114:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1e0
    1118: 9100014a     	add	x10, x10, #0x0
		0000000000001118:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1e0
    111c: 8b090d49     	add	x9, x10, x9, lsl #3
    1120: f9800131     	prfm	pstl1strm, [x9]
    1124: c85f7d2a     	ldxr	x10, [x9]
    1128: 8a28014a     	bic	x10, x10, x8
    112c: c80b7d2a     	stxr	w11, x10, [x9]
    1130: 35ffffab     	cbnz	w11, 0x1124 <gf_probe+0x3fc>
    1134: 17ffffe6     	b	0x10cc <gf_probe+0x3a4>
