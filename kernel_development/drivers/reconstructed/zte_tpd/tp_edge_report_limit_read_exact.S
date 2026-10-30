/* Mechanically lifted from the stock AArch64 function; do not hand-normalize. */
.text
.align 2
.globl tp_edge_report_limit_read
.type tp_edge_report_limit_read, %function
.word 0xf4e9d97c
tp_edge_report_limit_read:
.Ltp_edge_report_limit_read_000:
  paciasp
.Ltp_edge_report_limit_read_004:
  stp x29, x30, [sp, #-0x50]!
.Ltp_edge_report_limit_read_008:
  str x25, [sp, #0x10]
.Ltp_edge_report_limit_read_00c:
  stp x24, x23, [sp, #0x20]
.Ltp_edge_report_limit_read_010:
  stp x22, x21, [sp, #0x30]
.Ltp_edge_report_limit_read_014:
  stp x20, x19, [sp, #0x40]
.Ltp_edge_report_limit_read_018:
  mov x29, sp
.Ltp_edge_report_limit_read_01c:
  ldr x8, [x3]
.Ltp_edge_report_limit_read_020:
  cbz x8, .Ltp_edge_report_limit_read_02c
.Ltp_edge_report_limit_read_024:
  mov x0, xzr
.Ltp_edge_report_limit_read_028:
  b  .Ltp_edge_report_limit_read_4d8
.Ltp_edge_report_limit_read_02c:
  adrp x8, tpd_cdev
.Ltp_edge_report_limit_read_030:
  mov x21, x1
.Ltp_edge_report_limit_read_034:
  mov x20, x2
.Ltp_edge_report_limit_read_038:
  ldr x23, [x8, :lo12:tpd_cdev]
.Ltp_edge_report_limit_read_03c:
  mov x19, x3
.Ltp_edge_report_limit_read_040:
  nop
.Ltp_edge_report_limit_read_044:
  adrp x8, kmalloc_caches+0x60
.Ltp_edge_report_limit_read_048:
  mov w1, #0xdc0
.Ltp_edge_report_limit_read_04c:
  mov w2, #0x1000
.Ltp_edge_report_limit_read_050:
  ldr x0, [x8, :lo12:kmalloc_caches+0x60]
.Ltp_edge_report_limit_read_054:
  bl __kmalloc_cache_noprof
.Ltp_edge_report_limit_read_058:
  mov x22, x0
.Ltp_edge_report_limit_read_05c:
  cbz x22, .Ltp_edge_report_limit_read_528
.Ltp_edge_report_limit_read_060:
  adrp x1, .Ltp_edge_report_limit_read_str_444c
.Ltp_edge_report_limit_read_064:
  add x1, x1, :lo12:.Ltp_edge_report_limit_read_str_444c
.Ltp_edge_report_limit_read_068:
  adrp x2, .Ltp_edge_report_limit_read_str_447d
.Ltp_edge_report_limit_read_06c:
  add x2, x2, :lo12:.Ltp_edge_report_limit_read_str_447d
.Ltp_edge_report_limit_read_070:
  ldp x3, x5, [x1, #0x10]
.Ltp_edge_report_limit_read_074:
  adrp x4, .Ltp_edge_report_limit_read_str_bebc
.Ltp_edge_report_limit_read_078:
  add x4, x4, :lo12:.Ltp_edge_report_limit_read_str_bebc
.Ltp_edge_report_limit_read_07c:
  adrp x12, .Ltp_edge_report_limit_read_str_abbd
.Ltp_edge_report_limit_read_080:
  add x12, x12, :lo12:.Ltp_edge_report_limit_read_str_abbd
.Ltp_edge_report_limit_read_084:
  adrp x0, .Ltp_edge_report_limit_read_str_9db7
.Ltp_edge_report_limit_read_088:
  add x0, x0, :lo12:.Ltp_edge_report_limit_read_str_9db7
.Ltp_edge_report_limit_read_08c:
  stp x3, x5, [x22, #0x60]
.Ltp_edge_report_limit_read_090:
  ldp x6, x3, [x1, #0x20]
.Ltp_edge_report_limit_read_094:
  ldp x5, x1, [x1]
.Ltp_edge_report_limit_read_098:
  ldr x16, [x0]
.Ltp_edge_report_limit_read_09c:
  ldp x10, x8, [x12, #0x18]
.Ltp_edge_report_limit_read_0a0:
  mov w14, #0xa
.Ltp_edge_report_limit_read_0a4:
  stp x6, x3, [x22, #0x70]
.Ltp_edge_report_limit_read_0a8:
  ldp x11, x9, [x12, #0x8]
.Ltp_edge_report_limit_read_0ac:
  stp x5, x1, [x22, #0x50]
.Ltp_edge_report_limit_read_0b0:
  ldp x1, x3, [x2, #0x28]
.Ltp_edge_report_limit_read_0b4:
  ldp x13, x15, [x0, #0x8]
.Ltp_edge_report_limit_read_0b8:
  ldr x12, [x12]
.Ltp_edge_report_limit_read_0bc:
  ldp x17, x0, [x0, #0x18]
.Ltp_edge_report_limit_read_0c0:
  stp x10, x8, [x22, #0x18]
.Ltp_edge_report_limit_read_0c4:
  stp x1, x3, [x22, #0xa8]
.Ltp_edge_report_limit_read_0c8:
  ldp x5, x1, [x2]
.Ltp_edge_report_limit_read_0cc:
  ldp x3, x6, [x2, #0x18]
.Ltp_edge_report_limit_read_0d0:
  mov w24, #0xd8c
.Ltp_edge_report_limit_read_0d4:
  stp x11, x9, [x22, #0x8]
.Ltp_edge_report_limit_read_0d8:
  stp x5, x1, [x22, #0x80]
.Ltp_edge_report_limit_read_0dc:
  ldr x1, [x2, #0x10]
.Ltp_edge_report_limit_read_0e0:
  stp x3, x6, [x22, #0x98]
.Ltp_edge_report_limit_read_0e4:
  str x1, [x22, #0x90]
.Ltp_edge_report_limit_read_0e8:
  ldp x1, x2, [x4, #0x8]
.Ltp_edge_report_limit_read_0ec:
  str x12, [x22]
.Ltp_edge_report_limit_read_0f0:
  strb w14, [x22, #0x4f]
.Ltp_edge_report_limit_read_0f4:
  stur x2, [x22, #0xc7]
.Ltp_edge_report_limit_read_0f8:
  ldr x2, [x4]
.Ltp_edge_report_limit_read_0fc:
  stur x1, [x22, #0xbf]
.Ltp_edge_report_limit_read_100:
  stur x2, [x22, #0xb7]
.Ltp_edge_report_limit_read_104:
  ldp x2, x1, [x4, #0x28]
.Ltp_edge_report_limit_read_108:
  stur x13, [x22, #0x2f]
.Ltp_edge_report_limit_read_10c:
  stur x15, [x22, #0x37]
.Ltp_edge_report_limit_read_110:
  stur x1, [x22, #0xe7]
.Ltp_edge_report_limit_read_114:
  ldp x3, x1, [x4, #0x18]
.Ltp_edge_report_limit_read_118:
  adrp x4, .Ltp_edge_report_limit_read_str_5ac8
.Ltp_edge_report_limit_read_11c:
  add x4, x4, :lo12:.Ltp_edge_report_limit_read_str_5ac8
.Ltp_edge_report_limit_read_120:
  stur x2, [x22, #0xdf]
.Ltp_edge_report_limit_read_124:
  stur x17, [x22, #0x3f]
.Ltp_edge_report_limit_read_128:
  stur x1, [x22, #0xd7]
.Ltp_edge_report_limit_read_12c:
  ldp x2, x1, [x4, #0x8]
.Ltp_edge_report_limit_read_130:
  stur x3, [x22, #0xcf]
.Ltp_edge_report_limit_read_134:
  ldr x3, [x4]
.Ltp_edge_report_limit_read_138:
  stur x0, [x22, #0x47]
.Ltp_edge_report_limit_read_13c:
  stur x1, [x22, #0xff]
.Ltp_edge_report_limit_read_140:
  mov x1, x22
.Ltp_edge_report_limit_read_144:
  stur x2, [x22, #0xf7]
.Ltp_edge_report_limit_read_148:
  ldur x2, [x4, #0x2d]
.Ltp_edge_report_limit_read_14c:
  str x3, [x1, #0xef]!
.Ltp_edge_report_limit_read_150:
  ldr x3, [x4, #0x28]
.Ltp_edge_report_limit_read_154:
  ldp x5, x4, [x4, #0x18]
.Ltp_edge_report_limit_read_158:
  stur x2, [x1, #0x2d]
.Ltp_edge_report_limit_read_15c:
  adrp x2, .Ltp_edge_report_limit_read_str_313e
.Ltp_edge_report_limit_read_160:
  add x2, x2, :lo12:.Ltp_edge_report_limit_read_str_313e
.Ltp_edge_report_limit_read_164:
  stur x16, [x22, #0x27]
.Ltp_edge_report_limit_read_168:
  strb w14, [x22, #0x223]
.Ltp_edge_report_limit_read_16c:
  stp x4, x3, [x1, #0x20]
.Ltp_edge_report_limit_read_170:
  ldp x4, x3, [x2]
.Ltp_edge_report_limit_read_174:
  str x5, [x1, #0x18]
.Ltp_edge_report_limit_read_178:
  mov w1, #0x696d
.Ltp_edge_report_limit_read_17c:
  add x5, x22, #0x124
.Ltp_edge_report_limit_read_180:
  movk w1, #0xa74, lsl #16
.Ltp_edge_report_limit_read_184:
  str w1, [x22, #0x15c]
.Ltp_edge_report_limit_read_188:
  stp x4, x3, [x5]
.Ltp_edge_report_limit_read_18c:
  ldp x3, x1, [x2, #0x28]
.Ltp_edge_report_limit_read_190:
  ldr x4, [x2, #0x10]
.Ltp_edge_report_limit_read_194:
  stp x3, x1, [x5, #0x28]
.Ltp_edge_report_limit_read_198:
  ldp x2, x1, [x2, #0x18]
.Ltp_edge_report_limit_read_19c:
  adrp x3, .Ltp_edge_report_limit_read_str_bef5
.Ltp_edge_report_limit_read_1a0:
  add x3, x3, :lo12:.Ltp_edge_report_limit_read_str_bef5
.Ltp_edge_report_limit_read_1a4:
  str x4, [x5, #0x10]
.Ltp_edge_report_limit_read_1a8:
  stp x2, x1, [x5, #0x18]
.Ltp_edge_report_limit_read_1ac:
  ldp x4, x1, [x3, #0x10]
.Ltp_edge_report_limit_read_1b0:
  stp x4, x1, [x22, #0x170]
.Ltp_edge_report_limit_read_1b4:
  ldp x1, x2, [x3]
.Ltp_edge_report_limit_read_1b8:
  stp x1, x2, [x22, #0x160]
.Ltp_edge_report_limit_read_1bc:
  ldp x2, x4, [x3, #0x30]
.Ltp_edge_report_limit_read_1c0:
  ldp x3, x1, [x3, #0x20]
.Ltp_edge_report_limit_read_1c4:
  stp x2, x4, [x22, #0x190]
.Ltp_edge_report_limit_read_1c8:
  adrp x2, .Ltp_edge_report_limit_read_str_743e
.Ltp_edge_report_limit_read_1cc:
  add x2, x2, :lo12:.Ltp_edge_report_limit_read_str_743e
.Ltp_edge_report_limit_read_1d0:
  stp x3, x1, [x22, #0x180]
.Ltp_edge_report_limit_read_1d4:
  ldp x4, x3, [x2]
.Ltp_edge_report_limit_read_1d8:
  mov w1, #0x7469
.Ltp_edge_report_limit_read_1dc:
  movk w1, #0xa, lsl #16
.Ltp_edge_report_limit_read_1e0:
  str w1, [x22, #0x1d8]
.Ltp_edge_report_limit_read_1e4:
  stp x4, x3, [x22, #0x1a0]
.Ltp_edge_report_limit_read_1e8:
  ldp x3, x1, [x2, #0x28]
.Ltp_edge_report_limit_read_1ec:
  stp x3, x1, [x22, #0x1c8]
.Ltp_edge_report_limit_read_1f0:
  ldr x1, [x2, #0x10]
.Ltp_edge_report_limit_read_1f4:
  ldp x2, x4, [x2, #0x18]
.Ltp_edge_report_limit_read_1f8:
  str x1, [x22, #0x1b0]
.Ltp_edge_report_limit_read_1fc:
  adrp x1, .Ltp_edge_report_limit_read_str_9de1
.Ltp_edge_report_limit_read_200:
  add x1, x1, :lo12:.Ltp_edge_report_limit_read_str_9de1
.Ltp_edge_report_limit_read_204:
  stp x2, x4, [x22, #0x1b8]
.Ltp_edge_report_limit_read_208:
  ldp x3, x2, [x1, #0x10]
.Ltp_edge_report_limit_read_20c:
  add x4, x22, #0x1db
.Ltp_edge_report_limit_read_210:
  stp x3, x2, [x4, #0x10]
.Ltp_edge_report_limit_read_214:
  ldp x2, x5, [x1]
.Ltp_edge_report_limit_read_218:
  stp x2, x5, [x4]
.Ltp_edge_report_limit_read_21c:
  ldp x2, x3, [x1, #0x38]
.Ltp_edge_report_limit_read_220:
  stp x2, x3, [x4, #0x38]
.Ltp_edge_report_limit_read_224:
  ldr x2, [x1, #0x20]
.Ltp_edge_report_limit_read_228:
  ldp x1, x5, [x1, #0x28]
.Ltp_edge_report_limit_read_22c:
  str x2, [x4, #0x20]
.Ltp_edge_report_limit_read_230:
  adrp x2, .Ltp_edge_report_limit_read_str_747a
.Ltp_edge_report_limit_read_234:
  add x2, x2, :lo12:.Ltp_edge_report_limit_read_str_747a
.Ltp_edge_report_limit_read_238:
  stp x1, x5, [x4, #0x28]
.Ltp_edge_report_limit_read_23c:
  add x1, x22, #0x224
.Ltp_edge_report_limit_read_240:
  stp x10, x8, [x1, #0x18]
.Ltp_edge_report_limit_read_244:
  add x8, x22, #0x24b
.Ltp_edge_report_limit_read_248:
  stp x11, x9, [x1, #0x8]
.Ltp_edge_report_limit_read_24c:
  str x12, [x1]
.Ltp_edge_report_limit_read_250:
  mov w1, #0xd8c
.Ltp_edge_report_limit_read_254:
  strh w14, [x8, #0x28]
.Ltp_edge_report_limit_read_258:
  stp x15, x17, [x8, #0x10]
.Ltp_edge_report_limit_read_25c:
  str x0, [x8, #0x20]
.Ltp_edge_report_limit_read_260:
  add x0, x22, #0x274
.Ltp_edge_report_limit_read_264:
  stp x16, x13, [x8]
.Ltp_edge_report_limit_read_268:
  ldrb w3, [x23, #0x1b]
.Ltp_edge_report_limit_read_26c:
  bl snprintf
.Ltp_edge_report_limit_read_270:
  sxtw x8, w0
.Ltp_edge_report_limit_read_274:
  ldrb w3, [x23, #0x24]
.Ltp_edge_report_limit_read_278:
  adrp x2, .Ltp_edge_report_limit_read_str_9546
.Ltp_edge_report_limit_read_27c:
  add x2, x2, :lo12:.Ltp_edge_report_limit_read_str_9546
.Ltp_edge_report_limit_read_280:
  add x25, x8, #0x274
.Ltp_edge_report_limit_read_284:
  sub x1, x24, x8
.Ltp_edge_report_limit_read_288:
  add x0, x22, x25
.Ltp_edge_report_limit_read_28c:
  bl snprintf
.Ltp_edge_report_limit_read_290:
  add x25, x25, w0, sxtw
.Ltp_edge_report_limit_read_294:
  mov w24, #0x1000
.Ltp_edge_report_limit_read_298:
  ldrh w3, [x23, #0x3e]
.Ltp_edge_report_limit_read_29c:
  adrp x2, .Ltp_edge_report_limit_read_str_c61
.Ltp_edge_report_limit_read_2a0:
  add x2, x2, :lo12:.Ltp_edge_report_limit_read_str_c61
.Ltp_edge_report_limit_read_2a4:
  sub x1, x24, x25
.Ltp_edge_report_limit_read_2a8:
  add x0, x22, x25
.Ltp_edge_report_limit_read_2ac:
  bl snprintf
.Ltp_edge_report_limit_read_2b0:
  add x25, x25, w0, sxtw
.Ltp_edge_report_limit_read_2b4:
  ldrb w3, [x23, #0x26]
.Ltp_edge_report_limit_read_2b8:
  adrp x2, .Ltp_edge_report_limit_read_str_6d76
.Ltp_edge_report_limit_read_2bc:
  add x2, x2, :lo12:.Ltp_edge_report_limit_read_str_6d76
.Ltp_edge_report_limit_read_2c0:
  sub x1, x24, x25
.Ltp_edge_report_limit_read_2c4:
  add x0, x22, x25
.Ltp_edge_report_limit_read_2c8:
  bl snprintf
.Ltp_edge_report_limit_read_2cc:
  add x25, x25, w0, sxtw
.Ltp_edge_report_limit_read_2d0:
  ldrb w3, [x23, #0x25]
.Ltp_edge_report_limit_read_2d4:
  adrp x2, .Ltp_edge_report_limit_read_str_b96d
.Ltp_edge_report_limit_read_2d8:
  add x2, x2, :lo12:.Ltp_edge_report_limit_read_str_b96d
.Ltp_edge_report_limit_read_2dc:
  sub x1, x24, x25
.Ltp_edge_report_limit_read_2e0:
  add x0, x22, x25
.Ltp_edge_report_limit_read_2e4:
  bl snprintf
.Ltp_edge_report_limit_read_2e8:
  add x25, x25, w0, sxtw
.Ltp_edge_report_limit_read_2ec:
  ldrh w3, [x23, #0x3c]
.Ltp_edge_report_limit_read_2f0:
  adrp x2, .Ltp_edge_report_limit_read_str_6123
.Ltp_edge_report_limit_read_2f4:
  add x2, x2, :lo12:.Ltp_edge_report_limit_read_str_6123
.Ltp_edge_report_limit_read_2f8:
  sub x1, x24, x25
.Ltp_edge_report_limit_read_2fc:
  add x0, x22, x25
.Ltp_edge_report_limit_read_300:
  bl snprintf
.Ltp_edge_report_limit_read_304:
  add x25, x25, w0, sxtw
.Ltp_edge_report_limit_read_308:
  ldrb w3, [x23, #0x38]
.Ltp_edge_report_limit_read_30c:
  adrp x2, .Ltp_edge_report_limit_read_str_17f3
.Ltp_edge_report_limit_read_310:
  add x2, x2, :lo12:.Ltp_edge_report_limit_read_str_17f3
.Ltp_edge_report_limit_read_314:
  sub x1, x24, x25
.Ltp_edge_report_limit_read_318:
  add x0, x22, x25
.Ltp_edge_report_limit_read_31c:
  bl snprintf
.Ltp_edge_report_limit_read_320:
  add x25, x25, w0, sxtw
.Ltp_edge_report_limit_read_324:
  adrp x2, .Ltp_edge_report_limit_read_str_37c9
.Ltp_edge_report_limit_read_328:
  add x2, x2, :lo12:.Ltp_edge_report_limit_read_str_37c9
.Ltp_edge_report_limit_read_32c:
  sub x1, x24, x25
.Ltp_edge_report_limit_read_330:
  add x0, x22, x25
.Ltp_edge_report_limit_read_334:
  bl snprintf
.Ltp_edge_report_limit_read_338:
  add x24, x25, w0, sxtw
.Ltp_edge_report_limit_read_33c:
  cmp x24, #0xffa
.Ltp_edge_report_limit_read_340:
  b.hi  .Ltp_edge_report_limit_read_3dc
.Ltp_edge_report_limit_read_344:
  mov w8, #0x1000
.Ltp_edge_report_limit_read_348:
  ldrb w3, [x23, #0x27]
.Ltp_edge_report_limit_read_34c:
  adrp x2, .Ltp_edge_report_limit_read_str_37dc
.Ltp_edge_report_limit_read_350:
  add x2, x2, :lo12:.Ltp_edge_report_limit_read_str_37dc
.Ltp_edge_report_limit_read_354:
  sub x1, x8, x24
.Ltp_edge_report_limit_read_358:
  add x0, x22, x24
.Ltp_edge_report_limit_read_35c:
  bl snprintf
.Ltp_edge_report_limit_read_360:
  add x24, x24, w0, sxtw
.Ltp_edge_report_limit_read_364:
  cmp x24, #0xffa
.Ltp_edge_report_limit_read_368:
  b.hi  .Ltp_edge_report_limit_read_3dc
.Ltp_edge_report_limit_read_36c:
  mov w8, #0x1000
.Ltp_edge_report_limit_read_370:
  ldrb w3, [x23, #0x28]
.Ltp_edge_report_limit_read_374:
  adrp x2, .Ltp_edge_report_limit_read_str_37dc
.Ltp_edge_report_limit_read_378:
  add x2, x2, :lo12:.Ltp_edge_report_limit_read_str_37dc
.Ltp_edge_report_limit_read_37c:
  sub x1, x8, x24
.Ltp_edge_report_limit_read_380:
  add x0, x22, x24
.Ltp_edge_report_limit_read_384:
  bl snprintf
.Ltp_edge_report_limit_read_388:
  add x24, x24, w0, sxtw
.Ltp_edge_report_limit_read_38c:
  cmp x24, #0xffa
.Ltp_edge_report_limit_read_390:
  b.hi  .Ltp_edge_report_limit_read_3dc
.Ltp_edge_report_limit_read_394:
  mov w8, #0x1000
.Ltp_edge_report_limit_read_398:
  ldrb w3, [x23, #0x29]
.Ltp_edge_report_limit_read_39c:
  adrp x2, .Ltp_edge_report_limit_read_str_37dc
.Ltp_edge_report_limit_read_3a0:
  add x2, x2, :lo12:.Ltp_edge_report_limit_read_str_37dc
.Ltp_edge_report_limit_read_3a4:
  sub x1, x8, x24
.Ltp_edge_report_limit_read_3a8:
  add x0, x22, x24
.Ltp_edge_report_limit_read_3ac:
  bl snprintf
.Ltp_edge_report_limit_read_3b0:
  add x24, x24, w0, sxtw
.Ltp_edge_report_limit_read_3b4:
  cmp x24, #0xffa
.Ltp_edge_report_limit_read_3b8:
  b.hi  .Ltp_edge_report_limit_read_3dc
.Ltp_edge_report_limit_read_3bc:
  mov w8, #0x1000
.Ltp_edge_report_limit_read_3c0:
  ldrb w3, [x23, #0x2a]
.Ltp_edge_report_limit_read_3c4:
  adrp x2, .Ltp_edge_report_limit_read_str_37dc
.Ltp_edge_report_limit_read_3c8:
  add x2, x2, :lo12:.Ltp_edge_report_limit_read_str_37dc
.Ltp_edge_report_limit_read_3cc:
  sub x1, x8, x24
.Ltp_edge_report_limit_read_3d0:
  add x0, x22, x24
.Ltp_edge_report_limit_read_3d4:
  bl snprintf
.Ltp_edge_report_limit_read_3d8:
  add x24, x24, w0, sxtw
.Ltp_edge_report_limit_read_3dc:
  mov w8, #0x1000
.Ltp_edge_report_limit_read_3e0:
  adrp x2, .Ltp_edge_report_limit_read_str_8ab7
.Ltp_edge_report_limit_read_3e4:
  add x2, x2, :lo12:.Ltp_edge_report_limit_read_str_8ab7
.Ltp_edge_report_limit_read_3e8:
  sub x1, x8, x24
.Ltp_edge_report_limit_read_3ec:
  add x0, x22, x24
.Ltp_edge_report_limit_read_3f0:
  bl snprintf
.Ltp_edge_report_limit_read_3f4:
  add x24, x24, w0, sxtw
.Ltp_edge_report_limit_read_3f8:
  cmp x24, #0xffa
.Ltp_edge_report_limit_read_3fc:
  b.hi  .Ltp_edge_report_limit_read_498
.Ltp_edge_report_limit_read_400:
  mov w8, #0x1000
.Ltp_edge_report_limit_read_404:
  ldrb w3, [x23, #0x34]
.Ltp_edge_report_limit_read_408:
  adrp x2, .Ltp_edge_report_limit_read_str_37dc
.Ltp_edge_report_limit_read_40c:
  add x2, x2, :lo12:.Ltp_edge_report_limit_read_str_37dc
.Ltp_edge_report_limit_read_410:
  sub x1, x8, x24
.Ltp_edge_report_limit_read_414:
  add x0, x22, x24
.Ltp_edge_report_limit_read_418:
  bl snprintf
.Ltp_edge_report_limit_read_41c:
  add x24, x24, w0, sxtw
.Ltp_edge_report_limit_read_420:
  cmp x24, #0xffa
.Ltp_edge_report_limit_read_424:
  b.hi  .Ltp_edge_report_limit_read_498
.Ltp_edge_report_limit_read_428:
  mov w8, #0x1000
.Ltp_edge_report_limit_read_42c:
  ldrb w3, [x23, #0x35]
.Ltp_edge_report_limit_read_430:
  adrp x2, .Ltp_edge_report_limit_read_str_37dc
.Ltp_edge_report_limit_read_434:
  add x2, x2, :lo12:.Ltp_edge_report_limit_read_str_37dc
.Ltp_edge_report_limit_read_438:
  sub x1, x8, x24
.Ltp_edge_report_limit_read_43c:
  add x0, x22, x24
.Ltp_edge_report_limit_read_440:
  bl snprintf
.Ltp_edge_report_limit_read_444:
  add x24, x24, w0, sxtw
.Ltp_edge_report_limit_read_448:
  cmp x24, #0xffa
.Ltp_edge_report_limit_read_44c:
  b.hi  .Ltp_edge_report_limit_read_498
.Ltp_edge_report_limit_read_450:
  mov w8, #0x1000
.Ltp_edge_report_limit_read_454:
  ldrb w3, [x23, #0x36]
.Ltp_edge_report_limit_read_458:
  adrp x2, .Ltp_edge_report_limit_read_str_37dc
.Ltp_edge_report_limit_read_45c:
  add x2, x2, :lo12:.Ltp_edge_report_limit_read_str_37dc
.Ltp_edge_report_limit_read_460:
  sub x1, x8, x24
.Ltp_edge_report_limit_read_464:
  add x0, x22, x24
.Ltp_edge_report_limit_read_468:
  bl snprintf
.Ltp_edge_report_limit_read_46c:
  add x24, x24, w0, sxtw
.Ltp_edge_report_limit_read_470:
  cmp x24, #0xffa
.Ltp_edge_report_limit_read_474:
  b.hi  .Ltp_edge_report_limit_read_498
.Ltp_edge_report_limit_read_478:
  mov w8, #0x1000
.Ltp_edge_report_limit_read_47c:
  ldrb w3, [x23, #0x37]
.Ltp_edge_report_limit_read_480:
  adrp x2, .Ltp_edge_report_limit_read_str_37dc
.Ltp_edge_report_limit_read_484:
  add x2, x2, :lo12:.Ltp_edge_report_limit_read_str_37dc
.Ltp_edge_report_limit_read_488:
  sub x1, x8, x24
.Ltp_edge_report_limit_read_48c:
  add x0, x22, x24
.Ltp_edge_report_limit_read_490:
  bl snprintf
.Ltp_edge_report_limit_read_494:
  add x24, x24, w0, sxtw
.Ltp_edge_report_limit_read_498:
  mov w8, #0x1000
.Ltp_edge_report_limit_read_49c:
  adrp x2, .Ltp_edge_report_limit_read_str_7a13
.Ltp_edge_report_limit_read_4a0:
  add x2, x2, :lo12:.Ltp_edge_report_limit_read_str_7a13
.Ltp_edge_report_limit_read_4a4:
  sub x1, x8, x24
.Ltp_edge_report_limit_read_4a8:
  add x0, x22, x24
.Ltp_edge_report_limit_read_4ac:
  bl snprintf
.Ltp_edge_report_limit_read_4b0:
  add x23, x24, w0, sxtw
.Ltp_edge_report_limit_read_4b4:
  mov x0, x21
.Ltp_edge_report_limit_read_4b8:
  mov x1, x20
.Ltp_edge_report_limit_read_4bc:
  mov x2, x19
.Ltp_edge_report_limit_read_4c0:
  mov x3, x22
.Ltp_edge_report_limit_read_4c4:
  mov x4, x23
.Ltp_edge_report_limit_read_4c8:
  bl simple_read_from_buffer
.Ltp_edge_report_limit_read_4cc:
  mov x0, x22
.Ltp_edge_report_limit_read_4d0:
  bl kfree
.Ltp_edge_report_limit_read_4d4:
  mov x0, x23
.Ltp_edge_report_limit_read_4d8:
  ldp x20, x19, [sp, #0x40]
.Ltp_edge_report_limit_read_4dc:
  ldr x25, [sp, #0x10]
.Ltp_edge_report_limit_read_4e0:
  ldp x22, x21, [sp, #0x30]
.Ltp_edge_report_limit_read_4e4:
  ldp x24, x23, [sp, #0x20]
.Ltp_edge_report_limit_read_4e8:
  ldp x29, x30, [sp], #0x50
.Ltp_edge_report_limit_read_4ec:
  autiasp
.Ltp_edge_report_limit_read_4f0:
  ret
.Ltp_edge_report_limit_read_4f4:
  adrp x8, tp_edge_report_limit_read._alloc_tag
.Ltp_edge_report_limit_read_4f8:
  add x8, x8, :lo12:tp_edge_report_limit_read._alloc_tag
.Ltp_edge_report_limit_read_4fc:
  mrs x24, SP_EL0
.Ltp_edge_report_limit_read_500:
  ldr x25, [x24, #0x50]
.Ltp_edge_report_limit_read_504:
  str x8, [x24, #0x50]
.Ltp_edge_report_limit_read_508:
  adrp x8, kmalloc_caches+0x60
.Ltp_edge_report_limit_read_50c:
  ldr x0, [x8, :lo12:kmalloc_caches+0x60]
.Ltp_edge_report_limit_read_510:
  mov w1, #0xdc0
.Ltp_edge_report_limit_read_514:
  mov w2, #0x1000
.Ltp_edge_report_limit_read_518:
  bl __kmalloc_cache_noprof
.Ltp_edge_report_limit_read_51c:
  mov x22, x0
.Ltp_edge_report_limit_read_520:
  str x25, [x24, #0x50]
.Ltp_edge_report_limit_read_524:
  cbnz x22, .Ltp_edge_report_limit_read_060
.Ltp_edge_report_limit_read_528:
  adrp x0, .Ltp_edge_report_limit_read_str_1dff
.Ltp_edge_report_limit_read_52c:
  add x0, x0, :lo12:.Ltp_edge_report_limit_read_str_1dff
.Ltp_edge_report_limit_read_530:
  bl _printk
.Ltp_edge_report_limit_read_534:
  mov x0, #-0xc
.Ltp_edge_report_limit_read_538:
  b  .Ltp_edge_report_limit_read_4d8
.Ltp_edge_report_limit_read_end:
.size tp_edge_report_limit_read, .Ltp_edge_report_limit_read_end - tp_edge_report_limit_read
.pushsection .rodata.str1.1,"aMS",@progbits,1
.Ltp_edge_report_limit_read_str_444c:
  .string "algo_open, echo algo_open:1 > edge_report_limit\n"
.Ltp_edge_report_limit_read_str_447d:
  .string "jitter_pixel, echo jitter_pixel:10 > edge_report_limit\n"
.Ltp_edge_report_limit_read_str_bebc:
  .string "jitter_timer, echo jitter_timer:100 > edge_report_limit\n"
.Ltp_edge_report_limit_read_str_abbd:
  .string "#######################################"
.Ltp_edge_report_limit_read_str_9db7:
  .string "#######################################\n\n"
.Ltp_edge_report_limit_read_str_5ac8:
  .string "click_pixel, echo click_pixel:10 > edge_report_limit\n"
.Ltp_edge_report_limit_read_str_313e:
  .string "long_press_open, echo long_press_open:1 > edge_report_limit\n"
.Ltp_edge_report_limit_read_str_bef5:
  .string "long_press_timer, echo long_press_timer:500 > edge_report_limit\n"
.Ltp_edge_report_limit_read_str_743e:
  .string "pixel limit level,user setting. echo 5 > edge_report_limit\n"
.Ltp_edge_report_limit_read_str_9de1:
  .string "long_press_pixel, echo long_press_pixel:10,10,20,20 > edge_report_limit\n\n"
.Ltp_edge_report_limit_read_str_747a:
  .string "algo_open:%5u\n"
.Ltp_edge_report_limit_read_str_9546:
  .string "jitter_pixel:%5u\n"
.Ltp_edge_report_limit_read_str_c61:
  .string "jitter_timer:%5u\n"
.Ltp_edge_report_limit_read_str_6d76:
  .string "click_pixel:%5u\n"
.Ltp_edge_report_limit_read_str_b96d:
  .string "long_press_open:%5u\n"
.Ltp_edge_report_limit_read_str_6123:
  .string "long_press_timer:%5u\n"
.Ltp_edge_report_limit_read_str_17f3:
  .string "pixel limit level:%5u\n"
.Ltp_edge_report_limit_read_str_37c9:
  .string "click_pixel width:"
.Ltp_edge_report_limit_read_str_37dc:
  .string "%5u"
.Ltp_edge_report_limit_read_str_8ab7:
  .string "\n long_press_pixel:"
.Ltp_edge_report_limit_read_str_7a13:
  .string "\n"
.Ltp_edge_report_limit_read_str_1dff:
  .string "\0015tpd: alloc data_buf failed"
.popsection
.pushsection .codetag.alloc_tags,"aw",@progbits
.balign 8
.globl tp_edge_report_limit_read._alloc_tag
.type tp_edge_report_limit_read._alloc_tag, @object
tp_edge_report_limit_read._alloc_tag:
  .zero 8
.popsection
.section .note.GNU-stack,"",@progbits
