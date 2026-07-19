
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001db3c <tp_alloc_tp_firmware_data>:
   1db3c: d503233f     	paciasp
   1db40: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   1db44: a90157f6     	stp	x22, x21, [sp, #0x10]
   1db48: a9024ff4     	stp	x20, x19, [sp, #0x20]
   1db4c: 910003fd     	mov	x29, sp
   1db50: 90000008     	adrp	x8, 0x1d000 <syna_testing_pt0a_zte+0xf0>
		000000000001db50:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1db54: 2a0003f3     	mov	w19, w0
   1db58: f9400114     	ldr	x20, [x8]
		000000000001db58:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1db5c: f9462e88     	ldr	x8, [x20, #0xc58]
   1db60: b4000188     	cbz	x8, 0x1db90 <tp_alloc_tp_firmware_data+0x54>
   1db64: f9400500     	ldr	x0, [x8, #0x8]
   1db68: b40000e0     	cbz	x0, 0x1db84 <tp_alloc_tp_firmware_data+0x48>
   1db6c: 94000000     	bl	0x1db6c <tp_alloc_tp_firmware_data+0x30>
		000000000001db6c:  R_AARCH64_CALL26	vfree
   1db70: f9462e88     	ldr	x8, [x20, #0xc58]
   1db74: f900051f     	str	xzr, [x8, #0x8]
   1db78: f9462e88     	ldr	x8, [x20, #0xc58]
   1db7c: f900011f     	str	xzr, [x8]
   1db80: f9462e88     	ldr	x8, [x20, #0xc58]
   1db84: aa0803e0     	mov	x0, x8
   1db88: 94000000     	bl	0x1db88 <tp_alloc_tp_firmware_data+0x4c>
		000000000001db88:  R_AARCH64_CALL26	kfree
   1db8c: f9062e9f     	str	xzr, [x20, #0xc58]
   1db90: b9044a9f     	str	wzr, [x20, #0x448]
   1db94: d503201f     	nop
   1db98: 90000008     	adrp	x8, 0x1d000 <syna_testing_pt0a_zte+0xf0>
		000000000001db98:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
   1db9c: 5281b801     	mov	w1, #0xdc0              // =3520
   1dba0: 52800302     	mov	w2, #0x18               // =24
   1dba4: f9400100     	ldr	x0, [x8]
		000000000001dba4:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
   1dba8: 94000000     	bl	0x1dba8 <tp_alloc_tp_firmware_data+0x6c>
		000000000001dba8:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   1dbac: f9062e80     	str	x0, [x20, #0xc58]
   1dbb0: b4000580     	cbz	x0, 0x1dc60 <tp_alloc_tp_firmware_data+0x124>
   1dbb4: d503201f     	nop
   1dbb8: 2a1303e8     	mov	w8, w19
   1dbbc: 93407d08     	sxtw	x8, w8
   1dbc0: 91006100     	add	x0, x8, #0x18
   1dbc4: 94000000     	bl	0x1dbc4 <tp_alloc_tp_firmware_data+0x88>
		000000000001dbc4:  R_AARCH64_CALL26	vmalloc_noprof
   1dbc8: f9462e88     	ldr	x8, [x20, #0xc58]
   1dbcc: f9000500     	str	x0, [x8, #0x8]
   1dbd0: f9462e88     	ldr	x8, [x20, #0xc58]
   1dbd4: f9400509     	ldr	x9, [x8, #0x8]
   1dbd8: b40001c9     	cbz	x9, 0x1dc10 <tp_alloc_tp_firmware_data+0xd4>
   1dbdc: 93407e69     	sxtw	x9, w19
   1dbe0: 2a1f03e1     	mov	w1, wzr
   1dbe4: f9000109     	str	x9, [x8]
   1dbe8: 91006122     	add	x2, x9, #0x18
   1dbec: f9462e88     	ldr	x8, [x20, #0xc58]
   1dbf0: f9400500     	ldr	x0, [x8, #0x8]
   1dbf4: 94000000     	bl	0x1dbf4 <tp_alloc_tp_firmware_data+0xb8>
		000000000001dbf4:  R_AARCH64_CALL26	memset
   1dbf8: 2a1f03e0     	mov	w0, wzr
   1dbfc: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   1dc00: a94157f6     	ldp	x22, x21, [sp, #0x10]
   1dc04: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   1dc08: d50323bf     	autiasp
   1dc0c: d65f03c0     	ret
   1dc10: 90000000     	adrp	x0, 0x1d000 <syna_testing_pt0a_zte+0xf0>
		000000000001dc10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4e7d
   1dc14: 91000000     	add	x0, x0, #0x0
		000000000001dc14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4e7d
   1dc18: 94000000     	bl	0x1dc18 <tp_alloc_tp_firmware_data+0xdc>
		000000000001dc18:  R_AARCH64_CALL26	_printk
   1dc1c: f9462e80     	ldr	x0, [x20, #0xc58]
   1dc20: 94000000     	bl	0x1dc20 <tp_alloc_tp_firmware_data+0xe4>
		000000000001dc20:  R_AARCH64_CALL26	kfree
   1dc24: 12800160     	mov	w0, #-0xc               // =-12
   1dc28: 17fffff5     	b	0x1dbfc <tp_alloc_tp_firmware_data+0xc0>
   1dc2c: 90000008     	adrp	x8, 0x1d000 <syna_testing_pt0a_zte+0xf0>
		000000000001dc2c:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
   1dc30: d5384115     	mrs	x21, SP_EL0
   1dc34: f9402ab6     	ldr	x22, [x21, #0x50]
   1dc38: f9400100     	ldr	x0, [x8]
		000000000001dc38:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
   1dc3c: 90000008     	adrp	x8, 0x1d000 <syna_testing_pt0a_zte+0xf0>
		000000000001dc3c:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x1e0
   1dc40: 91000108     	add	x8, x8, #0x0
		000000000001dc40:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x1e0
   1dc44: 5281b801     	mov	w1, #0xdc0              // =3520
   1dc48: 52800302     	mov	w2, #0x18               // =24
   1dc4c: f9002aa8     	str	x8, [x21, #0x50]
   1dc50: 94000000     	bl	0x1dc50 <tp_alloc_tp_firmware_data+0x114>
		000000000001dc50:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   1dc54: f9002ab6     	str	x22, [x21, #0x50]
   1dc58: f9062e80     	str	x0, [x20, #0xc58]
   1dc5c: b5fffac0     	cbnz	x0, 0x1dbb4 <tp_alloc_tp_firmware_data+0x78>
   1dc60: 90000000     	adrp	x0, 0x1d000 <syna_testing_pt0a_zte+0xf0>
		000000000001dc60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x864
   1dc64: 91000000     	add	x0, x0, #0x0
		000000000001dc64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x864
   1dc68: 94000000     	bl	0x1dc68 <tp_alloc_tp_firmware_data+0x12c>
		000000000001dc68:  R_AARCH64_CALL26	_printk
   1dc6c: 12800160     	mov	w0, #-0xc               // =-12
   1dc70: 17ffffe3     	b	0x1dbfc <tp_alloc_tp_firmware_data+0xc0>
   1dc74: 93407e68     	sxtw	x8, w19
   1dc78: d5384115     	mrs	x21, SP_EL0
   1dc7c: f9402ab6     	ldr	x22, [x21, #0x50]
   1dc80: 90000009     	adrp	x9, 0x1d000 <syna_testing_pt0a_zte+0xf0>
		000000000001dc80:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x208
   1dc84: 91000129     	add	x9, x9, #0x0
		000000000001dc84:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x208
   1dc88: 91006100     	add	x0, x8, #0x18
   1dc8c: f9002aa9     	str	x9, [x21, #0x50]
   1dc90: 94000000     	bl	0x1dc90 <tp_alloc_tp_firmware_data+0x154>
		000000000001dc90:  R_AARCH64_CALL26	vmalloc_noprof
   1dc94: f9002ab6     	str	x22, [x21, #0x50]
   1dc98: 17ffffcc     	b	0x1dbc8 <tp_alloc_tp_firmware_data+0x8c>
