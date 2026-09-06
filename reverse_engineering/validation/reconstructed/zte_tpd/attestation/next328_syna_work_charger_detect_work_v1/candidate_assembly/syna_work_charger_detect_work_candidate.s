	.text
	.file	"syna_work_charger_detect_work_aarch64_assembly_input.c"
	.globl	syna_work_charger_detect_work   // -- Begin function syna_work_charger_detect_work
	.p2align	2
	.type	syna_work_charger_detect_work,@function
syna_work_charger_detect_work:          // @syna_work_charger_detect_work
// %bb.0:
	stp	x29, x30, [sp, #-64]!           // 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             // 16-byte Folded Spill
	mov	x29, sp
	subs	x19, x0, #1568
	str	x23, [sp, #16]                  // 8-byte Folded Spill
	stp	x22, x21, [sp, #32]             // 16-byte Folded Spill
	str	xzr, [x29, #24]
	b.eq	.LBB0_23
// %bb.1:
	sub	x8, x0, #944
	mov	x21, x0
	ldr	x8, [x8]
	ldr	w9, [x8, #184]
	cbz	w9, .LBB0_3
// %bb.2:
	ldrb	w8, [x8, #188]
	tbnz	w8, #0, .LBB0_4
.LBB0_3:
	ldr	x8, [x19]
	ldr	w20, [x8, #524]
	b	.LBB0_5
.LBB0_4:
	mov	w20, wzr
.LBB0_5:
	adrp	x0, :got:unk_35219
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	ldr	x0, [x0, :got_lo12:unk_35219]
	bl	printk
	adrp	x23, :got:syna_get_charger_status_batt_psy
	adrp	x22, :got:syna_work_charger_detect_work_status
	ldr	x23, [x23, :got_lo12:syna_get_charger_status_batt_psy]
	ldr	x0, [x23]
	ldr	x22, [x22, :got_lo12:syna_work_charger_detect_work_status]
	cbnz	x0, .LBB0_7
// %bb.6:
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	power_supply_get_by_name
	str	x0, [x23]
	cbz	x0, .LBB0_15
.LBB0_7:
	ldr	x8, [x0]
	mov	w10, #3283                      // =0xcd3
	movk	w10, #59545, lsl #16
	ldr	x8, [x8, #40]
	ldur	w9, [x8, #-4]
	cmp	w9, w10
	b.ne	.LBB0_24
// %bb.8:
	add	x2, x29, #24
	mov	w1, wzr
	blr	x8
	ldr	w23, [x29, #24]
	adrp	x9, :got:syna_usb_detect_flag
	adrp	x0, :got:unk_3A676
	ldr	x9, [x9, :got_lo12:syna_usb_detect_flag]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	cmp	w23, #1
	cset	w8, eq
	cmp	w23, #4
	csinc	w2, w8, wzr, ne
	str	w2, [x9]
	ldr	x0, [x0, :got_lo12:unk_3A676]
	bl	printk
	cmp	w23, #4
	b.eq	.LBB0_10
// %bb.9:
	cmp	w23, #1
	b.ne	.LBB0_16
.LBB0_10:
	ldur	w9, [x21, #-164]
	ldr	w8, [x22]
	cmp	w9, #1
	b.ne	.LBB0_13
// %bb.11:
	tbnz	w8, #0, .LBB0_23
// %bb.12:
	mov	w21, #1                         // =0x1
	b	.LBB0_19
.LBB0_13:
	tbnz	w8, #0, .LBB0_23
// %bb.14:
	mov	w21, #1                         // =0x1
	b	.LBB0_22
.LBB0_15:
	adrp	x0, :got:unk_3A676
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	ldr	x0, [x0, :got_lo12:unk_3A676]
	mov	w2, wzr
	bl	printk
	adrp	x8, :got:syna_usb_detect_flag
	ldr	x8, [x8, :got_lo12:syna_usb_detect_flag]
	str	wzr, [x8]
.LBB0_16:
	ldur	w9, [x21, #-164]
	ldr	w8, [x22]
	cmp	w9, #1
	b.ne	.LBB0_20
// %bb.17:
	tbz	w8, #0, .LBB0_23
// %bb.18:
	mov	w21, wzr
.LBB0_19:
	mov	x0, x19
	mov	w1, w21
	mov	w2, w20
	bl	syna_dev_set_charger_mode
	b	.LBB0_22
.LBB0_20:
	tbz	w8, #0, .LBB0_23
// %bb.21:
	mov	w21, wzr
.LBB0_22:
	str	w21, [x22]
.LBB0_23:
	ldp	x20, x19, [sp, #48]             // 16-byte Folded Reload
	ldr	x23, [sp, #16]                  // 8-byte Folded Reload
	ldp	x22, x21, [sp, #32]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #64             // 16-byte Folded Reload
	ret
.LBB0_24:
	brk	#0x1
.Lfunc_end0:
	.size	syna_work_charger_detect_work, .Lfunc_end0-syna_work_charger_detect_work
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"syna_work_charger_detect_work"
	.size	.L.str, 30

	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"battery"
	.size	.L.str.1, 8

	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"syna_get_charger_status"
	.size	.L.str.2, 24

	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
