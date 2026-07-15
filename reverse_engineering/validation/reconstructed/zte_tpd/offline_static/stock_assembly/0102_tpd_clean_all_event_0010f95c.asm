
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000090d4 <tpd_clean_all_event>:
    90d4: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		00000000000090d4:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x50
    90d8: 91000108     	add	x8, x8, #0x0
		00000000000090d8:  R_AARCH64_ADD_ABS_LO12_NC	point_report_info+0x50
    90dc: 91045d09     	add	x9, x8, #0x117
    90e0: f900891f     	str	xzr, [x8, #0x110]
    90e4: b900013f     	str	wzr, [x9]
    90e8: 91067d09     	add	x9, x8, #0x19f
    90ec: f900cd1f     	str	xzr, [x8, #0x198]
    90f0: b900013f     	str	wzr, [x9]
    90f4: 91089d09     	add	x9, x8, #0x227
    90f8: b900013f     	str	wzr, [x9]
    90fc: 910abd09     	add	x9, x8, #0x2af
    9100: b900013f     	str	wzr, [x9]
    9104: 910cdd09     	add	x9, x8, #0x337
    9108: f901991f     	str	xzr, [x8, #0x330]
    910c: b900013f     	str	wzr, [x9]
    9110: 910efd09     	add	x9, x8, #0x3bf
    9114: b9000d1f     	str	wzr, [x8, #0xc]
    9118: b900951f     	str	wzr, [x8, #0x94]
    911c: b9011d1f     	str	wzr, [x8, #0x11c]
    9120: b901a51f     	str	wzr, [x8, #0x1a4]
    9124: b9022d1f     	str	wzr, [x8, #0x22c]
    9128: b902b51f     	str	wzr, [x8, #0x2b4]
    912c: b9033d1f     	str	wzr, [x8, #0x33c]
    9130: b903c51f     	str	wzr, [x8, #0x3c4]
    9134: b9044d1f     	str	wzr, [x8, #0x44c]
    9138: b904d51f     	str	wzr, [x8, #0x4d4]
    913c: f900011f     	str	xzr, [x8]
    9140: b800711f     	stur	wzr, [x8, #0x7]
    9144: f900451f     	str	xzr, [x8, #0x88]
    9148: b808f11f     	stur	wzr, [x8, #0x8f]
    914c: f901111f     	str	xzr, [x8, #0x220]
    9150: f901551f     	str	xzr, [x8, #0x2a8]
    9154: f901dd1f     	str	xzr, [x8, #0x3b8]
    9158: b900013f     	str	wzr, [x9]
    915c: 91111d09     	add	x9, x8, #0x447
    9160: f902211f     	str	xzr, [x8, #0x440]
    9164: f902651f     	str	xzr, [x8, #0x4c8]
    9168: 91133d08     	add	x8, x8, #0x4cf
    916c: b900013f     	str	wzr, [x9]
    9170: b900011f     	str	wzr, [x8]
    9174: d65f03c0     	ret
