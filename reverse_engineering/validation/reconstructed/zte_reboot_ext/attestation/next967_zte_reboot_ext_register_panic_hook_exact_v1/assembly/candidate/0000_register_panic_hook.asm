
/input/zte_reboot_ext.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000017c8 <register_panic_hook>:
    17c8: d503233f     	paciasp
    17cc: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    17d0: f9000bf3     	str	x19, [sp, #0x10]
    17d4: 910003fd     	mov	x29, sp
    17d8: aa0003f3     	mov	x19, x0
    17dc: 90000000     	adrp	x0, 0x1000 <boot_nvmem_show_model+0x64>
		00000000000017dc:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x98
    17e0: 91000000     	add	x0, x0, #0x0
		00000000000017e0:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x98
    17e4: 94000000     	bl	0x17e4 <register_panic_hook+0x1c>
		00000000000017e4:  R_AARCH64_CALL26	register_kretprobe
    17e8: 350000c0     	cbnz	w0, 0x1800 <register_panic_hook+0x38>
    17ec: 90000001     	adrp	x1, 0x1000 <boot_nvmem_show_model+0x64>
		00000000000017ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ff
    17f0: 91000021     	add	x1, x1, #0x0
		00000000000017f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ff
    17f4: 91004260     	add	x0, x19, #0x10
    17f8: 94000000     	bl	0x17f8 <register_panic_hook+0x30>
		00000000000017f8:  R_AARCH64_CALL26	_dev_info
    17fc: 14000006     	b	0x1814 <register_panic_hook+0x4c>
    1800: 2a0003e2     	mov	w2, w0
    1804: 90000001     	adrp	x1, 0x1000 <boot_nvmem_show_model+0x64>
		0000000000001804:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d9
    1808: 91000021     	add	x1, x1, #0x0
		0000000000001808:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d9
    180c: 91004260     	add	x0, x19, #0x10
    1810: 94000000     	bl	0x1810 <register_panic_hook+0x48>
		0000000000001810:  R_AARCH64_CALL26	_dev_err
    1814: f9400bf3     	ldr	x19, [sp, #0x10]
    1818: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    181c: d50323bf     	autiasp
    1820: d65f03c0     	ret
