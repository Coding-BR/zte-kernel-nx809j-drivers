
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000217f0 <tpd_reset_fw_data_pos_and_size>:
   217f0: 90000008     	adrp	x8, 0x21000 <tpd_id7_report_work+0xc>
		00000000000217f0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   217f4: f9400108     	ldr	x8, [x8]
		00000000000217f4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   217f8: b9444909     	ldr	w9, [x8, #0x448]
   217fc: f9462d0a     	ldr	x10, [x8, #0xc58]
   21800: f9000149     	str	x9, [x10]
   21804: b904491f     	str	wzr, [x8, #0x448]
   21808: d65f03c0     	ret
