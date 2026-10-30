
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000008018 <aw9620x_input_init>:
    8018: d503233f     	paciasp
    801c: a9ba7bfd     	stp	x29, x30, [sp, #-0x60]!
    8020: a9016ffc     	stp	x28, x27, [sp, #0x10]
    8024: a90267fa     	stp	x26, x25, [sp, #0x20]
    8028: a9035ff8     	stp	x24, x23, [sp, #0x30]
    802c: a90457f6     	stp	x22, x21, [sp, #0x40]
    8030: a9054ff4     	stp	x20, x19, [sp, #0x50]
    8034: 910003fd     	mov	x29, sp
    8038: aa0003f3     	mov	x19, x0
    803c: f9401800     	ldr	x0, [x0, #0x30]
    8040: aa0103f5     	mov	x21, x1
    8044: 52803001     	mov	w1, #0x180              // =384
    8048: 5281b802     	mov	w2, #0xdc0              // =3520
    804c: 94000000     	bl	0x804c <aw9620x_input_init+0x34>
		000000000000804c:  R_AARCH64_CALL26	devm_kmalloc
    8050: f9010260     	str	x0, [x19, #0x200]
    8054: b4000f60     	cbz	x0, 0x8240 <aw9620x_input_init+0x228>
    8058: aa1f03f4     	mov	x20, xzr
    805c: 90000016     	adrp	x22, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		000000000000805c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x45b
    8060: 910002d6     	add	x22, x22, #0x0
		0000000000008060:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x45b
    8064: 90000017     	adrp	x23, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008064:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x272f
    8068: 910002f7     	add	x23, x23, #0x0
		0000000000008068:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x272f
    806c: 90000018     	adrp	x24, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		000000000000806c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0xe5d
    8070: 91000318     	add	x24, x24, #0x0
		0000000000008070:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0xe5d
    8074: 5280021b     	mov	w27, #0x10              // =16
    8078: 90000019     	adrp	x25, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008078:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1788
    807c: 91000339     	add	x25, x25, #0x0
		000000000000807c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1788
    8080: 5280003c     	mov	w28, #0x1               // =1
    8084: 9000001a     	adrp	x26, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008084:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1450
    8088: 9100035a     	add	x26, x26, #0x0
		0000000000008088:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1450
    808c: 14000009     	b	0x80b0 <aw9620x_input_init+0x98>
    8090: 381f011f     	sturb	wzr, [x8, #-0x10]
    8094: f9410268     	ldr	x8, [x19, #0x200]
    8098: 8b1b0108     	add	x8, x8, x27
    809c: f81f811f     	stur	xzr, [x8, #-0x8]
    80a0: 9100c37b     	add	x27, x27, #0x30
    80a4: 91000694     	add	x20, x20, #0x1
    80a8: f106437f     	cmp	x27, #0x190
    80ac: 54000ac0     	b.eq	0x8204 <aw9620x_input_init+0x1ec>
    80b0: f9410268     	ldr	x8, [x19, #0x200]
    80b4: b9400a63     	ldr	w3, [x19, #0x8]
    80b8: 528003c1     	mov	w1, #0x1e               // =30
    80bc: aa1603e2     	mov	x2, x22
    80c0: 2a1403e4     	mov	w4, w20
    80c4: 8b1b0100     	add	x0, x8, x27
    80c8: 94000000     	bl	0x80c8 <aw9620x_input_init+0xb0>
		00000000000080c8:  R_AARCH64_CALL26	snprintf
    80cc: f9410268     	ldr	x8, [x19, #0x200]
    80d0: 8b1b0108     	add	x8, x8, x27
    80d4: b81f411f     	stur	wzr, [x8, #-0xc]
    80d8: b9401a68     	ldr	w8, [x19, #0x18]
    80dc: f9410269     	ldr	x9, [x19, #0x200]
    80e0: 1ad4250a     	lsr	w10, w8, w20
    80e4: 8b1b0128     	add	x8, x9, x27
    80e8: 3607fd4a     	tbz	w10, #0x0, 0x8090 <aw9620x_input_init+0x78>
    80ec: 381f011c     	sturb	w28, [x8, #-0x10]
    80f0: 94000000     	bl	0x80f0 <aw9620x_input_init+0xd8>
		00000000000080f0:  R_AARCH64_CALL26	input_allocate_device
    80f4: f9410268     	ldr	x8, [x19, #0x200]
    80f8: 8b1b0108     	add	x8, x8, x27
    80fc: f81f8100     	stur	x0, [x8, #-0x8]
    8100: f9410268     	ldr	x8, [x19, #0x200]
    8104: 8b1b0108     	add	x8, x8, x27
    8108: f85f8109     	ldur	x9, [x8, #-0x8]
    810c: b4000809     	cbz	x9, 0x820c <aw9620x_input_init+0x1f4>
    8110: f9000128     	str	x8, [x9]
    8114: f9410268     	ldr	x8, [x19, #0x200]
    8118: 8b1b0108     	add	x8, x8, x27
    811c: f85f8108     	ldur	x8, [x8, #-0x8]
    8120: f9401509     	ldr	x9, [x8, #0x28]
    8124: b27f0129     	orr	x9, x9, #0x2
    8128: f9001509     	str	x9, [x8, #0x28]
    812c: f9410268     	ldr	x8, [x19, #0x200]
    8130: 8b1b0108     	add	x8, x8, x27
    8134: f85f8108     	ldur	x8, [x8, #-0x8]
    8138: f9401509     	ldr	x9, [x8, #0x28]
    813c: b2400129     	orr	x9, x9, #0x1
    8140: f9001509     	str	x9, [x8, #0x28]
    8144: f9410268     	ldr	x8, [x19, #0x200]
    8148: 8b1b0108     	add	x8, x8, x27
    814c: f85f8108     	ldur	x8, [x8, #-0x8]
    8150: f9401909     	ldr	x9, [x8, #0x30]
    8154: b2450129     	orr	x9, x9, #0x800000000000000
    8158: f9001909     	str	x9, [x8, #0x30]
    815c: b9400a68     	ldr	w8, [x19, #0x8]
    8160: 7100051f     	cmp	w8, #0x1
    8164: 54000360     	b.eq	0x81d0 <aw9620x_input_init+0x1b8>
    8168: 34000208     	cbz	w8, 0x81a8 <aw9620x_input_init+0x190>
    816c: f9410268     	ldr	x8, [x19, #0x200]
    8170: 52800321     	mov	w1, #0x19               // =25
    8174: 12800002     	mov	w2, #-0x1               // =-1
    8178: 52800c83     	mov	w3, #0x64               // =100
    817c: 2a1f03e4     	mov	w4, wzr
    8180: 2a1f03e5     	mov	w5, wzr
    8184: 8b1b0108     	add	x8, x8, x27
    8188: f85f8100     	ldur	x0, [x8, #-0x8]
    818c: 94000000     	bl	0x818c <aw9620x_input_init+0x174>
		000000000000818c:  R_AARCH64_CALL26	input_set_abs_params
    8190: f9410268     	ldr	x8, [x19, #0x200]
    8194: 8b1b0108     	add	x8, x8, x27
    8198: f85f8100     	ldur	x0, [x8, #-0x8]
    819c: 94000000     	bl	0x819c <aw9620x_input_init+0x184>
		000000000000819c:  R_AARCH64_CALL26	input_register_device
    81a0: 34fff800     	cbz	w0, 0x80a0 <aw9620x_input_init+0x88>
    81a4: 14000039     	b	0x8288 <aw9620x_input_init+0x270>
    81a8: f9410268     	ldr	x8, [x19, #0x200]
    81ac: aa1703e0     	mov	x0, x23
    81b0: aa1a03e2     	mov	x2, x26
    81b4: aa1903e3     	mov	x3, x25
    81b8: 52814744     	mov	w4, #0xa3a              // =2618
    81bc: 8b1b0108     	add	x8, x8, x27
    81c0: f85f8108     	ldur	x8, [x8, #-0x8]
    81c4: f9401d09     	ldr	x9, [x8, #0x38]
    81c8: b27f0129     	orr	x9, x9, #0x2
    81cc: 1400000a     	b	0x81f4 <aw9620x_input_init+0x1dc>
    81d0: f9410268     	ldr	x8, [x19, #0x200]
    81d4: aa1703e0     	mov	x0, x23
    81d8: aa1803e2     	mov	x2, x24
    81dc: aa1903e3     	mov	x3, x25
    81e0: 528147c4     	mov	w4, #0xa3e              // =2622
    81e4: 8b1b0108     	add	x8, x8, x27
    81e8: f85f8108     	ldur	x8, [x8, #-0x8]
    81ec: f9401d09     	ldr	x9, [x8, #0x38]
    81f0: b27e0129     	orr	x9, x9, #0x4
    81f4: f9001d09     	str	x9, [x8, #0x38]
    81f8: f9401a61     	ldr	x1, [x19, #0x30]
    81fc: 94000000     	bl	0x81fc <aw9620x_input_init+0x1e4>
		00000000000081fc:  R_AARCH64_CALL26	_dev_printk
    8200: 17ffffdb     	b	0x816c <aw9620x_input_init+0x154>
    8204: 2a1f03e0     	mov	w0, wzr
    8208: 14000018     	b	0x8268 <aw9620x_input_init+0x250>
    820c: 390002b4     	strb	w20, [x21]
    8210: 7100437f     	cmp	w27, #0x10
    8214: 54000280     	b.eq	0x8264 <aw9620x_input_init+0x24c>
    8218: 52800115     	mov	w21, #0x8               // =8
    821c: 14000004     	b	0x822c <aw9620x_input_init+0x214>
    8220: f1000694     	subs	x20, x20, #0x1
    8224: 9100c2b5     	add	x21, x21, #0x30
    8228: 540001e0     	b.eq	0x8264 <aw9620x_input_init+0x24c>
    822c: f9410268     	ldr	x8, [x19, #0x200]
    8230: f8756900     	ldr	x0, [x8, x21]
    8234: b4ffff60     	cbz	x0, 0x8220 <aw9620x_input_init+0x208>
    8238: 94000000     	bl	0x8238 <aw9620x_input_init+0x220>
		0000000000008238:  R_AARCH64_CALL26	input_free_device
    823c: 17fffff9     	b	0x8220 <aw9620x_input_init+0x208>
    8240: f9401a61     	ldr	x1, [x19, #0x30]
    8244: 90000000     	adrp	x0, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008244:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    8248: 91000000     	add	x0, x0, #0x0
		0000000000008248:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    824c: 90000002     	adrp	x2, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		000000000000824c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1566
    8250: 91000042     	add	x2, x2, #0x0
		0000000000008250:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1566
    8254: 90000003     	adrp	x3, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008254:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1788
    8258: 91000063     	add	x3, x3, #0x0
		0000000000008258:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1788
    825c: 52814424     	mov	w4, #0xa21              // =2593
    8260: 94000000     	bl	0x8260 <aw9620x_input_init+0x248>
		0000000000008260:  R_AARCH64_CALL26	_dev_printk
    8264: 12800000     	mov	w0, #-0x1               // =-1
    8268: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    826c: a94457f6     	ldp	x22, x21, [sp, #0x40]
    8270: a9435ff8     	ldp	x24, x23, [sp, #0x30]
    8274: a94267fa     	ldp	x26, x25, [sp, #0x20]
    8278: a9416ffc     	ldp	x28, x27, [sp, #0x10]
    827c: a8c67bfd     	ldp	x29, x30, [sp], #0x60
    8280: d50323bf     	autiasp
    8284: d65f03c0     	ret
    8288: f9401a61     	ldr	x1, [x19, #0x30]
    828c: 90000000     	adrp	x0, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		000000000000828c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    8290: 91000000     	add	x0, x0, #0x0
		0000000000008290:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    8294: 90000002     	adrp	x2, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008294:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x3bfb
    8298: 91000042     	add	x2, x2, #0x0
		0000000000008298:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x3bfb
    829c: 90000003     	adrp	x3, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		000000000000829c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1788
    82a0: 91000063     	add	x3, x3, #0x0
		00000000000082a0:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1788
    82a4: 52814884     	mov	w4, #0xa44              // =2628
    82a8: 94000000     	bl	0x82a8 <aw9620x_input_init+0x290>
		00000000000082a8:  R_AARCH64_CALL26	_dev_printk
    82ac: 7100437f     	cmp	w27, #0x10
    82b0: 54fffda0     	b.eq	0x8264 <aw9620x_input_init+0x24c>
    82b4: 17ffffd9     	b	0x8218 <aw9620x_input_init+0x200>
