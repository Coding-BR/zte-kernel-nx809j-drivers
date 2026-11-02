
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000efec <syna_tcm_get_testing_0001>:
    efec: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000efec:  R_AARCH64_ADR_PREL_PG_HI21	test_0001
    eff0: 91000000     	add	x0, x0, #0x0
		000000000000eff0:  R_AARCH64_ADD_ABS_LO12_NC	test_0001
    eff4: d65f03c0     	ret
