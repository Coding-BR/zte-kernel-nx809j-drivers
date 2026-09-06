
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000180c <netlink_init>:
    180c: d503233f     	paciasp
    1810: d10103ff     	sub	sp, sp, #0x40
    1814: a9037bfd     	stp	x29, x30, [sp, #0x30]
    1818: 9100c3fd     	add	x29, sp, #0x30
    181c: d5384108     	mrs	x8, SP_EL0
    1820: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		0000000000001820:  R_AARCH64_ADR_PREL_PG_HI21	init_net
    1824: 91000000     	add	x0, x0, #0x0
		0000000000001824:  R_AARCH64_ADD_ABS_LO12_NC	init_net
    1828: f9438908     	ldr	x8, [x8, #0x710]
    182c: 90000002     	adrp	x2, 0x1000 <gf_probe+0x2cc>
		000000000000182c:  R_AARCH64_ADR_PREL_PG_HI21	__this_module
    1830: 91000042     	add	x2, x2, #0x0
		0000000000001830:  R_AARCH64_ADD_ABS_LO12_NC	__this_module
    1834: 910003e3     	mov	x3, sp
    1838: 52800321     	mov	w1, #0x19               // =25
    183c: f81f83a8     	stur	x8, [x29, #-0x8]
    1840: 90000008     	adrp	x8, 0x1000 <gf_probe+0x2cc>
		0000000000001840:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x18a8
    1844: 91000108     	add	x8, x8, #0x0
		0000000000001844:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x18a8
    1848: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    184c: f90003ff     	str	xzr, [sp]
    1850: a900ffe8     	stp	x8, xzr, [sp, #0x8]
    1854: 94000000     	bl	0x1854 <netlink_init+0x48>
		0000000000001854:  R_AARCH64_CALL26	__netlink_kernel_create
    1858: 90000008     	adrp	x8, 0x1000 <gf_probe+0x2cc>
		0000000000001858:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f8
    185c: f9000100     	str	x0, [x8]
		000000000000185c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f8
    1860: b4000160     	cbz	x0, 0x188c <netlink_init+0x80>
    1864: 2a1f03e0     	mov	w0, wzr
    1868: d5384108     	mrs	x8, SP_EL0
    186c: f9438908     	ldr	x8, [x8, #0x710]
    1870: f85f83a9     	ldur	x9, [x29, #-0x8]
    1874: eb09011f     	cmp	x8, x9
    1878: 54000141     	b.ne	0x18a0 <netlink_init+0x94>
    187c: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    1880: 910103ff     	add	sp, sp, #0x40
    1884: d50323bf     	autiasp
    1888: d65f03c0     	ret
    188c: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		000000000000188c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x79c
    1890: 91000000     	add	x0, x0, #0x0
		0000000000001890:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x79c
    1894: 94000000     	bl	0x1894 <netlink_init+0x88>
		0000000000001894:  R_AARCH64_CALL26	_printk
    1898: 52800020     	mov	w0, #0x1                // =1
    189c: 17fffff3     	b	0x1868 <netlink_init+0x5c>
    18a0: 94000000     	bl	0x18a0 <netlink_init+0x94>
		00000000000018a0:  R_AARCH64_CALL26	__stack_chk_fail
