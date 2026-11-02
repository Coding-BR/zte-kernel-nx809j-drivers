
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000067ec <brightness_set>:
    67ec: d503233f     	paciasp
    67f0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    67f4: a9014ff4     	stp	x20, x19, [sp, #0x10]
    67f8: 910003fd     	mov	x29, sp
    67fc: 2a0103f4     	mov	w20, w1
    6800: aa0003f3     	mov	x19, x0
    6804: 90000000     	adrp	x0, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006804:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb54
    6808: 91000000     	add	x0, x0, #0x0
		0000000000006808:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb54
    680c: 90000001     	adrp	x1, 0x6000 <tiktap_work_routine+0x1b8>
		000000000000680c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    6810: 91000021     	add	x1, x1, #0x0
		0000000000006810:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    6814: 90000003     	adrp	x3, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006814:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe95
    6818: 91000063     	add	x3, x3, #0x0
		0000000000006818:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe95
    681c: 52811122     	mov	w2, #0x889              // =2185
    6820: 94000000     	bl	0x6820 <brightness_set+0x34>
		0000000000006820:  R_AARCH64_CALL26	_printk
    6824: 3855e268     	ldurb	w8, [x19, #-0xa2]
    6828: 36000228     	tbz	w8, #0x0, 0x686c <brightness_set+0x80>
    682c: 91092260     	add	x0, x19, #0x248
    6830: 94000000     	bl	0x6830 <brightness_set+0x44>
		0000000000006830:  R_AARCH64_CALL26	mutex_lock
    6834: 52800028     	mov	w8, #0x1                // =1
    6838: 91092260     	add	x0, x19, #0x248
    683c: b81b0274     	stur	w20, [x19, #-0x50]
    6840: b8198274     	stur	w20, [x19, #-0x68]
    6844: 38173268     	sturb	w8, [x19, #-0x8d]
    6848: 94000000     	bl	0x6848 <brightness_set+0x5c>
		0000000000006848:  R_AARCH64_CALL26	mutex_unlock
    684c: f941d261     	ldr	x1, [x19, #0x3a0]
    6850: 910e0262     	add	x2, x19, #0x380
    6854: 52800400     	mov	w0, #0x20               // =32
    6858: 94000000     	bl	0x6858 <brightness_set+0x6c>
		0000000000006858:  R_AARCH64_CALL26	queue_work_on
    685c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    6860: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    6864: d50323bf     	autiasp
    6868: d65f03c0     	ret
    686c: 90000000     	adrp	x0, 0x6000 <tiktap_work_routine+0x1b8>
		000000000000686c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ab3
    6870: 91000000     	add	x0, x0, #0x0
		0000000000006870:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ab3
    6874: 90000001     	adrp	x1, 0x6000 <tiktap_work_routine+0x1b8>
		0000000000006874:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    6878: 91000021     	add	x1, x1, #0x0
		0000000000006878:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    687c: 90000003     	adrp	x3, 0x6000 <tiktap_work_routine+0x1b8>
		000000000000687c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe95
    6880: 91000063     	add	x3, x3, #0x0
		0000000000006880:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe95
    6884: 52811162     	mov	w2, #0x88b              // =2187
    6888: 94000000     	bl	0x6888 <brightness_set+0x9c>
		0000000000006888:  R_AARCH64_CALL26	_printk
    688c: 17fffff4     	b	0x685c <brightness_set+0x70>
