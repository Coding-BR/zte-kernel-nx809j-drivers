
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000d34 <gf_probe>:
     d34: d503233f     	paciasp
     d38: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
     d3c: a9015ff8     	stp	x24, x23, [sp, #0x10]
     d40: a90257f6     	stp	x22, x21, [sp, #0x20]
     d44: a9034ff4     	stp	x20, x19, [sp, #0x30]
     d48: 910003fd     	mov	x29, sp
     d4c: aa0003f3     	mov	x19, x0
     d50: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe1
     d54: 91000000     	add	x0, x0, #0x0
		0000000000000d54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe1
     d58: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1048
     d5c: 91000021     	add	x1, x1, #0x0
		0000000000000d5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1048
     d60: 94000000     	bl	0xd60 <gf_probe+0x2c>
		0000000000000d60:  R_AARCH64_CALL26	_printk
     d64: 928002a8     	mov	x8, #-0x16              // =-22
     d68: 90000017     	adrp	x23, 0x0 <.text>
		0000000000000d68:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
     d6c: 910002f7     	add	x23, x23, #0x0
		0000000000000d6c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x18
     d70: f2dffd48     	movk	x8, #0xffea, lsl #32
     d74: 52800141     	mov	w1, #0xa                // =10
     d78: f90002f7     	str	x23, [x23]
     d7c: f90006f7     	str	x23, [x23, #0x8]
     d80: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x93a
     d84: 91000000     	add	x0, x0, #0x0
		0000000000000d84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x93a
     d88: f80342e8     	stur	x8, [x23, #0x34]
     d8c: 128002a8     	mov	w8, #-0x16              // =-22
     d90: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000d90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x85a
     d94: 91000063     	add	x3, x3, #0x0
		0000000000000d94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x85a
     d98: 72a000c1     	movk	w1, #0x6, lsl #16
     d9c: 52800022     	mov	w2, #0x1                // =1
     da0: f9000af3     	str	x19, [x23, #0x10]
     da4: f803c2e8     	stur	x8, [x23, #0x3c]
     da8: 7900d2ff     	strh	wzr, [x23, #0x68]
     dac: 94000000     	bl	0xdac <gf_probe+0x78>
		0000000000000dac:  R_AARCH64_CALL26	alloc_workqueue
     db0: f9004ee0     	str	x0, [x23, #0x98]
     db4: b4000300     	cbz	x0, 0xe14 <gf_probe+0xe0>
     db8: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000db8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0xb0
     dbc: 91000294     	add	x20, x20, #0x0
		0000000000000dbc:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0xb0
     dc0: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
     dc4: aa1403f3     	mov	x19, x20
     dc8: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000dc8:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
     dcc: 91000021     	add	x1, x1, #0x0
		0000000000000dcc:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
     dd0: f8008e68     	str	x8, [x19, #0x8]!
     dd4: 91004288     	add	x8, x20, #0x10
     dd8: f9000a88     	str	x8, [x20, #0x10]
     ddc: 9100a280     	add	x0, x20, #0x28
     de0: 52a00402     	mov	w2, #0x200000           // =2097152
     de4: f9000e88     	str	x8, [x20, #0x18]
     de8: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000de8:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x12a0
     dec: 91000108     	add	x8, x8, #0x0
		0000000000000dec:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x12a0
     df0: aa1f03e3     	mov	x3, xzr
     df4: aa1f03e4     	mov	x4, xzr
     df8: f9001288     	str	x8, [x20, #0x20]
     dfc: 94000000     	bl	0xdfc <gf_probe+0xc8>
		0000000000000dfc:  R_AARCH64_CALL26	init_timer_key
     e00: f9400281     	ldr	x1, [x20]
     e04: 52800400     	mov	w0, #0x20               // =32
     e08: aa1303e2     	mov	x2, x19
     e0c: 52809c43     	mov	w3, #0x4e2              // =1250
     e10: 94000000     	bl	0xe10 <gf_probe+0xdc>
		0000000000000e10:  R_AARCH64_CALL26	queue_delayed_work_on
     e14: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e14:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     e18: 91000000     	add	x0, x0, #0x0
		0000000000000e18:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     e1c: 94000000     	bl	0xe1c <gf_probe+0xe8>
		0000000000000e1c:  R_AARCH64_CALL26	mutex_lock
     e20: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000e20:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1e0
     e24: 90000013     	adrp	x19, 0x0 <.text>
		0000000000000e24:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x10
     e28: 91000273     	add	x19, x19, #0x0
		0000000000000e28:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x10
     e2c: f9400108     	ldr	x8, [x8]
		0000000000000e2c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1e0
     e30: b2607d08     	orr	x8, x8, #0xffffffff00000000
     e34: b100051f     	cmn	x8, #0x1
     e38: 54000300     	b.eq	0xe98 <gf_probe+0x164>
     e3c: aa2803e8     	mvn	x8, x8
     e40: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000e40:  R_AARCH64_ADR_PREL_PG_HI21	.bss
     e44: 90000016     	adrp	x22, 0x0 <.text>
		0000000000000e44:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
     e48: dac00108     	rbit	x8, x8
     e4c: b9400129     	ldr	w9, [x9]
		0000000000000e4c:  R_AARCH64_LDST32_ABS_LO12_NC	.bss
     e50: f94002c0     	ldr	x0, [x22]
		0000000000000e50:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8
     e54: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000e54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x80f
     e58: 91000294     	add	x20, x20, #0x0
		0000000000000e58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x80f
     e5c: aa1303e3     	mov	x3, x19
     e60: dac01118     	clz	x24, x8
     e64: f9400e68     	ldr	x8, [x19, #0x18]
     e68: aa1403e4     	mov	x4, x20
     e6c: 2a095302     	orr	w2, w24, w9, lsl #20
     e70: 91004101     	add	x1, x8, #0x10
     e74: b9000262     	str	w2, [x19]
     e78: 94000000     	bl	0xe78 <gf_probe+0x144>
		0000000000000e78:  R_AARCH64_CALL26	device_create
     e7c: b13ffc1f     	cmn	x0, #0xfff
     e80: 54000283     	b.lo	0xed0 <gf_probe+0x19c>
     e84: aa0003f5     	mov	x21, x0
     e88: 34000255     	cbz	w21, 0xed0 <gf_probe+0x19c>
     e8c: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000e8c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x10
     e90: b900011f     	str	wzr, [x8]
		0000000000000e90:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x10
     e94: 14000005     	b	0xea8 <gf_probe+0x174>
     e98: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e98:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     e9c: 91000000     	add	x0, x0, #0x0
		0000000000000e9c:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     ea0: 94000000     	bl	0xea0 <gf_probe+0x16c>
		0000000000000ea0:  R_AARCH64_CALL26	mutex_unlock
     ea4: 12800255     	mov	w21, #-0x13             // =-19
     ea8: aa1303e0     	mov	x0, x19
     eac: 94000000     	bl	0xeac <gf_probe+0x178>
		0000000000000eac:  R_AARCH64_CALL26	gf_cleanup
     eb0: 3901c27f     	strb	wzr, [x19, #0x70]
     eb4: 2a1503e0     	mov	w0, w21
     eb8: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     ebc: a94257f6     	ldp	x22, x21, [sp, #0x20]
     ec0: a9415ff8     	ldp	x24, x23, [sp, #0x10]
     ec4: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     ec8: d50323bf     	autiasp
     ecc: d65f03c0     	ret
     ed0: 52800028     	mov	w8, #0x1                // =1
     ed4: 9ad82108     	lsl	x8, x8, x24
     ed8: 1400008a     	b	0x1100 <gf_probe+0x3cc>
     edc: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000edc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1e0
     ee0: 91000129     	add	x9, x9, #0x0
		0000000000000ee0:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1e0
     ee4: f828313f     	stset	x8, [x9]
     ee8: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000ee8:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x60
     eec: 91000108     	add	x8, x8, #0x0
		0000000000000eec:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x60
     ef0: f9400102     	ldr	x2, [x8]
     ef4: f9400449     	ldr	x9, [x2, #0x8]
     ef8: eb08013f     	cmp	x9, x8
     efc: 54000f61     	b.ne	0x10e8 <gf_probe+0x3b4>
     f00: eb0802ff     	cmp	x23, x8
     f04: 54000f20     	b.eq	0x10e8 <gf_probe+0x3b4>
     f08: eb17005f     	cmp	x2, x23
     f0c: 54000ee0     	b.eq	0x10e8 <gf_probe+0x3b4>
     f10: f9000457     	str	x23, [x2, #0x8]
     f14: a90022e2     	stp	x2, x8, [x23]
     f18: f9000117     	str	x23, [x8]
     f1c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f1c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     f20: 91000000     	add	x0, x0, #0x0
		0000000000000f20:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     f24: 94000000     	bl	0xf24 <gf_probe+0x1f0>
		0000000000000f24:  R_AARCH64_CALL26	mutex_unlock
     f28: 94000000     	bl	0xf28 <gf_probe+0x1f4>
		0000000000000f28:  R_AARCH64_CALL26	input_allocate_device
     f2c: 90000017     	adrp	x23, 0x0 <.text>
		0000000000000f2c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x40
     f30: f90002e0     	str	x0, [x23]
		0000000000000f30:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
     f34: b5000100     	cbnz	x0, 0xf54 <gf_probe+0x220>
     f38: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd49
     f3c: 91000000     	add	x0, x0, #0x0
		0000000000000f3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd49
     f40: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000f40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1048
     f44: 91000021     	add	x1, x1, #0x0
		0000000000000f44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1048
     f48: 94000000     	bl	0xf48 <gf_probe+0x214>
		0000000000000f48:  R_AARCH64_CALL26	_printk
     f4c: 12800175     	mov	w21, #-0xc              // =-12
     f50: 1400004b     	b	0x107c <gf_probe+0x348>
     f54: 52800021     	mov	w1, #0x1                // =1
     f58: 52800cc2     	mov	w2, #0x66               // =102
     f5c: 94000000     	bl	0xf5c <gf_probe+0x228>
		0000000000000f5c:  R_AARCH64_CALL26	input_set_capability
     f60: f94002e0     	ldr	x0, [x23]
		0000000000000f60:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
     f64: 52800021     	mov	w1, #0x1                // =1
     f68: 52801162     	mov	w2, #0x8b               // =139
     f6c: 94000000     	bl	0xf6c <gf_probe+0x238>
		0000000000000f6c:  R_AARCH64_CALL26	input_set_capability
     f70: f94002e0     	ldr	x0, [x23]
		0000000000000f70:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
     f74: 52800021     	mov	w1, #0x1                // =1
     f78: 528013c2     	mov	w2, #0x9e               // =158
     f7c: 94000000     	bl	0xf7c <gf_probe+0x248>
		0000000000000f7c:  R_AARCH64_CALL26	input_set_capability
     f80: f94002e0     	ldr	x0, [x23]
		0000000000000f80:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
     f84: 52800021     	mov	w1, #0x1                // =1
     f88: 52800e82     	mov	w2, #0x74               // =116
     f8c: 94000000     	bl	0xf8c <gf_probe+0x258>
		0000000000000f8c:  R_AARCH64_CALL26	input_set_capability
     f90: f94002e0     	ldr	x0, [x23]
		0000000000000f90:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
     f94: 52800021     	mov	w1, #0x1                // =1
     f98: 52800ce2     	mov	w2, #0x67               // =103
     f9c: 94000000     	bl	0xf9c <gf_probe+0x268>
		0000000000000f9c:  R_AARCH64_CALL26	input_set_capability
     fa0: f94002e0     	ldr	x0, [x23]
		0000000000000fa0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
     fa4: 52800021     	mov	w1, #0x1                // =1
     fa8: 52800d82     	mov	w2, #0x6c               // =108
     fac: 94000000     	bl	0xfac <gf_probe+0x278>
		0000000000000fac:  R_AARCH64_CALL26	input_set_capability
     fb0: f94002e0     	ldr	x0, [x23]
		0000000000000fb0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
     fb4: 52800021     	mov	w1, #0x1                // =1
     fb8: 52800d42     	mov	w2, #0x6a               // =106
     fbc: 94000000     	bl	0xfbc <gf_probe+0x288>
		0000000000000fbc:  R_AARCH64_CALL26	input_set_capability
     fc0: f94002e0     	ldr	x0, [x23]
		0000000000000fc0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
     fc4: 52800021     	mov	w1, #0x1                // =1
     fc8: 52800d22     	mov	w2, #0x69               // =105
     fcc: 94000000     	bl	0xfcc <gf_probe+0x298>
		0000000000000fcc:  R_AARCH64_CALL26	input_set_capability
     fd0: f94002e0     	ldr	x0, [x23]
		0000000000000fd0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
     fd4: 52800021     	mov	w1, #0x1                // =1
     fd8: 52801a82     	mov	w2, #0xd4               // =212
     fdc: 94000000     	bl	0xfdc <gf_probe+0x2a8>
		0000000000000fdc:  R_AARCH64_CALL26	input_set_capability
     fe0: f94002e0     	ldr	x0, [x23]
		0000000000000fe0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
     fe4: 52800021     	mov	w1, #0x1                // =1
     fe8: 52800e42     	mov	w2, #0x72               // =114
     fec: 94000000     	bl	0xfec <gf_probe+0x2b8>
		0000000000000fec:  R_AARCH64_CALL26	input_set_capability
     ff0: f94002e0     	ldr	x0, [x23]
		0000000000000ff0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
     ff4: 52800021     	mov	w1, #0x1                // =1
     ff8: 52800e62     	mov	w2, #0x73               // =115
     ffc: 94000000     	bl	0xffc <gf_probe+0x2c8>
		0000000000000ffc:  R_AARCH64_CALL26	input_set_capability
    1000: f94002e0     	ldr	x0, [x23]
		0000000000001000:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
    1004: 52800021     	mov	w1, #0x1                // =1
    1008: 52801b22     	mov	w2, #0xd9               // =217
    100c: 94000000     	bl	0x100c <gf_probe+0x2d8>
		000000000000100c:  R_AARCH64_CALL26	input_set_capability
    1010: f94002e0     	ldr	x0, [x23]
		0000000000001010:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
    1014: 52800021     	mov	w1, #0x1                // =1
    1018: 52801b02     	mov	w2, #0xd8               // =216
    101c: 94000000     	bl	0x101c <gf_probe+0x2e8>
		000000000000101c:  R_AARCH64_CALL26	input_set_capability
    1020: f94002e8     	ldr	x8, [x23]
		0000000000001020:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
    1024: f9000114     	str	x20, [x8]
    1028: f94002e0     	ldr	x0, [x23]
		0000000000001028:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
    102c: 94000000     	bl	0x102c <gf_probe+0x2f8>
		000000000000102c:  R_AARCH64_CALL26	input_register_device
    1030: 2a0003f5     	mov	w21, w0
    1034: 35000180     	cbnz	w0, 0x1064 <gf_probe+0x330>
    1038: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		0000000000001038:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x120
    103c: 91000000     	add	x0, x0, #0x0
		000000000000103c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x120
    1040: 94000000     	bl	0x1040 <gf_probe+0x30c>
		0000000000001040:  R_AARCH64_CALL26	wakeup_source_add
    1044: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		0000000000001044:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf3c
    1048: 91000000     	add	x0, x0, #0x0
		0000000000001048:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf3c
    104c: 52800021     	mov	w1, #0x1                // =1
    1050: 52800042     	mov	w2, #0x2                // =2
    1054: 52800083     	mov	w3, #0x4                // =4
    1058: 52800044     	mov	w4, #0x2                // =2
    105c: 94000000     	bl	0x105c <gf_probe+0x328>
		000000000000105c:  R_AARCH64_CALL26	_printk
    1060: 17ffff95     	b	0xeb4 <gf_probe+0x180>
    1064: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		0000000000001064:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe9a
    1068: 91000000     	add	x0, x0, #0x0
		0000000000001068:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe9a
    106c: 94000000     	bl	0x106c <gf_probe+0x338>
		000000000000106c:  R_AARCH64_CALL26	_printk
    1070: f94002e0     	ldr	x0, [x23]
		0000000000001070:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
    1074: b4000040     	cbz	x0, 0x107c <gf_probe+0x348>
    1078: 94000000     	bl	0x1078 <gf_probe+0x344>
		0000000000001078:  R_AARCH64_CALL26	input_free_device
    107c: 90000014     	adrp	x20, 0x1000 <gf_probe+0x2cc>
		000000000000107c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x10
    1080: b9400288     	ldr	w8, [x20]
		0000000000001080:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x10
    1084: 34fff128     	cbz	w8, 0xea8 <gf_probe+0x174>
    1088: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		0000000000001088:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x73e
    108c: 91000000     	add	x0, x0, #0x0
		000000000000108c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x73e
    1090: 2a1503e1     	mov	w1, w21
    1094: 94000000     	bl	0x1094 <gf_probe+0x360>
		0000000000001094:  R_AARCH64_CALL26	_printk
    1098: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		0000000000001098:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
    109c: 91000000     	add	x0, x0, #0x0
		000000000000109c:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
    10a0: 94000000     	bl	0x10a0 <gf_probe+0x36c>
		00000000000010a0:  R_AARCH64_CALL26	mutex_lock
    10a4: 940000cd     	bl	0x13d8 <list_del>
    10a8: f94002c0     	ldr	x0, [x22]
		00000000000010a8:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8
    10ac: b9400281     	ldr	w1, [x20]
		00000000000010ac:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x10
    10b0: 94000000     	bl	0x10b0 <gf_probe+0x37c>
		00000000000010b0:  R_AARCH64_CALL26	device_destroy
    10b4: b9400288     	ldr	w8, [x20]
		00000000000010b4:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x10
    10b8: 5280002a     	mov	w10, #0x1               // =1
    10bc: d3464d09     	ubfx	x9, x8, #6, #14
    10c0: 9ac82148     	lsl	x8, x10, x8
    10c4: 14000017     	b	0x1120 <gf_probe+0x3ec>
    10c8: 9000000a     	adrp	x10, 0x1000 <gf_probe+0x2cc>
		00000000000010c8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1e0
    10cc: 9100014a     	add	x10, x10, #0x0
		00000000000010cc:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1e0
    10d0: 8b090d49     	add	x9, x10, x9, lsl #3
    10d4: f828113f     	stclr	x8, [x9]
    10d8: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		00000000000010d8:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
    10dc: 91000000     	add	x0, x0, #0x0
		00000000000010dc:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
    10e0: 94000000     	bl	0x10e0 <gf_probe+0x3ac>
		00000000000010e0:  R_AARCH64_CALL26	mutex_unlock
    10e4: 17ffff71     	b	0xea8 <gf_probe+0x174>
    10e8: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		00000000000010e8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
    10ec: 91000000     	add	x0, x0, #0x0
		00000000000010ec:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x18
    10f0: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2cc>
		00000000000010f0:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x60
    10f4: 91000021     	add	x1, x1, #0x0
		00000000000010f4:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x60
    10f8: 94000000     	bl	0x10f8 <gf_probe+0x3c4>
		00000000000010f8:  R_AARCH64_CALL26	__list_add_valid_or_report
    10fc: 17ffff88     	b	0xf1c <gf_probe+0x1e8>
    1100: 90000009     	adrp	x9, 0x1000 <gf_probe+0x2cc>
		0000000000001100:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1e0
    1104: 91000129     	add	x9, x9, #0x0
		0000000000001104:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1e0
    1108: f9800131     	prfm	pstl1strm, [x9]
    110c: c85f7d2a     	ldxr	x10, [x9]
    1110: aa08014a     	orr	x10, x10, x8
    1114: c80b7d2a     	stxr	w11, x10, [x9]
    1118: 35ffffab     	cbnz	w11, 0x110c <gf_probe+0x3d8>
    111c: 17ffff73     	b	0xee8 <gf_probe+0x1b4>
    1120: 9000000a     	adrp	x10, 0x1000 <gf_probe+0x2cc>
		0000000000001120:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1e0
    1124: 9100014a     	add	x10, x10, #0x0
		0000000000001124:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1e0
    1128: 8b090d49     	add	x9, x10, x9, lsl #3
    112c: f9800131     	prfm	pstl1strm, [x9]
    1130: c85f7d2a     	ldxr	x10, [x9]
    1134: 8a28014a     	bic	x10, x10, x8
    1138: c80b7d2a     	stxr	w11, x10, [x9]
    113c: 35ffffab     	cbnz	w11, 0x1130 <gf_probe+0x3fc>
    1140: 17ffffe6     	b	0x10d8 <gf_probe+0x3a4>
