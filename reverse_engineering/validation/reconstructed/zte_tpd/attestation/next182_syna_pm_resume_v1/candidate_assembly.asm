
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000b20c <syna_pm_resume>:
    b20c: d503233f     	paciasp
    b210: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    b214: f9000bf3     	str	x19, [sp, #0x10]
    b218: 910003fd     	mov	x29, sp
    b21c: f9404c13     	ldr	x19, [x0, #0x98]
    b220: 90000000     	adrp	x0, 0xb000 <syna_pal_mem_alloc+0x2c>
		000000000000b220:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30e7
    b224: 91000000     	add	x0, x0, #0x0
		000000000000b224:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30e7
    b228: 90000001     	adrp	x1, 0xb000 <syna_pal_mem_alloc+0x2c>
		000000000000b228:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3e89
    b22c: 91000021     	add	x1, x1, #0x0
		000000000000b22c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3e89
    b230: 94000000     	bl	0xb230 <syna_pm_resume+0x24>
		000000000000b230:  R_AARCH64_CALL26	_printk
    b234: 91156260     	add	x0, x19, #0x558
    b238: 3915e27f     	strb	wzr, [x19, #0x578]
    b23c: 94000000     	bl	0xb23c <syna_pm_resume+0x30>
		000000000000b23c:  R_AARCH64_CALL26	complete
    b240: 2a1f03e0     	mov	w0, wzr
    b244: f9400bf3     	ldr	x19, [sp, #0x10]
    b248: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    b24c: d50323bf     	autiasp
    b250: d65f03c0     	ret
