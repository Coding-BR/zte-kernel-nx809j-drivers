
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000021dc0 <tpd_reset_fw_data_pos_and_size>:
   21dc0: 90000008     	adrp	x8, 0x21000 <tpd_clean_all_event+0x54>
		0000000000021dc0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   21dc4: f9400108     	ldr	x8, [x8]
		0000000000021dc4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   21dc8: b9444909     	ldr	w9, [x8, #0x448]
   21dcc: f9462d0a     	ldr	x10, [x8, #0xc58]
   21dd0: f9000149     	str	x9, [x10]
   21dd4: b904491f     	str	wzr, [x8, #0x448]
   21dd8: d65f03c0     	ret
