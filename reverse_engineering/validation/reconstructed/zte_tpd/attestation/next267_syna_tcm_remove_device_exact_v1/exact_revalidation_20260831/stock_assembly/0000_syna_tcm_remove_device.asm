
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001ae48 <syna_tcm_remove_device>:
   1ae48: d503233f     	paciasp
   1ae4c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   1ae50: a9014ff4     	stp	x20, x19, [sp, #0x10]
   1ae54: 910003fd     	mov	x29, sp
   1ae58: b5000080     	cbnz	x0, 0x1ae68 <syna_tcm_remove_device+0x20>
   1ae5c: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001ae5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2055
   1ae60: 91000000     	add	x0, x0, #0x0
		000000000001ae60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2055
   1ae64: 1400008e     	b	0x1b09c <syna_tcm_remove_device+0x254>
   1ae68: 394c4002     	ldrb	w2, [x0, #0x310]
   1ae6c: aa0003f3     	mov	x19, x0
   1ae70: 340000c2     	cbz	w2, 0x1ae88 <syna_tcm_remove_device+0x40>
   1ae74: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001ae74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3313
   1ae78: 91000000     	add	x0, x0, #0x0
		000000000001ae78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3313
   1ae7c: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001ae7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a45
   1ae80: 91000021     	add	x1, x1, #0x0
		000000000001ae80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a45
   1ae84: 94000000     	bl	0x1ae84 <syna_tcm_remove_device+0x3c>
		000000000001ae84:  R_AARCH64_CALL26	_printk
   1ae88: f9416a74     	ldr	x20, [x19, #0x2d0]
   1ae8c: 94000000     	bl	0x1ae8c <syna_tcm_remove_device+0x44>
		000000000001ae8c:  R_AARCH64_CALL26	syna_request_managed_device
   1ae90: b50000e0     	cbnz	x0, 0x1aeac <syna_tcm_remove_device+0x64>
   1ae94: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001ae94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   1ae98: 91000000     	add	x0, x0, #0x0
		000000000001ae98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   1ae9c: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001ae9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   1aea0: 91000021     	add	x1, x1, #0x0
		000000000001aea0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   1aea4: 94000000     	bl	0x1aea4 <syna_tcm_remove_device+0x5c>
		000000000001aea4:  R_AARCH64_CALL26	_printk
   1aea8: 14000004     	b	0x1aeb8 <syna_tcm_remove_device+0x70>
   1aeac: b4000074     	cbz	x20, 0x1aeb8 <syna_tcm_remove_device+0x70>
   1aeb0: aa1403e1     	mov	x1, x20
   1aeb4: 94000000     	bl	0x1aeb4 <syna_tcm_remove_device+0x6c>
		000000000001aeb4:  R_AARCH64_CALL26	devm_kfree
   1aeb8: 394b2262     	ldrb	w2, [x19, #0x2c8]
   1aebc: f9016e7f     	str	xzr, [x19, #0x2d8]
   1aec0: 390c427f     	strb	wzr, [x19, #0x310]
   1aec4: 340000c2     	cbz	w2, 0x1aedc <syna_tcm_remove_device+0x94>
   1aec8: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001aec8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3313
   1aecc: 91000000     	add	x0, x0, #0x0
		000000000001aecc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3313
   1aed0: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001aed0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a45
   1aed4: 91000021     	add	x1, x1, #0x0
		000000000001aed4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a45
   1aed8: 94000000     	bl	0x1aed8 <syna_tcm_remove_device+0x90>
		000000000001aed8:  R_AARCH64_CALL26	_printk
   1aedc: f9414674     	ldr	x20, [x19, #0x288]
   1aee0: 94000000     	bl	0x1aee0 <syna_tcm_remove_device+0x98>
		000000000001aee0:  R_AARCH64_CALL26	syna_request_managed_device
   1aee4: b50000e0     	cbnz	x0, 0x1af00 <syna_tcm_remove_device+0xb8>
   1aee8: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001aee8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   1aeec: 91000000     	add	x0, x0, #0x0
		000000000001aeec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   1aef0: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001aef0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   1aef4: 91000021     	add	x1, x1, #0x0
		000000000001aef4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   1aef8: 94000000     	bl	0x1aef8 <syna_tcm_remove_device+0xb0>
		000000000001aef8:  R_AARCH64_CALL26	_printk
   1aefc: 14000004     	b	0x1af0c <syna_tcm_remove_device+0xc4>
   1af00: b4000074     	cbz	x20, 0x1af0c <syna_tcm_remove_device+0xc4>
   1af04: aa1403e1     	mov	x1, x20
   1af08: 94000000     	bl	0x1af08 <syna_tcm_remove_device+0xc0>
		000000000001af08:  R_AARCH64_CALL26	devm_kfree
   1af0c: 394a0262     	ldrb	w2, [x19, #0x280]
   1af10: f9014a7f     	str	xzr, [x19, #0x290]
   1af14: 390b227f     	strb	wzr, [x19, #0x2c8]
   1af18: 340000c2     	cbz	w2, 0x1af30 <syna_tcm_remove_device+0xe8>
   1af1c: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001af1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3313
   1af20: 91000000     	add	x0, x0, #0x0
		000000000001af20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3313
   1af24: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001af24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a45
   1af28: 91000021     	add	x1, x1, #0x0
		000000000001af28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a45
   1af2c: 94000000     	bl	0x1af2c <syna_tcm_remove_device+0xe4>
		000000000001af2c:  R_AARCH64_CALL26	_printk
   1af30: f9412274     	ldr	x20, [x19, #0x240]
   1af34: 94000000     	bl	0x1af34 <syna_tcm_remove_device+0xec>
		000000000001af34:  R_AARCH64_CALL26	syna_request_managed_device
   1af38: b50000e0     	cbnz	x0, 0x1af54 <syna_tcm_remove_device+0x10c>
   1af3c: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001af3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   1af40: 91000000     	add	x0, x0, #0x0
		000000000001af40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   1af44: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001af44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   1af48: 91000021     	add	x1, x1, #0x0
		000000000001af48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   1af4c: 94000000     	bl	0x1af4c <syna_tcm_remove_device+0x104>
		000000000001af4c:  R_AARCH64_CALL26	_printk
   1af50: 14000004     	b	0x1af60 <syna_tcm_remove_device+0x118>
   1af54: b4000074     	cbz	x20, 0x1af60 <syna_tcm_remove_device+0x118>
   1af58: aa1403e1     	mov	x1, x20
   1af5c: 94000000     	bl	0x1af5c <syna_tcm_remove_device+0x114>
		000000000001af5c:  R_AARCH64_CALL26	devm_kfree
   1af60: 39474262     	ldrb	w2, [x19, #0x1d0]
   1af64: f901267f     	str	xzr, [x19, #0x248]
   1af68: 390a027f     	strb	wzr, [x19, #0x280]
   1af6c: 340000c2     	cbz	w2, 0x1af84 <syna_tcm_remove_device+0x13c>
   1af70: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001af70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3313
   1af74: 91000000     	add	x0, x0, #0x0
		000000000001af74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3313
   1af78: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001af78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a45
   1af7c: 91000021     	add	x1, x1, #0x0
		000000000001af7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a45
   1af80: 94000000     	bl	0x1af80 <syna_tcm_remove_device+0x138>
		000000000001af80:  R_AARCH64_CALL26	_printk
   1af84: f940ca74     	ldr	x20, [x19, #0x190]
   1af88: 94000000     	bl	0x1af88 <syna_tcm_remove_device+0x140>
		000000000001af88:  R_AARCH64_CALL26	syna_request_managed_device
   1af8c: b50000e0     	cbnz	x0, 0x1afa8 <syna_tcm_remove_device+0x160>
   1af90: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001af90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   1af94: 91000000     	add	x0, x0, #0x0
		000000000001af94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   1af98: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001af98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   1af9c: 91000021     	add	x1, x1, #0x0
		000000000001af9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   1afa0: 94000000     	bl	0x1afa0 <syna_tcm_remove_device+0x158>
		000000000001afa0:  R_AARCH64_CALL26	_printk
   1afa4: 14000004     	b	0x1afb4 <syna_tcm_remove_device+0x16c>
   1afa8: b4000074     	cbz	x20, 0x1afb4 <syna_tcm_remove_device+0x16c>
   1afac: aa1403e1     	mov	x1, x20
   1afb0: 94000000     	bl	0x1afb0 <syna_tcm_remove_device+0x168>
		000000000001afb0:  R_AARCH64_CALL26	devm_kfree
   1afb4: 39450262     	ldrb	w2, [x19, #0x140]
   1afb8: f900ce7f     	str	xzr, [x19, #0x198]
   1afbc: 3907427f     	strb	wzr, [x19, #0x1d0]
   1afc0: 340000c2     	cbz	w2, 0x1afd8 <syna_tcm_remove_device+0x190>
   1afc4: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001afc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3313
   1afc8: 91000000     	add	x0, x0, #0x0
		000000000001afc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3313
   1afcc: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001afcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a45
   1afd0: 91000021     	add	x1, x1, #0x0
		000000000001afd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a45
   1afd4: 94000000     	bl	0x1afd4 <syna_tcm_remove_device+0x18c>
		000000000001afd4:  R_AARCH64_CALL26	_printk
   1afd8: f9408274     	ldr	x20, [x19, #0x100]
   1afdc: 94000000     	bl	0x1afdc <syna_tcm_remove_device+0x194>
		000000000001afdc:  R_AARCH64_CALL26	syna_request_managed_device
   1afe0: b50000e0     	cbnz	x0, 0x1affc <syna_tcm_remove_device+0x1b4>
   1afe4: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001afe4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   1afe8: 91000000     	add	x0, x0, #0x0
		000000000001afe8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   1afec: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001afec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   1aff0: 91000021     	add	x1, x1, #0x0
		000000000001aff0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   1aff4: 94000000     	bl	0x1aff4 <syna_tcm_remove_device+0x1ac>
		000000000001aff4:  R_AARCH64_CALL26	_printk
   1aff8: 14000004     	b	0x1b008 <syna_tcm_remove_device+0x1c0>
   1affc: b4000074     	cbz	x20, 0x1b008 <syna_tcm_remove_device+0x1c0>
   1b000: aa1403e1     	mov	x1, x20
   1b004: 94000000     	bl	0x1b004 <syna_tcm_remove_device+0x1bc>
		000000000001b004:  R_AARCH64_CALL26	devm_kfree
   1b008: 39462262     	ldrb	w2, [x19, #0x188]
   1b00c: f900867f     	str	xzr, [x19, #0x108]
   1b010: 3905027f     	strb	wzr, [x19, #0x140]
   1b014: 340000c2     	cbz	w2, 0x1b02c <syna_tcm_remove_device+0x1e4>
   1b018: 90000000     	adrp	x0, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b018:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3313
   1b01c: 91000000     	add	x0, x0, #0x0
		000000000001b01c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3313
   1b020: 90000001     	adrp	x1, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b020:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a45
   1b024: 91000021     	add	x1, x1, #0x0
		000000000001b024:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a45
   1b028: 94000000     	bl	0x1b028 <syna_tcm_remove_device+0x1e0>
		000000000001b028:  R_AARCH64_CALL26	_printk
   1b02c: f940a674     	ldr	x20, [x19, #0x148]
   1b030: 94000000     	bl	0x1b030 <syna_tcm_remove_device+0x1e8>
		000000000001b030:  R_AARCH64_CALL26	syna_request_managed_device
   1b034: b50000e0     	cbnz	x0, 0x1b050 <syna_tcm_remove_device+0x208>
   1b038: 90000000     	adrp	x0, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b038:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   1b03c: 91000000     	add	x0, x0, #0x0
		000000000001b03c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   1b040: 90000001     	adrp	x1, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b040:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   1b044: 91000021     	add	x1, x1, #0x0
		000000000001b044:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   1b048: 94000000     	bl	0x1b048 <syna_tcm_remove_device+0x200>
		000000000001b048:  R_AARCH64_CALL26	_printk
   1b04c: 14000004     	b	0x1b05c <syna_tcm_remove_device+0x214>
   1b050: b4000074     	cbz	x20, 0x1b05c <syna_tcm_remove_device+0x214>
   1b054: aa1403e1     	mov	x1, x20
   1b058: 94000000     	bl	0x1b058 <syna_tcm_remove_device+0x210>
		000000000001b058:  R_AARCH64_CALL26	devm_kfree
   1b05c: f900aa7f     	str	xzr, [x19, #0x150]
   1b060: 3906227f     	strb	wzr, [x19, #0x188]
   1b064: f900027f     	str	xzr, [x19]
   1b068: f900267f     	str	xzr, [x19, #0x48]
   1b06c: 94000000     	bl	0x1b06c <syna_tcm_remove_device+0x224>
		000000000001b06c:  R_AARCH64_CALL26	syna_request_managed_device
   1b070: b50000e0     	cbnz	x0, 0x1b08c <syna_tcm_remove_device+0x244>
   1b074: 90000000     	adrp	x0, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b074:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   1b078: 91000000     	add	x0, x0, #0x0
		000000000001b078:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   1b07c: 90000001     	adrp	x1, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b07c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   1b080: 91000021     	add	x1, x1, #0x0
		000000000001b080:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   1b084: 94000000     	bl	0x1b084 <syna_tcm_remove_device+0x23c>
		000000000001b084:  R_AARCH64_CALL26	_printk
   1b088: 14000003     	b	0x1b094 <syna_tcm_remove_device+0x24c>
   1b08c: aa1303e1     	mov	x1, x19
   1b090: 94000000     	bl	0x1b090 <syna_tcm_remove_device+0x248>
		000000000001b090:  R_AARCH64_CALL26	devm_kfree
   1b094: 90000000     	adrp	x0, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b094:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9a97
   1b098: 91000000     	add	x0, x0, #0x0
		000000000001b098:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9a97
   1b09c: 90000001     	adrp	x1, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001b09c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8843
   1b0a0: 91000021     	add	x1, x1, #0x0
		000000000001b0a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8843
   1b0a4: 94000000     	bl	0x1b0a4 <syna_tcm_remove_device+0x25c>
		000000000001b0a4:  R_AARCH64_CALL26	_printk
   1b0a8: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   1b0ac: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   1b0b0: d50323bf     	autiasp
   1b0b4: d65f03c0     	ret
