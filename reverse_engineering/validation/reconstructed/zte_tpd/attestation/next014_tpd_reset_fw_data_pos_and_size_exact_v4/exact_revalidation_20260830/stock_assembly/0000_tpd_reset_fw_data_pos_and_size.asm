
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000016fc <tpd_reset_fw_data_pos_and_size>:
    16fc: 90000008     	adrp	x8, 0x1000 <zlog_register_work_deinit+0x14>
		00000000000016fc:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    1700: f9400108     	ldr	x8, [x8]
		0000000000001700:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    1704: b9444909     	ldr	w9, [x8, #0x448]
    1708: f9462d0a     	ldr	x10, [x8, #0xc58]
    170c: f9000149     	str	x9, [x10]
    1710: b904491f     	str	wzr, [x8, #0x448]
    1714: d65f03c0     	ret
