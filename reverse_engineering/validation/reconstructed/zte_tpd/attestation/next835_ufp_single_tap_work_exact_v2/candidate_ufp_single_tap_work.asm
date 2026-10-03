
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000025610 <ufp_single_tap_work>:
   25610: 90000008     	adrp	x8, 0x25000 <tpfwupgrade_store+0xf4>
		0000000000025610:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0x8
   25614: b900011f     	str	wzr, [x8]
		0000000000025614:  R_AARCH64_LDST32_ABS_LO12_NC	ufp_tp_ops+0x8
   25618: d65f03c0     	ret
