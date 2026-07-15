
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000909c <ghost_check_reset>:
    909c: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		000000000000909c:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x5c
    90a0: 91000108     	add	x8, x8, #0x0
		00000000000090a0:  R_AARCH64_ADD_ABS_LO12_NC	point_report_info+0x5c
    90a4: b900011f     	str	wzr, [x8]
    90a8: b900891f     	str	wzr, [x8, #0x88]
    90ac: b901111f     	str	wzr, [x8, #0x110]
    90b0: b901991f     	str	wzr, [x8, #0x198]
    90b4: b902211f     	str	wzr, [x8, #0x220]
    90b8: b902a91f     	str	wzr, [x8, #0x2a8]
    90bc: b903311f     	str	wzr, [x8, #0x330]
    90c0: b903b91f     	str	wzr, [x8, #0x3b8]
    90c4: b904411f     	str	wzr, [x8, #0x440]
    90c8: b904c91f     	str	wzr, [x8, #0x4c8]
    90cc: d65f03c0     	ret
