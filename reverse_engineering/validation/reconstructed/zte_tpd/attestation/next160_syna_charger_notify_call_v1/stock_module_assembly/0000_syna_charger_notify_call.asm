
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000002620c <syna_charger_notify_call>:
   2620c: b4000061     	cbz	x1, 0x26218 <syna_charger_notify_call+0xc>
   26210: 2a1f03e0     	mov	w0, wzr
   26214: d65f03c0     	ret
   26218: d503233f     	paciasp
   2621c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   26220: a9014ff4     	stp	x20, x19, [sp, #0x10]
   26224: 910003fd     	mov	x29, sp
   26228: f9400048     	ldr	x8, [x2]
   2622c: aa0003f3     	mov	x19, x0
   26230: 90000001     	adrp	x1, 0x26000 <tpd_set_frame_data+0x70>
		0000000000026230:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1108
   26234: 91000021     	add	x1, x1, #0x0
		0000000000026234:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1108
   26238: f9400114     	ldr	x20, [x8]
   2623c: aa1403e0     	mov	x0, x20
   26240: 94000000     	bl	0x26240 <syna_charger_notify_call+0x34>
		0000000000026240:  R_AARCH64_CALL26	strcmp
   26244: 34000120     	cbz	w0, 0x26268 <syna_charger_notify_call+0x5c>
   26248: 39400288     	ldrb	w8, [x20]
   2624c: 7101851f     	cmp	w8, #0x61
   26250: 54000161     	b.ne	0x2627c <syna_charger_notify_call+0x70>
   26254: 39400688     	ldrb	w8, [x20, #0x1]
   26258: 71018d1f     	cmp	w8, #0x63
   2625c: 54000101     	b.ne	0x2627c <syna_charger_notify_call+0x70>
   26260: 39400a88     	ldrb	w8, [x20, #0x2]
   26264: 350000c8     	cbnz	w8, 0x2627c <syna_charger_notify_call+0x70>
   26268: f85f8261     	ldur	x1, [x19, #-0x8]
   2626c: d101c262     	sub	x2, x19, #0x70
   26270: 52800400     	mov	w0, #0x20               // =32
   26274: 52800fa3     	mov	w3, #0x7d               // =125
   26278: 94000000     	bl	0x26278 <syna_charger_notify_call+0x6c>
		0000000000026278:  R_AARCH64_CALL26	queue_delayed_work_on
   2627c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   26280: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   26284: d50323bf     	autiasp
   26288: 2a1f03e0     	mov	w0, wzr
   2628c: d65f03c0     	ret
