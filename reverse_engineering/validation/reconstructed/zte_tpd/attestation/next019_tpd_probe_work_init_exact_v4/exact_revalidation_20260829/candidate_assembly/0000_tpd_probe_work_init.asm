
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000cb90 <tpd_probe_work_init>:
    cb90: d503233f     	paciasp
    cb94: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    cb98: f9000bf3     	str	x19, [sp, #0x10]
    cb9c: 910003fd     	mov	x29, sp
    cba0: 90000008     	adrp	x8, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cba0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    cba4: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cba4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17875
    cba8: 91000000     	add	x0, x0, #0x0
		000000000000cba8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17875
    cbac: f9400113     	ldr	x19, [x8]
		000000000000cbac:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    cbb0: 90000001     	adrp	x1, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cbb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c740
    cbb4: 91000021     	add	x1, x1, #0x0
		000000000000cbb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c740
    cbb8: 94000000     	bl	0xcbb8 <tpd_probe_work_init+0x28>
		000000000000cbb8:  R_AARCH64_CALL26	_printk
    cbbc: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
    cbc0: 91236269     	add	x9, x19, #0x8d8
    cbc4: 90000001     	adrp	x1, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cbc4:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
    cbc8: 91000021     	add	x1, x1, #0x0
		000000000000cbc8:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
    cbcc: f9046a68     	str	x8, [x19, #0x8d0]
    cbd0: 90000008     	adrp	x8, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cbd0:  R_AARCH64_ADR_PREL_PG_HI21	ztp_probe_work
    cbd4: 91000108     	add	x8, x8, #0x0
		000000000000cbd4:  R_AARCH64_ADD_ABS_LO12_NC	ztp_probe_work
    cbd8: 9123c260     	add	x0, x19, #0x8f0
    cbdc: 52a00402     	mov	w2, #0x200000           // =2097152
    cbe0: aa1f03e3     	mov	x3, xzr
    cbe4: aa1f03e4     	mov	x4, xzr
    cbe8: f9046e69     	str	x9, [x19, #0x8d8]
    cbec: f9047269     	str	x9, [x19, #0x8e0]
    cbf0: f9047668     	str	x8, [x19, #0x8e8]
    cbf4: 94000000     	bl	0xcbf4 <tpd_probe_work_init+0x64>
		000000000000cbf4:  R_AARCH64_CALL26	init_timer_key
    cbf8: f9400bf3     	ldr	x19, [sp, #0x10]
    cbfc: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    cc00: d50323bf     	autiasp
    cc04: d65f03c0     	ret
