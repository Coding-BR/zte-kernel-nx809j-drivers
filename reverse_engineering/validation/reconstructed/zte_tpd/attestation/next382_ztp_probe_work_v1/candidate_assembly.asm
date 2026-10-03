
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000255b4 <ztp_probe_work>:
   255b4: d503233f     	paciasp
   255b8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   255bc: 910003fd     	mov	x29, sp
   255c0: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0x9ec>
		00000000000255c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a37
   255c4: 91000000     	add	x0, x0, #0x0
		00000000000255c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a37
   255c8: 94000000     	bl	0x255c8 <ztp_probe_work+0x14>
		00000000000255c8:  R_AARCH64_CALL26	_printk
   255cc: 94000000     	bl	0x255cc <ztp_probe_work+0x18>
		00000000000255cc:  R_AARCH64_CALL26	syna_dev_module_init
   255d0: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   255d4: d50323bf     	autiasp
   255d8: d65f03c0     	ret
