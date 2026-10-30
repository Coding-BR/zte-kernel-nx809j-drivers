/* Mechanically lifted from stock set_tp_report_rate@0x0010bec4. */
.text
.align 2
.globl set_tp_report_rate
.type set_tp_report_rate, %function
.word 0xc3d43b4d
set_tp_report_rate:
.Lset_tp_report_rate_000:
  paciasp
.Lset_tp_report_rate_004:
  sub sp, sp, #0x30
.Lset_tp_report_rate_008:
  stp x29, x30, [sp, #0x10]
.Lset_tp_report_rate_00c:
  stp x20, x19, [sp, #0x20]
.Lset_tp_report_rate_010:
  add x29, sp, #0x10
.Lset_tp_report_rate_014:
  mrs x8, SP_EL0
.Lset_tp_report_rate_018:
  mov x19, x2
.Lset_tp_report_rate_01c:
  mov x0, x1
.Lset_tp_report_rate_020:
  ldr x8, [x8, #0x710]
.Lset_tp_report_rate_024:
  add x3, sp, #0x4
.Lset_tp_report_rate_028:
  mov x1, x2
.Lset_tp_report_rate_02c:
  mov w2, #0xa
.Lset_tp_report_rate_030:
  str x8, [sp, #0x8]
.Lset_tp_report_rate_034:
  adrp x8, tpd_cdev
.Lset_tp_report_rate_038:
  ldr x20, [x8, :lo12:tpd_cdev]
.Lset_tp_report_rate_03c:
  str wzr, [sp, #0x4]
.Lset_tp_report_rate_040:
  bl kstrtouint_from_user
.Lset_tp_report_rate_044:
  cbz w0, .Lset_tp_report_rate_078
.Lset_tp_report_rate_048:
  mov x19, #-0x16
.Lset_tp_report_rate_04c:
  mrs x8, SP_EL0
.Lset_tp_report_rate_050:
  ldr x8, [x8, #0x710]
.Lset_tp_report_rate_054:
  ldr x9, [sp, #0x8]
.Lset_tp_report_rate_058:
  cmp x8, x9
.Lset_tp_report_rate_05c:
  b.ne .Lset_tp_report_rate_0c0
.Lset_tp_report_rate_060:
  mov x0, x19
.Lset_tp_report_rate_064:
  ldp x20, x19, [sp, #0x20]
.Lset_tp_report_rate_068:
  ldp x29, x30, [sp, #0x10]
.Lset_tp_report_rate_06c:
  add sp, sp, #0x30
.Lset_tp_report_rate_070:
  autiasp
.Lset_tp_report_rate_074:
  ret
.Lset_tp_report_rate_078:
  ldr w2, [sp, #0x4]
.Lset_tp_report_rate_07c:
  adrp x0, .Lset_tp_report_rate_str_tpd
.Lset_tp_report_rate_080:
  add x0, x0, :lo12:.Lset_tp_report_rate_str_tpd
.Lset_tp_report_rate_084:
  adrp x1, .Lset_tp_report_rate_str_name
.Lset_tp_report_rate_088:
  add x1, x1, :lo12:.Lset_tp_report_rate_str_name
.Lset_tp_report_rate_08c:
  bl _printk
.Lset_tp_report_rate_090:
  ldr x8, [x20, #0xf10]
.Lset_tp_report_rate_094:
  cbz x8, .Lset_tp_report_rate_04c
.Lset_tp_report_rate_098:
  ldr w1, [sp, #0x4]
.Lset_tp_report_rate_09c:
  mov x0, x20
.Lset_tp_report_rate_0a0:
  ldur w16, [x8, #-0x4]
.Lset_tp_report_rate_0a4:
  movk w17, #0xb499
.Lset_tp_report_rate_0a8:
  movk w17, #0x6af8, lsl #16
.Lset_tp_report_rate_0ac:
  cmp w16, w17
.Lset_tp_report_rate_0b0:
  b.eq .Lset_tp_report_rate_0b8
.Lset_tp_report_rate_0b4:
  brk #0x8228
.Lset_tp_report_rate_0b8:
  blr x8
.Lset_tp_report_rate_0bc:
  b .Lset_tp_report_rate_04c
.Lset_tp_report_rate_0c0:
  bl __stack_chk_fail
.Lset_tp_report_rate_end:
.size set_tp_report_rate, .Lset_tp_report_rate_end - set_tp_report_rate

.pushsection .rodata.str1.1,"aMS",@progbits,1
.Lset_tp_report_rate_str_tpd:
  .string "\0015tpd: %s val = %d\n"
.Lset_tp_report_rate_str_name:
  .string "set_tp_report_rate"
.popsection
.section .note.GNU-stack,"",@progbits
