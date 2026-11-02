
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000019230 <tpd_clean_all_event>:
   19230: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		0000000000019230:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x50
   19234: 91000108     	add	x8, x8, #0x0
		0000000000019234:  R_AARCH64_ADD_ABS_LO12_NC	point_report_info+0x50
   19238: 91045d09     	add	x9, x8, #0x117
   1923c: f900891f     	str	xzr, [x8, #0x110]
   19240: b900013f     	str	wzr, [x9]
   19244: 91067d09     	add	x9, x8, #0x19f
   19248: f900cd1f     	str	xzr, [x8, #0x198]
   1924c: b900013f     	str	wzr, [x9]
   19250: 91089d09     	add	x9, x8, #0x227
   19254: b900013f     	str	wzr, [x9]
   19258: 910abd09     	add	x9, x8, #0x2af
   1925c: b900013f     	str	wzr, [x9]
   19260: 910cdd09     	add	x9, x8, #0x337
   19264: f901991f     	str	xzr, [x8, #0x330]
   19268: b900013f     	str	wzr, [x9]
   1926c: 910efd09     	add	x9, x8, #0x3bf
   19270: b9000d1f     	str	wzr, [x8, #0xc]
   19274: b900951f     	str	wzr, [x8, #0x94]
   19278: b9011d1f     	str	wzr, [x8, #0x11c]
   1927c: b901a51f     	str	wzr, [x8, #0x1a4]
   19280: b9022d1f     	str	wzr, [x8, #0x22c]
   19284: b902b51f     	str	wzr, [x8, #0x2b4]
   19288: b9033d1f     	str	wzr, [x8, #0x33c]
   1928c: b903c51f     	str	wzr, [x8, #0x3c4]
   19290: b9044d1f     	str	wzr, [x8, #0x44c]
   19294: b904d51f     	str	wzr, [x8, #0x4d4]
   19298: f900011f     	str	xzr, [x8]
   1929c: b800711f     	stur	wzr, [x8, #0x7]
   192a0: f900451f     	str	xzr, [x8, #0x88]
   192a4: b808f11f     	stur	wzr, [x8, #0x8f]
   192a8: f901111f     	str	xzr, [x8, #0x220]
   192ac: f901551f     	str	xzr, [x8, #0x2a8]
   192b0: f901dd1f     	str	xzr, [x8, #0x3b8]
   192b4: b900013f     	str	wzr, [x9]
   192b8: 91111d09     	add	x9, x8, #0x447
   192bc: f902211f     	str	xzr, [x8, #0x440]
   192c0: f902651f     	str	xzr, [x8, #0x4c8]
   192c4: 91133d08     	add	x8, x8, #0x4cf
   192c8: b900013f     	str	wzr, [x9]
   192cc: b900011f     	str	wzr, [x8]
   192d0: d65f03c0     	ret
