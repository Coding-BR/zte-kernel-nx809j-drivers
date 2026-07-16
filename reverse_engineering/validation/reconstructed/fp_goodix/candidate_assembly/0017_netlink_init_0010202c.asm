
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001800 <netlink_init>:
    1800: d503233f     	paciasp
    1804: d10103ff     	sub	sp, sp, #0x40
    1808: a9037bfd     	stp	x29, x30, [sp, #0x30]
    180c: 9100c3fd     	add	x29, sp, #0x30
    1810: d5384108     	mrs	x8, SP_EL0
    1814: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		0000000000001814:  R_AARCH64_ADR_PREL_PG_HI21	init_net
    1818: 91000000     	add	x0, x0, #0x0
		0000000000001818:  R_AARCH64_ADD_ABS_LO12_NC	init_net
    181c: f9438908     	ldr	x8, [x8, #0x710]
    1820: 90000002     	adrp	x2, 0x1000 <gf_probe+0x2d8>
		0000000000001820:  R_AARCH64_ADR_PREL_PG_HI21	__this_module
    1824: 91000042     	add	x2, x2, #0x0
		0000000000001824:  R_AARCH64_ADD_ABS_LO12_NC	__this_module
    1828: 910003e3     	mov	x3, sp
    182c: 52800321     	mov	w1, #0x19               // =25
    1830: f81f83a8     	stur	x8, [x29, #-0x8]
    1834: 90000008     	adrp	x8, 0x1000 <gf_probe+0x2d8>
		0000000000001834:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x189c
    1838: 91000108     	add	x8, x8, #0x0
		0000000000001838:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x189c
    183c: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    1840: f90003ff     	str	xzr, [sp]
    1844: a900ffe8     	stp	x8, xzr, [sp, #0x8]
    1848: 94000000     	bl	0x1848 <netlink_init+0x48>
		0000000000001848:  R_AARCH64_CALL26	__netlink_kernel_create
    184c: 90000008     	adrp	x8, 0x1000 <gf_probe+0x2d8>
		000000000000184c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f8
    1850: f9000100     	str	x0, [x8]
		0000000000001850:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f8
    1854: b4000160     	cbz	x0, 0x1880 <netlink_init+0x80>
    1858: 2a1f03e0     	mov	w0, wzr
    185c: d5384108     	mrs	x8, SP_EL0
    1860: f9438908     	ldr	x8, [x8, #0x710]
    1864: f85f83a9     	ldur	x9, [x29, #-0x8]
    1868: eb09011f     	cmp	x8, x9
    186c: 54000141     	b.ne	0x1894 <netlink_init+0x94>
    1870: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    1874: 910103ff     	add	sp, sp, #0x40
    1878: d50323bf     	autiasp
    187c: d65f03c0     	ret
    1880: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		0000000000001880:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x75d
    1884: 91000000     	add	x0, x0, #0x0
		0000000000001884:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x75d
    1888: 94000000     	bl	0x1888 <netlink_init+0x88>
		0000000000001888:  R_AARCH64_CALL26	_printk
    188c: 52800020     	mov	w0, #0x1                // =1
    1890: 17fffff3     	b	0x185c <netlink_init+0x5c>
    1894: 94000000     	bl	0x1894 <netlink_init+0x94>
		0000000000001894:  R_AARCH64_CALL26	__stack_chk_fail
