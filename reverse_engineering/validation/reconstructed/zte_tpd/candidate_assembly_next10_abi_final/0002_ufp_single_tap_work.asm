
/input/zte_tpd_cycle1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000024cfc <ufp_single_tap_work>:
   24cfc: 90000008     	adrp	x8, 0x24000 <tpd_zlog_record_notify+0x3c4>
		0000000000024cfc:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0x8
   24d00: b900011f     	str	wzr, [x8]
		0000000000024d00:  R_AARCH64_LDST32_ABS_LO12_NC	ufp_tp_ops+0x8
   24d04: d65f03c0     	ret
