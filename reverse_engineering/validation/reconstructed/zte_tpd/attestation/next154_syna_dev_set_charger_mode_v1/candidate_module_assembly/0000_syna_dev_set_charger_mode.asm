
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009c98 <syna_dev_set_charger_mode>:
    9c98: d503233f     	paciasp
    9c9c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    9ca0: f9000bf5     	str	x21, [sp, #0x10]
    9ca4: a9024ff4     	stp	x20, x19, [sp, #0x20]
    9ca8: 910003fd     	mov	x29, sp
    9cac: 2a0103f4     	mov	w20, w1
    9cb0: 2a0203f3     	mov	w19, w2
    9cb4: aa0003f5     	mov	x21, x0
    9cb8: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x240>
		0000000000009cb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x253b
    9cbc: 91000000     	add	x0, x0, #0x0
		0000000000009cbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x253b
    9cc0: 90000001     	adrp	x1, 0x9000 <syna_dev_process_touch_report+0x240>
		0000000000009cc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbe9
    9cc4: 91000021     	add	x1, x1, #0x0
		0000000000009cc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbe9
    9cc8: 2a1403e2     	mov	w2, w20
    9ccc: 94000000     	bl	0x9ccc <syna_dev_set_charger_mode+0x34>
		0000000000009ccc:  R_AARCH64_CALL26	_printk
    9cd0: b4000115     	cbz	x21, 0x9cf0 <syna_dev_set_charger_mode+0x58>
    9cd4: f94002a0     	ldr	x0, [x21]
    9cd8: 528000e1     	mov	w1, #0x7                // =7
    9cdc: 2a1403e2     	mov	w2, w20
    9ce0: 2a1303e3     	mov	w3, w19
    9ce4: 94000000     	bl	0x9ce4 <syna_dev_set_charger_mode+0x4c>
		0000000000009ce4:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    9ce8: 0a807c00     	and	w0, w0, w0, asr #31
    9cec: 14000002     	b	0x9cf4 <syna_dev_set_charger_mode+0x5c>
    9cf0: 128002a0     	mov	w0, #-0x16              // =-22
    9cf4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    9cf8: f9400bf5     	ldr	x21, [sp, #0x10]
    9cfc: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    9d00: d50323bf     	autiasp
    9d04: d65f03c0     	ret
