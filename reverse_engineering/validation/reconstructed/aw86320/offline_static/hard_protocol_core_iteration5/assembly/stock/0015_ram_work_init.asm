
/input/aw86320.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000185c <ram_work_init>:
    185c: d503233f     	paciasp
    1860: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1864: f9000bf3     	str	x19, [sp, #0x10]
    1868: 910003fd     	mov	x29, sp
    186c: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
    1870: aa0003f3     	mov	x19, x0
    1874: 90000001     	adrp	x1, 0x1000 <irq_handle+0x1c>
		0000000000001874:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
    1878: 91000021     	add	x1, x1, #0x0
		0000000000001878:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
    187c: f9013008     	str	x8, [x0, #0x260]
    1880: 9109a008     	add	x8, x0, #0x268
    1884: f9013408     	str	x8, [x0, #0x268]
    1888: 52a00402     	mov	w2, #0x200000           // =2097152
    188c: aa1f03e3     	mov	x3, xzr
    1890: f9013808     	str	x8, [x0, #0x270]
    1894: 90000008     	adrp	x8, 0x1000 <irq_handle+0x1c>
		0000000000001894:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x33cc
    1898: 91000108     	add	x8, x8, #0x0
		0000000000001898:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x33cc
    189c: f9013c08     	str	x8, [x0, #0x278]
    18a0: 910a0000     	add	x0, x0, #0x280
    18a4: aa1f03e4     	mov	x4, xzr
    18a8: 94000000     	bl	0x18a8 <ram_work_init+0x4c>
		00000000000018a8:  R_AARCH64_CALL26	init_timer_key
    18ac: 90000008     	adrp	x8, 0x1000 <irq_handle+0x1c>
		00000000000018ac:  R_AARCH64_ADR_PREL_PG_HI21	system_wq
    18b0: 91098262     	add	x2, x19, #0x260
    18b4: 52800400     	mov	w0, #0x20               // =32
    18b8: f9400101     	ldr	x1, [x8]
		00000000000018b8:  R_AARCH64_LDST64_ABS_LO12_NC	system_wq
    18bc: 5280fa03     	mov	w3, #0x7d0              // =2000
    18c0: 94000000     	bl	0x18c0 <ram_work_init+0x64>
		00000000000018c0:  R_AARCH64_CALL26	queue_delayed_work_on
    18c4: f9400bf3     	ldr	x19, [sp, #0x10]
    18c8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    18cc: d50323bf     	autiasp
    18d0: d65f03c0     	ret
