
/input/nubia_hw_version.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000408 <nubia_get_rf_band_by_gpio>:
     408: aa0003e8     	mov	x8, x0
     40c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000040c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d4
     410: 91000000     	add	x0, x0, #0x0
		0000000000000410:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d4
     414: b4000288     	cbz	x8, 0x464 <nubia_get_rf_band_by_gpio+0x5c>
     418: 34000261     	cbz	w1, 0x464 <nubia_get_rf_band_by_gpio+0x5c>
     41c: 90000009     	adrp	x9, 0x0 <.text>
		000000000000041c:  R_AARCH64_ADR_PREL_PG_HI21	nubia_rf_gpio1_v
     420: 9000000a     	adrp	x10, 0x0 <.text>
		0000000000000420:  R_AARCH64_ADR_PREL_PG_HI21	nubia_rf_gpio2_v
     424: 2a0103eb     	mov	w11, w1
     428: 39400129     	ldrb	w9, [x9]
		0000000000000428:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_rf_gpio1_v
     42c: 3940014a     	ldrb	w10, [x10]
		000000000000042c:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_rf_gpio2_v
     430: 91002100     	add	x0, x8, #0x8
     434: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000434:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d4
     438: 91000108     	add	x8, x8, #0x0
		0000000000000438:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d4
     43c: 14000004     	b	0x44c <nubia_get_rf_band_by_gpio+0x44>
     440: f100056b     	subs	x11, x11, #0x1
     444: 91005000     	add	x0, x0, #0x14
     448: 54000100     	b.eq	0x468 <nubia_get_rf_band_by_gpio+0x60>
     44c: b85f800c     	ldur	w12, [x0, #-0x8]
     450: 6b09019f     	cmp	w12, w9
     454: 54ffff61     	b.ne	0x440 <nubia_get_rf_band_by_gpio+0x38>
     458: b85fc00c     	ldur	w12, [x0, #-0x4]
     45c: 6b0a019f     	cmp	w12, w10
     460: 54ffff01     	b.ne	0x440 <nubia_get_rf_band_by_gpio+0x38>
     464: d65f03c0     	ret
     468: aa0803e0     	mov	x0, x8
     46c: d65f03c0     	ret
