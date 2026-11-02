
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000026020 <get_tp_noise_store>:
   26020: d503233f     	paciasp
   26024: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   26028: a9014ff4     	stp	x20, x19, [sp, #0x10]
   2602c: 910003fd     	mov	x29, sp
   26030: 90000008     	adrp	x8, 0x26000 <get_tp_noise_show+0xfc>
		0000000000026030:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   26034: aa0203f3     	mov	x19, x2
   26038: f9400114     	ldr	x20, [x8]
		0000000000026038:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   2603c: 91318280     	add	x0, x20, #0xc60
   26040: 94000000     	bl	0x26040 <get_tp_noise_store+0x20>
		0000000000026040:  R_AARCH64_CALL26	mutex_lock
   26044: f9462e80     	ldr	x0, [x20, #0xc58]
   26048: b4000140     	cbz	x0, 0x26070 <get_tp_noise_store+0x50>
   2604c: f9400408     	ldr	x8, [x0, #0x8]
   26050: b40000c8     	cbz	x8, 0x26068 <get_tp_noise_store+0x48>
   26054: aa0803e0     	mov	x0, x8
   26058: 94000000     	bl	0x26058 <get_tp_noise_store+0x38>
		0000000000026058:  R_AARCH64_CALL26	vfree
   2605c: f9462e88     	ldr	x8, [x20, #0xc58]
   26060: f900051f     	str	xzr, [x8, #0x8]
   26064: f9462e80     	ldr	x0, [x20, #0xc58]
   26068: 94000000     	bl	0x26068 <get_tp_noise_store+0x48>
		0000000000026068:  R_AARCH64_CALL26	kfree
   2606c: f9062e9f     	str	xzr, [x20, #0xc58]
   26070: 91318280     	add	x0, x20, #0xc60
   26074: b9044a9f     	str	wzr, [x20, #0x448]
   26078: 94000000     	bl	0x26078 <get_tp_noise_store+0x58>
		0000000000026078:  R_AARCH64_CALL26	mutex_unlock
   2607c: aa1303e0     	mov	x0, x19
   26080: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   26084: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   26088: d50323bf     	autiasp
   2608c: d65f03c0     	ret
