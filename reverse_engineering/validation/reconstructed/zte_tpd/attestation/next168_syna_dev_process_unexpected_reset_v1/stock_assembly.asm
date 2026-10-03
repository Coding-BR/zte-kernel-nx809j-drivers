
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000d214 <syna_dev_process_unexpected_reset>:
    d214: d503233f     	paciasp
    d218: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    d21c: f9000bf3     	str	x19, [sp, #0x10]
    d220: 910003fd     	mov	x29, sp
    d224: b4000123     	cbz	x3, 0xd248 <syna_dev_process_unexpected_reset+0x34>
    d228: b9457c68     	ldr	w8, [x3, #0x57c]
    d22c: 7100051f     	cmp	w8, #0x1
    d230: 540001a0     	b.eq	0xd264 <syna_dev_process_unexpected_reset+0x50>
    d234: 2a1f03e0     	mov	w0, wzr
    d238: f9400bf3     	ldr	x19, [sp, #0x10]
    d23c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    d240: d50323bf     	autiasp
    d244: d65f03c0     	ret
    d248: 90000000     	adrp	x0, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d248:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7ac6
    d24c: 91000000     	add	x0, x0, #0x0
		000000000000d24c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7ac6
    d250: 90000001     	adrp	x1, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d250:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc054
    d254: 91000021     	add	x1, x1, #0x0
		000000000000d254:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc054
    d258: 94000000     	bl	0xd258 <syna_dev_process_unexpected_reset+0x44>
		000000000000d258:  R_AARCH64_CALL26	_printk
    d25c: 128002a0     	mov	w0, #-0x16              // =-22
    d260: 17fffff6     	b	0xd238 <syna_dev_process_unexpected_reset+0x24>
    d264: 90000000     	adrp	x0, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d264:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd80
    d268: 91000000     	add	x0, x0, #0x0
		000000000000d268:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd80
    d26c: 90000001     	adrp	x1, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d26c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc054
    d270: 91000021     	add	x1, x1, #0x0
		000000000000d270:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc054
    d274: aa0303f3     	mov	x19, x3
    d278: 94000000     	bl	0xd278 <syna_dev_process_unexpected_reset+0x64>
		000000000000d278:  R_AARCH64_CALL26	_printk
    d27c: f942a661     	ldr	x1, [x19, #0x548]
    d280: b4000141     	cbz	x1, 0xd2a8 <syna_dev_process_unexpected_reset+0x94>
    d284: b9452269     	ldr	w9, [x19, #0x520]
    d288: aa1303e8     	mov	x8, x19
    d28c: 35fffd49     	cbnz	w9, 0xd234 <syna_dev_process_unexpected_reset+0x20>
    d290: 52800029     	mov	w9, #0x1                // =1
    d294: 9114a102     	add	x2, x8, #0x528
    d298: 52800400     	mov	w0, #0x20               // =32
    d29c: b9052109     	str	w9, [x8, #0x520]
    d2a0: 94000000     	bl	0xd2a0 <syna_dev_process_unexpected_reset+0x8c>
		000000000000d2a0:  R_AARCH64_CALL26	queue_work_on
    d2a4: 17ffffe4     	b	0xd234 <syna_dev_process_unexpected_reset+0x20>
    d2a8: 90000000     	adrp	x0, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d2a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xadab
    d2ac: 91000000     	add	x0, x0, #0x0
		000000000000d2ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xadab
    d2b0: 17ffffe8     	b	0xd250 <syna_dev_process_unexpected_reset+0x3c>
