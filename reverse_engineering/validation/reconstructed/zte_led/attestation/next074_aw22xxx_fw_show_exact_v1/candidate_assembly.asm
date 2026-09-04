
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002b3c <aw22xxx_fw_show>:
    2b3c: d503233f     	paciasp
    2b40: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    2b44: 910003fd     	mov	x29, sp
    2b48: aa0203e0     	mov	x0, x2
    2b4c: 90000002     	adrp	x2, 0x2000 <aw22xxx_irq+0x20>
		0000000000002b4c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x17d0
    2b50: 91000042     	add	x2, x2, #0x0
		0000000000002b50:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x17d0
    2b54: 90000003     	adrp	x3, 0x2000 <aw22xxx_irq+0x20>
		0000000000002b54:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_bss_base+0x61d8
    2b58: 91000063     	add	x3, x3, #0x0
		0000000000002b58:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_bss_base+0x61d8
    2b5c: 52820001     	mov	w1, #0x1000             // =4096
    2b60: 94000000     	bl	0x2b60 <aw22xxx_fw_show+0x24>
		0000000000002b60:  R_AARCH64_CALL26	snprintf
    2b64: 93407c00     	sxtw	x0, w0
    2b68: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    2b6c: d50323bf     	autiasp
    2b70: d65f03c0     	ret
