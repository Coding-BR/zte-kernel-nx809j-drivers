
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000caa4 <tpd_get_singlegamegesture>:
    caa4: d503233f     	paciasp
    caa8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    caac: a9014ff4     	stp	x20, x19, [sp, #0x10]
    cab0: 910003fd     	mov	x29, sp
    cab4: f946dc08     	ldr	x8, [x0, #0xdb8]
    cab8: 90000014     	adrp	x20, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cab8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c4e3
    cabc: 91000294     	add	x20, x20, #0x0
		000000000000cabc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c4e3
    cac0: aa0003f3     	mov	x19, x0
    cac4: aa1403e1     	mov	x1, x20
    cac8: b945b909     	ldr	w9, [x8, #0x5b8]
    cacc: b9045409     	str	w9, [x0, #0x454]
    cad0: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cad0:  R_AARCH64_ADR_PREL_PG_HI21	unk_32D26
    cad4: 91000000     	add	x0, x0, #0x0
		000000000000cad4:  R_AARCH64_ADD_ABS_LO12_NC	unk_32D26
    cad8: b945bd02     	ldr	w2, [x8, #0x5bc]
    cadc: 94000000     	bl	0xcadc <tpd_get_singlegamegesture+0x38>
		000000000000cadc:  R_AARCH64_CALL26	_printk
    cae0: b9445662     	ldr	w2, [x19, #0x454]
    cae4: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cae4:  R_AARCH64_ADR_PREL_PG_HI21	unk_3CE17
    cae8: 91000000     	add	x0, x0, #0x0
		000000000000cae8:  R_AARCH64_ADD_ABS_LO12_NC	unk_3CE17
    caec: aa1403e1     	mov	x1, x20
    caf0: 94000000     	bl	0xcaf0 <tpd_get_singlegamegesture+0x4c>
		000000000000caf0:  R_AARCH64_CALL26	_printk
    caf4: 2a1f03e0     	mov	w0, wzr
    caf8: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    cafc: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    cb00: d50323bf     	autiasp
    cb04: d65f03c0     	ret
