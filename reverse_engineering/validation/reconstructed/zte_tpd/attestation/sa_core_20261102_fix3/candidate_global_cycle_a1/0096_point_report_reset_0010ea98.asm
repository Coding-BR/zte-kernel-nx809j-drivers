
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001b2e4 <point_report_reset>:
   1b2e4: 7100241f     	cmp	w0, #0x9
   1b2e8: 54000688     	b.hi	0x1b3b8 <point_report_reset+0xd4>
   1b2ec: d503233f     	paciasp
   1b2f0: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   1b2f4: f9000bf5     	str	x21, [sp, #0x10]
   1b2f8: a9024ff4     	stp	x20, x19, [sp, #0x20]
   1b2fc: 910003fd     	mov	x29, sp
   1b300: 52801108     	mov	w8, #0x88               // =136
   1b304: 90000009     	adrp	x9, 0x1b000 <string_change+0x3a8>
		000000000001b304:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info
   1b308: 91000129     	add	x9, x9, #0x0
		000000000001b308:  R_AARCH64_ADD_ABS_LO12_NC	point_report_info
   1b30c: 9ba82414     	umaddl	x20, w0, w8, x9
   1b310: 39415288     	ldrb	w8, [x20, #0x54]
   1b314: 7100051f     	cmp	w8, #0x1
   1b318: 540000c0     	b.eq	0x1b330 <point_report_reset+0x4c>
   1b31c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   1b320: f9400bf5     	ldr	x21, [sp, #0x10]
   1b324: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   1b328: d50323bf     	autiasp
   1b32c: d65f03c0     	ret
   1b330: 90000008     	adrp	x8, 0x1b000 <string_change+0x3a8>
		000000000001b330:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1b334: 2a0003f3     	mov	w19, w0
   1b338: 90000001     	adrp	x1, 0x1b000 <string_change+0x3a8>
		000000000001b338:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x45fc
   1b33c: 91000021     	add	x1, x1, #0x0
		000000000001b33c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x45fc
   1b340: f9400115     	ldr	x21, [x8]
		000000000001b340:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1b344: 90000008     	adrp	x8, 0x1b000 <string_change+0x3a8>
		000000000001b344:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5758
   1b348: 91000108     	add	x8, x8, #0x0
		000000000001b348:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5758
   1b34c: 2a1303e2     	mov	w2, w19
   1b350: aa0803e0     	mov	x0, x8
   1b354: 94000000     	bl	0x1b354 <point_report_reset+0x70>
		000000000001b354:  R_AARCH64_CALL26	_printk
   1b358: 913242a0     	add	x0, x21, #0xc90
   1b35c: 3901529f     	strb	wzr, [x20, #0x54]
   1b360: 94000000     	bl	0x1b360 <point_report_reset+0x7c>
		000000000001b360:  R_AARCH64_CALL26	mutex_lock
   1b364: f9404280     	ldr	x0, [x20, #0x80]
   1b368: 52800061     	mov	w1, #0x3                // =3
   1b36c: 528005e2     	mov	w2, #0x2f               // =47
   1b370: 2a1303e3     	mov	w3, w19
   1b374: 94000000     	bl	0x1b374 <point_report_reset+0x90>
		000000000001b374:  R_AARCH64_CALL26	input_event
   1b378: f9404280     	ldr	x0, [x20, #0x80]
   1b37c: 2a1f03e1     	mov	w1, wzr
   1b380: 2a1f03e2     	mov	w2, wzr
   1b384: 94000000     	bl	0x1b384 <point_report_reset+0xa0>
		000000000001b384:  R_AARCH64_CALL26	input_mt_report_slot_state
   1b388: f9404280     	ldr	x0, [x20, #0x80]
   1b38c: 2a1f03e1     	mov	w1, wzr
   1b390: 2a1f03e2     	mov	w2, wzr
   1b394: 2a1f03e3     	mov	w3, wzr
   1b398: 94000000     	bl	0x1b398 <point_report_reset+0xb4>
		000000000001b398:  R_AARCH64_CALL26	input_event
   1b39c: 913242a0     	add	x0, x21, #0xc90
   1b3a0: 94000000     	bl	0x1b3a0 <point_report_reset+0xbc>
		000000000001b3a0:  R_AARCH64_CALL26	mutex_unlock
   1b3a4: 52807d00     	mov	w0, #0x3e8              // =1000
   1b3a8: 52808981     	mov	w1, #0x44c              // =1100
   1b3ac: 52800042     	mov	w2, #0x2                // =2
   1b3b0: 94000000     	bl	0x1b3b0 <point_report_reset+0xcc>
		000000000001b3b0:  R_AARCH64_CALL26	usleep_range_state
   1b3b4: 17ffffda     	b	0x1b31c <point_report_reset+0x38>
   1b3b8: d4200020     	brk	#0x1
