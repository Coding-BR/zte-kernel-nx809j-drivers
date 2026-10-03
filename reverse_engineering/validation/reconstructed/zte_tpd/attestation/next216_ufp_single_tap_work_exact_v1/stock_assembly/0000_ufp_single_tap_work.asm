
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000a804 <ufp_single_tap_work>:
    a804: 90000008     	adrp	x8, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a804:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0x8
    a808: b900011f     	str	wzr, [x8]
		000000000000a808:  R_AARCH64_LDST32_ABS_LO12_NC	ufp_tp_ops+0x8
    a80c: d65f03c0     	ret
