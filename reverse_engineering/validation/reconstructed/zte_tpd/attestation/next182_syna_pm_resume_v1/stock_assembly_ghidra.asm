
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000e258 <syna_pm_resume>:
    e258: d503233f     	paciasp
    e25c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    e260: f9000bf3     	str	x19, [sp, #0x10]
    e264: 910003fd     	mov	x29, sp
    e268: f9404c13     	ldr	x19, [x0, #0x98]
    e26c: 90000000     	adrp	x0, 0xe000 <syna_mmap+0x9c>
		000000000000e26c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5698
    e270: 91000000     	add	x0, x0, #0x0
		000000000000e270:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5698
    e274: 90000001     	adrp	x1, 0xe000 <syna_mmap+0x9c>
		000000000000e274:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ec6
    e278: 91000021     	add	x1, x1, #0x0
		000000000000e278:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ec6
    e27c: 94000000     	bl	0xe27c <syna_pm_resume+0x24>
		000000000000e27c:  R_AARCH64_CALL26	_printk
    e280: 91156260     	add	x0, x19, #0x558
    e284: 3915e27f     	strb	wzr, [x19, #0x578]
    e288: 94000000     	bl	0xe288 <syna_pm_resume+0x30>
		000000000000e288:  R_AARCH64_CALL26	complete
    e28c: 2a1f03e0     	mov	w0, wzr
    e290: f9400bf3     	ldr	x19, [sp, #0x10]
    e294: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    e298: d50323bf     	autiasp
    e29c: d65f03c0     	ret
