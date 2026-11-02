
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000008170 <syna_dev_enable_lowpwr_gesture>:
    8170: 39560408     	ldrb	w8, [x0, #0x581]
    8174: 7100051f     	cmp	w8, #0x1
    8178: 54000060     	b.eq	0x8184 <syna_dev_enable_lowpwr_gesture+0x14>
    817c: 2a1f03e0     	mov	w0, wzr
    8180: d65f03c0     	ret
    8184: d503233f     	paciasp
    8188: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    818c: f9000bf7     	str	x23, [sp, #0x10]
    8190: a90257f6     	stp	x22, x21, [sp, #0x20]
    8194: a9034ff4     	stp	x20, x19, [sp, #0x30]
    8198: 910003fd     	mov	x29, sp
    819c: 394bd008     	ldrb	w8, [x0, #0x2f4]
    81a0: aa0003f6     	mov	x22, x0
    81a4: 2a0103f7     	mov	w23, w1
    81a8: 2a0203f3     	mov	w19, w2
    81ac: 370000e1     	tbnz	w1, #0x0, 0x81c8 <syna_dev_enable_lowpwr_gesture+0x58>
    81b0: 2a1f03f4     	mov	w20, wzr
    81b4: 34000268     	cbz	w8, 0x8200 <syna_dev_enable_lowpwr_gesture+0x90>
    81b8: 2a1f03f4     	mov	w20, wzr
    81bc: 90000015     	adrp	x21, 0x8000 <syna_dev_disconnect+0x190>
		00000000000081bc:  R_AARCH64_ADR_PREL_PG_HI21	unk_35A56
    81c0: 910002b5     	add	x21, x21, #0x0
		00000000000081c0:  R_AARCH64_ADD_ABS_LO12_NC	unk_35A56
    81c4: 14000005     	b	0x81d8 <syna_dev_enable_lowpwr_gesture+0x68>
    81c8: 52800034     	mov	w20, #0x1               // =1
    81cc: 370001a8     	tbnz	w8, #0x0, 0x8200 <syna_dev_enable_lowpwr_gesture+0x90>
    81d0: 90000015     	adrp	x21, 0x8000 <syna_dev_disconnect+0x190>
		00000000000081d0:  R_AARCH64_ADR_PREL_PG_HI21	unk_36AB5
    81d4: 910002b5     	add	x21, x21, #0x0
		00000000000081d4:  R_AARCH64_ADD_ABS_LO12_NC	unk_36AB5
    81d8: f9413808     	ldr	x8, [x0, #0x270]
    81dc: 2a1403e1     	mov	w1, w20
    81e0: b940b900     	ldr	w0, [x8, #0xb8]
    81e4: 94000000     	bl	0x81e4 <syna_dev_enable_lowpwr_gesture+0x74>
		00000000000081e4:  R_AARCH64_CALL26	irq_set_irq_wake
    81e8: 90000001     	adrp	x1, 0x8000 <syna_dev_disconnect+0x190>
		00000000000081e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18ef
    81ec: 91000021     	add	x1, x1, #0x0
		00000000000081ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18ef
    81f0: aa1503e0     	mov	x0, x21
    81f4: 94000000     	bl	0x81f4 <syna_dev_enable_lowpwr_gesture+0x84>
		00000000000081f4:  R_AARCH64_CALL26	_printk
    81f8: aa1603e0     	mov	x0, x22
    81fc: 390bd2d4     	strb	w20, [x22, #0x2f4]
    8200: f9400000     	ldr	x0, [x0]
    8204: 52800121     	mov	w1, #0x9                // =9
    8208: 2a1403e2     	mov	w2, w20
    820c: 2a1303e3     	mov	w3, w19
    8210: 94000000     	bl	0x8210 <syna_dev_enable_lowpwr_gesture+0xa0>
		0000000000008210:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    8214: 37f80420     	tbnz	w0, #0x1f, 0x8298 <syna_dev_enable_lowpwr_gesture+0x128>
    8218: b945c6c9     	ldr	w9, [x22, #0x5c4]
    821c: b945b2ca     	ldr	w10, [x22, #0x5b0]
    8220: 52801fc1     	mov	w1, #0xfe               // =254
    8224: f94002c0     	ldr	x0, [x22]
    8228: 2a1303e3     	mov	w3, w19
    822c: 2a0a3522     	orr	w2, w9, w10, lsl #13
    8230: 94000000     	bl	0x8230 <syna_dev_enable_lowpwr_gesture+0xc0>
		0000000000008230:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    8234: 37f804e0     	tbnz	w0, #0x1f, 0x82d0 <syna_dev_enable_lowpwr_gesture+0x160>
    8238: b945b2c2     	ldr	w2, [x22, #0x5b0]
    823c: b945c6c3     	ldr	w3, [x22, #0x5c4]
    8240: 90000000     	adrp	x0, 0x8000 <syna_dev_disconnect+0x190>
		0000000000008240:  R_AARCH64_ADR_PREL_PG_HI21	unk_329E0
    8244: 91000000     	add	x0, x0, #0x0
		0000000000008244:  R_AARCH64_ADD_ABS_LO12_NC	unk_329E0
    8248: 90000001     	adrp	x1, 0x8000 <syna_dev_disconnect+0x190>
		0000000000008248:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18ef
    824c: 91000021     	add	x1, x1, #0x0
		000000000000824c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18ef
    8250: 94000000     	bl	0x8250 <syna_dev_enable_lowpwr_gesture+0xe0>
		0000000000008250:  R_AARCH64_CALL26	_printk
    8254: b945bac8     	ldr	w8, [x22, #0x5b8]
    8258: f94002c0     	ldr	x0, [x22]
    825c: 52801a81     	mov	w1, #0xd4               // =212
    8260: 2a1303e3     	mov	w3, w19
    8264: 7100011f     	cmp	w8, #0x0
    8268: 52800068     	mov	w8, #0x3                // =3
    826c: 1a8803e2     	csel	w2, wzr, w8, eq
    8270: 94000000     	bl	0x8270 <syna_dev_enable_lowpwr_gesture+0x100>
		0000000000008270:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    8274: 2a0003f3     	mov	w19, w0
    8278: 37f803a0     	tbnz	w0, #0x1f, 0x82ec <syna_dev_enable_lowpwr_gesture+0x17c>
    827c: b945b2c2     	ldr	w2, [x22, #0x5b0]
    8280: 90000000     	adrp	x0, 0x8000 <syna_dev_disconnect+0x190>
		0000000000008280:  R_AARCH64_ADR_PREL_PG_HI21	unk_3D131
    8284: 91000000     	add	x0, x0, #0x0
		0000000000008284:  R_AARCH64_ADD_ABS_LO12_NC	unk_3D131
    8288: 90000001     	adrp	x1, 0x8000 <syna_dev_disconnect+0x190>
		0000000000008288:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18ef
    828c: 91000021     	add	x1, x1, #0x0
		000000000000828c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18ef
    8290: 94000000     	bl	0x8290 <syna_dev_enable_lowpwr_gesture+0x120>
		0000000000008290:  R_AARCH64_CALL26	_printk
    8294: 1400001b     	b	0x8300 <syna_dev_enable_lowpwr_gesture+0x190>
    8298: 90000008     	adrp	x8, 0x8000 <syna_dev_disconnect+0x190>
		0000000000008298:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ac2
    829c: 91000108     	add	x8, x8, #0x0
		000000000000829c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ac2
    82a0: 720002ff     	tst	w23, #0x1
    82a4: 90000009     	adrp	x9, 0x8000 <syna_dev_disconnect+0x190>
		00000000000082a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6edb
    82a8: 91000129     	add	x9, x9, #0x0
		00000000000082a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6edb
    82ac: 90000001     	adrp	x1, 0x8000 <syna_dev_disconnect+0x190>
		00000000000082ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18ef
    82b0: 91000021     	add	x1, x1, #0x0
		00000000000082b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18ef
    82b4: 9a880122     	csel	x2, x9, x8, eq
    82b8: 90000008     	adrp	x8, 0x8000 <syna_dev_disconnect+0x190>
		00000000000082b8:  R_AARCH64_ADR_PREL_PG_HI21	unk_335DA
    82bc: 91000108     	add	x8, x8, #0x0
		00000000000082bc:  R_AARCH64_ADD_ABS_LO12_NC	unk_335DA
    82c0: 2a0003f3     	mov	w19, w0
    82c4: aa0803e0     	mov	x0, x8
    82c8: 94000000     	bl	0x82c8 <syna_dev_enable_lowpwr_gesture+0x158>
		00000000000082c8:  R_AARCH64_CALL26	_printk
    82cc: 1400000d     	b	0x8300 <syna_dev_enable_lowpwr_gesture+0x190>
    82d0: 90000008     	adrp	x8, 0x8000 <syna_dev_disconnect+0x190>
		00000000000082d0:  R_AARCH64_ADR_PREL_PG_HI21	unk_3B058
    82d4: 91000108     	add	x8, x8, #0x0
		00000000000082d4:  R_AARCH64_ADD_ABS_LO12_NC	unk_3B058
    82d8: 90000001     	adrp	x1, 0x8000 <syna_dev_disconnect+0x190>
		00000000000082d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18ef
    82dc: 91000021     	add	x1, x1, #0x0
		00000000000082dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18ef
    82e0: 2a0003f3     	mov	w19, w0
    82e4: aa0803e0     	mov	x0, x8
    82e8: 14000005     	b	0x82fc <syna_dev_enable_lowpwr_gesture+0x18c>
    82ec: 90000000     	adrp	x0, 0x8000 <syna_dev_disconnect+0x190>
		00000000000082ec:  R_AARCH64_ADR_PREL_PG_HI21	unk_3B058
    82f0: 91000000     	add	x0, x0, #0x0
		00000000000082f0:  R_AARCH64_ADD_ABS_LO12_NC	unk_3B058
    82f4: 90000001     	adrp	x1, 0x8000 <syna_dev_disconnect+0x190>
		00000000000082f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18ef
    82f8: 91000021     	add	x1, x1, #0x0
		00000000000082f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18ef
    82fc: 94000000     	bl	0x82fc <syna_dev_enable_lowpwr_gesture+0x18c>
		00000000000082fc:  R_AARCH64_CALL26	_printk
    8300: 2a1303e0     	mov	w0, w19
    8304: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    8308: f9400bf7     	ldr	x23, [sp, #0x10]
    830c: a94257f6     	ldp	x22, x21, [sp, #0x20]
    8310: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    8314: d50323bf     	autiasp
    8318: d65f03c0     	ret
