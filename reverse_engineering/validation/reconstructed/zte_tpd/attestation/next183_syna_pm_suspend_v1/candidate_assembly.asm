
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000b258 <syna_pm_suspend>:
    b258: d503233f     	paciasp
    b25c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    b260: f9000bf3     	str	x19, [sp, #0x10]
    b264: 910003fd     	mov	x29, sp
    b268: f9404c13     	ldr	x19, [x0, #0x98]
    b26c: 90000000     	adrp	x0, 0xb000 <syna_pal_mem_alloc+0x2c>
		000000000000b26c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdcc
    b270: 91000000     	add	x0, x0, #0x0
		000000000000b270:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdcc
    b274: 90000001     	adrp	x1, 0xb000 <syna_pal_mem_alloc+0x2c>
		000000000000b274:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a80
    b278: 91000021     	add	x1, x1, #0x0
		000000000000b278:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a80
    b27c: 94000000     	bl	0xb27c <syna_pm_suspend+0x24>
		000000000000b27c:  R_AARCH64_CALL26	_printk
    b280: 52800028     	mov	w8, #0x1                // =1
    b284: 2a1f03e0     	mov	w0, wzr
    b288: 3915e268     	strb	w8, [x19, #0x578]
    b28c: b9055a7f     	str	wzr, [x19, #0x558]
    b290: f9400bf3     	ldr	x19, [sp, #0x10]
    b294: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    b298: d50323bf     	autiasp
    b29c: d65f03c0     	ret
