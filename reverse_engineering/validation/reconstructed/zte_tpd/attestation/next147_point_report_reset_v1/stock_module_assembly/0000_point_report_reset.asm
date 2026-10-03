
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000008210 <point_report_reset>:
    8210: 7100241f     	cmp	w0, #0x9
    8214: 54000688     	b.hi	0x82e4 <point_report_reset+0xd4>
    8218: d503233f     	paciasp
    821c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    8220: f9000bf5     	str	x21, [sp, #0x10]
    8224: a9024ff4     	stp	x20, x19, [sp, #0x20]
    8228: 910003fd     	mov	x29, sp
    822c: 52801108     	mov	w8, #0x88               // =136
    8230: 90000009     	adrp	x9, 0x8000 <tpd_touch_press+0x634>
		0000000000008230:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info
    8234: 91000129     	add	x9, x9, #0x0
		0000000000008234:  R_AARCH64_ADD_ABS_LO12_NC	point_report_info
    8238: 9ba82414     	umaddl	x20, w0, w8, x9
    823c: 39415288     	ldrb	w8, [x20, #0x54]
    8240: 7100051f     	cmp	w8, #0x1
    8244: 540000c0     	b.eq	0x825c <point_report_reset+0x4c>
    8248: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    824c: f9400bf5     	ldr	x21, [sp, #0x10]
    8250: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    8254: d50323bf     	autiasp
    8258: d65f03c0     	ret
    825c: 90000008     	adrp	x8, 0x8000 <tpd_touch_press+0x634>
		000000000000825c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    8260: 2a0003f3     	mov	w19, w0
    8264: 90000001     	adrp	x1, 0x8000 <tpd_touch_press+0x634>
		0000000000008264:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x44ff
    8268: 91000021     	add	x1, x1, #0x0
		0000000000008268:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x44ff
    826c: f9400115     	ldr	x21, [x8]
		000000000000826c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    8270: 90000008     	adrp	x8, 0x8000 <tpd_touch_press+0x634>
		0000000000008270:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5622
    8274: 91000108     	add	x8, x8, #0x0
		0000000000008274:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5622
    8278: 2a1303e2     	mov	w2, w19
    827c: aa0803e0     	mov	x0, x8
    8280: 94000000     	bl	0x8280 <point_report_reset+0x70>
		0000000000008280:  R_AARCH64_CALL26	_printk
    8284: 913242a0     	add	x0, x21, #0xc90
    8288: 3901529f     	strb	wzr, [x20, #0x54]
    828c: 94000000     	bl	0x828c <point_report_reset+0x7c>
		000000000000828c:  R_AARCH64_CALL26	mutex_lock
    8290: f9404280     	ldr	x0, [x20, #0x80]
    8294: 52800061     	mov	w1, #0x3                // =3
    8298: 528005e2     	mov	w2, #0x2f               // =47
    829c: 2a1303e3     	mov	w3, w19
    82a0: 94000000     	bl	0x82a0 <point_report_reset+0x90>
		00000000000082a0:  R_AARCH64_CALL26	input_event
    82a4: f9404280     	ldr	x0, [x20, #0x80]
    82a8: 2a1f03e1     	mov	w1, wzr
    82ac: 2a1f03e2     	mov	w2, wzr
    82b0: 94000000     	bl	0x82b0 <point_report_reset+0xa0>
		00000000000082b0:  R_AARCH64_CALL26	input_mt_report_slot_state
    82b4: f9404280     	ldr	x0, [x20, #0x80]
    82b8: 2a1f03e1     	mov	w1, wzr
    82bc: 2a1f03e2     	mov	w2, wzr
    82c0: 2a1f03e3     	mov	w3, wzr
    82c4: 94000000     	bl	0x82c4 <point_report_reset+0xb4>
		00000000000082c4:  R_AARCH64_CALL26	input_event
    82c8: 913242a0     	add	x0, x21, #0xc90
    82cc: 94000000     	bl	0x82cc <point_report_reset+0xbc>
		00000000000082cc:  R_AARCH64_CALL26	mutex_unlock
    82d0: 52807d00     	mov	w0, #0x3e8              // =1000
    82d4: 52808981     	mov	w1, #0x44c              // =1100
    82d8: 52800042     	mov	w2, #0x2                // =2
    82dc: 94000000     	bl	0x82dc <point_report_reset+0xcc>
		00000000000082dc:  R_AARCH64_CALL26	usleep_range_state
    82e0: 17ffffda     	b	0x8248 <point_report_reset+0x38>
    82e4: d4200020     	brk	#0x1
