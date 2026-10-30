
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000008fac <aw9620x_mode_operation_set>:
    8fac: d503233f     	paciasp
    8fb0: d10143ff     	sub	sp, sp, #0x50
    8fb4: a9027bfd     	stp	x29, x30, [sp, #0x20]
    8fb8: a90357f6     	stp	x22, x21, [sp, #0x30]
    8fbc: a9044ff4     	stp	x20, x19, [sp, #0x40]
    8fc0: 910083fd     	add	x29, sp, #0x20
    8fc4: d5384109     	mrs	x9, SP_EL0
    8fc8: aa0203e8     	mov	x8, x2
    8fcc: d10033a2     	sub	x2, x29, #0xc
    8fd0: f9438929     	ldr	x9, [x9, #0x710]
    8fd4: 2a1f03e1     	mov	w1, wzr
    8fd8: aa0303f3     	mov	x19, x3
    8fdc: f81f83a9     	stur	x9, [x29, #-0x8]
    8fe0: f9404c16     	ldr	x22, [x0, #0x98]
    8fe4: aa0803e0     	mov	x0, x8
    8fe8: b81f43bf     	stur	wzr, [x29, #-0xc]
    8fec: b90013ff     	str	wzr, [sp, #0x10]
    8ff0: 94000000     	bl	0x8ff0 <aw9620x_mode_operation_set+0x44>
		0000000000008ff0:  R_AARCH64_CALL26	kstrtouint
    8ff4: 340001a0     	cbz	w0, 0x9028 <aw9620x_mode_operation_set+0x7c>
    8ff8: d5384108     	mrs	x8, SP_EL0
    8ffc: f9438908     	ldr	x8, [x8, #0x710]
    9000: f85f83a9     	ldur	x9, [x29, #-0x8]
    9004: eb09011f     	cmp	x8, x9
    9008: 540016a1     	b.ne	0x92dc <aw9620x_mode_operation_set+0x330>
    900c: aa1303e0     	mov	x0, x19
    9010: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    9014: a94357f6     	ldp	x22, x21, [sp, #0x30]
    9018: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    901c: 910143ff     	add	sp, sp, #0x50
    9020: d50323bf     	autiasp
    9024: d65f03c0     	ret
    9028: b85f43a8     	ldur	w8, [x29, #-0xc]
    902c: d100e2d4     	sub	x20, x22, #0x38
    9030: 71000d1f     	cmp	w8, #0x3
    9034: 54000800     	b.eq	0x9134 <aw9620x_mode_operation_set+0x188>
    9038: 7100091f     	cmp	w8, #0x2
    903c: 540004a0     	b.eq	0x90d0 <aw9620x_mode_operation_set+0x124>
    9040: 7100051f     	cmp	w8, #0x1
    9044: 540007e1     	b.ne	0x9140 <aw9620x_mode_operation_set+0x194>
    9048: b85d82c8     	ldur	w8, [x22, #-0x28]
    904c: 7100051f     	cmp	w8, #0x1
    9050: 54000780     	b.eq	0x9140 <aw9620x_mode_operation_set+0x194>
    9054: 71000d1f     	cmp	w8, #0x3
    9058: 540000a1     	b.ne	0x906c <aw9620x_mode_operation_set+0xc0>
    905c: aa1403e0     	mov	x0, x20
    9060: 529fe201     	mov	w1, #0xff10             // =65296
    9064: 52800022     	mov	w2, #0x1                // =1
    9068: 97ffe1ea     	bl	0x1810 <aw9620x_i2c_write>
    906c: b85d02c8     	ldur	w8, [x22, #-0x30]
    9070: 7100091f     	cmp	w8, #0x2
    9074: 54001362     	b.hs	0x92e0 <aw9620x_mode_operation_set+0x334>
    9078: 90000009     	adrp	x9, 0x9000 <aw9620x_mode_operation_set+0x54>
		0000000000009078:  R_AARCH64_ADR_PREL_PG_HI21	.bss
    907c: 91000129     	add	x9, x9, #0x0
		000000000000907c:  R_AARCH64_ADD_ABS_LO12_NC	.bss
    9080: 3868692a     	ldrb	w10, [x9, x8]
    9084: 7100055f     	cmp	w10, #0x1
    9088: 54000081     	b.ne	0x9098 <aw9620x_mode_operation_set+0xec>
    908c: aa1403e0     	mov	x0, x20
    9090: 3828693f     	strb	wzr, [x9, x8]
    9094: 97fff5d1     	bl	0x67d8 <aw9620x_load_def_reg_bin>
    9098: 910033e2     	add	x2, sp, #0xc
    909c: aa1403e0     	mov	x0, x20
    90a0: 52888201     	mov	w1, #0x4410             // =17424
    90a4: 97ffea97     	bl	0x3b00 <aw9620x_i2c_read>
    90a8: 36f80d20     	tbz	w0, #0x1f, 0x924c <aw9620x_mode_operation_set+0x2a0>
    90ac: f85f82c1     	ldur	x1, [x22, #-0x8]
    90b0: 90000000     	adrp	x0, 0x9000 <aw9620x_mode_operation_set+0x54>
		00000000000090b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    90b4: 91000000     	add	x0, x0, #0x0
		00000000000090b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    90b8: 90000002     	adrp	x2, 0x9000 <aw9620x_mode_operation_set+0x54>
		00000000000090b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1034
    90bc: 91000042     	add	x2, x2, #0x0
		00000000000090bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1034
    90c0: 90000003     	adrp	x3, 0x9000 <aw9620x_mode_operation_set+0x54>
		00000000000090c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32b2
    90c4: 91000063     	add	x3, x3, #0x0
		00000000000090c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32b2
    90c8: 5281b4a4     	mov	w4, #0xda5              // =3493
    90cc: 14000017     	b	0x9128 <aw9620x_mode_operation_set+0x17c>
    90d0: b85d82c8     	ldur	w8, [x22, #-0x28]
    90d4: 7100091f     	cmp	w8, #0x2
    90d8: 54000340     	b.eq	0x9140 <aw9620x_mode_operation_set+0x194>
    90dc: 71000d1f     	cmp	w8, #0x3
    90e0: 540000a1     	b.ne	0x90f4 <aw9620x_mode_operation_set+0x148>
    90e4: aa1403e0     	mov	x0, x20
    90e8: 529fe201     	mov	w1, #0xff10             // =65296
    90ec: 52800022     	mov	w2, #0x1                // =1
    90f0: 97ffe1c8     	bl	0x1810 <aw9620x_i2c_write>
    90f4: 910043e2     	add	x2, sp, #0x10
    90f8: aa1403e0     	mov	x0, x20
    90fc: 52834301     	mov	w1, #0x1a18             // =6680
    9100: 97ffea80     	bl	0x3b00 <aw9620x_i2c_read>
    9104: f85f82c1     	ldur	x1, [x22, #-0x8]
    9108: 36f80640     	tbz	w0, #0x1f, 0x91d0 <aw9620x_mode_operation_set+0x224>
    910c: 90000000     	adrp	x0, 0x9000 <aw9620x_mode_operation_set+0x54>
		000000000000910c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    9110: 91000000     	add	x0, x0, #0x0
		0000000000009110:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    9114: 90000002     	adrp	x2, 0x9000 <aw9620x_mode_operation_set+0x54>
		0000000000009114:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x252a
    9118: 91000042     	add	x2, x2, #0x0
		0000000000009118:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x252a
    911c: 90000003     	adrp	x3, 0x9000 <aw9620x_mode_operation_set+0x54>
		000000000000911c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32b2
    9120: 91000063     	add	x3, x3, #0x0
		0000000000009120:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32b2
    9124: 5281b6c4     	mov	w4, #0xdb6              // =3510
    9128: 94000000     	bl	0x9128 <aw9620x_mode_operation_set+0x17c>
		0000000000009128:  R_AARCH64_CALL26	_dev_printk
    912c: 92800013     	mov	x19, #-0x1              // =-1
    9130: 17ffffb2     	b	0x8ff8 <aw9620x_mode_operation_set+0x4c>
    9134: b85d82c8     	ldur	w8, [x22, #-0x28]
    9138: 71000d1f     	cmp	w8, #0x3
    913c: 54000401     	b.ne	0x91bc <aw9620x_mode_operation_set+0x210>
    9140: f85f82c1     	ldur	x1, [x22, #-0x8]
    9144: 90000000     	adrp	x0, 0x9000 <aw9620x_mode_operation_set+0x54>
		0000000000009144:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    9148: 91000000     	add	x0, x0, #0x0
		0000000000009148:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    914c: 90000002     	adrp	x2, 0x9000 <aw9620x_mode_operation_set+0x54>
		000000000000914c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f0a
    9150: 91000042     	add	x2, x2, #0x0
		0000000000009150:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f0a
    9154: 90000003     	adrp	x3, 0x9000 <aw9620x_mode_operation_set+0x54>
		0000000000009154:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32b2
    9158: 91000063     	add	x3, x3, #0x0
		0000000000009158:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32b2
    915c: 5281b9c4     	mov	w4, #0xdce              // =3534
    9160: 94000000     	bl	0x9160 <aw9620x_mode_operation_set+0x1b4>
		0000000000009160:  R_AARCH64_CALL26	_dev_printk
    9164: b85f43a5     	ldur	w5, [x29, #-0xc]
    9168: f85f82c1     	ldur	x1, [x22, #-0x8]
    916c: 90000014     	adrp	x20, 0x9000 <aw9620x_mode_operation_set+0x54>
		000000000000916c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    9170: 91000294     	add	x20, x20, #0x0
		0000000000009170:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    9174: 90000015     	adrp	x21, 0x9000 <aw9620x_mode_operation_set+0x54>
		0000000000009174:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32b2
    9178: 910002b5     	add	x21, x21, #0x0
		0000000000009178:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32b2
    917c: 90000002     	adrp	x2, 0x9000 <aw9620x_mode_operation_set+0x54>
		000000000000917c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x210d
    9180: 91000042     	add	x2, x2, #0x0
		0000000000009180:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x210d
    9184: aa1403e0     	mov	x0, x20
    9188: aa1503e3     	mov	x3, x21
    918c: 5281ba44     	mov	w4, #0xdd2              // =3538
    9190: b81d82c5     	stur	w5, [x22, #-0x28]
    9194: 94000000     	bl	0x9194 <aw9620x_mode_operation_set+0x1e8>
		0000000000009194:  R_AARCH64_CALL26	_dev_printk
    9198: f85f82c1     	ldur	x1, [x22, #-0x8]
    919c: b85d82c5     	ldur	w5, [x22, #-0x28]
    91a0: 90000002     	adrp	x2, 0x9000 <aw9620x_mode_operation_set+0x54>
		00000000000091a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc9a
    91a4: 91000042     	add	x2, x2, #0x0
		00000000000091a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc9a
    91a8: aa1403e0     	mov	x0, x20
    91ac: aa1503e3     	mov	x3, x21
    91b0: 5281ba64     	mov	w4, #0xdd3              // =3539
    91b4: 94000000     	bl	0x91b4 <aw9620x_mode_operation_set+0x208>
		00000000000091b4:  R_AARCH64_CALL26	_dev_printk
    91b8: 17ffff90     	b	0x8ff8 <aw9620x_mode_operation_set+0x4c>
    91bc: aa1403e0     	mov	x0, x20
    91c0: 52888101     	mov	w1, #0x4408             // =17416
    91c4: 52800062     	mov	w2, #0x3                // =3
    91c8: 97ffe192     	bl	0x1810 <aw9620x_i2c_write>
    91cc: 17ffffe6     	b	0x9164 <aw9620x_mode_operation_set+0x1b8>
    91d0: b94013f5     	ldr	w21, [sp, #0x10]
    91d4: 90000000     	adrp	x0, 0x9000 <aw9620x_mode_operation_set+0x54>
		00000000000091d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    91d8: 91000000     	add	x0, x0, #0x0
		00000000000091d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    91dc: 90000002     	adrp	x2, 0x9000 <aw9620x_mode_operation_set+0x54>
		00000000000091dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaa1
    91e0: 91000042     	add	x2, x2, #0x0
		00000000000091e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaa1
    91e4: 90000003     	adrp	x3, 0x9000 <aw9620x_mode_operation_set+0x54>
		00000000000091e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32b2
    91e8: 91000063     	add	x3, x3, #0x0
		00000000000091e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32b2
    91ec: 5281b724     	mov	w4, #0xdb9              // =3513
    91f0: 2a1503e5     	mov	w5, w21
    91f4: 94000000     	bl	0x91f4 <aw9620x_mode_operation_set+0x248>
		00000000000091f4:  R_AARCH64_CALL26	_dev_printk
    91f8: 72003ebf     	tst	w21, #0xffff
    91fc: 54000660     	b.eq	0x92c8 <aw9620x_mode_operation_set+0x31c>
    9200: b85d02c8     	ldur	w8, [x22, #-0x30]
    9204: 7100051f     	cmp	w8, #0x1
    9208: 54000360     	b.eq	0x9274 <aw9620x_mode_operation_set+0x2c8>
    920c: 35000528     	cbnz	w8, 0x92b0 <aw9620x_mode_operation_set+0x304>
    9210: f940e6c8     	ldr	x8, [x22, #0x1c8]
    9214: 52800021     	mov	w1, #0x1                // =1
    9218: 52800822     	mov	w2, #0x41               // =65
    921c: 2a1f03e3     	mov	w3, wzr
    9220: f9400500     	ldr	x0, [x8, #0x8]
    9224: 94000000     	bl	0x9224 <aw9620x_mode_operation_set+0x278>
		0000000000009224:  R_AARCH64_CALL26	input_event
    9228: f85f82c1     	ldur	x1, [x22, #-0x8]
    922c: 90000000     	adrp	x0, 0x9000 <aw9620x_mode_operation_set+0x54>
		000000000000922c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x272f
    9230: 91000000     	add	x0, x0, #0x0
		0000000000009230:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x272f
    9234: 90000002     	adrp	x2, 0x9000 <aw9620x_mode_operation_set+0x54>
		0000000000009234:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x264
    9238: 91000042     	add	x2, x2, #0x0
		0000000000009238:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x264
    923c: 90000003     	adrp	x3, 0x9000 <aw9620x_mode_operation_set+0x54>
		000000000000923c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32b2
    9240: 91000063     	add	x3, x3, #0x0
		0000000000009240:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32b2
    9244: 5281b7e4     	mov	w4, #0xdbf              // =3519
    9248: 14000019     	b	0x92ac <aw9620x_mode_operation_set+0x300>
    924c: aa1403e0     	mov	x0, x20
    9250: 52888101     	mov	w1, #0x4408             // =17416
    9254: 52800022     	mov	w2, #0x1                // =1
    9258: 97ffe16e     	bl	0x1810 <aw9620x_i2c_write>
    925c: aa1403e0     	mov	x0, x20
    9260: 52834001     	mov	w1, #0x1a00             // =6656
    9264: 129fe002     	mov	w2, #-0xff01            // =-65281
    9268: 529fe003     	mov	w3, #0xff00             // =65280
    926c: 97fff1b4     	bl	0x593c <aw9620x_i2c_write_bits>
    9270: 17ffffbd     	b	0x9164 <aw9620x_mode_operation_set+0x1b8>
    9274: f940e6c8     	ldr	x8, [x22, #0x1c8]
    9278: 52800021     	mov	w1, #0x1                // =1
    927c: 52800842     	mov	w2, #0x42               // =66
    9280: 2a1f03e3     	mov	w3, wzr
    9284: f9400500     	ldr	x0, [x8, #0x8]
    9288: 94000000     	bl	0x9288 <aw9620x_mode_operation_set+0x2dc>
		0000000000009288:  R_AARCH64_CALL26	input_event
    928c: f85f82c1     	ldur	x1, [x22, #-0x8]
    9290: 90000000     	adrp	x0, 0x9000 <aw9620x_mode_operation_set+0x54>
		0000000000009290:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x272f
    9294: 91000000     	add	x0, x0, #0x0
		0000000000009294:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x272f
    9298: 90000002     	adrp	x2, 0x9000 <aw9620x_mode_operation_set+0x54>
		0000000000009298:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x288
    929c: 91000042     	add	x2, x2, #0x0
		000000000000929c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x288
    92a0: 90000003     	adrp	x3, 0x9000 <aw9620x_mode_operation_set+0x54>
		00000000000092a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32b2
    92a4: 91000063     	add	x3, x3, #0x0
		00000000000092a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32b2
    92a8: 5281b864     	mov	w4, #0xdc3              // =3523
    92ac: 94000000     	bl	0x92ac <aw9620x_mode_operation_set+0x300>
		00000000000092ac:  R_AARCH64_CALL26	_dev_printk
    92b0: f940e6c8     	ldr	x8, [x22, #0x1c8]
    92b4: 2a1f03e1     	mov	w1, wzr
    92b8: 2a1f03e2     	mov	w2, wzr
    92bc: 2a1f03e3     	mov	w3, wzr
    92c0: f9400500     	ldr	x0, [x8, #0x8]
    92c4: 94000000     	bl	0x92c4 <aw9620x_mode_operation_set+0x318>
		00000000000092c4:  R_AARCH64_CALL26	input_event
    92c8: aa1403e0     	mov	x0, x20
    92cc: 52888101     	mov	w1, #0x4408             // =17416
    92d0: 52800042     	mov	w2, #0x2                // =2
    92d4: 97ffe14f     	bl	0x1810 <aw9620x_i2c_write>
    92d8: 17ffffa3     	b	0x9164 <aw9620x_mode_operation_set+0x1b8>
    92dc: 94000000     	bl	0x92dc <aw9620x_mode_operation_set+0x330>
		00000000000092dc:  R_AARCH64_CALL26	__stack_chk_fail
    92e0: d42aa240     	brk	#0x5512
