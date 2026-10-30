
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002db8 <aw22xxx_multi_breath_pattern_show>:
    2db8: d503233f     	paciasp
    2dbc: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    2dc0: 910003fd     	mov	x29, sp
    2dc4: f9404c08     	ldr	x8, [x0, #0x98]
    2dc8: aa0203e0     	mov	x0, x2
    2dcc: 90000002     	adrp	x2, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		0000000000002dcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x848
    2dd0: 91000042     	add	x2, x2, #0x0
		0000000000002dd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x848
    2dd4: 52820001     	mov	w1, #0x1000             // =4096
    2dd8: b942f903     	ldr	w3, [x8, #0x2f8]
    2ddc: 94000000     	bl	0x2ddc <aw22xxx_multi_breath_pattern_show+0x24>
		0000000000002ddc:  R_AARCH64_CALL26	snprintf
    2de0: 93407c00     	sxtw	x0, w0
    2de4: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    2de8: d50323bf     	autiasp
    2dec: d65f03c0     	ret
