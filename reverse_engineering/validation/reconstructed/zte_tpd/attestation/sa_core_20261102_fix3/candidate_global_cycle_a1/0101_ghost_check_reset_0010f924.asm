
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000191f8 <ghost_check_reset>:
   191f8: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		00000000000191f8:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x5c
   191fc: 91000108     	add	x8, x8, #0x0
		00000000000191fc:  R_AARCH64_ADD_ABS_LO12_NC	point_report_info+0x5c
   19200: b900011f     	str	wzr, [x8]
   19204: b900891f     	str	wzr, [x8, #0x88]
   19208: b901111f     	str	wzr, [x8, #0x110]
   1920c: b901991f     	str	wzr, [x8, #0x198]
   19210: b902211f     	str	wzr, [x8, #0x220]
   19214: b902a91f     	str	wzr, [x8, #0x2a8]
   19218: b903311f     	str	wzr, [x8, #0x330]
   1921c: b903b91f     	str	wzr, [x8, #0x3b8]
   19220: b904411f     	str	wzr, [x8, #0x440]
   19224: b904c91f     	str	wzr, [x8, #0x4c8]
   19228: d65f03c0     	ret
