
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000ce3c <syna_dev_set_up_input_device>:
    ce3c: d503233f     	paciasp
    ce40: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    ce44: f9000bf5     	str	x21, [sp, #0x10]
    ce48: a9024ff4     	stp	x20, x19, [sp, #0x20]
    ce4c: 910003fd     	mov	x29, sp
    ce50: f9400008     	ldr	x8, [x0]
    ce54: 39402502     	ldrb	w2, [x8, #0x9]
    ce58: 7100045f     	cmp	w2, #0x1
    ce5c: 54001061     	b.ne	0xd068 <syna_dev_set_up_input_device+0x22c>
    ce60: aa0003f3     	mov	x19, x0
    ce64: 94000000     	bl	0xce64 <syna_dev_set_up_input_device+0x28>
		000000000000ce64:  R_AARCH64_CALL26	syna_dev_free_input_events
    ce68: f9400268     	ldr	x8, [x19]
    ce6c: b9401109     	ldr	w9, [x8, #0x10]
    ce70: 35000069     	cbnz	w9, 0xce7c <syna_dev_set_up_input_device+0x40>
    ce74: b940150a     	ldr	w10, [x8, #0x14]
    ce78: 34000eca     	cbz	w10, 0xd050 <syna_dev_set_up_input_device+0x214>
    ce7c: b943ba6a     	ldr	w10, [x19, #0x3b8]
    ce80: 6b09015f     	cmp	w10, w9
    ce84: 54000121     	b.ne	0xcea8 <syna_dev_set_up_input_device+0x6c>
    ce88: b943be69     	ldr	w9, [x19, #0x3bc]
    ce8c: b940150a     	ldr	w10, [x8, #0x14]
    ce90: 6b0a013f     	cmp	w9, w10
    ce94: 540000a1     	b.ne	0xcea8 <syna_dev_set_up_input_device+0x6c>
    ce98: b943c262     	ldr	w2, [x19, #0x3c0]
    ce9c: b9401908     	ldr	w8, [x8, #0x18]
    cea0: 6b08005f     	cmp	w2, w8
    cea4: 54001380     	b.eq	0xd114 <syna_dev_set_up_input_device+0x2d8>
    cea8: 9109e260     	add	x0, x19, #0x278
    ceac: 94000000     	bl	0xceac <syna_dev_set_up_input_device+0x70>
		000000000000ceac:  R_AARCH64_CALL26	mutex_lock
    ceb0: f941da60     	ldr	x0, [x19, #0x3b0]
    ceb4: b4000060     	cbz	x0, 0xcec0 <syna_dev_set_up_input_device+0x84>
    ceb8: 94000000     	bl	0xceb8 <syna_dev_set_up_input_device+0x7c>
		000000000000ceb8:  R_AARCH64_CALL26	input_unregister_device
    cebc: f901da7f     	str	xzr, [x19, #0x3b0]
    cec0: f9400275     	ldr	x21, [x19]
    cec4: 94000000     	bl	0xcec4 <syna_dev_set_up_input_device+0x88>
		000000000000cec4:  R_AARCH64_CALL26	syna_request_managed_device
    cec8: b4000dc0     	cbz	x0, 0xd080 <syna_dev_set_up_input_device+0x244>
    cecc: 94000000     	bl	0xcecc <syna_dev_set_up_input_device+0x90>
		000000000000cecc:  R_AARCH64_CALL26	devm_input_allocate_device
    ced0: b4000e60     	cbz	x0, 0xd09c <syna_dev_set_up_input_device+0x260>
    ced4: 90000008     	adrp	x8, 0xc000 <syna_dev_connect+0x174>
		000000000000ced4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9709
    ced8: 91000108     	add	x8, x8, #0x0
		000000000000ced8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9709
    cedc: 90000009     	adrp	x9, 0xc000 <syna_dev_connect+0x174>
		000000000000cedc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5190
    cee0: 91000129     	add	x9, x9, #0x0
		000000000000cee0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5190
    cee4: aa0003f4     	mov	x20, x0
    cee8: a9002408     	stp	x8, x9, [x0]
    ceec: 320083e8     	mov	w8, #0x10001            // =65537
    cef0: b9001c08     	str	w8, [x0, #0x1c]
    cef4: f9400668     	ldr	x8, [x19, #0x8]
    cef8: f9403908     	ldr	x8, [x8, #0x70]
    cefc: f9016413     	str	x19, [x0, #0x2c8]
    cf00: f9014808     	str	x8, [x0, #0x290]
    cf04: 14000092     	b	0xd14c <syna_dev_set_up_input_device+0x310>
    cf08: 9100a288     	add	x8, x20, #0x28
    cf0c: 52800029     	mov	w9, #0x1                // =1
    cf10: f829311f     	stset	x9, [x8]
    cf14: 14000095     	b	0xd168 <syna_dev_set_up_input_device+0x32c>
    cf18: 9100a288     	add	x8, x20, #0x28
    cf1c: 52800049     	mov	w9, #0x2                // =2
    cf20: f829311f     	stset	x9, [x8]
    cf24: 14000098     	b	0xd184 <syna_dev_set_up_input_device+0x348>
    cf28: 9100a288     	add	x8, x20, #0x28
    cf2c: 52800109     	mov	w9, #0x8                // =8
    cf30: f829311f     	stset	x9, [x8]
    cf34: 1400009b     	b	0xd1a0 <syna_dev_set_up_input_device+0x364>
    cf38: 91016288     	add	x8, x20, #0x58
    cf3c: 52808009     	mov	w9, #0x400              // =1024
    cf40: f829311f     	stset	x9, [x8]
    cf44: 1400009e     	b	0xd1bc <syna_dev_set_up_input_device+0x380>
    cf48: 91016288     	add	x8, x20, #0x58
    cf4c: 52800409     	mov	w9, #0x20               // =32
    cf50: f829311f     	stset	x9, [x8]
    cf54: 140000a1     	b	0xd1d8 <syna_dev_set_up_input_device+0x39c>
    cf58: 91008288     	add	x8, x20, #0x20
    cf5c: 52800049     	mov	w9, #0x2                // =2
    cf60: f829311f     	stset	x9, [x8]
    cf64: 140000a4     	b	0xd1f4 <syna_dev_set_up_input_device+0x3b8>
    cf68: 91010288     	add	x8, x20, #0x40
    cf6c: 52900009     	mov	w9, #0x8000             // =32768
    cf70: f829311f     	stset	x9, [x8]
    cf74: aa1403e0     	mov	x0, x20
    cf78: 52800021     	mov	w1, #0x1                // =1
    cf7c: 528011e2     	mov	w2, #0x8f               // =143
    cf80: 94000000     	bl	0xcf80 <syna_dev_set_up_input_device+0x144>
		000000000000cf80:  R_AARCH64_CALL26	input_set_capability
    cf84: b94012a3     	ldr	w3, [x21, #0x10]
    cf88: aa1403e0     	mov	x0, x20
    cf8c: 528006a1     	mov	w1, #0x35               // =53
    cf90: 2a1f03e2     	mov	w2, wzr
    cf94: 2a1f03e4     	mov	w4, wzr
    cf98: 2a1f03e5     	mov	w5, wzr
    cf9c: 94000000     	bl	0xcf9c <syna_dev_set_up_input_device+0x160>
		000000000000cf9c:  R_AARCH64_CALL26	input_set_abs_params
    cfa0: b94016a3     	ldr	w3, [x21, #0x14]
    cfa4: aa1403e0     	mov	x0, x20
    cfa8: 528006c1     	mov	w1, #0x36               // =54
    cfac: 2a1f03e2     	mov	w2, wzr
    cfb0: 2a1f03e4     	mov	w4, wzr
    cfb4: 2a1f03e5     	mov	w5, wzr
    cfb8: 94000000     	bl	0xcfb8 <syna_dev_set_up_input_device+0x17c>
		000000000000cfb8:  R_AARCH64_CALL26	input_set_abs_params
    cfbc: b9401aa1     	ldr	w1, [x21, #0x18]
    cfc0: aa1403e0     	mov	x0, x20
    cfc4: 52800042     	mov	w2, #0x2                // =2
    cfc8: 94000000     	bl	0xcfc8 <syna_dev_set_up_input_device+0x18c>
		000000000000cfc8:  R_AARCH64_CALL26	input_mt_init_slots
    cfcc: aa1403e0     	mov	x0, x20
    cfd0: 52800601     	mov	w1, #0x30               // =48
    cfd4: 2a1f03e2     	mov	w2, wzr
    cfd8: 52801fe3     	mov	w3, #0xff               // =255
    cfdc: 2a1f03e4     	mov	w4, wzr
    cfe0: 2a1f03e5     	mov	w5, wzr
    cfe4: 94000000     	bl	0xcfe4 <syna_dev_set_up_input_device+0x1a8>
		000000000000cfe4:  R_AARCH64_CALL26	input_set_abs_params
    cfe8: aa1403e0     	mov	x0, x20
    cfec: 52800621     	mov	w1, #0x31               // =49
    cff0: 2a1f03e2     	mov	w2, wzr
    cff4: 52801fe3     	mov	w3, #0xff               // =255
    cff8: 2a1f03e4     	mov	w4, wzr
    cffc: 2a1f03e5     	mov	w5, wzr
    d000: 94000000     	bl	0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d000:  R_AARCH64_CALL26	input_set_abs_params
    d004: b94012a8     	ldr	w8, [x21, #0x10]
    d008: aa1403e0     	mov	x0, x20
    d00c: b903ba68     	str	w8, [x19, #0x3b8]
    d010: b94016a8     	ldr	w8, [x21, #0x14]
    d014: b903be68     	str	w8, [x19, #0x3bc]
    d018: b9401aa8     	ldr	w8, [x21, #0x18]
    d01c: b903c268     	str	w8, [x19, #0x3c0]
    d020: 94000000     	bl	0xd020 <syna_dev_set_up_input_device+0x1e4>
		000000000000d020:  R_AARCH64_CALL26	input_register_device
    d024: 37f804a0     	tbnz	w0, #0x1f, 0xd0b8 <syna_dev_set_up_input_device+0x27c>
    d028: f9400260     	ldr	x0, [x19]
    d02c: 90000002     	adrp	x2, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d02c:  R_AARCH64_ADR_PREL_PG_HI21	.text+0xd3ec
    d030: 91000042     	add	x2, x2, #0x0
		000000000000d030:  R_AARCH64_ADD_ABS_LO12_NC	.text+0xd3ec
    d034: 52800221     	mov	w1, #0x11               // =17
    d038: aa1303e3     	mov	x3, x19
    d03c: f901da74     	str	x20, [x19, #0x3b0]
    d040: 94000000     	bl	0xd040 <syna_dev_set_up_input_device+0x204>
		000000000000d040:  R_AARCH64_CALL26	syna_tcm_set_report_dispatcher
    d044: 37f805c0     	tbnz	w0, #0x1f, 0xd0fc <syna_dev_set_up_input_device+0x2c0>
    d048: 9109e260     	add	x0, x19, #0x278
    d04c: 94000000     	bl	0xd04c <syna_dev_set_up_input_device+0x210>
		000000000000d04c:  R_AARCH64_CALL26	mutex_unlock
    d050: 2a1f03e0     	mov	w0, wzr
    d054: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    d058: f9400bf5     	ldr	x21, [sp, #0x10]
    d05c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    d060: d50323bf     	autiasp
    d064: d65f03c0     	ret
    d068: 90000000     	adrp	x0, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d068:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18d7
    d06c: 91000000     	add	x0, x0, #0x0
		000000000000d06c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18d7
    d070: 90000001     	adrp	x1, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d070:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa62e
    d074: 91000021     	add	x1, x1, #0x0
		000000000000d074:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa62e
    d078: 94000000     	bl	0xd078 <syna_dev_set_up_input_device+0x23c>
		000000000000d078:  R_AARCH64_CALL26	_printk
    d07c: 17fffff5     	b	0xd050 <syna_dev_set_up_input_device+0x214>
    d080: 90000000     	adrp	x0, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d080:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
    d084: 91000000     	add	x0, x0, #0x0
		000000000000d084:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
    d088: 90000001     	adrp	x1, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d088:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5655
    d08c: 91000021     	add	x1, x1, #0x0
		000000000000d08c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5655
    d090: 94000000     	bl	0xd090 <syna_dev_set_up_input_device+0x254>
		000000000000d090:  R_AARCH64_CALL26	_printk
    d094: 128002b5     	mov	w21, #-0x16             // =-22
    d098: 14000010     	b	0xd0d8 <syna_dev_set_up_input_device+0x29c>
    d09c: 90000000     	adrp	x0, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d09c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x61e3
    d0a0: 91000000     	add	x0, x0, #0x0
		000000000000d0a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x61e3
    d0a4: 90000001     	adrp	x1, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d0a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5655
    d0a8: 91000021     	add	x1, x1, #0x0
		000000000000d0a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5655
    d0ac: 94000000     	bl	0xd0ac <syna_dev_set_up_input_device+0x270>
		000000000000d0ac:  R_AARCH64_CALL26	_printk
    d0b0: 12800255     	mov	w21, #-0x13             // =-19
    d0b4: 14000009     	b	0xd0d8 <syna_dev_set_up_input_device+0x29c>
    d0b8: 2a0003f5     	mov	w21, w0
    d0bc: 90000000     	adrp	x0, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d0bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6210
    d0c0: 91000000     	add	x0, x0, #0x0
		000000000000d0c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6210
    d0c4: 90000001     	adrp	x1, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d0c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5655
    d0c8: 91000021     	add	x1, x1, #0x0
		000000000000d0c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5655
    d0cc: 94000000     	bl	0xd0cc <syna_dev_set_up_input_device+0x290>
		000000000000d0cc:  R_AARCH64_CALL26	_printk
    d0d0: aa1403e0     	mov	x0, x20
    d0d4: 94000000     	bl	0xd0d4 <syna_dev_set_up_input_device+0x298>
		000000000000d0d4:  R_AARCH64_CALL26	input_free_device
    d0d8: 90000000     	adrp	x0, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d0d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb374
    d0dc: 91000000     	add	x0, x0, #0x0
		000000000000d0dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb374
    d0e0: 90000001     	adrp	x1, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d0e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa62e
    d0e4: 91000021     	add	x1, x1, #0x0
		000000000000d0e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa62e
    d0e8: 94000000     	bl	0xd0e8 <syna_dev_set_up_input_device+0x2ac>
		000000000000d0e8:  R_AARCH64_CALL26	_printk
    d0ec: 9109e260     	add	x0, x19, #0x278
    d0f0: 94000000     	bl	0xd0f0 <syna_dev_set_up_input_device+0x2b4>
		000000000000d0f0:  R_AARCH64_CALL26	mutex_unlock
    d0f4: 2a1503e0     	mov	w0, w21
    d0f8: 17ffffd7     	b	0xd054 <syna_dev_set_up_input_device+0x218>
    d0fc: 90000000     	adrp	x0, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d0fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4afa
    d100: 91000000     	add	x0, x0, #0x0
		000000000000d100:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4afa
    d104: 90000001     	adrp	x1, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d104:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa62e
    d108: 91000021     	add	x1, x1, #0x0
		000000000000d108:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa62e
    d10c: 94000000     	bl	0xd10c <syna_dev_set_up_input_device+0x2d0>
		000000000000d10c:  R_AARCH64_CALL26	_printk
    d110: 17ffffce     	b	0xd048 <syna_dev_set_up_input_device+0x20c>
    d114: 71002c5f     	cmp	w2, #0xb
    d118: 540000e3     	b.lo	0xd134 <syna_dev_set_up_input_device+0x2f8>
    d11c: 90000000     	adrp	x0, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d11c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad6c
    d120: 91000000     	add	x0, x0, #0x0
		000000000000d120:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad6c
    d124: 90000001     	adrp	x1, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d124:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3fce
    d128: 91000021     	add	x1, x1, #0x0
		000000000000d128:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3fce
    d12c: 94000000     	bl	0xd12c <syna_dev_set_up_input_device+0x2f0>
		000000000000d12c:  R_AARCH64_CALL26	_printk
    d130: 17ffffc8     	b	0xd050 <syna_dev_set_up_input_device+0x214>
    d134: 90000000     	adrp	x0, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d134:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaaa
    d138: 91000000     	add	x0, x0, #0x0
		000000000000d138:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaaa
    d13c: 90000001     	adrp	x1, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d13c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3fce
    d140: 91000021     	add	x1, x1, #0x0
		000000000000d140:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3fce
    d144: 94000000     	bl	0xd144 <syna_dev_set_up_input_device+0x308>
		000000000000d144:  R_AARCH64_CALL26	_printk
    d148: 17ffffc2     	b	0xd050 <syna_dev_set_up_input_device+0x214>
    d14c: 9100a288     	add	x8, x20, #0x28
    d150: f9800111     	prfm	pstl1strm, [x8]
    d154: c85f7d09     	ldxr	x9, [x8]
    d158: b2400129     	orr	x9, x9, #0x1
    d15c: c80a7d09     	stxr	w10, x9, [x8]
    d160: 35ffffaa     	cbnz	w10, 0xd154 <syna_dev_set_up_input_device+0x318>
    d164: 17ffff6c     	b	0xcf14 <syna_dev_set_up_input_device+0xd8>
    d168: 9100a288     	add	x8, x20, #0x28
    d16c: f9800111     	prfm	pstl1strm, [x8]
    d170: c85f7d09     	ldxr	x9, [x8]
    d174: b27f0129     	orr	x9, x9, #0x2
    d178: c80a7d09     	stxr	w10, x9, [x8]
    d17c: 35ffffaa     	cbnz	w10, 0xd170 <syna_dev_set_up_input_device+0x334>
    d180: 17ffff69     	b	0xcf24 <syna_dev_set_up_input_device+0xe8>
    d184: 9100a288     	add	x8, x20, #0x28
    d188: f9800111     	prfm	pstl1strm, [x8]
    d18c: c85f7d09     	ldxr	x9, [x8]
    d190: b27d0129     	orr	x9, x9, #0x8
    d194: c80a7d09     	stxr	w10, x9, [x8]
    d198: 35ffffaa     	cbnz	w10, 0xd18c <syna_dev_set_up_input_device+0x350>
    d19c: 17ffff66     	b	0xcf34 <syna_dev_set_up_input_device+0xf8>
    d1a0: 91016288     	add	x8, x20, #0x58
    d1a4: f9800111     	prfm	pstl1strm, [x8]
    d1a8: c85f7d09     	ldxr	x9, [x8]
    d1ac: b2760129     	orr	x9, x9, #0x400
    d1b0: c80a7d09     	stxr	w10, x9, [x8]
    d1b4: 35ffffaa     	cbnz	w10, 0xd1a8 <syna_dev_set_up_input_device+0x36c>
    d1b8: 17ffff63     	b	0xcf44 <syna_dev_set_up_input_device+0x108>
    d1bc: 91016288     	add	x8, x20, #0x58
    d1c0: f9800111     	prfm	pstl1strm, [x8]
    d1c4: c85f7d09     	ldxr	x9, [x8]
    d1c8: b27b0129     	orr	x9, x9, #0x20
    d1cc: c80a7d09     	stxr	w10, x9, [x8]
    d1d0: 35ffffaa     	cbnz	w10, 0xd1c4 <syna_dev_set_up_input_device+0x388>
    d1d4: 17ffff60     	b	0xcf54 <syna_dev_set_up_input_device+0x118>
    d1d8: 91008288     	add	x8, x20, #0x20
    d1dc: f9800111     	prfm	pstl1strm, [x8]
    d1e0: c85f7d09     	ldxr	x9, [x8]
    d1e4: b27f0129     	orr	x9, x9, #0x2
    d1e8: c80a7d09     	stxr	w10, x9, [x8]
    d1ec: 35ffffaa     	cbnz	w10, 0xd1e0 <syna_dev_set_up_input_device+0x3a4>
    d1f0: 17ffff5d     	b	0xcf64 <syna_dev_set_up_input_device+0x128>
    d1f4: 91010288     	add	x8, x20, #0x40
    d1f8: f9800111     	prfm	pstl1strm, [x8]
    d1fc: c85f7d09     	ldxr	x9, [x8]
    d200: b2710129     	orr	x9, x9, #0x8000
    d204: c80a7d09     	stxr	w10, x9, [x8]
    d208: 35ffffaa     	cbnz	w10, 0xd1fc <syna_dev_set_up_input_device+0x3c0>
    d20c: 17ffff5a     	b	0xcf74 <syna_dev_set_up_input_device+0x138>
