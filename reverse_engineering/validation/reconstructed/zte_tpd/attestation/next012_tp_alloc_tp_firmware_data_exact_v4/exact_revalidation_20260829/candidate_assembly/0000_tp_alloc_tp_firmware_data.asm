
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000c11c <tp_alloc_tp_firmware_data>:
    c11c: d503233f     	paciasp
    c120: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    c124: a90157f6     	stp	x22, x21, [sp, #0x10]
    c128: a9024ff4     	stp	x20, x19, [sp, #0x20]
    c12c: 910003fd     	mov	x29, sp
    c130: 90000008     	adrp	x8, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000c130:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    c134: 2a0003f3     	mov	w19, w0
    c138: f9400114     	ldr	x20, [x8]
		000000000000c138:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    c13c: f9462e88     	ldr	x8, [x20, #0xc58]
    c140: b4000188     	cbz	x8, 0xc170 <tp_alloc_tp_firmware_data+0x54>
    c144: f9400500     	ldr	x0, [x8, #0x8]
    c148: b40000e0     	cbz	x0, 0xc164 <tp_alloc_tp_firmware_data+0x48>
    c14c: 94000000     	bl	0xc14c <tp_alloc_tp_firmware_data+0x30>
		000000000000c14c:  R_AARCH64_CALL26	vfree
    c150: f9462e88     	ldr	x8, [x20, #0xc58]
    c154: f900051f     	str	xzr, [x8, #0x8]
    c158: f9462e88     	ldr	x8, [x20, #0xc58]
    c15c: f900011f     	str	xzr, [x8]
    c160: f9462e88     	ldr	x8, [x20, #0xc58]
    c164: aa0803e0     	mov	x0, x8
    c168: 94000000     	bl	0xc168 <tp_alloc_tp_firmware_data+0x4c>
		000000000000c168:  R_AARCH64_CALL26	kfree
    c16c: f9062e9f     	str	xzr, [x20, #0xc58]
    c170: b9044a9f     	str	wzr, [x20, #0x448]
    c174: d503201f     	nop
    c178: 90000008     	adrp	x8, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000c178:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
    c17c: 5281b801     	mov	w1, #0xdc0              // =3520
    c180: 52800302     	mov	w2, #0x18               // =24
    c184: f9400100     	ldr	x0, [x8]
		000000000000c184:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
    c188: 94000000     	bl	0xc188 <tp_alloc_tp_firmware_data+0x6c>
		000000000000c188:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    c18c: f9062e80     	str	x0, [x20, #0xc58]
    c190: b4000580     	cbz	x0, 0xc240 <tp_alloc_tp_firmware_data+0x124>
    c194: d503201f     	nop
    c198: 2a1303e8     	mov	w8, w19
    c19c: 93407d08     	sxtw	x8, w8
    c1a0: 91006100     	add	x0, x8, #0x18
    c1a4: 94000000     	bl	0xc1a4 <tp_alloc_tp_firmware_data+0x88>
		000000000000c1a4:  R_AARCH64_CALL26	vmalloc_noprof
    c1a8: f9462e88     	ldr	x8, [x20, #0xc58]
    c1ac: f9000500     	str	x0, [x8, #0x8]
    c1b0: f9462e88     	ldr	x8, [x20, #0xc58]
    c1b4: f9400509     	ldr	x9, [x8, #0x8]
    c1b8: b40001c9     	cbz	x9, 0xc1f0 <tp_alloc_tp_firmware_data+0xd4>
    c1bc: 93407e69     	sxtw	x9, w19
    c1c0: 2a1f03e1     	mov	w1, wzr
    c1c4: f9000109     	str	x9, [x8]
    c1c8: 91006122     	add	x2, x9, #0x18
    c1cc: f9462e88     	ldr	x8, [x20, #0xc58]
    c1d0: f9400500     	ldr	x0, [x8, #0x8]
    c1d4: 94000000     	bl	0xc1d4 <tp_alloc_tp_firmware_data+0xb8>
		000000000000c1d4:  R_AARCH64_CALL26	memset
    c1d8: 2a1f03e0     	mov	w0, wzr
    c1dc: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    c1e0: a94157f6     	ldp	x22, x21, [sp, #0x10]
    c1e4: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    c1e8: d50323bf     	autiasp
    c1ec: d65f03c0     	ret
    c1f0: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000c1f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bd13
    c1f4: 91000000     	add	x0, x0, #0x0
		000000000000c1f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bd13
    c1f8: 94000000     	bl	0xc1f8 <tp_alloc_tp_firmware_data+0xdc>
		000000000000c1f8:  R_AARCH64_CALL26	_printk
    c1fc: f9462e80     	ldr	x0, [x20, #0xc58]
    c200: 94000000     	bl	0xc200 <tp_alloc_tp_firmware_data+0xe4>
		000000000000c200:  R_AARCH64_CALL26	kfree
    c204: 12800160     	mov	w0, #-0xc               // =-12
    c208: 17fffff5     	b	0xc1dc <tp_alloc_tp_firmware_data+0xc0>
    c20c: 90000008     	adrp	x8, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000c20c:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
    c210: d5384115     	mrs	x21, SP_EL0
    c214: f9402ab6     	ldr	x22, [x21, #0x50]
    c218: f9400100     	ldr	x0, [x8]
		000000000000c218:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
    c21c: 90000008     	adrp	x8, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000c21c:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x28
    c220: 91000108     	add	x8, x8, #0x0
		000000000000c220:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x28
    c224: 5281b801     	mov	w1, #0xdc0              // =3520
    c228: 52800302     	mov	w2, #0x18               // =24
    c22c: f9002aa8     	str	x8, [x21, #0x50]
    c230: 94000000     	bl	0xc230 <tp_alloc_tp_firmware_data+0x114>
		000000000000c230:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    c234: f9002ab6     	str	x22, [x21, #0x50]
    c238: f9062e80     	str	x0, [x20, #0xc58]
    c23c: b5fffac0     	cbnz	x0, 0xc194 <tp_alloc_tp_firmware_data+0x78>
    c240: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000c240:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17852
    c244: 91000000     	add	x0, x0, #0x0
		000000000000c244:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17852
    c248: 94000000     	bl	0xc248 <tp_alloc_tp_firmware_data+0x12c>
		000000000000c248:  R_AARCH64_CALL26	_printk
    c24c: 12800160     	mov	w0, #-0xc               // =-12
    c250: 17ffffe3     	b	0xc1dc <tp_alloc_tp_firmware_data+0xc0>
    c254: 93407e68     	sxtw	x8, w19
    c258: d5384115     	mrs	x21, SP_EL0
    c25c: f9402ab6     	ldr	x22, [x21, #0x50]
    c260: 90000009     	adrp	x9, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000c260:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x50
    c264: 91000129     	add	x9, x9, #0x0
		000000000000c264:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x50
    c268: 91006100     	add	x0, x8, #0x18
    c26c: f9002aa9     	str	x9, [x21, #0x50]
    c270: 94000000     	bl	0xc270 <tp_alloc_tp_firmware_data+0x154>
		000000000000c270:  R_AARCH64_CALL26	vmalloc_noprof
    c274: f9002ab6     	str	x22, [x21, #0x50]
    c278: 17ffffcc     	b	0xc1a8 <tp_alloc_tp_firmware_data+0x8c>
