
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000ac7c <syna_dev_set_charger_mode>:
    ac7c: d503233f     	paciasp
    ac80: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    ac84: f9000bf5     	str	x21, [sp, #0x10]
    ac88: a9024ff4     	stp	x20, x19, [sp, #0x20]
    ac8c: 910003fd     	mov	x29, sp
    ac90: 2a0103f4     	mov	w20, w1
    ac94: 2a0203f3     	mov	w19, w2
    ac98: aa0003f5     	mov	x21, x0
    ac9c: 90000000     	adrp	x0, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000ac9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4a8f
    aca0: 91000000     	add	x0, x0, #0x0
		000000000000aca0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4a8f
    aca4: 90000001     	adrp	x1, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000aca4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x185d
    aca8: 91000021     	add	x1, x1, #0x0
		000000000000aca8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x185d
    acac: 2a1403e2     	mov	w2, w20
    acb0: 94000000     	bl	0xacb0 <syna_dev_set_charger_mode+0x34>
		000000000000acb0:  R_AARCH64_CALL26	_printk
    acb4: b4000115     	cbz	x21, 0xacd4 <syna_dev_set_charger_mode+0x58>
    acb8: f94002a0     	ldr	x0, [x21]
    acbc: 528000e1     	mov	w1, #0x7                // =7
    acc0: 2a1403e2     	mov	w2, w20
    acc4: 2a1303e3     	mov	w3, w19
    acc8: 94000000     	bl	0xacc8 <syna_dev_set_charger_mode+0x4c>
		000000000000acc8:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    accc: 0a807c00     	and	w0, w0, w0, asr #31
    acd0: 14000002     	b	0xacd8 <syna_dev_set_charger_mode+0x5c>
    acd4: 128002a0     	mov	w0, #-0x16              // =-22
    acd8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    acdc: f9400bf5     	ldr	x21, [sp, #0x10]
    ace0: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    ace4: d50323bf     	autiasp
    ace8: d65f03c0     	ret
