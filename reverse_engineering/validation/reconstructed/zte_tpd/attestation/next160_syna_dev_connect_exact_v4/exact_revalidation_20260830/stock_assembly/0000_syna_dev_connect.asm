
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000be8c <syna_dev_connect>:
    be8c: d503233f     	paciasp
    be90: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    be94: a90157f6     	stp	x22, x21, [sp, #0x10]
    be98: a9024ff4     	stp	x20, x19, [sp, #0x20]
    be9c: 910003fd     	mov	x29, sp
    bea0: f9400014     	ldr	x20, [x0]
    bea4: b4000314     	cbz	x20, 0xbf04 <syna_dev_connect+0x78>
    bea8: 39560808     	ldrb	w8, [x0, #0x582]
    beac: aa0003f3     	mov	x19, x0
    beb0: 7100051f     	cmp	w8, #0x1
    beb4: 54000360     	b.eq	0xbf20 <syna_dev_connect+0x94>
    beb8: f9413a75     	ldr	x21, [x19, #0x270]
    bebc: f940c2a8     	ldr	x8, [x21, #0x180]
    bec0: b40004a8     	cbz	x8, 0xbf54 <syna_dev_connect+0xc8>
    bec4: aa1503e0     	mov	x0, x21
    bec8: 52800021     	mov	w1, #0x1                // =1
    becc: b85fc110     	ldur	w16, [x8, #-0x4]
    bed0: 72850571     	movk	w17, #0x282b
    bed4: 72abe611     	movk	w17, #0x5f30, lsl #16
    bed8: 6b11021f     	cmp	w16, w17
    bedc: 54000040     	b.eq	0xbee4 <syna_dev_connect+0x58>
    bee0: d4304500     	brk	#0x8228
    bee4: d63f0100     	blr	x8
    bee8: 36f802e0     	tbz	w0, #0x1f, 0xbf44 <syna_dev_connect+0xb8>
    beec: 12800240     	mov	w0, #-0x13              // =-19
    bef0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    bef4: a94157f6     	ldp	x22, x21, [sp, #0x10]
    bef8: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    befc: d50323bf     	autiasp
    bf00: d65f03c0     	ret
    bf04: 90000000     	adrp	x0, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000bf04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd17
    bf08: 91000000     	add	x0, x0, #0x0
		000000000000bf08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd17
    bf0c: 90000001     	adrp	x1, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000bf0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa61d
    bf10: 91000021     	add	x1, x1, #0x0
		000000000000bf10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa61d
    bf14: 94000000     	bl	0xbf14 <syna_dev_connect+0x88>
		000000000000bf14:  R_AARCH64_CALL26	_printk
    bf18: 128002a0     	mov	w0, #-0x16              // =-22
    bf1c: 17fffff5     	b	0xbef0 <syna_dev_connect+0x64>
    bf20: 90000000     	adrp	x0, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000bf20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x905b
    bf24: 91000000     	add	x0, x0, #0x0
		000000000000bf24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x905b
    bf28: 90000001     	adrp	x1, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000bf28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa61d
    bf2c: 91000021     	add	x1, x1, #0x0
		000000000000bf2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa61d
    bf30: 90000002     	adrp	x2, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000bf30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3815
    bf34: 91000042     	add	x2, x2, #0x0
		000000000000bf34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3815
    bf38: 94000000     	bl	0xbf38 <syna_dev_connect+0xac>
		000000000000bf38:  R_AARCH64_CALL26	_printk
    bf3c: 2a1f03e0     	mov	w0, wzr
    bf40: 17ffffec     	b	0xbef0 <syna_dev_connect+0x64>
    bf44: b94156a0     	ldr	w0, [x21, #0x154]
    bf48: 7100041f     	cmp	w0, #0x1
    bf4c: 5400004b     	b.lt	0xbf54 <syna_dev_connect+0xc8>
    bf50: 94000000     	bl	0xbf50 <syna_dev_connect+0xc4>
		000000000000bf50:  R_AARCH64_CALL26	msleep
    bf54: f940c6a8     	ldr	x8, [x21, #0x188]
    bf58: b4000128     	cbz	x8, 0xbf7c <syna_dev_connect+0xf0>
    bf5c: aa1503e0     	mov	x0, x21
    bf60: b85fc110     	ldur	w16, [x8, #-0x4]
    bf64: 72974371     	movk	w17, #0xba1b
    bf68: 72a56791     	movk	w17, #0x2b3c, lsl #16
    bf6c: 6b11021f     	cmp	w16, w17
    bf70: 54000040     	b.eq	0xbf78 <syna_dev_connect+0xec>
    bf74: d4304500     	brk	#0x8228
    bf78: d63f0100     	blr	x8
    bf7c: f9400260     	ldr	x0, [x19]
    bf80: 52800021     	mov	w1, #0x1                // =1
    bf84: 2a1f03e2     	mov	w2, wzr
    bf88: 94000000     	bl	0xbf88 <syna_dev_connect+0xfc>
		000000000000bf88:  R_AARCH64_CALL26	syna_tcm_detect_device
    bf8c: 36f80140     	tbz	w0, #0x1f, 0xbfb4 <syna_dev_connect+0x128>
    bf90: 90000008     	adrp	x8, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000bf90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b28
    bf94: 91000108     	add	x8, x8, #0x0
		000000000000bf94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b28
    bf98: 90000001     	adrp	x1, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000bf98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa61d
    bf9c: 91000021     	add	x1, x1, #0x0
		000000000000bf9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa61d
    bfa0: 2a0003f3     	mov	w19, w0
    bfa4: aa0803e0     	mov	x0, x8
    bfa8: 94000000     	bl	0xbfa8 <syna_dev_connect+0x11c>
		000000000000bfa8:  R_AARCH64_CALL26	_printk
    bfac: 2a1303e0     	mov	w0, w19
    bfb0: 17ffffd0     	b	0xbef0 <syna_dev_connect+0x64>
    bfb4: 39402682     	ldrb	w2, [x20, #0x9]
    bfb8: 7100045f     	cmp	w2, #0x1
    bfbc: 54000261     	b.ne	0xc008 <syna_dev_connect+0x17c>
    bfc0: aa1303e0     	mov	x0, x19
    bfc4: 94000111     	bl	0xc408 <syna_dev_set_up_app_fw>
    bfc8: 36f80480     	tbz	w0, #0x1f, 0xc058 <syna_dev_connect+0x1cc>
    bfcc: 90000015     	adrp	x21, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000bfcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa61d
    bfd0: 910002b5     	add	x21, x21, #0x0
		000000000000bfd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa61d
    bfd4: 90000000     	adrp	x0, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000bfd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8096
    bfd8: 91000000     	add	x0, x0, #0x0
		000000000000bfd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8096
    bfdc: aa1503e1     	mov	x1, x21
    bfe0: 94000000     	bl	0xbfe0 <syna_dev_connect+0x154>
		000000000000bfe0:  R_AARCH64_CALL26	_printk
    bfe4: 90000000     	adrp	x0, 0xb000 <syna_dev_set_follow_hand_level+0x170>
		000000000000bfe4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xba72
    bfe8: 91000000     	add	x0, x0, #0x0
		000000000000bfe8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xba72
    bfec: aa1503e1     	mov	x1, x21
    bff0: 94000000     	bl	0xbff0 <syna_dev_connect+0x164>
		000000000000bff0:  R_AARCH64_CALL26	_printk
    bff4: b941ea82     	ldr	w2, [x20, #0x1e8]
    bff8: aa1403e0     	mov	x0, x20
    bffc: 52800161     	mov	w1, #0xb                // =11
    c000: 94000000     	bl	0xc000 <syna_dev_connect+0x174>
		000000000000c000:  R_AARCH64_CALL26	syna_tcm_switch_fw_mode
    c004: 1400001b     	b	0xc070 <syna_dev_connect+0x1e4>
    c008: 90000000     	adrp	x0, 0xc000 <syna_dev_connect+0x174>
		000000000000c008:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18d7
    c00c: 91000000     	add	x0, x0, #0x0
		000000000000c00c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18d7
    c010: 90000001     	adrp	x1, 0xc000 <syna_dev_connect+0x174>
		000000000000c010:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa61d
    c014: 91000021     	add	x1, x1, #0x0
		000000000000c014:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa61d
    c018: 94000000     	bl	0xc018 <syna_dev_connect+0x18c>
		000000000000c018:  R_AARCH64_CALL26	_printk
    c01c: 39402688     	ldrb	w8, [x20, #0x9]
    c020: 71002d1f     	cmp	w8, #0xb
    c024: 54000261     	b.ne	0xc070 <syna_dev_connect+0x1e4>
    c028: aa1403e0     	mov	x0, x20
    c02c: aa1f03e1     	mov	x1, xzr
    c030: 52800282     	mov	w2, #0x14               // =20
    c034: 94000000     	bl	0xc034 <syna_dev_connect+0x1a8>
		000000000000c034:  R_AARCH64_CALL26	syna_tcm_get_boot_info
    c038: 37f801c0     	tbnz	w0, #0x1f, 0xc070 <syna_dev_connect+0x1e4>
    c03c: 39438682     	ldrb	w2, [x20, #0xe1]
    c040: 90000000     	adrp	x0, 0xc000 <syna_dev_connect+0x174>
		000000000000c040:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x861c
    c044: 91000000     	add	x0, x0, #0x0
		000000000000c044:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x861c
    c048: 90000001     	adrp	x1, 0xc000 <syna_dev_connect+0x174>
		000000000000c048:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa61d
    c04c: 91000021     	add	x1, x1, #0x0
		000000000000c04c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa61d
    c050: 94000000     	bl	0xc050 <syna_dev_connect+0x1c4>
		000000000000c050:  R_AARCH64_CALL26	_printk
    c054: 14000007     	b	0xc070 <syna_dev_connect+0x1e4>
    c058: aa1303e0     	mov	x0, x19
    c05c: 94000378     	bl	0xce3c <syna_dev_set_up_input_device>
    c060: 36f80080     	tbz	w0, #0x1f, 0xc070 <syna_dev_connect+0x1e4>
    c064: 90000008     	adrp	x8, 0xc000 <syna_dev_connect+0x174>
		000000000000c064:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9086
    c068: 91000108     	add	x8, x8, #0x0
		000000000000c068:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9086
    c06c: 17ffffcb     	b	0xbf98 <syna_dev_connect+0x10c>
    c070: 90000002     	adrp	x2, 0xc000 <syna_dev_connect+0x174>
		000000000000c070:  R_AARCH64_ADR_PREL_PG_HI21	.text+0xd214
    c074: 91000042     	add	x2, x2, #0x0
		000000000000c074:  R_AARCH64_ADD_ABS_LO12_NC	.text+0xd214
    c078: aa1403e0     	mov	x0, x20
    c07c: 52800201     	mov	w1, #0x10               // =16
    c080: aa1303e3     	mov	x3, x19
    c084: 94000000     	bl	0xc084 <syna_dev_connect+0x1f8>
		000000000000c084:  R_AARCH64_CALL26	syna_tcm_set_report_dispatcher
    c088: 36f800c0     	tbz	w0, #0x1f, 0xc0a0 <syna_dev_connect+0x214>
    c08c: 90000000     	adrp	x0, 0xc000 <syna_dev_connect+0x174>
		000000000000c08c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd36
    c090: 91000000     	add	x0, x0, #0x0
		000000000000c090:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd36
    c094: 90000001     	adrp	x1, 0xc000 <syna_dev_connect+0x174>
		000000000000c094:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa61d
    c098: 91000021     	add	x1, x1, #0x0
		000000000000c098:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa61d
    c09c: 94000000     	bl	0xc09c <syna_dev_connect+0x210>
		000000000000c09c:  R_AARCH64_CALL26	_printk
    c0a0: f9413a75     	ldr	x21, [x19, #0x270]
    c0a4: 94000000     	bl	0xc0a4 <syna_dev_connect+0x218>
		000000000000c0a4:  R_AARCH64_CALL26	syna_request_managed_device
    c0a8: b50000a0     	cbnz	x0, 0xc0bc <syna_dev_connect+0x230>
    c0ac: 128002b4     	mov	w20, #-0x16             // =-22
    c0b0: 90000000     	adrp	x0, 0xc000 <syna_dev_connect+0x174>
		000000000000c0b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
    c0b4: 91000000     	add	x0, x0, #0x0
		000000000000c0b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
    c0b8: 1400001a     	b	0xc120 <syna_dev_connect+0x294>
    c0bc: b940aaa8     	ldr	w8, [x21, #0xa8]
    c0c0: 36f800a8     	tbz	w8, #0x1f, 0xc0d4 <syna_dev_connect+0x248>
    c0c4: 128002b4     	mov	w20, #-0x16             // =-22
    c0c8: 90000000     	adrp	x0, 0xc000 <syna_dev_connect+0x174>
		000000000000c0c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8643
    c0cc: 91000000     	add	x0, x0, #0x0
		000000000000c0cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8643
    c0d0: 14000014     	b	0xc120 <syna_dev_connect+0x294>
    c0d4: aa0003f4     	mov	x20, x0
    c0d8: 2a0803e0     	mov	w0, w8
    c0dc: 94000000     	bl	0xc0dc <syna_dev_connect+0x250>
		000000000000c0dc:  R_AARCH64_CALL26	gpio_to_desc
    c0e0: 94000000     	bl	0xc0e0 <syna_dev_connect+0x254>
		000000000000c0e0:  R_AARCH64_CALL26	gpiod_to_irq
    c0e4: f9405aa4     	ldr	x4, [x21, #0xb0]
    c0e8: 2a0003e1     	mov	w1, w0
    c0ec: b900baa0     	str	w0, [x21, #0xb8]
    c0f0: 90000003     	adrp	x3, 0xc000 <syna_dev_connect+0x174>
		000000000000c0f0:  R_AARCH64_ADR_PREL_PG_HI21	.text+0xd92c
    c0f4: 91000063     	add	x3, x3, #0x0
		000000000000c0f4:  R_AARCH64_ADD_ABS_LO12_NC	.text+0xd92c
    c0f8: 90000005     	adrp	x5, 0xc000 <syna_dev_connect+0x174>
		000000000000c0f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3815
    c0fc: 910000a5     	add	x5, x5, #0x0
		000000000000c0fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3815
    c100: aa1403e0     	mov	x0, x20
    c104: aa1f03e2     	mov	x2, xzr
    c108: aa1303e6     	mov	x6, x19
    c10c: 94000000     	bl	0xc10c <syna_dev_connect+0x280>
		000000000000c10c:  R_AARCH64_CALL26	devm_request_threaded_irq
    c110: 36f80240     	tbz	w0, #0x1f, 0xc158 <syna_dev_connect+0x2cc>
    c114: 2a0003f4     	mov	w20, w0
    c118: 90000000     	adrp	x0, 0xc000 <syna_dev_connect+0x174>
		000000000000c118:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa64b
    c11c: 91000000     	add	x0, x0, #0x0
		000000000000c11c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa64b
    c120: 90000001     	adrp	x1, 0xc000 <syna_dev_connect+0x174>
		000000000000c120:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4007
    c124: 91000021     	add	x1, x1, #0x0
		000000000000c124:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4007
    c128: 94000000     	bl	0xc128 <syna_dev_connect+0x29c>
		000000000000c128:  R_AARCH64_CALL26	_printk
    c12c: 90000000     	adrp	x0, 0xc000 <syna_dev_connect+0x174>
		000000000000c12c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x96d7
    c130: 91000000     	add	x0, x0, #0x0
		000000000000c130:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x96d7
    c134: 90000001     	adrp	x1, 0xc000 <syna_dev_connect+0x174>
		000000000000c134:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa61d
    c138: 91000021     	add	x1, x1, #0x0
		000000000000c138:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa61d
    c13c: 94000000     	bl	0xc13c <syna_dev_connect+0x2b0>
		000000000000c13c:  R_AARCH64_CALL26	_printk
    c140: f941da60     	ldr	x0, [x19, #0x3b0]
    c144: b4000060     	cbz	x0, 0xc150 <syna_dev_connect+0x2c4>
    c148: 94000000     	bl	0xc148 <syna_dev_connect+0x2bc>
		000000000000c148:  R_AARCH64_CALL26	input_unregister_device
    c14c: f901da7f     	str	xzr, [x19, #0x3b0]
    c150: 2a1403e0     	mov	w0, w20
    c154: 17ffff67     	b	0xbef0 <syna_dev_connect+0x64>
    c158: 52800034     	mov	w20, #0x1               // =1
    c15c: 90000000     	adrp	x0, 0xc000 <syna_dev_connect+0x174>
		000000000000c15c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4b87
    c160: 91000000     	add	x0, x0, #0x0
		000000000000c160:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4b87
    c164: 90000001     	adrp	x1, 0xc000 <syna_dev_connect+0x174>
		000000000000c164:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4007
    c168: 91000021     	add	x1, x1, #0x0
		000000000000c168:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4007
    c16c: 3902f2b4     	strb	w20, [x21, #0xbc]
    c170: 94000000     	bl	0xc170 <syna_dev_connect+0x2e4>
		000000000000c170:  R_AARCH64_CALL26	_printk
    c174: 52800141     	mov	w1, #0xa                // =10
    c178: 90000000     	adrp	x0, 0xc000 <syna_dev_connect+0x174>
		000000000000c178:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x504a
    c17c: 91000000     	add	x0, x0, #0x0
		000000000000c17c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x504a
    c180: 90000003     	adrp	x3, 0xc000 <syna_dev_connect+0x174>
		000000000000c180:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9f40
    c184: 91000063     	add	x3, x3, #0x0
		000000000000c184:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9f40
    c188: 72a000c1     	movk	w1, #0x6, lsl #16
    c18c: 52800022     	mov	w2, #0x1                // =1
    c190: 94000000     	bl	0xc190 <syna_dev_connect+0x304>
		000000000000c190:  R_AARCH64_CALL26	alloc_workqueue
    c194: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
    c198: f9021a60     	str	x0, [x19, #0x430]
    c19c: 910f4269     	add	x9, x19, #0x3d0
    c1a0: f901e668     	str	x8, [x19, #0x3c8]
    c1a4: 90000008     	adrp	x8, 0xc000 <syna_dev_connect+0x174>
		000000000000c1a4:  R_AARCH64_ADR_PREL_PG_HI21	.text+0xd2b8
    c1a8: 91000108     	add	x8, x8, #0x0
		000000000000c1a8:  R_AARCH64_ADD_ABS_LO12_NC	.text+0xd2b8
    c1ac: 90000001     	adrp	x1, 0xc000 <syna_dev_connect+0x174>
		000000000000c1ac:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
    c1b0: 91000021     	add	x1, x1, #0x0
		000000000000c1b0:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
    c1b4: 910fa260     	add	x0, x19, #0x3e8
    c1b8: 52a00402     	mov	w2, #0x200000           // =2097152
    c1bc: aa1f03e3     	mov	x3, xzr
    c1c0: aa1f03e4     	mov	x4, xzr
    c1c4: f901ea69     	str	x9, [x19, #0x3d0]
    c1c8: f901ee69     	str	x9, [x19, #0x3d8]
    c1cc: f901f268     	str	x8, [x19, #0x3e0]
    c1d0: 94000000     	bl	0xc1d0 <syna_dev_connect+0x344>
		000000000000c1d0:  R_AARCH64_CALL26	init_timer_key
    c1d4: f9421a61     	ldr	x1, [x19, #0x430]
    c1d8: 910f2262     	add	x2, x19, #0x3c8
    c1dc: 52800400     	mov	w0, #0x20               // =32
    c1e0: 52800643     	mov	w3, #0x32               // =50
    c1e4: 94000000     	bl	0xc1e4 <syna_dev_connect+0x358>
		000000000000c1e4:  R_AARCH64_CALL26	queue_delayed_work_on
    c1e8: f9400268     	ldr	x8, [x19]
    c1ec: b9057e74     	str	w20, [x19, #0x57c]
    c1f0: 90000000     	adrp	x0, 0xc000 <syna_dev_connect+0x174>
		000000000000c1f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x80c9
    c1f4: 91000000     	add	x0, x0, #0x0
		000000000000c1f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x80c9
    c1f8: 39160a74     	strb	w20, [x19, #0x582]
    c1fc: 90000014     	adrp	x20, 0xc000 <syna_dev_connect+0x174>
		000000000000c1fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x457a
    c200: 91000294     	add	x20, x20, #0x0
		000000000000c200:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x457a
    c204: f9413a75     	ldr	x21, [x19, #0x270]
    c208: 29470d02     	ldp	w2, w3, [x8, #0x38]
    c20c: aa1403e1     	mov	x1, x20
    c210: 94000000     	bl	0xc210 <syna_dev_connect+0x384>
		000000000000c210:  R_AARCH64_CALL26	_printk
    c214: f940c6a8     	ldr	x8, [x21, #0x188]
    c218: 90000015     	adrp	x21, 0xc000 <syna_dev_connect+0x174>
		000000000000c218:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x458d
    c21c: 910002b5     	add	x21, x21, #0x0
		000000000000c21c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x458d
    c220: 90000016     	adrp	x22, 0xc000 <syna_dev_connect+0x174>
		000000000000c220:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8663
    c224: 910002d6     	add	x22, x22, #0x0
		000000000000c224:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8663
    c228: 90000000     	adrp	x0, 0xc000 <syna_dev_connect+0x174>
		000000000000c228:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3832
    c22c: 91000000     	add	x0, x0, #0x0
		000000000000c22c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3832
    c230: f100011f     	cmp	x8, #0x0
    c234: aa1403e1     	mov	x1, x20
    c238: 9a9502c3     	csel	x3, x22, x21, eq
    c23c: aa1503e2     	mov	x2, x21
    c240: aa1503e4     	mov	x4, x21
    c244: 94000000     	bl	0xc244 <syna_dev_connect+0x3b8>
		000000000000c244:  R_AARCH64_CALL26	_printk
    c248: 39560668     	ldrb	w8, [x19, #0x581]
    c24c: 90000000     	adrp	x0, 0xc000 <syna_dev_connect+0x174>
		000000000000c24c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x90e1
    c250: 91000000     	add	x0, x0, #0x0
		000000000000c250:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x90e1
    c254: aa1403e1     	mov	x1, x20
    c258: aa1603e3     	mov	x3, x22
    c25c: aa1503e4     	mov	x4, x21
    c260: 7100011f     	cmp	w8, #0x0
    c264: 9a9612a2     	csel	x2, x21, x22, ne
    c268: 94000000     	bl	0xc268 <syna_dev_connect+0x3dc>
		000000000000c268:  R_AARCH64_CALL26	_printk
    c26c: 90000000     	adrp	x0, 0xc000 <syna_dev_connect+0x174>
		000000000000c26c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8b2f
    c270: 91000000     	add	x0, x0, #0x0
		000000000000c270:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8b2f
    c274: 17ffff2d     	b	0xbf28 <syna_dev_connect+0x9c>
