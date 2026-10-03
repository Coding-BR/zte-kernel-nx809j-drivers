
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000efdc <syna_tcm_get_testing_0A00>:
    efdc: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000efdc:  R_AARCH64_ADR_PREL_PG_HI21	test_0A00
    efe0: 91000000     	add	x0, x0, #0x0
		000000000000efe0:  R_AARCH64_ADD_ABS_LO12_NC	test_0A00
    efe4: d65f03c0     	ret
