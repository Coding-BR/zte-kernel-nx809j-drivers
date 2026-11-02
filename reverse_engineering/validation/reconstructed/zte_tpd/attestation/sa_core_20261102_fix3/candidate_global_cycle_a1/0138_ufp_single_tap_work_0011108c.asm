
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000265e4 <ufp_single_tap_work>:
   265e4: 90000008     	adrp	x8, 0x26000 <get_tp_noise_show+0xfc>
		00000000000265e4:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0x8
   265e8: b900011f     	str	wzr, [x8]
		00000000000265e8:  R_AARCH64_LDST32_ABS_LO12_NC	ufp_tp_ops+0x8
   265ec: d65f03c0     	ret
