	.text
	.file	"syna_tpd_register_fw_class_aarch64_assembly_input.c"
	.globl	syna_tpd_register_fw_class      // -- Begin function syna_tpd_register_fw_class
	.p2align	2
	.type	syna_tpd_register_fw_class,@function
syna_tpd_register_fw_class:             // @syna_tpd_register_fw_class
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             // 16-byte Folded Spill
	mov	x19, x0
	adrp	x0, :got:unk_390F2
	ldr	x0, [x0, :got_lo12:unk_390F2]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	mov	x29, sp
	bl	printk
	adrp	x0, :got:unk_364AC
	mov	w1, #10                         // =0xa
	adrp	x3, .L.str.1
	add	x3, x3, :lo12:.L.str.1
	ldr	x0, [x0, :got_lo12:unk_364AC]
	movk	w1, #6, lsl #16
	mov	w2, #1                          // =0x1
	bl	alloc_workqueue
	str	x0, [x19, #1672]
	cbz	x0, .LBB0_6
// %bb.1:
	adrp	x20, :got:syna_get_charger_status_batt_psy
	ldr	x20, [x20, :got_lo12:syna_get_charger_status_batt_psy]
	ldr	x0, [x20]
	cbnz	x0, .LBB0_3
// %bb.2:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	power_supply_get_by_name
	str	x0, [x20]
	cbz	x0, .LBB0_5
.LBB0_3:
	ldr	x8, [x0]
	mov	w10, #3283                      // =0xcd3
	movk	w10, #59545, lsl #16
	ldr	x8, [x8, #40]
	ldur	w9, [x8, #-4]
	cmp	w9, w10
	b.ne	.LBB0_8
// %bb.4:
	blr	x8
.LBB0_5:
	adrp	x0, :got:unk_3A676
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	ldr	x0, [x0, :got_lo12:unk_3A676]
	mov	w2, wzr
	bl	printk
	adrp	x8, :got:syna_usb_detect_flag
	mov	x9, #4503599625273344           // =0xfffffffe00000
	adrp	x1, :got:delayed_work_timer_fn
	ldr	x8, [x8, :got_lo12:syna_usb_detect_flag]
	add	x0, x19, #1600
	mov	w2, #2097152                    // =0x200000
	mov	x3, xzr
	mov	x4, xzr
	strb	wzr, [x8]
	add	x8, x19, #1576
	str	x9, [x19, #1568]
	adrp	x9, :got:syna_work_charger_detect_work
	ldr	x9, [x9, :got_lo12:syna_work_charger_detect_work]
	str	x8, [x19, #1576]
	str	x8, [x19, #1584]
	str	x9, [x19, #1592]
	ldr	x1, [x1, :got_lo12:delayed_work_timer_fn]
	bl	init_timer_key
	adrp	x0, :got:unk_37409
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	ldr	x0, [x0, :got_lo12:unk_37409]
	mov	x2, xzr
	bl	printk
	adrp	x8, :got:syna_charger_notify_call
	add	x0, x19, #1680
	ldr	x8, [x8, :got_lo12:syna_charger_notify_call]
	str	x8, [x19, #1680]
	bl	power_supply_reg_notifier
	b	.LBB0_7
.LBB0_6:
	adrp	x0, :got:unk_3D4B9
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	ldr	x0, [x0, :got_lo12:unk_3D4B9]
	mov	x2, xzr
	bl	printk
.LBB0_7:
	adrp	x8, :got:tpd_cdev
	adrp	x9, :got:tpd_init_tpinfo
	adrp	x10, :got:tpd_get_wakegesture
	ldr	x8, [x8, :got_lo12:tpd_cdev]
	ldr	x9, [x9, :got_lo12:tpd_init_tpinfo]
	adrp	x11, :got:tpd_enable_wakegesture
	adrp	x0, :got:unk_3AECC
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	ldr	x8, [x8]
	ldr	x10, [x10, :got_lo12:tpd_get_wakegesture]
	ldr	x11, [x11, :got_lo12:tpd_enable_wakegesture]
	str	x9, [x8, #3616]
	adrp	x9, :got:tpd_get_singlegamegesture
	ldr	x9, [x9, :got_lo12:tpd_get_singlegamegesture]
	str	x10, [x8, #3624]
	adrp	x10, :got:tpd_set_singlegamegesture
	str	x11, [x8, #3632]
	ldr	x10, [x10, :got_lo12:tpd_set_singlegamegesture]
	str	x9, [x8, #3800]
	adrp	x9, :got:tpd_get_singleaodgesture
	ldr	x9, [x9, :got_lo12:tpd_get_singleaodgesture]
	str	x10, [x8, #3808]
	adrp	x10, :got:tpd_set_singleaodgesture
	ldr	x10, [x10, :got_lo12:tpd_set_singleaodgesture]
	str	x9, [x8, #3784]
	adrp	x9, :got:tpd_get_singlefpgesture
	ldr	x9, [x9, :got_lo12:tpd_get_singlefpgesture]
	str	x10, [x8, #3792]
	adrp	x10, :got:tpd_set_singlefpgesture
	ldr	x10, [x10, :got_lo12:tpd_set_singlefpgesture]
	str	x9, [x8, #3768]
	adrp	x9, :got:tpd_set_one_key
	ldr	x9, [x9, :got_lo12:tpd_set_one_key]
	str	x10, [x8, #3776]
	adrp	x10, :got:tpd_get_one_key
	ldr	x10, [x10, :got_lo12:tpd_get_one_key]
	str	x9, [x8, #3832]
	adrp	x9, :got:tpd_test_cmd_store
	ldr	x9, [x9, :got_lo12:tpd_test_cmd_store]
	str	x10, [x8, #3824]
	adrp	x10, :got:tpd_test_cmd_show
	ldr	x10, [x10, :got_lo12:tpd_test_cmd_show]
	str	x9, [x8, #4000]
	adrp	x9, :got:tpd_get_tp_report_rate
	ldr	x9, [x9, :got_lo12:tpd_get_tp_report_rate]
	str	x10, [x8, #3992]
	adrp	x10, :got:tpd_set_tp_report_rate
	ldr	x10, [x10, :got_lo12:tpd_set_tp_report_rate]
	str	x9, [x8, #3864]
	adrp	x9, :got:tpd_get_sensibility_level
	ldr	x9, [x9, :got_lo12:tpd_get_sensibility_level]
	str	x10, [x8, #3856]
	adrp	x10, :got:tpd_set_sensibility_level
	ldr	x10, [x10, :got_lo12:tpd_set_sensibility_level]
	str	x9, [x8, #3936]
	adrp	x9, :got:tpd_get_follow_hand_level
	ldr	x9, [x9, :got_lo12:tpd_get_follow_hand_level]
	str	x10, [x8, #3944]
	adrp	x10, :got:tpd_set_follow_hand_level
	ldr	x10, [x10, :got_lo12:tpd_set_follow_hand_level]
	str	x9, [x8, #3880]
	adrp	x9, :got:tpd_get_stability_level
	ldr	x9, [x9, :got_lo12:tpd_get_stability_level]
	str	x10, [x8, #3872]
	adrp	x10, :got:tpd_set_stability_level
	ldr	x10, [x10, :got_lo12:tpd_set_stability_level]
	str	x9, [x8, #3896]
	adrp	x9, :got:tpd_get_rotation_limit_level
	ldr	x9, [x9, :got_lo12:tpd_get_rotation_limit_level]
	str	x10, [x8, #3888]
	adrp	x10, :got:tpd_set_rotation_limit_level
	ldr	x10, [x10, :got_lo12:tpd_set_rotation_limit_level]
	str	x9, [x8, #3720]
	adrp	x9, :got:tpd_set_display_rotation
	ldr	x9, [x9, :got_lo12:tpd_set_display_rotation]
	str	x10, [x8, #3712]
	adrp	x10, :got:tpd_get_play_game
	ldr	x10, [x10, :got_lo12:tpd_get_play_game]
	str	x9, [x8, #3728]
	adrp	x9, :got:tpd_set_play_game
	ldr	x9, [x9, :got_lo12:tpd_set_play_game]
	str	x10, [x8, #3840]
	adrp	x10, :got:tpd_set_game_partition
	ldr	x10, [x10, :got_lo12:tpd_set_game_partition]
	str	x9, [x8, #3848]
	adrp	x9, :got:tpd_get_frame_data
	ldr	x9, [x9, :got_lo12:tpd_get_frame_data]
	str	x10, [x8, #3920]
	adrp	x10, :got:tpd_set_frame_data
	ldr	x10, [x10, :got_lo12:tpd_set_frame_data]
	str	x9, [x8, #4096]
	adrp	x9, :got:tpd_get_palm_mode
	ldr	x9, [x9, :got_lo12:tpd_get_palm_mode]
	str	x10, [x8, #4088]
	adrp	x10, :got:tpd_set_palm_mode
	ldr	x10, [x10, :got_lo12:tpd_set_palm_mode]
	str	x9, [x8, #4008]
	adrp	x9, :got:syna_ghost_check_reset
	ldr	x9, [x9, :got_lo12:syna_ghost_check_reset]
	str	x10, [x8, #4016]
	adrp	x10, :got:tpd_set_fake_sleep
	ldr	x10, [x10, :got_lo12:tpd_set_fake_sleep]
	str	x9, [x8, #4080]
	adrp	x9, :got:tpd_get_fake_sleep
	ldr	x9, [x9, :got_lo12:tpd_get_fake_sleep]
	str	x10, [x8, #4048]
	adrp	x10, :got:tpd_set_screen_off_awake
	ldr	x10, [x10, :got_lo12:tpd_set_screen_off_awake]
	str	x9, [x8, #4040]
	adrp	x9, :got:tpd_get_screen_off_awake
	str	x10, [x8, #4064]
	ldr	x9, [x9, :got_lo12:tpd_get_screen_off_awake]
	str	x19, [x8, #3512]
	str	x9, [x8, #4056]
	ldr	w9, [x19, #952]
	ldr	x0, [x0, :got_lo12:unk_3AECC]
	ldr	w10, [x19, #956]
	ldp	x20, x19, [sp, #16]             // 16-byte Folded Reload
	strh	w9, [x8, #1090]
	strh	w10, [x8, #1092]
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	b	printk
.LBB0_8:
	brk	#0x1
.Lfunc_end0:
	.size	syna_tpd_register_fw_class, .Lfunc_end0-syna_tpd_register_fw_class
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"syna_tpd_register_fw_class"
	.size	.L.str, 27

	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"syna_charger_detect"
	.size	.L.str.1, 20

	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"battery"
	.size	.L.str.2, 8

	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"syna_get_charger_status"
	.size	.L.str.3, 24

	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"syna_init_charger_notifier"
	.size	.L.str.4, 27

	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
