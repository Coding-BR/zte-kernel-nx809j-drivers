
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000082e8 <tpd_touch_report>:
    82e8: d503233f     	paciasp
    82ec: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
    82f0: f9000bf9     	str	x25, [sp, #0x10]
    82f4: a9025ff8     	stp	x24, x23, [sp, #0x20]
    82f8: a90357f6     	stp	x22, x21, [sp, #0x30]
    82fc: a9044ff4     	stp	x20, x19, [sp, #0x40]
    8300: 910003fd     	mov	x29, sp
    8304: 90000008     	adrp	x8, 0x8000 <tpd_touch_press+0x634>
		0000000000008304:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    8308: aa0003f4     	mov	x20, x0
    830c: 2a0403f3     	mov	w19, w4
    8310: f9400119     	ldr	x25, [x8]
		0000000000008310:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    8314: 2a0303f6     	mov	w22, w3
    8318: 2a0203f7     	mov	w23, w2
    831c: 2a0103f8     	mov	w24, w1
    8320: 12001cb5     	and	w21, w5, #0xff
    8324: 91324320     	add	x0, x25, #0xc90
    8328: 94000000     	bl	0x8328 <tpd_touch_report+0x40>
		0000000000008328:  R_AARCH64_CALL26	mutex_lock
    832c: 12003ec3     	and	w3, w22, #0xffff
    8330: aa1403e0     	mov	x0, x20
    8334: 52800061     	mov	w1, #0x3                // =3
    8338: 528005e2     	mov	w2, #0x2f               // =47
    833c: 94000000     	bl	0x833c <tpd_touch_report+0x54>
		000000000000833c:  R_AARCH64_CALL26	input_event
    8340: aa1403e0     	mov	x0, x20
    8344: 2a1f03e1     	mov	w1, wzr
    8348: 52800022     	mov	w2, #0x1                // =1
    834c: 94000000     	bl	0x834c <tpd_touch_report+0x64>
		000000000000834c:  R_AARCH64_CALL26	input_mt_report_slot_state
    8350: aa1403e0     	mov	x0, x20
    8354: 52800021     	mov	w1, #0x1                // =1
    8358: 52802942     	mov	w2, #0x14a              // =330
    835c: 52800023     	mov	w3, #0x1                // =1
    8360: 94000000     	bl	0x8360 <tpd_touch_report+0x78>
		0000000000008360:  R_AARCH64_CALL26	input_event
    8364: 12003f03     	and	w3, w24, #0xffff
    8368: aa1403e0     	mov	x0, x20
    836c: 52800061     	mov	w1, #0x3                // =3
    8370: 528006a2     	mov	w2, #0x35               // =53
    8374: 94000000     	bl	0x8374 <tpd_touch_report+0x8c>
		0000000000008374:  R_AARCH64_CALL26	input_event
    8378: 12003ee3     	and	w3, w23, #0xffff
    837c: aa1403e0     	mov	x0, x20
    8380: 52800061     	mov	w1, #0x3                // =3
    8384: 528006c2     	mov	w2, #0x36               // =54
    8388: 94000000     	bl	0x8388 <tpd_touch_report+0xa0>
		0000000000008388:  R_AARCH64_CALL26	input_event
    838c: 340000d5     	cbz	w21, 0x83a4 <tpd_touch_report+0xbc>
    8390: aa1403e0     	mov	x0, x20
    8394: 52800061     	mov	w1, #0x3                // =3
    8398: 52800742     	mov	w2, #0x3a               // =58
    839c: 2a1503e3     	mov	w3, w21
    83a0: 94000000     	bl	0x83a0 <tpd_touch_report+0xb8>
		00000000000083a0:  R_AARCH64_CALL26	input_event
    83a4: 72001e7f     	tst	w19, #0xff
    83a8: 540000c0     	b.eq	0x83c0 <tpd_touch_report+0xd8>
    83ac: 12001e63     	and	w3, w19, #0xff
    83b0: aa1403e0     	mov	x0, x20
    83b4: 52800061     	mov	w1, #0x3                // =3
    83b8: 52800602     	mov	w2, #0x30               // =48
    83bc: 94000000     	bl	0x83bc <tpd_touch_report+0xd4>
		00000000000083bc:  R_AARCH64_CALL26	input_event
    83c0: 91324320     	add	x0, x25, #0xc90
    83c4: 94000000     	bl	0x83c4 <tpd_touch_report+0xdc>
		00000000000083c4:  R_AARCH64_CALL26	mutex_unlock
    83c8: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    83cc: f9400bf9     	ldr	x25, [sp, #0x10]
    83d0: a94357f6     	ldp	x22, x21, [sp, #0x30]
    83d4: a9425ff8     	ldp	x24, x23, [sp, #0x20]
    83d8: a8c57bfd     	ldp	x29, x30, [sp], #0x50
    83dc: d50323bf     	autiasp
    83e0: d65f03c0     	ret
