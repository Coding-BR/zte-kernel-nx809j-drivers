
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002494 <aw22xxx_fw_show>:
    2494: d503233f     	paciasp
    2498: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    249c: 910003fd     	mov	x29, sp
    24a0: aa0203e0     	mov	x0, x2
    24a4: 90000002     	adrp	x2, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		00000000000024a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a23
    24a8: 91000042     	add	x2, x2, #0x0
		00000000000024a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a23
    24ac: 90000003     	adrp	x3, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		00000000000024ac:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x118
    24b0: 91000063     	add	x3, x3, #0x0
		00000000000024b0:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x118
    24b4: 52820001     	mov	w1, #0x1000             // =4096
    24b8: 94000000     	bl	0x24b8 <aw22xxx_fw_show+0x24>
		00000000000024b8:  R_AARCH64_CALL26	snprintf
    24bc: 93407c00     	sxtw	x0, w0
    24c0: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    24c4: d50323bf     	autiasp
    24c8: d65f03c0     	ret
