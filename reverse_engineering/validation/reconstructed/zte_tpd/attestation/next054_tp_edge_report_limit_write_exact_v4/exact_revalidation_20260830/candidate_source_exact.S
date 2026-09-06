/* Mechanically lifted from the stock AArch64 function; do not hand-normalize. */
.text
.align 2
.globl tp_edge_report_limit_write
.type tp_edge_report_limit_write, %function
.word 0xc3d43b4d
tp_edge_report_limit_write:
.Ltp_edge_report_limit_write_000:
  paciasp
.Ltp_edge_report_limit_write_004:
  sub sp, sp, #0xc0
.Ltp_edge_report_limit_write_008:
  stp x29, x30, [sp, #0x80]
.Ltp_edge_report_limit_write_00c:
  str x23, [sp, #0x90]
.Ltp_edge_report_limit_write_010:
  stp x22, x21, [sp, #0xa0]
.Ltp_edge_report_limit_write_014:
  stp x20, x19, [sp, #0xb0]
.Ltp_edge_report_limit_write_018:
  add x29, sp, #0x80
.Ltp_edge_report_limit_write_01c:
  mrs x8, SP_EL0
.Ltp_edge_report_limit_write_020:
  mov x20, x1
.Ltp_edge_report_limit_write_024:
  ldr x8, [x8, #0x710]
.Ltp_edge_report_limit_write_028:
  cmp x2, #0x64
.Ltp_edge_report_limit_write_02c:
  stur x8, [x29, #-0x8]
.Ltp_edge_report_limit_write_030:
  adrp x8, tpd_cdev
.Ltp_edge_report_limit_write_034:
  ldr x21, [x8, :lo12:tpd_cdev]
.Ltp_edge_report_limit_write_038:
  mov w8, #0x64
.Ltp_edge_report_limit_write_03c:
  str wzr, [sp, #0x70]
.Ltp_edge_report_limit_write_040:
  csel x19, x2, x8, lo
.Ltp_edge_report_limit_write_044:
  stp xzr, xzr, [sp, #0x60]
.Ltp_edge_report_limit_write_048:
  stp xzr, xzr, [sp, #0x50]
.Ltp_edge_report_limit_write_04c:
  stp xzr, xzr, [sp, #0x40]
.Ltp_edge_report_limit_write_050:
  stp xzr, xzr, [sp, #0x30]
.Ltp_edge_report_limit_write_054:
  stp xzr, xzr, [sp, #0x20]
.Ltp_edge_report_limit_write_058:
  stp xzr, xzr, [sp, #0x10]
.Ltp_edge_report_limit_write_05c:
  str xzr, [sp]
.Ltp_edge_report_limit_write_060:
  cbz x1, .Ltp_edge_report_limit_write_088
.Ltp_edge_report_limit_write_064:
  add x0, sp, #0x10
.Ltp_edge_report_limit_write_068:
  mov x1, x19
.Ltp_edge_report_limit_write_06c:
  mov w2, wzr
.Ltp_edge_report_limit_write_070:
  bl __check_object_size
.Ltp_edge_report_limit_write_074:
  add x0, sp, #0x10
.Ltp_edge_report_limit_write_078:
  mov x1, x20
.Ltp_edge_report_limit_write_07c:
  mov x2, x19
.Ltp_edge_report_limit_write_080:
  bl _inline_copy_from_user
.Ltp_edge_report_limit_write_084:
  cbnz x0, .Ltp_edge_report_limit_write_174
.Ltp_edge_report_limit_write_088:
  add x0, sp, #0x10
.Ltp_edge_report_limit_write_08c:
  bl get_tp_algo_item_id
.Ltp_edge_report_limit_write_090:
  tbz w0, #0x1f, .Ltp_edge_report_limit_write_0f0
.Ltp_edge_report_limit_write_094:
  mov x3, sp
.Ltp_edge_report_limit_write_098:
  mov x0, x20
.Ltp_edge_report_limit_write_09c:
  mov x1, x19
.Ltp_edge_report_limit_write_0a0:
  mov w2, #0xa
.Ltp_edge_report_limit_write_0a4:
  bl kstrtouint_from_user
.Ltp_edge_report_limit_write_0a8:
  mov w8, w0
.Ltp_edge_report_limit_write_0ac:
  mov x0, #-0x16
.Ltp_edge_report_limit_write_0b0:
  cbnz w8, .Ltp_edge_report_limit_write_1dc
.Ltp_edge_report_limit_write_0b4:
  ldr w1, [sp]
.Ltp_edge_report_limit_write_0b8:
  cmp w1, #0xa
.Ltp_edge_report_limit_write_0bc:
  b.hi .Ltp_edge_report_limit_write_1dc
.Ltp_edge_report_limit_write_0c0:
  ldrh w8, [x21, #0x442]
.Ltp_edge_report_limit_write_0c4:
  cmp w1, #0x5
.Ltp_edge_report_limit_write_0c8:
  strb w1, [x21, #0x38]
.Ltp_edge_report_limit_write_0cc:
  b.hi .Ltp_edge_report_limit_write_188
.Ltp_edge_report_limit_write_0d0:
  mul w8, w1, w8
.Ltp_edge_report_limit_write_0d4:
  lsl w9, w8, #3
.Ltp_edge_report_limit_write_0d8:
  sub w8, w9, w8
.Ltp_edge_report_limit_write_0dc:
  mov w9, #0x4dd3
.Ltp_edge_report_limit_write_0e0:
  movk w9, #0x1062, lsl #16
.Ltp_edge_report_limit_write_0e4:
  umull x8, w8, w9
.Ltp_edge_report_limit_write_0e8:
  lsr x8, x8, #38
.Ltp_edge_report_limit_write_0ec:
  b .Ltp_edge_report_limit_write_1bc
.Ltp_edge_report_limit_write_0f0:
  mov w22, w0
.Ltp_edge_report_limit_write_0f4:
  add x0, sp, #0x10
.Ltp_edge_report_limit_write_0f8:
  mov w1, #0x3a
.Ltp_edge_report_limit_write_0fc:
  bl strchr
.Ltp_edge_report_limit_write_100:
  add x20, x0, #0x1
.Ltp_edge_report_limit_write_104:
  adrp x0, .Ltp_edge_report_limit_write_str_c6
.Ltp_edge_report_limit_write_108:
  add x0, x0, :lo12:.Ltp_edge_report_limit_write_str_c6
.Ltp_edge_report_limit_write_10c:
  mov x1, x20
.Ltp_edge_report_limit_write_110:
  str x20, [sp, #0x8]
.Ltp_edge_report_limit_write_114:
  bl _printk
.Ltp_edge_report_limit_write_118:
  mov w8, w22
.Ltp_edge_report_limit_write_11c:
  cmp w22, #0x2
.Ltp_edge_report_limit_write_120:
  b.le .Ltp_edge_report_limit_write_20c
.Ltp_edge_report_limit_write_124:
  cmp w8, #0x4
.Ltp_edge_report_limit_write_128:
  b.gt .Ltp_edge_report_limit_write_250
.Ltp_edge_report_limit_write_12c:
  cmp w8, #0x3
.Ltp_edge_report_limit_write_130:
  b.eq .Ltp_edge_report_limit_write_2c4
.Ltp_edge_report_limit_write_134:
  cmp w8, #0x4
.Ltp_edge_report_limit_write_138:
  b.ne .Ltp_edge_report_limit_write_3a4
.Ltp_edge_report_limit_write_13c:
  add x2, sp, #0x4
.Ltp_edge_report_limit_write_140:
  mov x0, x20
.Ltp_edge_report_limit_write_144:
  mov w1, #0xa
.Ltp_edge_report_limit_write_148:
  bl kstrtouint
.Ltp_edge_report_limit_write_14c:
  cbnz w0, .Ltp_edge_report_limit_write_1d8
.Ltp_edge_report_limit_write_150:
  ldr w8, [sp, #0x4]
.Ltp_edge_report_limit_write_154:
  adrp x0, .Ltp_edge_report_limit_write_str_6d87
.Ltp_edge_report_limit_write_158:
  add x0, x0, :lo12:.Ltp_edge_report_limit_write_str_6d87
.Ltp_edge_report_limit_write_15c:
  cmp w8, #0x0
.Ltp_edge_report_limit_write_160:
  cset w1, ne
.Ltp_edge_report_limit_write_164:
  str w1, [sp, #0x4]
.Ltp_edge_report_limit_write_168:
  strb w1, [x21, #0x25]
.Ltp_edge_report_limit_write_16c:
  bl _printk
.Ltp_edge_report_limit_write_170:
  b .Ltp_edge_report_limit_write_1d8
.Ltp_edge_report_limit_write_174:
  adrp x0, .Ltp_edge_report_limit_write_str_256c
.Ltp_edge_report_limit_write_178:
  add x0, x0, :lo12:.Ltp_edge_report_limit_write_str_256c
.Ltp_edge_report_limit_write_17c:
  bl _printk
.Ltp_edge_report_limit_write_180:
  mov x0, #-0x16
.Ltp_edge_report_limit_write_184:
  b .Ltp_edge_report_limit_write_1dc
.Ltp_edge_report_limit_write_188:
  mov w9, #0x23
.Ltp_edge_report_limit_write_18c:
  lsr w10, w8, #1
.Ltp_edge_report_limit_write_190:
  mul w8, w8, w9
.Ltp_edge_report_limit_write_194:
  mov w9, #0x8313
.Ltp_edge_report_limit_write_198:
  mul w9, w10, w9
.Ltp_edge_report_limit_write_19c:
  mov w10, #0x8938
.Ltp_edge_report_limit_write_1a0:
  movk w10, #0x41, lsl #16
.Ltp_edge_report_limit_write_1a4:
  umull x8, w8, w10
.Ltp_edge_report_limit_write_1a8:
  mov w10, #0xfffb
.Ltp_edge_report_limit_write_1ac:
  lsr w9, w9, #22
.Ltp_edge_report_limit_write_1b0:
  add w10, w1, w10
.Ltp_edge_report_limit_write_1b4:
  lsr x8, x8, #32
.Ltp_edge_report_limit_write_1b8:
  madd w8, w10, w9, w8
.Ltp_edge_report_limit_write_1bc:
  adrp x0, .Ltp_edge_report_limit_write_str_1237
.Ltp_edge_report_limit_write_1c0:
  add x0, x0, :lo12:.Ltp_edge_report_limit_write_str_1237
.Ltp_edge_report_limit_write_1c4:
  and w2, w8, #0xffff
.Ltp_edge_report_limit_write_1c8:
  mov w3, wzr
.Ltp_edge_report_limit_write_1cc:
  strh w8, [x21, #0x2c]
.Ltp_edge_report_limit_write_1d0:
  strh wzr, [x21, #0x2e]
.Ltp_edge_report_limit_write_1d4:
  bl _printk
.Ltp_edge_report_limit_write_1d8:
  mov x0, x19
.Ltp_edge_report_limit_write_1dc:
  mrs x8, SP_EL0
.Ltp_edge_report_limit_write_1e0:
  ldr x8, [x8, #0x710]
.Ltp_edge_report_limit_write_1e4:
  ldur x9, [x29, #-0x8]
.Ltp_edge_report_limit_write_1e8:
  cmp x8, x9
.Ltp_edge_report_limit_write_1ec:
  b.ne .Ltp_edge_report_limit_write_3b4
.Ltp_edge_report_limit_write_1f0:
  ldp x20, x19, [sp, #0xb0]
.Ltp_edge_report_limit_write_1f4:
  ldr x23, [sp, #0x90]
.Ltp_edge_report_limit_write_1f8:
  ldp x22, x21, [sp, #0xa0]
.Ltp_edge_report_limit_write_1fc:
  ldp x29, x30, [sp, #0x80]
.Ltp_edge_report_limit_write_200:
  add sp, sp, #0xc0
.Ltp_edge_report_limit_write_204:
  autiasp
.Ltp_edge_report_limit_write_208:
  ret
.Ltp_edge_report_limit_write_20c:
  cbz w8, .Ltp_edge_report_limit_write_36c
.Ltp_edge_report_limit_write_210:
  cmp w8, #0x1
.Ltp_edge_report_limit_write_214:
  b.eq .Ltp_edge_report_limit_write_33c
.Ltp_edge_report_limit_write_218:
  cmp w8, #0x2
.Ltp_edge_report_limit_write_21c:
  b.ne .Ltp_edge_report_limit_write_3a4
.Ltp_edge_report_limit_write_220:
  add x2, sp, #0x4
.Ltp_edge_report_limit_write_224:
  mov x0, x20
.Ltp_edge_report_limit_write_228:
  mov w1, #0xa
.Ltp_edge_report_limit_write_22c:
  bl kstrtouint
.Ltp_edge_report_limit_write_230:
  cbnz w0, .Ltp_edge_report_limit_write_1d8
.Ltp_edge_report_limit_write_234:
  ldr w8, [sp, #0x4]
.Ltp_edge_report_limit_write_238:
  adrp x0, .Ltp_edge_report_limit_write_str_1e1c
.Ltp_edge_report_limit_write_23c:
  add x0, x0, :lo12:.Ltp_edge_report_limit_write_str_1e1c
.Ltp_edge_report_limit_write_240:
  and w1, w8, #0xffff
.Ltp_edge_report_limit_write_244:
  strh w8, [x21, #0x3e]
.Ltp_edge_report_limit_write_248:
  bl _printk
.Ltp_edge_report_limit_write_24c:
  b .Ltp_edge_report_limit_write_1d8
.Ltp_edge_report_limit_write_250:
  cmp w8, #0x5
.Ltp_edge_report_limit_write_254:
  b.eq .Ltp_edge_report_limit_write_30c
.Ltp_edge_report_limit_write_258:
  cmp w8, #0x6
.Ltp_edge_report_limit_write_25c:
  b.ne .Ltp_edge_report_limit_write_3a4
.Ltp_edge_report_limit_write_260:
  mov x22, xzr
.Ltp_edge_report_limit_write_264:
  adrp x20, .Ltp_edge_report_limit_write_str_3e1d
.Ltp_edge_report_limit_write_268:
  add x20, x20, :lo12:.Ltp_edge_report_limit_write_str_3e1d
.Ltp_edge_report_limit_write_26c:
  add x23, x21, #0x34
.Ltp_edge_report_limit_write_270:
  adrp x21, .Ltp_edge_report_limit_write_str_b982
.Ltp_edge_report_limit_write_274:
  add x21, x21, :lo12:.Ltp_edge_report_limit_write_str_b982
.Ltp_edge_report_limit_write_278:
  add x0, sp, #0x8
.Ltp_edge_report_limit_write_27c:
  mov x1, x20
.Ltp_edge_report_limit_write_280:
  bl strsep
.Ltp_edge_report_limit_write_284:
  cbz x0, .Ltp_edge_report_limit_write_1d8
.Ltp_edge_report_limit_write_288:
  add x2, sp, #0x4
.Ltp_edge_report_limit_write_28c:
  mov w1, #0xa
.Ltp_edge_report_limit_write_290:
  bl kstrtouint
.Ltp_edge_report_limit_write_294:
  cbz w0, .Ltp_edge_report_limit_write_2a4
.Ltp_edge_report_limit_write_298:
  cmp x22, #0x3
.Ltp_edge_report_limit_write_29c:
  b.ls .Ltp_edge_report_limit_write_278
.Ltp_edge_report_limit_write_2a0:
  b .Ltp_edge_report_limit_write_1d8
.Ltp_edge_report_limit_write_2a4:
  ldr w8, [sp, #0x4]
.Ltp_edge_report_limit_write_2a8:
  and w1, w22, #0xffff
.Ltp_edge_report_limit_write_2ac:
  mov x0, x21
.Ltp_edge_report_limit_write_2b0:
  strb w8, [x23, x22]
.Ltp_edge_report_limit_write_2b4:
  and w2, w8, #0xff
.Ltp_edge_report_limit_write_2b8:
  bl _printk
.Ltp_edge_report_limit_write_2bc:
  add x22, x22, #0x1
.Ltp_edge_report_limit_write_2c0:
  b .Ltp_edge_report_limit_write_298
.Ltp_edge_report_limit_write_2c4:
  add x2, sp, #0x4
.Ltp_edge_report_limit_write_2c8:
  mov x0, x20
.Ltp_edge_report_limit_write_2cc:
  mov w1, #0xa
.Ltp_edge_report_limit_write_2d0:
  bl kstrtouint
.Ltp_edge_report_limit_write_2d4:
  cbnz w0, .Ltp_edge_report_limit_write_1d8
.Ltp_edge_report_limit_write_2d8:
  ldr w8, [sp, #0x4]
.Ltp_edge_report_limit_write_2dc:
  adrp x0, .Ltp_edge_report_limit_write_str_7a15
.Ltp_edge_report_limit_write_2e0:
  add x0, x0, :lo12:.Ltp_edge_report_limit_write_str_7a15
.Ltp_edge_report_limit_write_2e4:
  and w1, w8, #0xff
.Ltp_edge_report_limit_write_2e8:
  strb w8, [x21, #0x26]
.Ltp_edge_report_limit_write_2ec:
  bl _printk
.Ltp_edge_report_limit_write_2f0:
  ldrb w8, [x21, #0x26]
.Ltp_edge_report_limit_write_2f4:
  mov x0, x19
.Ltp_edge_report_limit_write_2f8:
  strb w8, [x21, #0x27]
.Ltp_edge_report_limit_write_2fc:
  strb w8, [x21, #0x28]
.Ltp_edge_report_limit_write_300:
  strb w8, [x21, #0x29]
.Ltp_edge_report_limit_write_304:
  strb w8, [x21, #0x2a]
.Ltp_edge_report_limit_write_308:
  b .Ltp_edge_report_limit_write_1dc
.Ltp_edge_report_limit_write_30c:
  add x2, sp, #0x4
.Ltp_edge_report_limit_write_310:
  mov x0, x20
.Ltp_edge_report_limit_write_314:
  mov w1, #0xa
.Ltp_edge_report_limit_write_318:
  bl kstrtouint
.Ltp_edge_report_limit_write_31c:
  cbnz w0, .Ltp_edge_report_limit_write_1d8
.Ltp_edge_report_limit_write_320:
  ldr w8, [sp, #0x4]
.Ltp_edge_report_limit_write_324:
  adrp x0, .Ltp_edge_report_limit_write_str_6139
.Ltp_edge_report_limit_write_328:
  add x0, x0, :lo12:.Ltp_edge_report_limit_write_str_6139
.Ltp_edge_report_limit_write_32c:
  and w1, w8, #0xffff
.Ltp_edge_report_limit_write_330:
  strh w8, [x21, #0x3c]
.Ltp_edge_report_limit_write_334:
  bl _printk
.Ltp_edge_report_limit_write_338:
  b .Ltp_edge_report_limit_write_1d8
.Ltp_edge_report_limit_write_33c:
  add x2, sp, #0x4
.Ltp_edge_report_limit_write_340:
  mov x0, x20
.Ltp_edge_report_limit_write_344:
  mov w1, #0xa
.Ltp_edge_report_limit_write_348:
  bl kstrtouint
.Ltp_edge_report_limit_write_34c:
  cbnz w0, .Ltp_edge_report_limit_write_1d8
.Ltp_edge_report_limit_write_350:
  ldr w8, [sp, #0x4]
.Ltp_edge_report_limit_write_354:
  adrp x0, .Ltp_edge_report_limit_write_str_8acb
.Ltp_edge_report_limit_write_358:
  add x0, x0, :lo12:.Ltp_edge_report_limit_write_str_8acb
.Ltp_edge_report_limit_write_35c:
  and w1, w8, #0xff
.Ltp_edge_report_limit_write_360:
  strb w8, [x21, #0x24]
.Ltp_edge_report_limit_write_364:
  bl _printk
.Ltp_edge_report_limit_write_368:
  b .Ltp_edge_report_limit_write_1d8
.Ltp_edge_report_limit_write_36c:
  add x2, sp, #0x4
.Ltp_edge_report_limit_write_370:
  mov x0, x20
.Ltp_edge_report_limit_write_374:
  mov w1, #0xa
.Ltp_edge_report_limit_write_378:
  bl kstrtouint
.Ltp_edge_report_limit_write_37c:
  cbnz w0, .Ltp_edge_report_limit_write_1d8
.Ltp_edge_report_limit_write_380:
  ldr w8, [sp, #0x4]
.Ltp_edge_report_limit_write_384:
  adrp x0, .Ltp_edge_report_limit_write_str_6139
.Ltp_edge_report_limit_write_388:
  add x0, x0, :lo12:.Ltp_edge_report_limit_write_str_6139
.Ltp_edge_report_limit_write_38c:
  cmp w8, #0x0
.Ltp_edge_report_limit_write_390:
  cset w1, ne
.Ltp_edge_report_limit_write_394:
  str w1, [sp, #0x4]
.Ltp_edge_report_limit_write_398:
  strb w1, [x21, #0x1b]
.Ltp_edge_report_limit_write_39c:
  bl _printk
.Ltp_edge_report_limit_write_3a0:
  b .Ltp_edge_report_limit_write_1d8
.Ltp_edge_report_limit_write_3a4:
  adrp x0, .Ltp_edge_report_limit_write_str_a512
.Ltp_edge_report_limit_write_3a8:
  add x0, x0, :lo12:.Ltp_edge_report_limit_write_str_a512
.Ltp_edge_report_limit_write_3ac:
  bl _printk
.Ltp_edge_report_limit_write_3b0:
  b .Ltp_edge_report_limit_write_1d8
.Ltp_edge_report_limit_write_3b4:
  bl __stack_chk_fail
.size tp_edge_report_limit_write, .-tp_edge_report_limit_write
.pushsection .rodata.str1.1,"aMS",@progbits,1
.balign 1
.Ltp_edge_report_limit_write_str_c6:
  .string "\0015tpd: cur = %s\n"
.Ltp_edge_report_limit_write_str_1237:
  .string "\0015tpd: tpd: edge_limit_pixel_level = %d, limit[0,1] = [%d,%d]\n"
.Ltp_edge_report_limit_write_str_1e1c:
  .string "\0015tpd: tp_jitter_timer = %d\n"
.Ltp_edge_report_limit_write_str_256c:
  .string "\0013Failed to copy data from user space\n"
.Ltp_edge_report_limit_write_str_3e1d:
  .string ","
.Ltp_edge_report_limit_write_str_6139:
  .string "\0015tpd: zte_tp_algo = %d\n"
.Ltp_edge_report_limit_write_str_6d87:
  .string "\0015tpd: edge_long_press_check = %d\n"
.Ltp_edge_report_limit_write_str_7a15:
  .string "\0015tpd: tp_edge_click_suppression_pixel = %d\n"
.Ltp_edge_report_limit_write_str_8acb:
  .string "\0015tpd: tp_jitter_check = %d\n"
.Ltp_edge_report_limit_write_str_a512:
  .string "\0015tpd: ignore algo item"
.Ltp_edge_report_limit_write_str_b982:
  .string "\0015tpd: long_pess_suppression[%d] = %d\n"
.popsection
.section .note.GNU-stack,"",@progbits
