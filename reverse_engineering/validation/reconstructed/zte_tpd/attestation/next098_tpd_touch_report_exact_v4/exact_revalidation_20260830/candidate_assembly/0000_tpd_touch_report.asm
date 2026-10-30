
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000d0bc <tpd_touch_report>:
    d0bc: d503233f     	paciasp
    d0c0: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
    d0c4: f9000bf9     	str	x25, [sp, #0x10]
    d0c8: a9025ff8     	stp	x24, x23, [sp, #0x20]
    d0cc: a90357f6     	stp	x22, x21, [sp, #0x30]
    d0d0: a9044ff4     	stp	x20, x19, [sp, #0x40]
    d0d4: 910003fd     	mov	x29, sp
    d0d8: 90000008     	adrp	x8, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000d0d8:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    d0dc: aa0003f4     	mov	x20, x0
    d0e0: 2a0403f3     	mov	w19, w4
    d0e4: f9400119     	ldr	x25, [x8]
		000000000000d0e4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    d0e8: 2a0303f6     	mov	w22, w3
    d0ec: 2a0203f7     	mov	w23, w2
    d0f0: 2a0103f8     	mov	w24, w1
    d0f4: 12001cb5     	and	w21, w5, #0xff
    d0f8: 91324320     	add	x0, x25, #0xc90
    d0fc: 94000000     	bl	0xd0fc <tpd_touch_report+0x40>
		000000000000d0fc:  R_AARCH64_CALL26	mutex_lock
    d100: 12003ec3     	and	w3, w22, #0xffff
    d104: aa1403e0     	mov	x0, x20
    d108: 52800061     	mov	w1, #0x3                // =3
    d10c: 528005e2     	mov	w2, #0x2f               // =47
    d110: 94000000     	bl	0xd110 <tpd_touch_report+0x54>
		000000000000d110:  R_AARCH64_CALL26	input_event
    d114: aa1403e0     	mov	x0, x20
    d118: 2a1f03e1     	mov	w1, wzr
    d11c: 52800022     	mov	w2, #0x1                // =1
    d120: 94000000     	bl	0xd120 <tpd_touch_report+0x64>
		000000000000d120:  R_AARCH64_CALL26	input_mt_report_slot_state
    d124: aa1403e0     	mov	x0, x20
    d128: 52800021     	mov	w1, #0x1                // =1
    d12c: 52802942     	mov	w2, #0x14a              // =330
    d130: 52800023     	mov	w3, #0x1                // =1
    d134: 94000000     	bl	0xd134 <tpd_touch_report+0x78>
		000000000000d134:  R_AARCH64_CALL26	input_event
    d138: 12003f03     	and	w3, w24, #0xffff
    d13c: aa1403e0     	mov	x0, x20
    d140: 52800061     	mov	w1, #0x3                // =3
    d144: 528006a2     	mov	w2, #0x35               // =53
    d148: 94000000     	bl	0xd148 <tpd_touch_report+0x8c>
		000000000000d148:  R_AARCH64_CALL26	input_event
    d14c: 12003ee3     	and	w3, w23, #0xffff
    d150: aa1403e0     	mov	x0, x20
    d154: 52800061     	mov	w1, #0x3                // =3
    d158: 528006c2     	mov	w2, #0x36               // =54
    d15c: 94000000     	bl	0xd15c <tpd_touch_report+0xa0>
		000000000000d15c:  R_AARCH64_CALL26	input_event
    d160: 340000d5     	cbz	w21, 0xd178 <tpd_touch_report+0xbc>
    d164: aa1403e0     	mov	x0, x20
    d168: 52800061     	mov	w1, #0x3                // =3
    d16c: 52800742     	mov	w2, #0x3a               // =58
    d170: 2a1503e3     	mov	w3, w21
    d174: 94000000     	bl	0xd174 <tpd_touch_report+0xb8>
		000000000000d174:  R_AARCH64_CALL26	input_event
    d178: 72001e7f     	tst	w19, #0xff
    d17c: 540000c0     	b.eq	0xd194 <tpd_touch_report+0xd8>
    d180: 12001e63     	and	w3, w19, #0xff
    d184: aa1403e0     	mov	x0, x20
    d188: 52800061     	mov	w1, #0x3                // =3
    d18c: 52800602     	mov	w2, #0x30               // =48
    d190: 94000000     	bl	0xd190 <tpd_touch_report+0xd4>
		000000000000d190:  R_AARCH64_CALL26	input_event
    d194: 91324320     	add	x0, x25, #0xc90
    d198: 94000000     	bl	0xd198 <tpd_touch_report+0xdc>
		000000000000d198:  R_AARCH64_CALL26	mutex_unlock
    d19c: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    d1a0: f9400bf9     	ldr	x25, [sp, #0x10]
    d1a4: a94357f6     	ldp	x22, x21, [sp, #0x30]
    d1a8: a9425ff8     	ldp	x24, x23, [sp, #0x20]
    d1ac: a8c57bfd     	ldp	x29, x30, [sp], #0x50
    d1b0: d50323bf     	autiasp
    d1b4: d65f03c0     	ret
