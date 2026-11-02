
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001e120 <tp_alloc_tp_firmware_data>:
   1e120: d503233f     	paciasp
   1e124: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   1e128: a90157f6     	stp	x22, x21, [sp, #0x10]
   1e12c: a9024ff4     	stp	x20, x19, [sp, #0x20]
   1e130: 910003fd     	mov	x29, sp
   1e134: 90000008     	adrp	x8, 0x1e000 <tp_BBAT_test_read+0x24>
		000000000001e134:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1e138: 2a0003f3     	mov	w19, w0
   1e13c: f9400114     	ldr	x20, [x8]
		000000000001e13c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1e140: f9462e88     	ldr	x8, [x20, #0xc58]
   1e144: b4000188     	cbz	x8, 0x1e174 <tp_alloc_tp_firmware_data+0x54>
   1e148: f9400500     	ldr	x0, [x8, #0x8]
   1e14c: b40000e0     	cbz	x0, 0x1e168 <tp_alloc_tp_firmware_data+0x48>
   1e150: 94000000     	bl	0x1e150 <tp_alloc_tp_firmware_data+0x30>
		000000000001e150:  R_AARCH64_CALL26	vfree
   1e154: f9462e88     	ldr	x8, [x20, #0xc58]
   1e158: f900051f     	str	xzr, [x8, #0x8]
   1e15c: f9462e88     	ldr	x8, [x20, #0xc58]
   1e160: f900011f     	str	xzr, [x8]
   1e164: f9462e88     	ldr	x8, [x20, #0xc58]
   1e168: aa0803e0     	mov	x0, x8
   1e16c: 94000000     	bl	0x1e16c <tp_alloc_tp_firmware_data+0x4c>
		000000000001e16c:  R_AARCH64_CALL26	kfree
   1e170: f9062e9f     	str	xzr, [x20, #0xc58]
   1e174: b9044a9f     	str	wzr, [x20, #0x448]
   1e178: d503201f     	nop
   1e17c: 90000008     	adrp	x8, 0x1e000 <tp_BBAT_test_read+0x24>
		000000000001e17c:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
   1e180: 5281b801     	mov	w1, #0xdc0              // =3520
   1e184: 52800302     	mov	w2, #0x18               // =24
   1e188: f9400100     	ldr	x0, [x8]
		000000000001e188:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
   1e18c: 94000000     	bl	0x1e18c <tp_alloc_tp_firmware_data+0x6c>
		000000000001e18c:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   1e190: f9062e80     	str	x0, [x20, #0xc58]
   1e194: b4000580     	cbz	x0, 0x1e244 <tp_alloc_tp_firmware_data+0x124>
   1e198: d503201f     	nop
   1e19c: 2a1303e8     	mov	w8, w19
   1e1a0: 93407d08     	sxtw	x8, w8
   1e1a4: 91006100     	add	x0, x8, #0x18
   1e1a8: 94000000     	bl	0x1e1a8 <tp_alloc_tp_firmware_data+0x88>
		000000000001e1a8:  R_AARCH64_CALL26	vmalloc_noprof
   1e1ac: f9462e88     	ldr	x8, [x20, #0xc58]
   1e1b0: f9000500     	str	x0, [x8, #0x8]
   1e1b4: f9462e88     	ldr	x8, [x20, #0xc58]
   1e1b8: f9400509     	ldr	x9, [x8, #0x8]
   1e1bc: b40001c9     	cbz	x9, 0x1e1f4 <tp_alloc_tp_firmware_data+0xd4>
   1e1c0: 93407e69     	sxtw	x9, w19
   1e1c4: 2a1f03e1     	mov	w1, wzr
   1e1c8: f9000109     	str	x9, [x8]
   1e1cc: 91006122     	add	x2, x9, #0x18
   1e1d0: f9462e88     	ldr	x8, [x20, #0xc58]
   1e1d4: f9400500     	ldr	x0, [x8, #0x8]
   1e1d8: 94000000     	bl	0x1e1d8 <tp_alloc_tp_firmware_data+0xb8>
		000000000001e1d8:  R_AARCH64_CALL26	memset
   1e1dc: 2a1f03e0     	mov	w0, wzr
   1e1e0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   1e1e4: a94157f6     	ldp	x22, x21, [sp, #0x10]
   1e1e8: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   1e1ec: d50323bf     	autiasp
   1e1f0: d65f03c0     	ret
   1e1f4: 90000000     	adrp	x0, 0x1e000 <tp_BBAT_test_read+0x24>
		000000000001e1f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4e34
   1e1f8: 91000000     	add	x0, x0, #0x0
		000000000001e1f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4e34
   1e1fc: 94000000     	bl	0x1e1fc <tp_alloc_tp_firmware_data+0xdc>
		000000000001e1fc:  R_AARCH64_CALL26	_printk
   1e200: f9462e80     	ldr	x0, [x20, #0xc58]
   1e204: 94000000     	bl	0x1e204 <tp_alloc_tp_firmware_data+0xe4>
		000000000001e204:  R_AARCH64_CALL26	kfree
   1e208: 12800160     	mov	w0, #-0xc               // =-12
   1e20c: 17fffff5     	b	0x1e1e0 <tp_alloc_tp_firmware_data+0xc0>
   1e210: 90000008     	adrp	x8, 0x1e000 <tp_BBAT_test_read+0x24>
		000000000001e210:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
   1e214: d5384115     	mrs	x21, SP_EL0
   1e218: f9402ab6     	ldr	x22, [x21, #0x50]
   1e21c: f9400100     	ldr	x0, [x8]
		000000000001e21c:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
   1e220: 90000008     	adrp	x8, 0x1e000 <tp_BBAT_test_read+0x24>
		000000000001e220:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x1e0
   1e224: 91000108     	add	x8, x8, #0x0
		000000000001e224:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x1e0
   1e228: 5281b801     	mov	w1, #0xdc0              // =3520
   1e22c: 52800302     	mov	w2, #0x18               // =24
   1e230: f9002aa8     	str	x8, [x21, #0x50]
   1e234: 94000000     	bl	0x1e234 <tp_alloc_tp_firmware_data+0x114>
		000000000001e234:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   1e238: f9002ab6     	str	x22, [x21, #0x50]
   1e23c: f9062e80     	str	x0, [x20, #0xc58]
   1e240: b5fffac0     	cbnz	x0, 0x1e198 <tp_alloc_tp_firmware_data+0x78>
   1e244: 90000000     	adrp	x0, 0x1e000 <tp_BBAT_test_read+0x24>
		000000000001e244:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ab
   1e248: 91000000     	add	x0, x0, #0x0
		000000000001e248:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ab
   1e24c: 94000000     	bl	0x1e24c <tp_alloc_tp_firmware_data+0x12c>
		000000000001e24c:  R_AARCH64_CALL26	_printk
   1e250: 12800160     	mov	w0, #-0xc               // =-12
   1e254: 17ffffe3     	b	0x1e1e0 <tp_alloc_tp_firmware_data+0xc0>
   1e258: 93407e68     	sxtw	x8, w19
   1e25c: d5384115     	mrs	x21, SP_EL0
   1e260: f9402ab6     	ldr	x22, [x21, #0x50]
   1e264: 90000009     	adrp	x9, 0x1e000 <tp_BBAT_test_read+0x24>
		000000000001e264:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x208
   1e268: 91000129     	add	x9, x9, #0x0
		000000000001e268:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x208
   1e26c: 91006100     	add	x0, x8, #0x18
   1e270: f9002aa9     	str	x9, [x21, #0x50]
   1e274: 94000000     	bl	0x1e274 <tp_alloc_tp_firmware_data+0x154>
		000000000001e274:  R_AARCH64_CALL26	vmalloc_noprof
   1e278: f9002ab6     	str	x22, [x21, #0x50]
   1e27c: 17ffffcc     	b	0x1e1ac <tp_alloc_tp_firmware_data+0x8c>
