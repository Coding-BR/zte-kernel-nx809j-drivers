
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000253a0 <ghost_check_reset>:
   253a0: 90000008     	adrp	x8, 0x25000 <tp_ghost_check+0x184>
		00000000000253a0:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x5c
   253a4: 91000108     	add	x8, x8, #0x0
		00000000000253a4:  R_AARCH64_ADD_ABS_LO12_NC	point_report_info+0x5c
   253a8: b900011f     	str	wzr, [x8]
   253ac: b900891f     	str	wzr, [x8, #0x88]
   253b0: b901111f     	str	wzr, [x8, #0x110]
   253b4: b901991f     	str	wzr, [x8, #0x198]
   253b8: b902211f     	str	wzr, [x8, #0x220]
   253bc: b902a91f     	str	wzr, [x8, #0x2a8]
   253c0: b903311f     	str	wzr, [x8, #0x330]
   253c4: b903b91f     	str	wzr, [x8, #0x3b8]
   253c8: b904411f     	str	wzr, [x8, #0x440]
   253cc: b904c91f     	str	wzr, [x8, #0x4c8]
   253d0: d65f03c0     	ret
