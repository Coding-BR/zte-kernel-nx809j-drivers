/* Mechanically lifted from stock get_tp_report_rate@0x0010bdd0. */
.text
.align 2
.globl get_tp_report_rate
.type get_tp_report_rate, %function
.word 0xf4e9d97c
get_tp_report_rate:
.Lget_tp_report_rate_000:
  paciasp
.Lget_tp_report_rate_004:
  sub sp, sp, #0x50
.Lget_tp_report_rate_008:
  stp x29, x30, [sp, #0x20]
.Lget_tp_report_rate_00c:
  stp x22, x21, [sp, #0x30]
.Lget_tp_report_rate_010:
  stp x20, x19, [sp, #0x40]
.Lget_tp_report_rate_014:
  add x29, sp, #0x20
.Lget_tp_report_rate_018:
  mrs x8, SP_EL0
.Lget_tp_report_rate_01c:
  mov x0, xzr
.Lget_tp_report_rate_020:
  ldr x8, [x8, #0x710]
.Lget_tp_report_rate_024:
  stur x8, [x29, #-0x8]
.Lget_tp_report_rate_028:
  ldr x8, [x3]
.Lget_tp_report_rate_02c:
  strh wzr, [sp, #0x10]
.Lget_tp_report_rate_030:
  str xzr, [sp, #0x8]
.Lget_tp_report_rate_034:
  cbz x8, .Lget_tp_report_rate_064
.Lget_tp_report_rate_038:
  mrs x8, SP_EL0
.Lget_tp_report_rate_03c:
  ldr x8, [x8, #0x710]
.Lget_tp_report_rate_040:
  ldur x9, [x29, #-0x8]
.Lget_tp_report_rate_044:
  cmp x8, x9
.Lget_tp_report_rate_048:
  b.ne .Lget_tp_report_rate_0ec
.Lget_tp_report_rate_04c:
  ldp x20, x19, [sp, #0x40]
.Lget_tp_report_rate_050:
  ldp x22, x21, [sp, #0x30]
.Lget_tp_report_rate_054:
  ldp x29, x30, [sp, #0x20]
.Lget_tp_report_rate_058:
  add sp, sp, #0x50
.Lget_tp_report_rate_05c:
  autiasp
.Lget_tp_report_rate_060:
  ret
.Lget_tp_report_rate_064:
  adrp x8, tpd_cdev
.Lget_tp_report_rate_068:
  mov x21, x1
.Lget_tp_report_rate_06c:
  mov x20, x2
.Lget_tp_report_rate_070:
  ldr x22, [x8, :lo12:tpd_cdev]
.Lget_tp_report_rate_074:
  mov x19, x3
.Lget_tp_report_rate_078:
  ldr x8, [x22, #0xf18]
.Lget_tp_report_rate_07c:
  cbz x8, .Lget_tp_report_rate_0a0
.Lget_tp_report_rate_080:
  mov x0, x22
.Lget_tp_report_rate_084:
  ldur w16, [x8, #-0x4]
.Lget_tp_report_rate_088:
  movk w17, #0xd79
.Lget_tp_report_rate_08c:
  movk w17, #0x73fc, lsl #16
.Lget_tp_report_rate_090:
  cmp w16, w17
.Lget_tp_report_rate_094:
  b.eq .Lget_tp_report_rate_09c
.Lget_tp_report_rate_098:
  brk #0x8228
.Lget_tp_report_rate_09c:
  blr x8
.Lget_tp_report_rate_0a0:
  ldr w2, [x22, #0x464]
.Lget_tp_report_rate_0a4:
  adrp x0, .Lget_tp_report_rate_str_tpd
.Lget_tp_report_rate_0a8:
  add x0, x0, :lo12:.Lget_tp_report_rate_str_tpd
.Lget_tp_report_rate_0ac:
  adrp x1, .Lget_tp_report_rate_str_name
.Lget_tp_report_rate_0b0:
  add x1, x1, :lo12:.Lget_tp_report_rate_str_name
.Lget_tp_report_rate_0b4:
  bl _printk
.Lget_tp_report_rate_0b8:
  ldr w3, [x22, #0x464]
.Lget_tp_report_rate_0bc:
  adrp x2, .Lget_tp_report_rate_str_format
.Lget_tp_report_rate_0c0:
  add x2, x2, :lo12:.Lget_tp_report_rate_str_format
.Lget_tp_report_rate_0c4:
  add x0, sp, #0x8
.Lget_tp_report_rate_0c8:
  mov w1, #0xa
.Lget_tp_report_rate_0cc:
  bl snprintf
.Lget_tp_report_rate_0d0:
  sxtw x4, w0
.Lget_tp_report_rate_0d4:
  add x3, sp, #0x8
.Lget_tp_report_rate_0d8:
  mov x1, x20
.Lget_tp_report_rate_0dc:
  mov x0, x21
.Lget_tp_report_rate_0e0:
  mov x2, x19
.Lget_tp_report_rate_0e4:
  bl simple_read_from_buffer
.Lget_tp_report_rate_0e8:
  b .Lget_tp_report_rate_038
.Lget_tp_report_rate_0ec:
  bl __stack_chk_fail
.Lget_tp_report_rate_end:
.size get_tp_report_rate, .Lget_tp_report_rate_end - get_tp_report_rate

.pushsection .rodata.str1.1,"aMS",@progbits,1
.Lget_tp_report_rate_str_tpd:
  .string "\0015tpd: %s val:%d.\n"
.Lget_tp_report_rate_str_name:
  .string "get_tp_report_rate"
.Lget_tp_report_rate_str_format:
  .string "%u\n"
.popsection
.section .note.GNU-stack,"",@progbits
