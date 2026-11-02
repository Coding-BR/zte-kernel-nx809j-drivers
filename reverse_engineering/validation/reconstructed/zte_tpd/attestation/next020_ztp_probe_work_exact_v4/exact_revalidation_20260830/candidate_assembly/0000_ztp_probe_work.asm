
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000026604 <ztp_probe_work>:
   26604: d503233f     	paciasp
   26608: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   2660c: 910003fd     	mov	x29, sp
   26610: 90000000     	adrp	x0, 0x26000 <get_tp_noise_store+0x3c>
		0000000000026610:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24f4
   26614: 91000000     	add	x0, x0, #0x0
		0000000000026614:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24f4
   26618: 94000000     	bl	0x26618 <ztp_probe_work+0x14>
		0000000000026618:  R_AARCH64_CALL26	_printk
   2661c: 94000000     	bl	0x2661c <ztp_probe_work+0x18>
		000000000002661c:  R_AARCH64_CALL26	syna_dev_module_init
   26620: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   26624: d50323bf     	autiasp
   26628: d65f03c0     	ret
