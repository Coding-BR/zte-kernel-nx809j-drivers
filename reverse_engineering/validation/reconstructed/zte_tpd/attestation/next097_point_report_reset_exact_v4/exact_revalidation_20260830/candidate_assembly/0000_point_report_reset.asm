
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001b288 <point_report_reset>:
   1b288: 7100241f     	cmp	w0, #0x9
   1b28c: 54000688     	b.hi	0x1b35c <point_report_reset+0xd4>
   1b290: d503233f     	paciasp
   1b294: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   1b298: f9000bf5     	str	x21, [sp, #0x10]
   1b29c: a9024ff4     	stp	x20, x19, [sp, #0x20]
   1b2a0: 910003fd     	mov	x29, sp
   1b2a4: 52801108     	mov	w8, #0x88               // =136
   1b2a8: 90000009     	adrp	x9, 0x1b000 <string_change+0x404>
		000000000001b2a8:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info
   1b2ac: 91000129     	add	x9, x9, #0x0
		000000000001b2ac:  R_AARCH64_ADD_ABS_LO12_NC	point_report_info
   1b2b0: 9ba82414     	umaddl	x20, w0, w8, x9
   1b2b4: 39415288     	ldrb	w8, [x20, #0x54]
   1b2b8: 7100051f     	cmp	w8, #0x1
   1b2bc: 540000c0     	b.eq	0x1b2d4 <point_report_reset+0x4c>
   1b2c0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   1b2c4: f9400bf5     	ldr	x21, [sp, #0x10]
   1b2c8: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   1b2cc: d50323bf     	autiasp
   1b2d0: d65f03c0     	ret
   1b2d4: 90000008     	adrp	x8, 0x1b000 <string_change+0x404>
		000000000001b2d4:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1b2d8: 2a0003f3     	mov	w19, w0
   1b2dc: 90000001     	adrp	x1, 0x1b000 <string_change+0x404>
		000000000001b2dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x45fc
   1b2e0: 91000021     	add	x1, x1, #0x0
		000000000001b2e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x45fc
   1b2e4: f9400115     	ldr	x21, [x8]
		000000000001b2e4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1b2e8: 90000008     	adrp	x8, 0x1b000 <string_change+0x404>
		000000000001b2e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5758
   1b2ec: 91000108     	add	x8, x8, #0x0
		000000000001b2ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5758
   1b2f0: 2a1303e2     	mov	w2, w19
   1b2f4: aa0803e0     	mov	x0, x8
   1b2f8: 94000000     	bl	0x1b2f8 <point_report_reset+0x70>
		000000000001b2f8:  R_AARCH64_CALL26	_printk
   1b2fc: 913242a0     	add	x0, x21, #0xc90
   1b300: 3901529f     	strb	wzr, [x20, #0x54]
   1b304: 94000000     	bl	0x1b304 <point_report_reset+0x7c>
		000000000001b304:  R_AARCH64_CALL26	mutex_lock
   1b308: f9404280     	ldr	x0, [x20, #0x80]
   1b30c: 52800061     	mov	w1, #0x3                // =3
   1b310: 528005e2     	mov	w2, #0x2f               // =47
   1b314: 2a1303e3     	mov	w3, w19
   1b318: 94000000     	bl	0x1b318 <point_report_reset+0x90>
		000000000001b318:  R_AARCH64_CALL26	input_event
   1b31c: f9404280     	ldr	x0, [x20, #0x80]
   1b320: 2a1f03e1     	mov	w1, wzr
   1b324: 2a1f03e2     	mov	w2, wzr
   1b328: 94000000     	bl	0x1b328 <point_report_reset+0xa0>
		000000000001b328:  R_AARCH64_CALL26	input_mt_report_slot_state
   1b32c: f9404280     	ldr	x0, [x20, #0x80]
   1b330: 2a1f03e1     	mov	w1, wzr
   1b334: 2a1f03e2     	mov	w2, wzr
   1b338: 2a1f03e3     	mov	w3, wzr
   1b33c: 94000000     	bl	0x1b33c <point_report_reset+0xb4>
		000000000001b33c:  R_AARCH64_CALL26	input_event
   1b340: 913242a0     	add	x0, x21, #0xc90
   1b344: 94000000     	bl	0x1b344 <point_report_reset+0xbc>
		000000000001b344:  R_AARCH64_CALL26	mutex_unlock
   1b348: 52807d00     	mov	w0, #0x3e8              // =1000
   1b34c: 52808981     	mov	w1, #0x44c              // =1100
   1b350: 52800042     	mov	w2, #0x2                // =2
   1b354: 94000000     	bl	0x1b354 <point_report_reset+0xcc>
		000000000001b354:  R_AARCH64_CALL26	usleep_range_state
   1b358: 17ffffda     	b	0x1b2c0 <point_report_reset+0x38>
   1b35c: d4200020     	brk	#0x1
