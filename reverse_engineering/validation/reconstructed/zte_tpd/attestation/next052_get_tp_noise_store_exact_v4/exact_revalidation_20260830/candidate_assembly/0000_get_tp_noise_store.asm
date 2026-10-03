
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000025fc4 <get_tp_noise_store>:
   25fc4: d503233f     	paciasp
   25fc8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   25fcc: a9014ff4     	stp	x20, x19, [sp, #0x10]
   25fd0: 910003fd     	mov	x29, sp
   25fd4: 90000008     	adrp	x8, 0x25000 <tp_glove_read+0x5c>
		0000000000025fd4:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   25fd8: aa0203f3     	mov	x19, x2
   25fdc: f9400114     	ldr	x20, [x8]
		0000000000025fdc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25fe0: 91318280     	add	x0, x20, #0xc60
   25fe4: 94000000     	bl	0x25fe4 <get_tp_noise_store+0x20>
		0000000000025fe4:  R_AARCH64_CALL26	mutex_lock
   25fe8: f9462e80     	ldr	x0, [x20, #0xc58]
   25fec: b4000140     	cbz	x0, 0x26014 <get_tp_noise_store+0x50>
   25ff0: f9400408     	ldr	x8, [x0, #0x8]
   25ff4: b40000c8     	cbz	x8, 0x2600c <get_tp_noise_store+0x48>
   25ff8: aa0803e0     	mov	x0, x8
   25ffc: 94000000     	bl	0x25ffc <get_tp_noise_store+0x38>
		0000000000025ffc:  R_AARCH64_CALL26	vfree
   26000: f9462e88     	ldr	x8, [x20, #0xc58]
   26004: f900051f     	str	xzr, [x8, #0x8]
   26008: f9462e80     	ldr	x0, [x20, #0xc58]
   2600c: 94000000     	bl	0x2600c <get_tp_noise_store+0x48>
		000000000002600c:  R_AARCH64_CALL26	kfree
   26010: f9062e9f     	str	xzr, [x20, #0xc58]
   26014: 91318280     	add	x0, x20, #0xc60
   26018: b9044a9f     	str	wzr, [x20, #0x448]
   2601c: 94000000     	bl	0x2601c <get_tp_noise_store+0x58>
		000000000002601c:  R_AARCH64_CALL26	mutex_unlock
   26020: aa1303e0     	mov	x0, x19
   26024: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   26028: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   2602c: d50323bf     	autiasp
   26030: d65f03c0     	ret
