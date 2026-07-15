
/input/zte_reboot_ext.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000958 <zte_reboot_ext_remove>:
     958: d503233f     	paciasp
     95c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     960: 910003fd     	mov	x29, sp
     964: f9405408     	ldr	x8, [x0, #0xa8]
     968: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000968:  R_AARCH64_ADR_PREL_PG_HI21	panic_notifier_list
     96c: 91000000     	add	x0, x0, #0x0
		000000000000096c:  R_AARCH64_ADD_ABS_LO12_NC	panic_notifier_list
     970: 9101a101     	add	x1, x8, #0x68
     974: 94000000     	bl	0x974 <zte_reboot_ext_remove+0x1c>
		0000000000000974:  R_AARCH64_CALL26	atomic_notifier_chain_unregister
     978: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000978:  R_AARCH64_ADR_PREL_PG_HI21	panic_probe
     97c: 91000000     	add	x0, x0, #0x0
		000000000000097c:  R_AARCH64_ADD_ABS_LO12_NC	panic_probe
     980: 94000000     	bl	0x980 <zte_reboot_ext_remove+0x28>
		0000000000000980:  R_AARCH64_CALL26	unregister_kretprobe
     984: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000984:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6b0
     988: 91000000     	add	x0, x0, #0x0
		0000000000000988:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6b0
     98c: 94000000     	bl	0x98c <zte_reboot_ext_remove+0x34>
		000000000000098c:  R_AARCH64_CALL26	_printk
     990: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     994: d50323bf     	autiasp
     998: d65f03c0     	ret
