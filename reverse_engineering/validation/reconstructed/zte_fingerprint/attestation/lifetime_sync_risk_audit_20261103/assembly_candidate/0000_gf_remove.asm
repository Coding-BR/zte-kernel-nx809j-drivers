
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000181c <gf_remove>:
    181c: d503233f     	paciasp
    1820: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1824: f9000bf3     	str	x19, [sp, #0x10]
    1828: 910003fd     	mov	x29, sp
    182c: 90000000     	adrp	x0, 0x1000 <gf_disable_irq+0x20>
		000000000000182c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x574
    1830: 91000000     	add	x0, x0, #0x0
		0000000000001830:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x574
    1834: 90000001     	adrp	x1, 0x1000 <gf_disable_irq+0x20>
		0000000000001834:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x166a
    1838: 91000021     	add	x1, x1, #0x0
		0000000000001838:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x166a
    183c: 94000000     	bl	0x183c <gf_remove+0x20>
		000000000000183c:  R_AARCH64_CALL26	_printk
    1840: 90000000     	adrp	x0, 0x1000 <gf_disable_irq+0x20>
		0000000000001840:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x128
    1844: 91000000     	add	x0, x0, #0x0
		0000000000001844:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x128
    1848: 94000000     	bl	0x1848 <gf_remove+0x2c>
		0000000000001848:  R_AARCH64_CALL26	wakeup_source_remove
    184c: 90000013     	adrp	x19, 0x1000 <gf_disable_irq+0x20>
		000000000000184c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x48
    1850: f9400260     	ldr	x0, [x19]
		0000000000001850:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    1854: b4000060     	cbz	x0, 0x1860 <gf_remove+0x44>
    1858: 94000000     	bl	0x1858 <gf_remove+0x3c>
		0000000000001858:  R_AARCH64_CALL26	input_unregister_device
    185c: f9400260     	ldr	x0, [x19]
		000000000000185c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    1860: 94000000     	bl	0x1860 <gf_remove+0x44>
		0000000000001860:  R_AARCH64_CALL26	input_free_device
    1864: 90000000     	adrp	x0, 0x1000 <gf_disable_irq+0x20>
		0000000000001864:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x168
    1868: 91000000     	add	x0, x0, #0x0
		0000000000001868:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x168
    186c: 94000000     	bl	0x186c <gf_remove+0x50>
		000000000000186c:  R_AARCH64_CALL26	mutex_lock
    1870: 90000009     	adrp	x9, 0x1000 <gf_disable_irq+0x20>
		0000000000001870:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x20
    1874: 91000129     	add	x9, x9, #0x0
		0000000000001874:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x20
    1878: f9400528     	ldr	x8, [x9, #0x8]
    187c: f940010a     	ldr	x10, [x8]
    1880: eb09015f     	cmp	x10, x9
    1884: 540005c1     	b.ne	0x193c <gf_remove+0x120>
    1888: f940012a     	ldr	x10, [x9]
    188c: f940054b     	ldr	x11, [x10, #0x8]
    1890: eb09017f     	cmp	x11, x9
    1894: 54000541     	b.ne	0x193c <gf_remove+0x120>
    1898: f9000548     	str	x8, [x10, #0x8]
    189c: f900010a     	str	x10, [x8]
    18a0: 90000013     	adrp	x19, 0x1000 <gf_disable_irq+0x20>
		00000000000018a0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
    18a4: 91000273     	add	x19, x19, #0x0
		00000000000018a4:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x18
    18a8: d2802008     	mov	x8, #0x100              // =256
    18ac: 9000000a     	adrp	x10, 0x1000 <gf_disable_irq+0x20>
		00000000000018ac:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x10
    18b0: f2fbd5a8     	movk	x8, #0xdead, lsl #48
    18b4: 52800449     	mov	w9, #0x22               // =34
    18b8: f9400140     	ldr	x0, [x10]
		00000000000018b8:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x10
    18bc: b9400261     	ldr	w1, [x19]
    18c0: aa090109     	orr	x9, x8, x9
    18c4: a900a668     	stp	x8, x9, [x19, #0x8]
    18c8: 94000000     	bl	0x18c8 <gf_remove+0xac>
		00000000000018c8:  R_AARCH64_CALL26	device_destroy
    18cc: b9400268     	ldr	w8, [x19]
    18d0: 5280002a     	mov	w10, #0x1               // =1
    18d4: d3464d09     	ubfx	x9, x8, #6, #14
    18d8: 9ac82148     	lsl	x8, x10, x8
    18dc: 1400001c     	b	0x194c <gf_remove+0x130>
    18e0: 9000000a     	adrp	x10, 0x1000 <gf_disable_irq+0x20>
		00000000000018e0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1e8
    18e4: 9100014a     	add	x10, x10, #0x0
		00000000000018e4:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1e8
    18e8: 8b090d49     	add	x9, x10, x9, lsl #3
    18ec: f828113f     	stclr	x8, [x9]
    18f0: 90000008     	adrp	x8, 0x1000 <gf_disable_irq+0x20>
		00000000000018f0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0xb8
    18f4: f9400108     	ldr	x8, [x8]
		00000000000018f4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0xb8
    18f8: b4000148     	cbz	x8, 0x1920 <gf_remove+0x104>
    18fc: 90000008     	adrp	x8, 0x1000 <gf_disable_irq+0x20>
		00000000000018fc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f8
    1900: f9400100     	ldr	x0, [x8]
		0000000000001900:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f8
    1904: 94000000     	bl	0x1904 <gf_remove+0xe8>
		0000000000001904:  R_AARCH64_CALL26	panel_event_notifier_unregister
    1908: 90000013     	adrp	x19, 0x1000 <gf_disable_irq+0x20>
		0000000000001908:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0xb8
    190c: 91000273     	add	x19, x19, #0x0
		000000000000190c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0xb8
    1910: 91002260     	add	x0, x19, #0x8
    1914: 94000000     	bl	0x1914 <gf_remove+0xf8>
		0000000000001914:  R_AARCH64_CALL26	cancel_delayed_work_sync
    1918: f9400260     	ldr	x0, [x19]
    191c: 94000000     	bl	0x191c <gf_remove+0x100>
		000000000000191c:  R_AARCH64_CALL26	destroy_workqueue
    1920: 90000000     	adrp	x0, 0x1000 <gf_disable_irq+0x20>
		0000000000001920:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x168
    1924: 91000000     	add	x0, x0, #0x0
		0000000000001924:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x168
    1928: 94000000     	bl	0x1928 <gf_remove+0x10c>
		0000000000001928:  R_AARCH64_CALL26	mutex_unlock
    192c: f9400bf3     	ldr	x19, [sp, #0x10]
    1930: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1934: d50323bf     	autiasp
    1938: d65f03c0     	ret
    193c: 90000000     	adrp	x0, 0x1000 <gf_disable_irq+0x20>
		000000000000193c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x20
    1940: 91000000     	add	x0, x0, #0x0
		0000000000001940:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x20
    1944: 94000000     	bl	0x1944 <gf_remove+0x128>
		0000000000001944:  R_AARCH64_CALL26	__list_del_entry_valid_or_report
    1948: 17ffffd6     	b	0x18a0 <gf_remove+0x84>
    194c: 9000000a     	adrp	x10, 0x1000 <gf_disable_irq+0x20>
		000000000000194c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1e8
    1950: 9100014a     	add	x10, x10, #0x0
		0000000000001950:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1e8
    1954: 8b090d49     	add	x9, x10, x9, lsl #3
    1958: f9800131     	prfm	pstl1strm, [x9]
    195c: c85f7d2a     	ldxr	x10, [x9]
    1960: 8a28014a     	bic	x10, x10, x8
    1964: c80b7d2a     	stxr	w11, x10, [x9]
    1968: 35ffffab     	cbnz	w11, 0x195c <gf_remove+0x140>
    196c: 17ffffe1     	b	0x18f0 <gf_remove+0xd4>
