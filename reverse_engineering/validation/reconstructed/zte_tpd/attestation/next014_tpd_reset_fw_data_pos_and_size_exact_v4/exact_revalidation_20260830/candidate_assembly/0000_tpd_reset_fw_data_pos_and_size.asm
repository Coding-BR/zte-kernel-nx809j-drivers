
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000026458 <tpd_reset_fw_data_pos_and_size>:
   26458: 90000008     	adrp	x8, 0x26000 <get_tp_noise_store+0x3c>
		0000000000026458:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   2645c: f9400108     	ldr	x8, [x8]
		000000000002645c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   26460: b9444909     	ldr	w9, [x8, #0x448]
   26464: f9462d0a     	ldr	x10, [x8, #0xc58]
   26468: f9000149     	str	x9, [x10]
   2646c: b904491f     	str	wzr, [x8, #0x448]
   26470: d65f03c0     	ret
