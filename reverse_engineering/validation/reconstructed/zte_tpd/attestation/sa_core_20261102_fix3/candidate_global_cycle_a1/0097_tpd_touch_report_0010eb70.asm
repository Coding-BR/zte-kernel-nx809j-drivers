
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000d118 <tpd_touch_report>:
    d118: d503233f     	paciasp
    d11c: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
    d120: f9000bf9     	str	x25, [sp, #0x10]
    d124: a9025ff8     	stp	x24, x23, [sp, #0x20]
    d128: a90357f6     	stp	x22, x21, [sp, #0x30]
    d12c: a9044ff4     	stp	x20, x19, [sp, #0x40]
    d130: 910003fd     	mov	x29, sp
    d134: 90000008     	adrp	x8, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000d134:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    d138: aa0003f4     	mov	x20, x0
    d13c: 2a0403f3     	mov	w19, w4
    d140: f9400119     	ldr	x25, [x8]
		000000000000d140:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    d144: 2a0303f6     	mov	w22, w3
    d148: 2a0203f7     	mov	w23, w2
    d14c: 2a0103f8     	mov	w24, w1
    d150: 12001cb5     	and	w21, w5, #0xff
    d154: 91324320     	add	x0, x25, #0xc90
    d158: 94000000     	bl	0xd158 <tpd_touch_report+0x40>
		000000000000d158:  R_AARCH64_CALL26	mutex_lock
    d15c: 12003ec3     	and	w3, w22, #0xffff
    d160: aa1403e0     	mov	x0, x20
    d164: 52800061     	mov	w1, #0x3                // =3
    d168: 528005e2     	mov	w2, #0x2f               // =47
    d16c: 94000000     	bl	0xd16c <tpd_touch_report+0x54>
		000000000000d16c:  R_AARCH64_CALL26	input_event
    d170: aa1403e0     	mov	x0, x20
    d174: 2a1f03e1     	mov	w1, wzr
    d178: 52800022     	mov	w2, #0x1                // =1
    d17c: 94000000     	bl	0xd17c <tpd_touch_report+0x64>
		000000000000d17c:  R_AARCH64_CALL26	input_mt_report_slot_state
    d180: aa1403e0     	mov	x0, x20
    d184: 52800021     	mov	w1, #0x1                // =1
    d188: 52802942     	mov	w2, #0x14a              // =330
    d18c: 52800023     	mov	w3, #0x1                // =1
    d190: 94000000     	bl	0xd190 <tpd_touch_report+0x78>
		000000000000d190:  R_AARCH64_CALL26	input_event
    d194: 12003f03     	and	w3, w24, #0xffff
    d198: aa1403e0     	mov	x0, x20
    d19c: 52800061     	mov	w1, #0x3                // =3
    d1a0: 528006a2     	mov	w2, #0x35               // =53
    d1a4: 94000000     	bl	0xd1a4 <tpd_touch_report+0x8c>
		000000000000d1a4:  R_AARCH64_CALL26	input_event
    d1a8: 12003ee3     	and	w3, w23, #0xffff
    d1ac: aa1403e0     	mov	x0, x20
    d1b0: 52800061     	mov	w1, #0x3                // =3
    d1b4: 528006c2     	mov	w2, #0x36               // =54
    d1b8: 94000000     	bl	0xd1b8 <tpd_touch_report+0xa0>
		000000000000d1b8:  R_AARCH64_CALL26	input_event
    d1bc: 340000d5     	cbz	w21, 0xd1d4 <tpd_touch_report+0xbc>
    d1c0: aa1403e0     	mov	x0, x20
    d1c4: 52800061     	mov	w1, #0x3                // =3
    d1c8: 52800742     	mov	w2, #0x3a               // =58
    d1cc: 2a1503e3     	mov	w3, w21
    d1d0: 94000000     	bl	0xd1d0 <tpd_touch_report+0xb8>
		000000000000d1d0:  R_AARCH64_CALL26	input_event
    d1d4: 72001e7f     	tst	w19, #0xff
    d1d8: 540000c0     	b.eq	0xd1f0 <tpd_touch_report+0xd8>
    d1dc: 12001e63     	and	w3, w19, #0xff
    d1e0: aa1403e0     	mov	x0, x20
    d1e4: 52800061     	mov	w1, #0x3                // =3
    d1e8: 52800602     	mov	w2, #0x30               // =48
    d1ec: 94000000     	bl	0xd1ec <tpd_touch_report+0xd4>
		000000000000d1ec:  R_AARCH64_CALL26	input_event
    d1f0: 91324320     	add	x0, x25, #0xc90
    d1f4: 94000000     	bl	0xd1f4 <tpd_touch_report+0xdc>
		000000000000d1f4:  R_AARCH64_CALL26	mutex_unlock
    d1f8: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    d1fc: f9400bf9     	ldr	x25, [sp, #0x10]
    d200: a94357f6     	ldp	x22, x21, [sp, #0x30]
    d204: a9425ff8     	ldp	x24, x23, [sp, #0x20]
    d208: a8c57bfd     	ldp	x29, x30, [sp], #0x50
    d20c: d50323bf     	autiasp
    d210: d65f03c0     	ret
