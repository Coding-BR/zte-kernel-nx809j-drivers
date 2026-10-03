
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000023d14 <tpd_touch_report>:
   23d14: d503233f     	paciasp
   23d18: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
   23d1c: f9000bf9     	str	x25, [sp, #0x10]
   23d20: a9025ff8     	stp	x24, x23, [sp, #0x20]
   23d24: a90357f6     	stp	x22, x21, [sp, #0x30]
   23d28: a9044ff4     	stp	x20, x19, [sp, #0x40]
   23d2c: 910003fd     	mov	x29, sp
   23d30: 90000008     	adrp	x8, 0x23000 <tpd_touch_press+0x148>
		0000000000023d30:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   23d34: aa0003f4     	mov	x20, x0
   23d38: 2a0403f3     	mov	w19, w4
   23d3c: f9400119     	ldr	x25, [x8]
		0000000000023d3c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   23d40: 2a0303f6     	mov	w22, w3
   23d44: 2a0203f7     	mov	w23, w2
   23d48: 2a0103f8     	mov	w24, w1
   23d4c: 12001cb5     	and	w21, w5, #0xff
   23d50: 91324320     	add	x0, x25, #0xc90
   23d54: 94000000     	bl	0x23d54 <tpd_touch_report+0x40>
		0000000000023d54:  R_AARCH64_CALL26	mutex_lock
   23d58: 12003ec3     	and	w3, w22, #0xffff
   23d5c: aa1403e0     	mov	x0, x20
   23d60: 52800061     	mov	w1, #0x3                // =3
   23d64: 528005e2     	mov	w2, #0x2f               // =47
   23d68: 94000000     	bl	0x23d68 <tpd_touch_report+0x54>
		0000000000023d68:  R_AARCH64_CALL26	input_event
   23d6c: aa1403e0     	mov	x0, x20
   23d70: 2a1f03e1     	mov	w1, wzr
   23d74: 52800022     	mov	w2, #0x1                // =1
   23d78: 94000000     	bl	0x23d78 <tpd_touch_report+0x64>
		0000000000023d78:  R_AARCH64_CALL26	input_mt_report_slot_state
   23d7c: aa1403e0     	mov	x0, x20
   23d80: 52800021     	mov	w1, #0x1                // =1
   23d84: 52802942     	mov	w2, #0x14a              // =330
   23d88: 52800023     	mov	w3, #0x1                // =1
   23d8c: 94000000     	bl	0x23d8c <tpd_touch_report+0x78>
		0000000000023d8c:  R_AARCH64_CALL26	input_event
   23d90: 12003f03     	and	w3, w24, #0xffff
   23d94: aa1403e0     	mov	x0, x20
   23d98: 52800061     	mov	w1, #0x3                // =3
   23d9c: 528006a2     	mov	w2, #0x35               // =53
   23da0: 94000000     	bl	0x23da0 <tpd_touch_report+0x8c>
		0000000000023da0:  R_AARCH64_CALL26	input_event
   23da4: 12003ee3     	and	w3, w23, #0xffff
   23da8: aa1403e0     	mov	x0, x20
   23dac: 52800061     	mov	w1, #0x3                // =3
   23db0: 528006c2     	mov	w2, #0x36               // =54
   23db4: 94000000     	bl	0x23db4 <tpd_touch_report+0xa0>
		0000000000023db4:  R_AARCH64_CALL26	input_event
   23db8: 340000d5     	cbz	w21, 0x23dd0 <tpd_touch_report+0xbc>
   23dbc: aa1403e0     	mov	x0, x20
   23dc0: 52800061     	mov	w1, #0x3                // =3
   23dc4: 52800742     	mov	w2, #0x3a               // =58
   23dc8: 2a1503e3     	mov	w3, w21
   23dcc: 94000000     	bl	0x23dcc <tpd_touch_report+0xb8>
		0000000000023dcc:  R_AARCH64_CALL26	input_event
   23dd0: 72001e7f     	tst	w19, #0xff
   23dd4: 540000c0     	b.eq	0x23dec <tpd_touch_report+0xd8>
   23dd8: 12001e63     	and	w3, w19, #0xff
   23ddc: aa1403e0     	mov	x0, x20
   23de0: 52800061     	mov	w1, #0x3                // =3
   23de4: 52800602     	mov	w2, #0x30               // =48
   23de8: 94000000     	bl	0x23de8 <tpd_touch_report+0xd4>
		0000000000023de8:  R_AARCH64_CALL26	input_event
   23dec: 91324320     	add	x0, x25, #0xc90
   23df0: 94000000     	bl	0x23df0 <tpd_touch_report+0xdc>
		0000000000023df0:  R_AARCH64_CALL26	mutex_unlock
   23df4: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   23df8: f9400bf9     	ldr	x25, [sp, #0x10]
   23dfc: a94357f6     	ldp	x22, x21, [sp, #0x30]
   23e00: a9425ff8     	ldp	x24, x23, [sp, #0x20]
   23e04: a8c57bfd     	ldp	x29, x30, [sp], #0x50
   23e08: d50323bf     	autiasp
   23e0c: d65f03c0     	ret
