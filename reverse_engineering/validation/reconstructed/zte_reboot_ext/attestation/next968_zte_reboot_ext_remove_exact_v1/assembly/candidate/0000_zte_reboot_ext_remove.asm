
/input/zte_reboot_ext.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001924 <zte_reboot_ext_remove>:
    1924: d503233f     	paciasp
    1928: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    192c: 910003fd     	mov	x29, sp
    1930: f9405408     	ldr	x8, [x0, #0xa8]
    1934: 90000000     	adrp	x0, 0x1000 <boot_nvmem_show_model+0x64>
		0000000000001934:  R_AARCH64_ADR_PREL_PG_HI21	panic_notifier_list
    1938: 91000000     	add	x0, x0, #0x0
		0000000000001938:  R_AARCH64_ADD_ABS_LO12_NC	panic_notifier_list
    193c: 9101a101     	add	x1, x8, #0x68
    1940: 94000000     	bl	0x1940 <zte_reboot_ext_remove+0x1c>
		0000000000001940:  R_AARCH64_CALL26	atomic_notifier_chain_unregister
    1944: 90000000     	adrp	x0, 0x1000 <boot_nvmem_show_model+0x64>
		0000000000001944:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x98
    1948: 91000000     	add	x0, x0, #0x0
		0000000000001948:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x98
    194c: 94000000     	bl	0x194c <zte_reboot_ext_remove+0x28>
		000000000000194c:  R_AARCH64_CALL26	unregister_kretprobe
    1950: 90000000     	adrp	x0, 0x1000 <boot_nvmem_show_model+0x64>
		0000000000001950:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6cb
    1954: 91000000     	add	x0, x0, #0x0
		0000000000001954:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6cb
    1958: 94000000     	bl	0x1958 <zte_reboot_ext_remove+0x34>
		0000000000001958:  R_AARCH64_CALL26	_printk
    195c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    1960: d50323bf     	autiasp
    1964: d65f03c0     	ret
