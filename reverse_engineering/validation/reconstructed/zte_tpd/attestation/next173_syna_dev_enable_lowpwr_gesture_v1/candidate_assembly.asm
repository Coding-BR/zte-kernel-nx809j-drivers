
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000008174 <syna_dev_enable_lowpwr_gesture>:
    8174: 39560408     	ldrb	w8, [x0, #0x581]
    8178: 7100051f     	cmp	w8, #0x1
    817c: 54000060     	b.eq	0x8188 <syna_dev_enable_lowpwr_gesture+0x14>
    8180: 2a1f03e0     	mov	w0, wzr
    8184: d65f03c0     	ret
    8188: d503233f     	paciasp
    818c: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    8190: f9000bf7     	str	x23, [sp, #0x10]
    8194: a90257f6     	stp	x22, x21, [sp, #0x20]
    8198: a9034ff4     	stp	x20, x19, [sp, #0x30]
    819c: 910003fd     	mov	x29, sp
    81a0: 394bd008     	ldrb	w8, [x0, #0x2f4]
    81a4: aa0003f6     	mov	x22, x0
    81a8: aa0103f7     	mov	x23, x1
    81ac: 2a0203f3     	mov	w19, w2
    81b0: 370000e1     	tbnz	w1, #0x0, 0x81cc <syna_dev_enable_lowpwr_gesture+0x58>
    81b4: 2a1f03f4     	mov	w20, wzr
    81b8: 34000268     	cbz	w8, 0x8204 <syna_dev_enable_lowpwr_gesture+0x90>
    81bc: 2a1f03f4     	mov	w20, wzr
    81c0: 90000015     	adrp	x21, 0x8000 <syna_dev_disconnect+0x18c>
		00000000000081c0:  R_AARCH64_ADR_PREL_PG_HI21	unk_35A56
    81c4: 910002b5     	add	x21, x21, #0x0
		00000000000081c4:  R_AARCH64_ADD_ABS_LO12_NC	unk_35A56
    81c8: 14000005     	b	0x81dc <syna_dev_enable_lowpwr_gesture+0x68>
    81cc: 52800034     	mov	w20, #0x1               // =1
    81d0: 370001a8     	tbnz	w8, #0x0, 0x8204 <syna_dev_enable_lowpwr_gesture+0x90>
    81d4: 90000015     	adrp	x21, 0x8000 <syna_dev_disconnect+0x18c>
		00000000000081d4:  R_AARCH64_ADR_PREL_PG_HI21	unk_36AB5
    81d8: 910002b5     	add	x21, x21, #0x0
		00000000000081d8:  R_AARCH64_ADD_ABS_LO12_NC	unk_36AB5
    81dc: f9413808     	ldr	x8, [x0, #0x270]
    81e0: 2a1403e1     	mov	w1, w20
    81e4: b940b900     	ldr	w0, [x8, #0xb8]
    81e8: 94000000     	bl	0x81e8 <syna_dev_enable_lowpwr_gesture+0x74>
		00000000000081e8:  R_AARCH64_CALL26	irq_set_irq_wake
    81ec: 90000001     	adrp	x1, 0x8000 <syna_dev_disconnect+0x18c>
		00000000000081ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18ef
    81f0: 91000021     	add	x1, x1, #0x0
		00000000000081f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18ef
    81f4: aa1503e0     	mov	x0, x21
    81f8: 94000000     	bl	0x81f8 <syna_dev_enable_lowpwr_gesture+0x84>
		00000000000081f8:  R_AARCH64_CALL26	_printk
    81fc: aa1603e0     	mov	x0, x22
    8200: 390bd2d4     	strb	w20, [x22, #0x2f4]
    8204: f9400000     	ldr	x0, [x0]
    8208: 52800121     	mov	w1, #0x9                // =9
    820c: 2a1403e2     	mov	w2, w20
    8210: 2a1303e3     	mov	w3, w19
    8214: 94000000     	bl	0x8214 <syna_dev_enable_lowpwr_gesture+0xa0>
		0000000000008214:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    8218: 37f80420     	tbnz	w0, #0x1f, 0x829c <syna_dev_enable_lowpwr_gesture+0x128>
    821c: b945c6c9     	ldr	w9, [x22, #0x5c4]
    8220: b945b2ca     	ldr	w10, [x22, #0x5b0]
    8224: 52801fc1     	mov	w1, #0xfe               // =254
    8228: f94002c0     	ldr	x0, [x22]
    822c: 2a1303e3     	mov	w3, w19
    8230: 2a0a3522     	orr	w2, w9, w10, lsl #13
    8234: 94000000     	bl	0x8234 <syna_dev_enable_lowpwr_gesture+0xc0>
		0000000000008234:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    8238: 37f804e0     	tbnz	w0, #0x1f, 0x82d4 <syna_dev_enable_lowpwr_gesture+0x160>
    823c: b945b2c2     	ldr	w2, [x22, #0x5b0]
    8240: b945c6c3     	ldr	w3, [x22, #0x5c4]
    8244: 90000000     	adrp	x0, 0x8000 <syna_dev_disconnect+0x18c>
		0000000000008244:  R_AARCH64_ADR_PREL_PG_HI21	unk_329E0
    8248: 91000000     	add	x0, x0, #0x0
		0000000000008248:  R_AARCH64_ADD_ABS_LO12_NC	unk_329E0
    824c: 90000001     	adrp	x1, 0x8000 <syna_dev_disconnect+0x18c>
		000000000000824c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18ef
    8250: 91000021     	add	x1, x1, #0x0
		0000000000008250:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18ef
    8254: 94000000     	bl	0x8254 <syna_dev_enable_lowpwr_gesture+0xe0>
		0000000000008254:  R_AARCH64_CALL26	_printk
    8258: b945bac8     	ldr	w8, [x22, #0x5b8]
    825c: f94002c0     	ldr	x0, [x22]
    8260: 52801a81     	mov	w1, #0xd4               // =212
    8264: 2a1303e3     	mov	w3, w19
    8268: 7100011f     	cmp	w8, #0x0
    826c: 52800068     	mov	w8, #0x3                // =3
    8270: 1a8803e2     	csel	w2, wzr, w8, eq
    8274: 94000000     	bl	0x8274 <syna_dev_enable_lowpwr_gesture+0x100>
		0000000000008274:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    8278: 2a0003f3     	mov	w19, w0
    827c: 37f803a0     	tbnz	w0, #0x1f, 0x82f0 <syna_dev_enable_lowpwr_gesture+0x17c>
    8280: b945b2c2     	ldr	w2, [x22, #0x5b0]
    8284: 90000000     	adrp	x0, 0x8000 <syna_dev_disconnect+0x18c>
		0000000000008284:  R_AARCH64_ADR_PREL_PG_HI21	unk_3D131
    8288: 91000000     	add	x0, x0, #0x0
		0000000000008288:  R_AARCH64_ADD_ABS_LO12_NC	unk_3D131
    828c: 90000001     	adrp	x1, 0x8000 <syna_dev_disconnect+0x18c>
		000000000000828c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18ef
    8290: 91000021     	add	x1, x1, #0x0
		0000000000008290:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18ef
    8294: 94000000     	bl	0x8294 <syna_dev_enable_lowpwr_gesture+0x120>
		0000000000008294:  R_AARCH64_CALL26	_printk
    8298: 1400001b     	b	0x8304 <syna_dev_enable_lowpwr_gesture+0x190>
    829c: 90000008     	adrp	x8, 0x8000 <syna_dev_disconnect+0x18c>
		000000000000829c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a79
    82a0: 91000108     	add	x8, x8, #0x0
		00000000000082a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a79
    82a4: f24002ff     	tst	x23, #0x1
    82a8: 90000009     	adrp	x9, 0x8000 <syna_dev_disconnect+0x18c>
		00000000000082a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6e92
    82ac: 91000129     	add	x9, x9, #0x0
		00000000000082ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6e92
    82b0: 90000001     	adrp	x1, 0x8000 <syna_dev_disconnect+0x18c>
		00000000000082b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18ef
    82b4: 91000021     	add	x1, x1, #0x0
		00000000000082b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18ef
    82b8: 9a880122     	csel	x2, x9, x8, eq
    82bc: 90000008     	adrp	x8, 0x8000 <syna_dev_disconnect+0x18c>
		00000000000082bc:  R_AARCH64_ADR_PREL_PG_HI21	unk_335DA
    82c0: 91000108     	add	x8, x8, #0x0
		00000000000082c0:  R_AARCH64_ADD_ABS_LO12_NC	unk_335DA
    82c4: 2a0003f3     	mov	w19, w0
    82c8: aa0803e0     	mov	x0, x8
    82cc: 94000000     	bl	0x82cc <syna_dev_enable_lowpwr_gesture+0x158>
		00000000000082cc:  R_AARCH64_CALL26	_printk
    82d0: 1400000d     	b	0x8304 <syna_dev_enable_lowpwr_gesture+0x190>
    82d4: 90000008     	adrp	x8, 0x8000 <syna_dev_disconnect+0x18c>
		00000000000082d4:  R_AARCH64_ADR_PREL_PG_HI21	unk_3B058
    82d8: 91000108     	add	x8, x8, #0x0
		00000000000082d8:  R_AARCH64_ADD_ABS_LO12_NC	unk_3B058
    82dc: 90000001     	adrp	x1, 0x8000 <syna_dev_disconnect+0x18c>
		00000000000082dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18ef
    82e0: 91000021     	add	x1, x1, #0x0
		00000000000082e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18ef
    82e4: 2a0003f3     	mov	w19, w0
    82e8: aa0803e0     	mov	x0, x8
    82ec: 14000005     	b	0x8300 <syna_dev_enable_lowpwr_gesture+0x18c>
    82f0: 90000000     	adrp	x0, 0x8000 <syna_dev_disconnect+0x18c>
		00000000000082f0:  R_AARCH64_ADR_PREL_PG_HI21	unk_3B058
    82f4: 91000000     	add	x0, x0, #0x0
		00000000000082f4:  R_AARCH64_ADD_ABS_LO12_NC	unk_3B058
    82f8: 90000001     	adrp	x1, 0x8000 <syna_dev_disconnect+0x18c>
		00000000000082f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18ef
    82fc: 91000021     	add	x1, x1, #0x0
		00000000000082fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18ef
    8300: 94000000     	bl	0x8300 <syna_dev_enable_lowpwr_gesture+0x18c>
		0000000000008300:  R_AARCH64_CALL26	_printk
    8304: 2a1303e0     	mov	w0, w19
    8308: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    830c: f9400bf7     	ldr	x23, [sp, #0x10]
    8310: a94257f6     	ldp	x22, x21, [sp, #0x20]
    8314: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    8318: d50323bf     	autiasp
    831c: d65f03c0     	ret
