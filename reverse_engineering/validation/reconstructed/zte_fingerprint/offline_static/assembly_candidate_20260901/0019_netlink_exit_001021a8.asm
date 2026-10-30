
/input/zte_fingerprint_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002170 <netlink_exit>:
    2170: d503233f     	paciasp
    2174: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    2178: f9000bf3     	str	x19, [sp, #0x10]
    217c: 910003fd     	mov	x29, sp
    2180: 90000013     	adrp	x19, 0x2000 <goodix_fb_state_chg_callback+0xac>
		0000000000002180:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1e0
    2184: f9400260     	ldr	x0, [x19]
		0000000000002184:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1e0
    2188: b4000060     	cbz	x0, 0x2194 <netlink_exit+0x24>
    218c: 94000000     	bl	0x218c <netlink_exit+0x1c>
		000000000000218c:  R_AARCH64_CALL26	netlink_kernel_release
    2190: f900027f     	str	xzr, [x19]
		0000000000002190:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1e0
    2194: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0xac>
		0000000000002194:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ce
    2198: 91000000     	add	x0, x0, #0x0
		0000000000002198:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ce
    219c: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0xac>
		000000000000219c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13b
    21a0: 91000021     	add	x1, x1, #0x0
		00000000000021a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13b
    21a4: 94000000     	bl	0x21a4 <netlink_exit+0x34>
		00000000000021a4:  R_AARCH64_CALL26	_printk
    21a8: f9400bf3     	ldr	x19, [sp, #0x10]
    21ac: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    21b0: d50323bf     	autiasp
    21b4: d65f03c0     	ret
