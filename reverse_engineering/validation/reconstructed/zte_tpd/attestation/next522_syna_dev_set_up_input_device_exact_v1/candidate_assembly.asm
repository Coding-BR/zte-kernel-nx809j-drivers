
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000088d8 <syna_dev_set_up_input_device>:
    88d8: d503233f     	paciasp
    88dc: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    88e0: f9000bf5     	str	x21, [sp, #0x10]
    88e4: a9024ff4     	stp	x20, x19, [sp, #0x20]
    88e8: 910003fd     	mov	x29, sp
    88ec: f9400008     	ldr	x8, [x0]
    88f0: 39402502     	ldrb	w2, [x8, #0x9]
    88f4: 7100045f     	cmp	w2, #0x1
    88f8: 54001061     	b.ne	0x8b04 <syna_dev_set_up_input_device+0x22c>
    88fc: aa0003f3     	mov	x19, x0
    8900: 94000000     	bl	0x8900 <syna_dev_set_up_input_device+0x28>
		0000000000008900:  R_AARCH64_CALL26	syna_dev_free_input_events
    8904: f9400268     	ldr	x8, [x19]
    8908: b9401109     	ldr	w9, [x8, #0x10]
    890c: 35000069     	cbnz	w9, 0x8918 <syna_dev_set_up_input_device+0x40>
    8910: b940150a     	ldr	w10, [x8, #0x14]
    8914: 34000eca     	cbz	w10, 0x8aec <syna_dev_set_up_input_device+0x214>
    8918: b943ba6a     	ldr	w10, [x19, #0x3b8]
    891c: 6b09015f     	cmp	w10, w9
    8920: 54000121     	b.ne	0x8944 <syna_dev_set_up_input_device+0x6c>
    8924: b943be69     	ldr	w9, [x19, #0x3bc]
    8928: b940150a     	ldr	w10, [x8, #0x14]
    892c: 6b0a013f     	cmp	w9, w10
    8930: 540000a1     	b.ne	0x8944 <syna_dev_set_up_input_device+0x6c>
    8934: b943c262     	ldr	w2, [x19, #0x3c0]
    8938: b9401908     	ldr	w8, [x8, #0x18]
    893c: 6b08005f     	cmp	w2, w8
    8940: 54001380     	b.eq	0x8bb0 <syna_dev_set_up_input_device+0x2d8>
    8944: 9109e260     	add	x0, x19, #0x278
    8948: 94000000     	bl	0x8948 <syna_dev_set_up_input_device+0x70>
		0000000000008948:  R_AARCH64_CALL26	mutex_lock
    894c: f941da60     	ldr	x0, [x19, #0x3b0]
    8950: b4000060     	cbz	x0, 0x895c <syna_dev_set_up_input_device+0x84>
    8954: 94000000     	bl	0x8954 <syna_dev_set_up_input_device+0x7c>
		0000000000008954:  R_AARCH64_CALL26	input_unregister_device
    8958: f901da7f     	str	xzr, [x19, #0x3b0]
    895c: f9400275     	ldr	x21, [x19]
    8960: 94000000     	bl	0x8960 <syna_dev_set_up_input_device+0x88>
		0000000000008960:  R_AARCH64_CALL26	syna_request_managed_device
    8964: b4000dc0     	cbz	x0, 0x8b1c <syna_dev_set_up_input_device+0x244>
    8968: 94000000     	bl	0x8968 <syna_dev_set_up_input_device+0x90>
		0000000000008968:  R_AARCH64_CALL26	devm_input_allocate_device
    896c: b4000e60     	cbz	x0, 0x8b38 <syna_dev_set_up_input_device+0x260>
    8970: 90000008     	adrp	x8, 0x8000 <syna_dev_resume+0x110>
		0000000000008970:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1043b
    8974: 91000108     	add	x8, x8, #0x0
		0000000000008974:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1043b
    8978: 90000009     	adrp	x9, 0x8000 <syna_dev_resume+0x110>
		0000000000008978:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdb95
    897c: 91000129     	add	x9, x9, #0x0
		000000000000897c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdb95
    8980: aa0003f4     	mov	x20, x0
    8984: a9002408     	stp	x8, x9, [x0]
    8988: 320083e8     	mov	w8, #0x10001            // =65537
    898c: b9001c08     	str	w8, [x0, #0x1c]
    8990: f9400668     	ldr	x8, [x19, #0x8]
    8994: f9403908     	ldr	x8, [x8, #0x70]
    8998: f9016413     	str	x19, [x0, #0x2c8]
    899c: f9014808     	str	x8, [x0, #0x290]
    89a0: 14000092     	b	0x8be8 <syna_dev_set_up_input_device+0x310>
    89a4: 9100a288     	add	x8, x20, #0x28
    89a8: 52800029     	mov	w9, #0x1                // =1
    89ac: f829311f     	stset	x9, [x8]
    89b0: 14000095     	b	0x8c04 <syna_dev_set_up_input_device+0x32c>
    89b4: 9100a288     	add	x8, x20, #0x28
    89b8: 52800049     	mov	w9, #0x2                // =2
    89bc: f829311f     	stset	x9, [x8]
    89c0: 14000098     	b	0x8c20 <syna_dev_set_up_input_device+0x348>
    89c4: 9100a288     	add	x8, x20, #0x28
    89c8: 52800109     	mov	w9, #0x8                // =8
    89cc: f829311f     	stset	x9, [x8]
    89d0: 1400009b     	b	0x8c3c <syna_dev_set_up_input_device+0x364>
    89d4: 91016288     	add	x8, x20, #0x58
    89d8: 52808009     	mov	w9, #0x400              // =1024
    89dc: f829311f     	stset	x9, [x8]
    89e0: 1400009e     	b	0x8c58 <syna_dev_set_up_input_device+0x380>
    89e4: 91016288     	add	x8, x20, #0x58
    89e8: 52800409     	mov	w9, #0x20               // =32
    89ec: f829311f     	stset	x9, [x8]
    89f0: 140000a1     	b	0x8c74 <syna_dev_set_up_input_device+0x39c>
    89f4: 91008288     	add	x8, x20, #0x20
    89f8: 52800049     	mov	w9, #0x2                // =2
    89fc: f829311f     	stset	x9, [x8]
    8a00: 140000a4     	b	0x8c90 <syna_dev_set_up_input_device+0x3b8>
    8a04: 91010288     	add	x8, x20, #0x40
    8a08: 52900009     	mov	w9, #0x8000             // =32768
    8a0c: f829311f     	stset	x9, [x8]
    8a10: aa1403e0     	mov	x0, x20
    8a14: 52800021     	mov	w1, #0x1                // =1
    8a18: 528011e2     	mov	w2, #0x8f               // =143
    8a1c: 94000000     	bl	0x8a1c <syna_dev_set_up_input_device+0x144>
		0000000000008a1c:  R_AARCH64_CALL26	input_set_capability
    8a20: b94012a3     	ldr	w3, [x21, #0x10]
    8a24: aa1403e0     	mov	x0, x20
    8a28: 528006a1     	mov	w1, #0x35               // =53
    8a2c: 2a1f03e2     	mov	w2, wzr
    8a30: 2a1f03e4     	mov	w4, wzr
    8a34: 2a1f03e5     	mov	w5, wzr
    8a38: 94000000     	bl	0x8a38 <syna_dev_set_up_input_device+0x160>
		0000000000008a38:  R_AARCH64_CALL26	input_set_abs_params
    8a3c: b94016a3     	ldr	w3, [x21, #0x14]
    8a40: aa1403e0     	mov	x0, x20
    8a44: 528006c1     	mov	w1, #0x36               // =54
    8a48: 2a1f03e2     	mov	w2, wzr
    8a4c: 2a1f03e4     	mov	w4, wzr
    8a50: 2a1f03e5     	mov	w5, wzr
    8a54: 94000000     	bl	0x8a54 <syna_dev_set_up_input_device+0x17c>
		0000000000008a54:  R_AARCH64_CALL26	input_set_abs_params
    8a58: b9401aa1     	ldr	w1, [x21, #0x18]
    8a5c: aa1403e0     	mov	x0, x20
    8a60: 52800042     	mov	w2, #0x2                // =2
    8a64: 94000000     	bl	0x8a64 <syna_dev_set_up_input_device+0x18c>
		0000000000008a64:  R_AARCH64_CALL26	input_mt_init_slots
    8a68: aa1403e0     	mov	x0, x20
    8a6c: 52800601     	mov	w1, #0x30               // =48
    8a70: 2a1f03e2     	mov	w2, wzr
    8a74: 52801fe3     	mov	w3, #0xff               // =255
    8a78: 2a1f03e4     	mov	w4, wzr
    8a7c: 2a1f03e5     	mov	w5, wzr
    8a80: 94000000     	bl	0x8a80 <syna_dev_set_up_input_device+0x1a8>
		0000000000008a80:  R_AARCH64_CALL26	input_set_abs_params
    8a84: aa1403e0     	mov	x0, x20
    8a88: 52800621     	mov	w1, #0x31               // =49
    8a8c: 2a1f03e2     	mov	w2, wzr
    8a90: 52801fe3     	mov	w3, #0xff               // =255
    8a94: 2a1f03e4     	mov	w4, wzr
    8a98: 2a1f03e5     	mov	w5, wzr
    8a9c: 94000000     	bl	0x8a9c <syna_dev_set_up_input_device+0x1c4>
		0000000000008a9c:  R_AARCH64_CALL26	input_set_abs_params
    8aa0: b94012a8     	ldr	w8, [x21, #0x10]
    8aa4: aa1403e0     	mov	x0, x20
    8aa8: b903ba68     	str	w8, [x19, #0x3b8]
    8aac: b94016a8     	ldr	w8, [x21, #0x14]
    8ab0: b903be68     	str	w8, [x19, #0x3bc]
    8ab4: b9401aa8     	ldr	w8, [x21, #0x18]
    8ab8: b903c268     	str	w8, [x19, #0x3c0]
    8abc: 94000000     	bl	0x8abc <syna_dev_set_up_input_device+0x1e4>
		0000000000008abc:  R_AARCH64_CALL26	input_register_device
    8ac0: 37f804a0     	tbnz	w0, #0x1f, 0x8b54 <syna_dev_set_up_input_device+0x27c>
    8ac4: f9400260     	ldr	x0, [x19]
    8ac8: 90000002     	adrp	x2, 0x8000 <syna_dev_resume+0x110>
		0000000000008ac8:  R_AARCH64_ADR_PREL_PG_HI21	syna_dev_process_touch_report
    8acc: 91000042     	add	x2, x2, #0x0
		0000000000008acc:  R_AARCH64_ADD_ABS_LO12_NC	syna_dev_process_touch_report
    8ad0: 52800221     	mov	w1, #0x11               // =17
    8ad4: aa1303e3     	mov	x3, x19
    8ad8: f901da74     	str	x20, [x19, #0x3b0]
    8adc: 94000000     	bl	0x8adc <syna_dev_set_up_input_device+0x204>
		0000000000008adc:  R_AARCH64_CALL26	syna_tcm_set_report_dispatcher
    8ae0: 37f805c0     	tbnz	w0, #0x1f, 0x8b98 <syna_dev_set_up_input_device+0x2c0>
    8ae4: 9109e260     	add	x0, x19, #0x278
    8ae8: 94000000     	bl	0x8ae8 <syna_dev_set_up_input_device+0x210>
		0000000000008ae8:  R_AARCH64_CALL26	mutex_unlock
    8aec: 2a1f03e0     	mov	w0, wzr
    8af0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    8af4: f9400bf5     	ldr	x21, [sp, #0x10]
    8af8: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    8afc: d50323bf     	autiasp
    8b00: d65f03c0     	ret
    8b04: 90000000     	adrp	x0, 0x8000 <syna_dev_resume+0x110>
		0000000000008b04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xba7c
    8b08: 91000000     	add	x0, x0, #0x0
		0000000000008b08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xba7c
    8b0c: 90000001     	adrp	x1, 0x8000 <syna_dev_resume+0x110>
		0000000000008b0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10c57
    8b10: 91000021     	add	x1, x1, #0x0
		0000000000008b10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10c57
    8b14: 94000000     	bl	0x8b14 <syna_dev_set_up_input_device+0x23c>
		0000000000008b14:  R_AARCH64_CALL26	_printk
    8b18: 17fffff5     	b	0x8aec <syna_dev_set_up_input_device+0x214>
    8b1c: 90000000     	adrp	x0, 0x8000 <syna_dev_resume+0x110>
		0000000000008b1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10fe4
    8b20: 91000000     	add	x0, x0, #0x0
		0000000000008b20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10fe4
    8b24: 90000001     	adrp	x1, 0x8000 <syna_dev_resume+0x110>
		0000000000008b24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xddff
    8b28: 91000021     	add	x1, x1, #0x0
		0000000000008b28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xddff
    8b2c: 94000000     	bl	0x8b2c <syna_dev_set_up_input_device+0x254>
		0000000000008b2c:  R_AARCH64_CALL26	_printk
    8b30: 128002b5     	mov	w21, #-0x16             // =-22
    8b34: 14000010     	b	0x8b74 <syna_dev_set_up_input_device+0x29c>
    8b38: 90000000     	adrp	x0, 0x8000 <syna_dev_resume+0x110>
		0000000000008b38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe566
    8b3c: 91000000     	add	x0, x0, #0x0
		0000000000008b3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe566
    8b40: 90000001     	adrp	x1, 0x8000 <syna_dev_resume+0x110>
		0000000000008b40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xddff
    8b44: 91000021     	add	x1, x1, #0x0
		0000000000008b44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xddff
    8b48: 94000000     	bl	0x8b48 <syna_dev_set_up_input_device+0x270>
		0000000000008b48:  R_AARCH64_CALL26	_printk
    8b4c: 12800255     	mov	w21, #-0x13             // =-19
    8b50: 14000009     	b	0x8b74 <syna_dev_set_up_input_device+0x29c>
    8b54: 2a0003f5     	mov	w21, w0
    8b58: 90000000     	adrp	x0, 0x8000 <syna_dev_resume+0x110>
		0000000000008b58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe539
    8b5c: 91000000     	add	x0, x0, #0x0
		0000000000008b5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe539
    8b60: 90000001     	adrp	x1, 0x8000 <syna_dev_resume+0x110>
		0000000000008b60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xddff
    8b64: 91000021     	add	x1, x1, #0x0
		0000000000008b64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xddff
    8b68: 94000000     	bl	0x8b68 <syna_dev_set_up_input_device+0x290>
		0000000000008b68:  R_AARCH64_CALL26	_printk
    8b6c: aa1403e0     	mov	x0, x20
    8b70: 94000000     	bl	0x8b70 <syna_dev_set_up_input_device+0x298>
		0000000000008b70:  R_AARCH64_CALL26	input_free_device
    8b74: 90000000     	adrp	x0, 0x8000 <syna_dev_resume+0x110>
		0000000000008b74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x113b0
    8b78: 91000000     	add	x0, x0, #0x0
		0000000000008b78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x113b0
    8b7c: 90000001     	adrp	x1, 0x8000 <syna_dev_resume+0x110>
		0000000000008b7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10c57
    8b80: 91000021     	add	x1, x1, #0x0
		0000000000008b80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10c57
    8b84: 94000000     	bl	0x8b84 <syna_dev_set_up_input_device+0x2ac>
		0000000000008b84:  R_AARCH64_CALL26	_printk
    8b88: 9109e260     	add	x0, x19, #0x278
    8b8c: 94000000     	bl	0x8b8c <syna_dev_set_up_input_device+0x2b4>
		0000000000008b8c:  R_AARCH64_CALL26	mutex_unlock
    8b90: 2a1503e0     	mov	w0, w21
    8b94: 17ffffd7     	b	0x8af0 <syna_dev_set_up_input_device+0x218>
    8b98: 90000000     	adrp	x0, 0x8000 <syna_dev_resume+0x110>
		0000000000008b98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd910
    8b9c: 91000000     	add	x0, x0, #0x0
		0000000000008b9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd910
    8ba0: 90000001     	adrp	x1, 0x8000 <syna_dev_resume+0x110>
		0000000000008ba0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10c57
    8ba4: 91000021     	add	x1, x1, #0x0
		0000000000008ba4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10c57
    8ba8: 94000000     	bl	0x8ba8 <syna_dev_set_up_input_device+0x2d0>
		0000000000008ba8:  R_AARCH64_CALL26	_printk
    8bac: 17ffffce     	b	0x8ae4 <syna_dev_set_up_input_device+0x20c>
    8bb0: 71002c5f     	cmp	w2, #0xb
    8bb4: 540000e3     	b.lo	0x8bd0 <syna_dev_set_up_input_device+0x2f8>
    8bb8: 90000000     	adrp	x0, 0x8000 <syna_dev_resume+0x110>
		0000000000008bb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11040
    8bbc: 91000000     	add	x0, x0, #0x0
		0000000000008bbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11040
    8bc0: 90000001     	adrp	x1, 0x8000 <syna_dev_resume+0x110>
		0000000000008bc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd25a
    8bc4: 91000021     	add	x1, x1, #0x0
		0000000000008bc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd25a
    8bc8: 94000000     	bl	0x8bc8 <syna_dev_set_up_input_device+0x2f0>
		0000000000008bc8:  R_AARCH64_CALL26	_printk
    8bcc: 17ffffc8     	b	0x8aec <syna_dev_set_up_input_device+0x214>
    8bd0: 90000000     	adrp	x0, 0x8000 <syna_dev_resume+0x110>
		0000000000008bd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x117a4
    8bd4: 91000000     	add	x0, x0, #0x0
		0000000000008bd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x117a4
    8bd8: 90000001     	adrp	x1, 0x8000 <syna_dev_resume+0x110>
		0000000000008bd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd25a
    8bdc: 91000021     	add	x1, x1, #0x0
		0000000000008bdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd25a
    8be0: 94000000     	bl	0x8be0 <syna_dev_set_up_input_device+0x308>
		0000000000008be0:  R_AARCH64_CALL26	_printk
    8be4: 17ffffc2     	b	0x8aec <syna_dev_set_up_input_device+0x214>
    8be8: 9100a288     	add	x8, x20, #0x28
    8bec: f9800111     	prfm	pstl1strm, [x8]
    8bf0: c85f7d09     	ldxr	x9, [x8]
    8bf4: b2400129     	orr	x9, x9, #0x1
    8bf8: c80a7d09     	stxr	w10, x9, [x8]
    8bfc: 35ffffaa     	cbnz	w10, 0x8bf0 <syna_dev_set_up_input_device+0x318>
    8c00: 17ffff6c     	b	0x89b0 <syna_dev_set_up_input_device+0xd8>
    8c04: 9100a288     	add	x8, x20, #0x28
    8c08: f9800111     	prfm	pstl1strm, [x8]
    8c0c: c85f7d09     	ldxr	x9, [x8]
    8c10: b27f0129     	orr	x9, x9, #0x2
    8c14: c80a7d09     	stxr	w10, x9, [x8]
    8c18: 35ffffaa     	cbnz	w10, 0x8c0c <syna_dev_set_up_input_device+0x334>
    8c1c: 17ffff69     	b	0x89c0 <syna_dev_set_up_input_device+0xe8>
    8c20: 9100a288     	add	x8, x20, #0x28
    8c24: f9800111     	prfm	pstl1strm, [x8]
    8c28: c85f7d09     	ldxr	x9, [x8]
    8c2c: b27d0129     	orr	x9, x9, #0x8
    8c30: c80a7d09     	stxr	w10, x9, [x8]
    8c34: 35ffffaa     	cbnz	w10, 0x8c28 <syna_dev_set_up_input_device+0x350>
    8c38: 17ffff66     	b	0x89d0 <syna_dev_set_up_input_device+0xf8>
    8c3c: 91016288     	add	x8, x20, #0x58
    8c40: f9800111     	prfm	pstl1strm, [x8]
    8c44: c85f7d09     	ldxr	x9, [x8]
    8c48: b2760129     	orr	x9, x9, #0x400
    8c4c: c80a7d09     	stxr	w10, x9, [x8]
    8c50: 35ffffaa     	cbnz	w10, 0x8c44 <syna_dev_set_up_input_device+0x36c>
    8c54: 17ffff63     	b	0x89e0 <syna_dev_set_up_input_device+0x108>
    8c58: 91016288     	add	x8, x20, #0x58
    8c5c: f9800111     	prfm	pstl1strm, [x8]
    8c60: c85f7d09     	ldxr	x9, [x8]
    8c64: b27b0129     	orr	x9, x9, #0x20
    8c68: c80a7d09     	stxr	w10, x9, [x8]
    8c6c: 35ffffaa     	cbnz	w10, 0x8c60 <syna_dev_set_up_input_device+0x388>
    8c70: 17ffff60     	b	0x89f0 <syna_dev_set_up_input_device+0x118>
    8c74: 91008288     	add	x8, x20, #0x20
    8c78: f9800111     	prfm	pstl1strm, [x8]
    8c7c: c85f7d09     	ldxr	x9, [x8]
    8c80: b27f0129     	orr	x9, x9, #0x2
    8c84: c80a7d09     	stxr	w10, x9, [x8]
    8c88: 35ffffaa     	cbnz	w10, 0x8c7c <syna_dev_set_up_input_device+0x3a4>
    8c8c: 17ffff5d     	b	0x8a00 <syna_dev_set_up_input_device+0x128>
    8c90: 91010288     	add	x8, x20, #0x40
    8c94: f9800111     	prfm	pstl1strm, [x8]
    8c98: c85f7d09     	ldxr	x9, [x8]
    8c9c: b2710129     	orr	x9, x9, #0x8000
    8ca0: c80a7d09     	stxr	w10, x9, [x8]
    8ca4: 35ffffaa     	cbnz	w10, 0x8c98 <syna_dev_set_up_input_device+0x3c0>
    8ca8: 17ffff5a     	b	0x8a10 <syna_dev_set_up_input_device+0x138>
