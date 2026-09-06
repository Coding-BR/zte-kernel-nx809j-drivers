
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001e8c <point_report_reset>:
    1e8c: 7100281f     	cmp	w0, #0xa
    1e90: 54000682     	b.hs	0x1f60 <point_report_reset+0xd4>
    1e94: d503233f     	paciasp
    1e98: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    1e9c: f9000bf5     	str	x21, [sp, #0x10]
    1ea0: a9024ff4     	stp	x20, x19, [sp, #0x20]
    1ea4: 910003fd     	mov	x29, sp
    1ea8: 52801108     	mov	w8, #0x88               // =136
    1eac: 90000009     	adrp	x9, 0x1000 <get_tp_chip_id+0xf4>
		0000000000001eac:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info
    1eb0: 91000129     	add	x9, x9, #0x0
		0000000000001eb0:  R_AARCH64_ADD_ABS_LO12_NC	point_report_info
    1eb4: 9ba82414     	umaddl	x20, w0, w8, x9
    1eb8: 39415288     	ldrb	w8, [x20, #0x54]
    1ebc: 7100051f     	cmp	w8, #0x1
    1ec0: 540000c0     	b.eq	0x1ed8 <point_report_reset+0x4c>
    1ec4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1ec8: f9400bf5     	ldr	x21, [sp, #0x10]
    1ecc: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    1ed0: d50323bf     	autiasp
    1ed4: d65f03c0     	ret
    1ed8: 90000008     	adrp	x8, 0x1000 <get_tp_chip_id+0xf4>
		0000000000001ed8:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    1edc: 2a0003f3     	mov	w19, w0
    1ee0: 90000001     	adrp	x1, 0x1000 <get_tp_chip_id+0xf4>
		0000000000001ee0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x225d
    1ee4: 91000021     	add	x1, x1, #0x0
		0000000000001ee4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x225d
    1ee8: f9400115     	ldr	x21, [x8]
		0000000000001ee8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    1eec: 90000008     	adrp	x8, 0x1000 <get_tp_chip_id+0xf4>
		0000000000001eec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x28b0
    1ef0: 91000108     	add	x8, x8, #0x0
		0000000000001ef0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x28b0
    1ef4: 2a1303e2     	mov	w2, w19
    1ef8: aa0803e0     	mov	x0, x8
    1efc: 94000000     	bl	0x1efc <point_report_reset+0x70>
		0000000000001efc:  R_AARCH64_CALL26	_printk
    1f00: 913242a0     	add	x0, x21, #0xc90
    1f04: 3901529f     	strb	wzr, [x20, #0x54]
    1f08: 94000000     	bl	0x1f08 <point_report_reset+0x7c>
		0000000000001f08:  R_AARCH64_CALL26	mutex_lock
    1f0c: f9404280     	ldr	x0, [x20, #0x80]
    1f10: 52800061     	mov	w1, #0x3                // =3
    1f14: 528005e2     	mov	w2, #0x2f               // =47
    1f18: 2a1303e3     	mov	w3, w19
    1f1c: 94000000     	bl	0x1f1c <point_report_reset+0x90>
		0000000000001f1c:  R_AARCH64_CALL26	input_event
    1f20: f9404280     	ldr	x0, [x20, #0x80]
    1f24: 2a1f03e1     	mov	w1, wzr
    1f28: 2a1f03e2     	mov	w2, wzr
    1f2c: 94000000     	bl	0x1f2c <point_report_reset+0xa0>
		0000000000001f2c:  R_AARCH64_CALL26	input_mt_report_slot_state
    1f30: f9404280     	ldr	x0, [x20, #0x80]
    1f34: 2a1f03e1     	mov	w1, wzr
    1f38: 2a1f03e2     	mov	w2, wzr
    1f3c: 2a1f03e3     	mov	w3, wzr
    1f40: 94000000     	bl	0x1f40 <point_report_reset+0xb4>
		0000000000001f40:  R_AARCH64_CALL26	input_event
    1f44: 913242a0     	add	x0, x21, #0xc90
    1f48: 94000000     	bl	0x1f48 <point_report_reset+0xbc>
		0000000000001f48:  R_AARCH64_CALL26	mutex_unlock
    1f4c: 52807d00     	mov	w0, #0x3e8              // =1000
    1f50: 52808981     	mov	w1, #0x44c              // =1100
    1f54: 52800042     	mov	w2, #0x2                // =2
    1f58: 94000000     	bl	0x1f58 <point_report_reset+0xcc>
		0000000000001f58:  R_AARCH64_CALL26	usleep_range_state
    1f5c: 17ffffda     	b	0x1ec4 <point_report_reset+0x38>
    1f60: d4200020     	brk	#0x1
