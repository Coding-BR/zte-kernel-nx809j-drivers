
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000252e0 <tpd_clean_all_event>:
   252e0: 90000008     	adrp	x8, 0x25000 <tp_ghost_check+0x27c>
		00000000000252e0:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x50
   252e4: 91000108     	add	x8, x8, #0x0
		00000000000252e4:  R_AARCH64_ADD_ABS_LO12_NC	point_report_info+0x50
   252e8: 91045d09     	add	x9, x8, #0x117
   252ec: f900891f     	str	xzr, [x8, #0x110]
   252f0: b900013f     	str	wzr, [x9]
   252f4: 91067d09     	add	x9, x8, #0x19f
   252f8: f900cd1f     	str	xzr, [x8, #0x198]
   252fc: b900013f     	str	wzr, [x9]
   25300: 91089d09     	add	x9, x8, #0x227
   25304: b900013f     	str	wzr, [x9]
   25308: 910abd09     	add	x9, x8, #0x2af
   2530c: b900013f     	str	wzr, [x9]
   25310: 910cdd09     	add	x9, x8, #0x337
   25314: f901991f     	str	xzr, [x8, #0x330]
   25318: b900013f     	str	wzr, [x9]
   2531c: 910efd09     	add	x9, x8, #0x3bf
   25320: b9000d1f     	str	wzr, [x8, #0xc]
   25324: b900951f     	str	wzr, [x8, #0x94]
   25328: b9011d1f     	str	wzr, [x8, #0x11c]
   2532c: b901a51f     	str	wzr, [x8, #0x1a4]
   25330: b9022d1f     	str	wzr, [x8, #0x22c]
   25334: b902b51f     	str	wzr, [x8, #0x2b4]
   25338: b9033d1f     	str	wzr, [x8, #0x33c]
   2533c: b903c51f     	str	wzr, [x8, #0x3c4]
   25340: b9044d1f     	str	wzr, [x8, #0x44c]
   25344: b904d51f     	str	wzr, [x8, #0x4d4]
   25348: f900011f     	str	xzr, [x8]
   2534c: b800711f     	stur	wzr, [x8, #0x7]
   25350: f900451f     	str	xzr, [x8, #0x88]
   25354: b808f11f     	stur	wzr, [x8, #0x8f]
   25358: f901111f     	str	xzr, [x8, #0x220]
   2535c: f901551f     	str	xzr, [x8, #0x2a8]
   25360: f901dd1f     	str	xzr, [x8, #0x3b8]
   25364: b900013f     	str	wzr, [x9]
   25368: 91111d09     	add	x9, x8, #0x447
   2536c: f902211f     	str	xzr, [x8, #0x440]
   25370: f902651f     	str	xzr, [x8, #0x4c8]
   25374: 91133d08     	add	x8, x8, #0x4cf
   25378: b900013f     	str	wzr, [x9]
   2537c: b900011f     	str	wzr, [x8]
   25380: d65f03c0     	ret
