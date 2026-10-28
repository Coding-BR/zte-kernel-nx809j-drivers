#include <asm/alternative-macros.h>
#include <asm/cpucaps.h>
#include <linux/atomic.h>
#include <linux/device.h>
#include <linux/delay.h>
#include <linux/hrtimer.h>
#include <linux/gpio.h>
#include <linux/gpio/consumer.h>
#include <linux/of_gpio.h>
#include <linux/interrupt.h>
#include <linux/kernel.h>
#include <linux/kobject.h>
#include <linux/module.h>
#include <linux/platform_device.h>
#include <linux/pwm.h>
#include <linux/regulator/consumer.h>
#include <linux/printk.h>
#include <linux/sysfs.h>
#include <linux/types.h>

/* Keep the stock BSS symbols and offsets without inventing a parent counter object. */
extern void *chip;
__asm__(
	".pushsection .bss,\"aw\",%nobits\n"
	".balign 8\n"
	".globl chip\n"
	".type chip, %object\n"
	"chip:\n"
	".zero 8\n"
	".size chip, 8\n"
	".zero 4\n"
	".local nb_fan_rpm_check.rst_cnt\n"
	".type nb_fan_rpm_check.rst_cnt, %object\n"
	"nb_fan_rpm_check.rst_cnt:\n"
	".zero 4\n"
	".size nb_fan_rpm_check.rst_cnt, 4\n"
	".popsection\n");

extern volatile s32 nb_fan_rpm_check_rst_cnt
	__asm__("nb_fan_rpm_check.rst_cnt");

__asm__(
	".pushsection .rodata.str1.1,\"aMS\",%progbits,1\n"
	".Lndtstr0:\n"
	".byte 0x01, 0x37, 0x5b, 0x25, 0x73, 0x5d, 0x20, 0x5b, 0x25, 0x73, 0x3a, 0x25, 0x64, 0x5d, 0x20, 0x46, 0x69, 0x6e, 0x64, 0x20, 0x25, 0x73, 0x20, 0x6e, 0x6f, 0x64, 0x65, 0x20, 0x61, 0x6e, 0x64, 0x20, 0x69, 0x6e, 0x69, 0x74, 0x20, 0x70, 0x77, 0x6d, 0x20, 0x74, 0x6f, 0x20, 0x6f, 0x66, 0x66, 0x21, 0x00\n"
	".Lndtstr1:\n"
	".byte 0x01, 0x37, 0x5b, 0x25, 0x73, 0x5d, 0x20, 0x5b, 0x25, 0x73, 0x3a, 0x25, 0x64, 0x5d, 0x20, 0x46, 0x61, 0x69, 0x6c, 0x65, 0x64, 0x20, 0x74, 0x6f, 0x20, 0x61, 0x6c, 0x6c, 0x6f, 0x63, 0x61, 0x74, 0x65, 0x20, 0x6d, 0x65, 0x6d, 0x6f, 0x72, 0x79, 0x20, 0x66, 0x6f, 0x72, 0x20, 0x66, 0x61, 0x6e, 0x5f, 0x64, 0x65, 0x76, 0x0a, 0x00\n"
	".Lndtstr2:\n"
	".byte 0x01, 0x37, 0x5b, 0x25, 0x73, 0x5d, 0x20, 0x5b, 0x25, 0x73, 0x3a, 0x25, 0x64, 0x5d, 0x20, 0x43, 0x61, 0x6e, 0x27, 0x74, 0x20, 0x73, 0x75, 0x70, 0x70, 0x6f, 0x72, 0x74, 0x20, 0x25, 0x64, 0x20, 0x66, 0x61, 0x6e, 0x73, 0x28, 0x6d, 0x61, 0x78, 0x20, 0x25, 0x64, 0x29, 0x0a, 0x00\n"
	".Lndtstr3:\n"
	".byte 0x01, 0x37, 0x5b, 0x25, 0x73, 0x5d, 0x20, 0x5b, 0x25, 0x73, 0x3a, 0x25, 0x64, 0x5d, 0x20, 0x46, 0x69, 0x6e, 0x64, 0x20, 0x25, 0x73, 0x20, 0x6e, 0x6f, 0x64, 0x65, 0x20, 0x62, 0x75, 0x74, 0x20, 0x69, 0x6e, 0x69, 0x74, 0x20, 0x66, 0x61, 0x69, 0x6c, 0x65, 0x64, 0x21, 0x00\n"
	".Lndtstr4:\n"
	".byte 0x01, 0x37, 0x5b, 0x25, 0x73, 0x5d, 0x20, 0x5b, 0x25, 0x73, 0x3a, 0x25, 0x64, 0x5d, 0x20, 0x47, 0x65, 0x74, 0x20, 0x6e, 0x6f, 0x64, 0x65, 0x20, 0x6c, 0x61, 0x62, 0x65, 0x6c, 0x20, 0x66, 0x61, 0x69, 0x6c, 0x65, 0x64, 0x21, 0x00\n"
	".Lndtstr5:\n"
	".byte 0x4e, 0x42, 0x5f, 0x46, 0x41, 0x4e, 0x00\n"
	".Lndtstr6:\n"
	".byte 0x01, 0x37, 0x5b, 0x25, 0x73, 0x5d, 0x20, 0x5b, 0x25, 0x73, 0x3a, 0x25, 0x64, 0x5d, 0x20, 0x4e, 0x6f, 0x20, 0x66, 0x61, 0x6e, 0x20, 0x63, 0x68, 0x69, 0x6c, 0x64, 0x20, 0x6e, 0x6f, 0x64, 0x65, 0x20, 0x64, 0x65, 0x66, 0x69, 0x6e, 0x65, 0x64, 0x0a, 0x00\n"
	".Lndtstr7:\n"
	".byte 0x01, 0x37, 0x5b, 0x25, 0x73, 0x5d, 0x20, 0x5b, 0x25, 0x73, 0x3a, 0x25, 0x64, 0x5d, 0x20, 0x47, 0x65, 0x74, 0x20, 0x70, 0x77, 0x6d, 0x20, 0x64, 0x65, 0x76, 0x69, 0x63, 0x65, 0x20, 0x66, 0x6f, 0x72, 0x20, 0x25, 0x73, 0x20, 0x66, 0x61, 0x69, 0x6c, 0x65, 0x64, 0x2c, 0x20, 0x72, 0x63, 0x3d, 0x25, 0x64, 0x0a, 0x00\n"
	".Lndtstr8:\n"
	".byte 0x6c, 0x61, 0x62, 0x65, 0x6c, 0x00\n"
	".Lndtstr9:\n"
	".byte 0x6e, 0x62, 0x5f, 0x66, 0x61, 0x6e, 0x5f, 0x70, 0x61, 0x72, 0x73, 0x65, 0x5f, 0x64, 0x74, 0x00\n"
	".popsection\n"
);


/* Layout scaffolding; the driver's fields and sysfs table are still pending. */
static struct platform_driver nubia_fan_driver
	__used __attribute__((section(".data"))) = {};
static struct attribute_group chip_attr_group
	__used __attribute__((section(".data"))) = {};

/* Count fan tachometer interrupts through the stock atomic counter. */
static __used irqreturn_t fan_speed_irq_proc(int irq, void *dev_id)
{
	/* Keep the stock LSE path, callback alternative, and LL/SC fallback. */
	asm goto(
		"ldr x8, [x1, #8]\n\t"
		ALTERNATIVE_CB("b\t%l[llsc]", %[cpucap], alt_cb_patch_nops)
		"add x8, x8, #4\n\t"
		"mov w9, #1\n\t"
		".inst 0xb829011f\n\t"
		"mov w0, #1\n\t"
		"ret\n\t"
		:
		: [cpucap] "i" (ARM64_HAS_LSE_ATOMICS)
		: "x8", "x9", "memory"
		: llsc);
	__builtin_unreachable();
llsc:
	asm volatile(
		"add x8, x8, #4\n\t"
		"prfm pstl1strm, [x8]\n\t"
		"3:\n\t"
		"ldxr w9, [x8]\n\t"
		"add w9, w9, #1\n\t"
		"stxr w10, w9, [x8]\n\t"
		"cbnz w10, 3b\n\t"
		"mov w0, #1\n\t"
		"ret\n\t"
		:
		:
		: "x8", "x9", "x10", "memory");
	__builtin_unreachable();
}

/* Stock-derived exact body preserves the Device Tree walk and KCFI-checked PWM callback. */
static __used __attribute__((naked)) int nb_fan_parse_dt(long *context)
{
	asm volatile(
		".inst 0xd503233f /* +0x000: paciasp */\n"
		".inst 0xd101c3ff /* +0x004: sub\tsp, sp, #0x70 */\n"
		".inst 0xa9027bfd /* +0x008: stp\tx29, x30, [sp, #0x20] */\n"
		".inst 0xa90367fa /* +0x00c: stp\tx26, x25, [sp, #0x30] */\n"
		".inst 0xa9045ff8 /* +0x010: stp\tx24, x23, [sp, #0x40] */\n"
		".inst 0xa90557f6 /* +0x014: stp\tx22, x21, [sp, #0x50] */\n"
		".inst 0xa9064ff4 /* +0x018: stp\tx20, x19, [sp, #0x60] */\n"
		".inst 0x910083fd /* +0x01c: add\tx29, sp, #0x20 */\n"
		".inst 0xd5384108 /* +0x020: mrs\tx8, SP_EL0 */\n"
		".inst 0xaa0003f3 /* +0x024: mov\tx19, x0 */\n"
		".inst 0xaa1f03e1 /* +0x028: mov\tx1, xzr */\n"
		".inst 0xf9438908 /* +0x02c: ldr\tx8, [x8, #0x710] */\n"
		".inst 0xf81f83a8 /* +0x030: stur\tx8, [x29, #-0x8] */\n"
		".inst 0xf9400008 /* +0x034: ldr\tx8, [x0] */\n"
		".inst 0xa900ffff /* +0x038: stp\txzr, xzr, [sp, #0x8] */\n"
		".inst 0xf90003ff /* +0x03c: str\txzr, [sp] */\n"
		".inst 0xf9417514 /* +0x040: ldr\tx20, [x8, #0x2e8] */\n"
		".inst 0xaa1403e0 /* +0x044: mov\tx0, x20 */\n"
		" .Lndtrel18:\n"
		".inst 0x94000000 /* +0x048: bl\t0x5f0 <nb_fan_parse_dt+0x48> */\n"
		".reloc .Lndtrel18, R_AARCH64_CALL26, of_get_next_available_child\n"
		".inst 0xb4000ca0 /* +0x04c: cbz\tx0, 0x788 <nb_fan_parse_dt+0x1e0> */\n"
		".inst 0xaa0003e1 /* +0x050: mov\tx1, x0 */\n"
		".inst 0x12800015 /* +0x054: mov\tw21, #-0x1              // =-1 */\n"
		".inst 0xaa1403e0 /* +0x058: mov\tx0, x20 */\n"
		" .Lndtrel23:\n"
		".inst 0x94000000 /* +0x05c: bl\t0x604 <nb_fan_parse_dt+0x5c> */\n"
		".reloc .Lndtrel23, R_AARCH64_CALL26, of_get_next_available_child\n"
		".inst 0xaa0003e1 /* +0x060: mov\tx1, x0 */\n"
		".inst 0x110006b5 /* +0x064: add\tw21, w21, #0x1 */\n"
		".inst 0xb5ffff80 /* +0x068: cbnz\tx0, 0x600 <nb_fan_parse_dt+0x58> */\n"
		".inst 0x12b00008 /* +0x06c: mov\tw8, #0x7fffffff         // =2147483647 */\n"
		".inst 0x6b0802bf /* +0x070: cmp\tw21, w8 */\n"
		".inst 0x54000b62 /* +0x074: b.hs\t0x788 <nb_fan_parse_dt+0x1e0> */\n"
		".inst 0x35000c95 /* +0x078: cbnz\tw21, 0x7b0 <nb_fan_parse_dt+0x208> */\n"
		".inst 0xf9400260 /* +0x07c: ldr\tx0, [x19] */\n"
		".inst 0x52801501 /* +0x080: mov\tw1, #0xa8               // =168 */\n"
		".inst 0x5281b802 /* +0x084: mov\tw2, #0xdc0              // =3520 */\n"
		" .Lndtrel34:\n"
		".inst 0x94000000 /* +0x088: bl\t0x630 <nb_fan_parse_dt+0x88> */\n"
		".reloc .Lndtrel34, R_AARCH64_CALL26, devm_kmalloc\n"
		".inst 0xf9000660 /* +0x08c: str\tx0, [x19, #0x8] */\n"
		".inst 0xb4000d40 /* +0x090: cbz\tx0, 0x7e0 <nb_fan_parse_dt+0x238> */\n"
		".inst 0xaa1403e0 /* +0x094: mov\tx0, x20 */\n"
		".inst 0xaa1f03e1 /* +0x098: mov\tx1, xzr */\n"
		" .Lndtrel39:\n"
		".inst 0x94000000 /* +0x09c: bl\t0x644 <nb_fan_parse_dt+0x9c> */\n"
		".reloc .Lndtrel39, R_AARCH64_CALL26, of_get_next_available_child\n"
		".inst 0xb4000940 /* +0x0a0: cbz\tx0, 0x770 <nb_fan_parse_dt+0x1c8> */\n"
		".inst 0xaa0003f5 /* +0x0a4: mov\tx21, x0 */\n"
		" .Lndtrel42:\n"
		".inst 0x90000016 /* +0x0a8: adrp\tx22, 0x0 <.text> */\n"
		".reloc .Lndtrel42, R_AARCH64_ADR_PREL_PG_HI21, .Lndtstr8\n"
		" .Lndtrel43:\n"
		".inst 0x910002d6 /* +0x0ac: add\tx22, x22, #0x0 */\n"
		".reloc .Lndtrel43, R_AARCH64_ADD_ABS_LO12_NC, .Lndtstr8\n"
		" .Lndtrel44:\n"
		".inst 0x90000017 /* +0x0b0: adrp\tx23, 0x0 <.text> */\n"
		".reloc .Lndtrel44, R_AARCH64_ADR_PREL_PG_HI21, .Lndtstr0\n"
		" .Lndtrel45:\n"
		".inst 0x910002f7 /* +0x0b4: add\tx23, x23, #0x0 */\n"
		".reloc .Lndtrel45, R_AARCH64_ADD_ABS_LO12_NC, .Lndtstr0\n"
		" .Lndtrel46:\n"
		".inst 0x90000018 /* +0x0b8: adrp\tx24, 0x0 <.text> */\n"
		".reloc .Lndtrel46, R_AARCH64_ADR_PREL_PG_HI21, .Lndtstr5\n"
		" .Lndtrel47:\n"
		".inst 0x91000318 /* +0x0bc: add\tx24, x24, #0x0 */\n"
		".reloc .Lndtrel47, R_AARCH64_ADD_ABS_LO12_NC, .Lndtstr5\n"
		" .Lndtrel48:\n"
		".inst 0x90000019 /* +0x0c0: adrp\tx25, 0x0 <.text> */\n"
		".reloc .Lndtrel48, R_AARCH64_ADR_PREL_PG_HI21, .Lndtstr9\n"
		" .Lndtrel49:\n"
		".inst 0x91000339 /* +0x0c4: add\tx25, x25, #0x0 */\n"
		".reloc .Lndtrel49, R_AARCH64_ADD_ABS_LO12_NC, .Lndtstr9\n"
		".inst 0x14000006 /* +0x0c8: b\t0x688 <nb_fan_parse_dt+0xe0> */\n"
		".inst 0xaa1403e0 /* +0x0cc: mov\tx0, x20 */\n"
		".inst 0xaa1503e1 /* +0x0d0: mov\tx1, x21 */\n"
		" .Lndtrel53:\n"
		".inst 0x94000000 /* +0x0d4: bl\t0x67c <nb_fan_parse_dt+0xd4> */\n"
		".reloc .Lndtrel53, R_AARCH64_CALL26, of_get_next_available_child\n"
		".inst 0xaa0003f5 /* +0x0d8: mov\tx21, x0 */\n"
		".inst 0xb4000760 /* +0x0dc: cbz\tx0, 0x770 <nb_fan_parse_dt+0x1c8> */\n"
		".inst 0xaa1503e0 /* +0x0e0: mov\tx0, x21 */\n"
		".inst 0xaa1603e1 /* +0x0e4: mov\tx1, x22 */\n"
		".inst 0xaa1f03e2 /* +0x0e8: mov\tx2, xzr */\n"
		" .Lndtrel59:\n"
		".inst 0x94000000 /* +0x0ec: bl\t0x694 <nb_fan_parse_dt+0xec> */\n"
		".reloc .Lndtrel59, R_AARCH64_CALL26, of_get_property\n"
		".inst 0xb5000060 /* +0x0f0: cbnz\tx0, 0x6a4 <nb_fan_parse_dt+0xfc> */\n"
		".inst 0xf94002a0 /* +0x0f4: ldr\tx0, [x21] */\n"
		".inst 0xb4001000 /* +0x0f8: cbz\tx0, 0x8a0 <nb_fan_parse_dt+0x2f8> */\n"
		".inst 0x39400008 /* +0x0fc: ldrb\tw8, [x0] */\n"
		".inst 0x71019908 /* +0x100: subs\tw8, w8, #0x66 */\n"
		".inst 0x54000081 /* +0x104: b.ne\t0x6bc <nb_fan_parse_dt+0x114> */\n"
		".inst 0x39400408 /* +0x108: ldrb\tw8, [x0, #0x1] */\n"
		".inst 0x71018508 /* +0x10c: subs\tw8, w8, #0x61 */\n"
		".inst 0x54000540 /* +0x110: b.eq\t0x760 <nb_fan_parse_dt+0x1b8> */\n"
		".inst 0x35fffdc8 /* +0x114: cbnz\tw8, 0x674 <nb_fan_parse_dt+0xcc> */\n"
		".inst 0xf9400668 /* +0x118: ldr\tx8, [x19, #0x8] */\n"
		".inst 0xb4fffd88 /* +0x11c: cbz\tx8, 0x674 <nb_fan_parse_dt+0xcc> */\n"
		".inst 0xaa0003fa /* +0x120: mov\tx26, x0 */\n"
		".inst 0xf9400260 /* +0x124: ldr\tx0, [x19] */\n"
		".inst 0x910062a1 /* +0x128: add\tx1, x21, #0x18 */\n"
		".inst 0xaa1f03e2 /* +0x12c: mov\tx2, xzr */\n"
		" .Lndtrel76:\n"
		".inst 0x94000000 /* +0x130: bl\t0x6d8 <nb_fan_parse_dt+0x130> */\n"
		".reloc .Lndtrel76, R_AARCH64_CALL26, devm_fwnode_pwm_get\n"
		".inst 0xb13ffc1f /* +0x134: cmn\tx0, #0xfff */\n"
		".inst 0x540004c2 /* +0x138: b.hs\t0x778 <nb_fan_parse_dt+0x1d0> */\n"
		".inst 0xf9400668 /* +0x13c: ldr\tx8, [x19, #0x8] */\n"
		".inst 0x910003e2 /* +0x140: mov\tx2, sp */\n"
		".inst 0xf900111a /* +0x144: str\tx26, [x8, #0x20] */\n"
		".inst 0xf9400668 /* +0x148: ldr\tx8, [x19, #0x8] */\n"
		".inst 0xf9003500 /* +0x14c: str\tx0, [x8, #0x68] */\n"
		".inst 0xf9400668 /* +0x150: ldr\tx8, [x19, #0x8] */\n"
		".inst 0xf9403501 /* +0x154: ldr\tx1, [x8, #0x68] */\n"
		".inst 0xa941a820 /* +0x158: ldp\tx0, x10, [x1, #0x18] */\n"
		".inst 0xf9402028 /* +0x15c: ldr\tx8, [x1, #0x40] */\n"
		".inst 0xb9402829 /* +0x160: ldr\tw9, [x1, #0x28] */\n"
		".inst 0xa900a3ff /* +0x164: stp\txzr, x8, [sp, #0x8] */\n"
		".inst 0xf941c808 /* +0x168: ldr\tx8, [x0, #0x390] */\n"
		".inst 0xb90013e9 /* +0x16c: str\tw9, [sp, #0x10] */\n"
		".inst 0xf90003ea /* +0x170: str\tx10, [sp] */\n"
		".inst 0xf9400d08 /* +0x174: ldr\tx8, [x8, #0x18] */\n"
		".inst 0x79002bff /* +0x178: strh\twzr, [sp, #0x14] */\n"
		".inst 0xb85fc110 /* +0x17c: ldur\tw16, [x8, #-0x4] */\n"
		".inst 0x7292fa11 /* +0x180: movk\tw17, #0x97d0 */\n"
		".inst 0x72bbba11 /* +0x184: movk\tw17, #0xddd0, lsl #16 */\n"
		".inst 0x6b11021f /* +0x188: cmp\tw16, w17 */\n"
		".inst 0x54000040 /* +0x18c: b.eq\t0x73c <nb_fan_parse_dt+0x194> */\n"
		".inst 0xd4304500 /* +0x190: brk\t#0x8228 */\n"
		".inst 0xd63f0100 /* +0x194: blr\tx8 */\n"
		".inst 0x35000640 /* +0x198: cbnz\tw0, 0x808 <nb_fan_parse_dt+0x260> */\n"
		".inst 0xaa1703e0 /* +0x19c: mov\tx0, x23 */\n"
		".inst 0xaa1803e1 /* +0x1a0: mov\tx1, x24 */\n"
		".inst 0xaa1903e2 /* +0x1a4: mov\tx2, x25 */\n"
		".inst 0x52805c83 /* +0x1a8: mov\tw3, #0x2e4              // =740 */\n"
		".inst 0xaa1a03e4 /* +0x1ac: mov\tx4, x26 */\n"
		" .Lndtrel108:\n"
		".inst 0x94000000 /* +0x1b0: bl\t0x758 <nb_fan_parse_dt+0x1b0> */\n"
		".reloc .Lndtrel108, R_AARCH64_CALL26, _printk\n"
		".inst 0x17ffffc6 /* +0x1b4: b\t0x674 <nb_fan_parse_dt+0xcc> */\n"
		".inst 0x39400808 /* +0x1b8: ldrb\tw8, [x0, #0x2] */\n"
		".inst 0x5101b908 /* +0x1bc: sub\tw8, w8, #0x6e */\n"
		".inst 0x35fff868 /* +0x1c0: cbnz\tw8, 0x674 <nb_fan_parse_dt+0xcc> */\n"
		".inst 0x17ffffd5 /* +0x1c4: b\t0x6c0 <nb_fan_parse_dt+0x118> */\n"
		".inst 0x2a1f03f3 /* +0x1c8: mov\tw19, wzr */\n"
		".inst 0x1400003d /* +0x1cc: b\t0x868 <nb_fan_parse_dt+0x2c0> */\n"
		".inst 0x3108141f /* +0x1d0: cmn\tw0, #0x205 */\n"
		".inst 0x540005e1 /* +0x1d4: b.ne\t0x838 <nb_fan_parse_dt+0x290> */\n"
		".inst 0x12804093 /* +0x1d8: mov\tw19, #-0x205            // =-517 */\n"
		".inst 0x14000039 /* +0x1dc: b\t0x868 <nb_fan_parse_dt+0x2c0> */\n"
		" .Lndtrel120:\n"
		".inst 0x90000000 /* +0x1e0: adrp\tx0, 0x0 <.text> */\n"
		".reloc .Lndtrel120, R_AARCH64_ADR_PREL_PG_HI21, .Lndtstr6\n"
		" .Lndtrel121:\n"
		".inst 0x91000000 /* +0x1e4: add\tx0, x0, #0x0 */\n"
		".reloc .Lndtrel121, R_AARCH64_ADD_ABS_LO12_NC, .Lndtstr6\n"
		" .Lndtrel122:\n"
		".inst 0x90000001 /* +0x1e8: adrp\tx1, 0x0 <.text> */\n"
		".reloc .Lndtrel122, R_AARCH64_ADR_PREL_PG_HI21, .Lndtstr5\n"
		" .Lndtrel123:\n"
		".inst 0x91000021 /* +0x1ec: add\tx1, x1, #0x0 */\n"
		".reloc .Lndtrel123, R_AARCH64_ADD_ABS_LO12_NC, .Lndtstr5\n"
		" .Lndtrel124:\n"
		".inst 0x90000002 /* +0x1f0: adrp\tx2, 0x0 <.text> */\n"
		".reloc .Lndtrel124, R_AARCH64_ADR_PREL_PG_HI21, .Lndtstr9\n"
		" .Lndtrel125:\n"
		".inst 0x91000042 /* +0x1f4: add\tx2, x2, #0x0 */\n"
		".reloc .Lndtrel125, R_AARCH64_ADD_ABS_LO12_NC, .Lndtstr9\n"
		".inst 0x52805443 /* +0x1f8: mov\tw3, #0x2a2              // =674 */\n"
		" .Lndtrel127:\n"
		".inst 0x94000000 /* +0x1fc: bl\t0x7a4 <nb_fan_parse_dt+0x1fc> */\n"
		".reloc .Lndtrel127, R_AARCH64_CALL26, _printk\n"
		".inst 0x12800253 /* +0x200: mov\tw19, #-0x13             // =-19 */\n"
		".inst 0x1400002f /* +0x204: b\t0x868 <nb_fan_parse_dt+0x2c0> */\n"
		" .Lndtrel130:\n"
		".inst 0x90000000 /* +0x208: adrp\tx0, 0x0 <.text> */\n"
		".reloc .Lndtrel130, R_AARCH64_ADR_PREL_PG_HI21, .Lndtstr2\n"
		" .Lndtrel131:\n"
		".inst 0x91000000 /* +0x20c: add\tx0, x0, #0x0 */\n"
		".reloc .Lndtrel131, R_AARCH64_ADD_ABS_LO12_NC, .Lndtstr2\n"
		" .Lndtrel132:\n"
		".inst 0x90000001 /* +0x210: adrp\tx1, 0x0 <.text> */\n"
		".reloc .Lndtrel132, R_AARCH64_ADR_PREL_PG_HI21, .Lndtstr5\n"
		" .Lndtrel133:\n"
		".inst 0x91000021 /* +0x214: add\tx1, x1, #0x0 */\n"
		".reloc .Lndtrel133, R_AARCH64_ADD_ABS_LO12_NC, .Lndtstr5\n"
		" .Lndtrel134:\n"
		".inst 0x90000002 /* +0x218: adrp\tx2, 0x0 <.text> */\n"
		".reloc .Lndtrel134, R_AARCH64_ADR_PREL_PG_HI21, .Lndtstr9\n"
		" .Lndtrel135:\n"
		".inst 0x91000042 /* +0x21c: add\tx2, x2, #0x0 */\n"
		".reloc .Lndtrel135, R_AARCH64_ADD_ABS_LO12_NC, .Lndtstr9\n"
		".inst 0x110006a4 /* +0x220: add\tw4, w21, #0x1 */\n"
		".inst 0x528054e3 /* +0x224: mov\tw3, #0x2a7              // =679 */\n"
		".inst 0x52800025 /* +0x228: mov\tw5, #0x1                // =1 */\n"
		" .Lndtrel139:\n"
		".inst 0x94000000 /* +0x22c: bl\t0x7d4 <nb_fan_parse_dt+0x22c> */\n"
		".reloc .Lndtrel139, R_AARCH64_CALL26, _printk\n"
		".inst 0x128002b3 /* +0x230: mov\tw19, #-0x16             // =-22 */\n"
		".inst 0x14000023 /* +0x234: b\t0x868 <nb_fan_parse_dt+0x2c0> */\n"
		" .Lndtrel142:\n"
		".inst 0x90000000 /* +0x238: adrp\tx0, 0x0 <.text> */\n"
		".reloc .Lndtrel142, R_AARCH64_ADR_PREL_PG_HI21, .Lndtstr1\n"
		" .Lndtrel143:\n"
		".inst 0x91000000 /* +0x23c: add\tx0, x0, #0x0 */\n"
		".reloc .Lndtrel143, R_AARCH64_ADD_ABS_LO12_NC, .Lndtstr1\n"
		" .Lndtrel144:\n"
		".inst 0x90000001 /* +0x240: adrp\tx1, 0x0 <.text> */\n"
		".reloc .Lndtrel144, R_AARCH64_ADR_PREL_PG_HI21, .Lndtstr5\n"
		" .Lndtrel145:\n"
		".inst 0x91000021 /* +0x244: add\tx1, x1, #0x0 */\n"
		".reloc .Lndtrel145, R_AARCH64_ADD_ABS_LO12_NC, .Lndtstr5\n"
		" .Lndtrel146:\n"
		".inst 0x90000002 /* +0x248: adrp\tx2, 0x0 <.text> */\n"
		".reloc .Lndtrel146, R_AARCH64_ADR_PREL_PG_HI21, .Lndtstr9\n"
		" .Lndtrel147:\n"
		".inst 0x91000042 /* +0x24c: add\tx2, x2, #0x0 */\n"
		".reloc .Lndtrel147, R_AARCH64_ADD_ABS_LO12_NC, .Lndtstr9\n"
		".inst 0x528057a3 /* +0x250: mov\tw3, #0x2bd              // =701 */\n"
		" .Lndtrel149:\n"
		".inst 0x94000000 /* +0x254: bl\t0x7fc <nb_fan_parse_dt+0x254> */\n"
		".reloc .Lndtrel149, R_AARCH64_CALL26, _printk\n"
		".inst 0x12800173 /* +0x258: mov\tw19, #-0xc              // =-12 */\n"
		".inst 0x14000019 /* +0x25c: b\t0x868 <nb_fan_parse_dt+0x2c0> */\n"
		" .Lndtrel152:\n"
		".inst 0x90000008 /* +0x260: adrp\tx8, 0x0 <.text> */\n"
		".reloc .Lndtrel152, R_AARCH64_ADR_PREL_PG_HI21, .Lndtstr3\n"
		" .Lndtrel153:\n"
		".inst 0x91000108 /* +0x264: add\tx8, x8, #0x0 */\n"
		".reloc .Lndtrel153, R_AARCH64_ADD_ABS_LO12_NC, .Lndtstr3\n"
		" .Lndtrel154:\n"
		".inst 0x90000001 /* +0x268: adrp\tx1, 0x0 <.text> */\n"
		".reloc .Lndtrel154, R_AARCH64_ADR_PREL_PG_HI21, .Lndtstr5\n"
		" .Lndtrel155:\n"
		".inst 0x91000021 /* +0x26c: add\tx1, x1, #0x0 */\n"
		".reloc .Lndtrel155, R_AARCH64_ADD_ABS_LO12_NC, .Lndtstr5\n"
		" .Lndtrel156:\n"
		".inst 0x90000002 /* +0x270: adrp\tx2, 0x0 <.text> */\n"
		".reloc .Lndtrel156, R_AARCH64_ADR_PREL_PG_HI21, .Lndtstr9\n"
		" .Lndtrel157:\n"
		".inst 0x91000042 /* +0x274: add\tx2, x2, #0x0 */\n"
		".reloc .Lndtrel157, R_AARCH64_ADD_ABS_LO12_NC, .Lndtstr9\n"
		".inst 0xaa0003f3 /* +0x278: mov\tx19, x0 */\n"
		".inst 0xaa0803e0 /* +0x27c: mov\tx0, x8 */\n"
		".inst 0x52805c23 /* +0x280: mov\tw3, #0x2e1              // =737 */\n"
		".inst 0xaa1a03e4 /* +0x284: mov\tx4, x26 */\n"
		" .Lndtrel162:\n"
		".inst 0x94000000 /* +0x288: bl\t0x830 <nb_fan_parse_dt+0x288> */\n"
		".reloc .Lndtrel162, R_AARCH64_CALL26, _printk\n"
		".inst 0x1400000d /* +0x28c: b\t0x868 <nb_fan_parse_dt+0x2c0> */\n"
		" .Lndtrel164:\n"
		".inst 0x90000008 /* +0x290: adrp\tx8, 0x0 <.text> */\n"
		".reloc .Lndtrel164, R_AARCH64_ADR_PREL_PG_HI21, .Lndtstr7\n"
		" .Lndtrel165:\n"
		".inst 0x91000108 /* +0x294: add\tx8, x8, #0x0 */\n"
		".reloc .Lndtrel165, R_AARCH64_ADD_ABS_LO12_NC, .Lndtstr7\n"
		".inst 0xaa0003f3 /* +0x298: mov\tx19, x0 */\n"
		" .Lndtrel167:\n"
		".inst 0x90000001 /* +0x29c: adrp\tx1, 0x0 <.text> */\n"
		".reloc .Lndtrel167, R_AARCH64_ADR_PREL_PG_HI21, .Lndtstr5\n"
		" .Lndtrel168:\n"
		".inst 0x91000021 /* +0x2a0: add\tx1, x1, #0x0 */\n"
		".reloc .Lndtrel168, R_AARCH64_ADD_ABS_LO12_NC, .Lndtstr5\n"
		" .Lndtrel169:\n"
		".inst 0x90000002 /* +0x2a4: adrp\tx2, 0x0 <.text> */\n"
		".reloc .Lndtrel169, R_AARCH64_ADR_PREL_PG_HI21, .Lndtstr9\n"
		" .Lndtrel170:\n"
		".inst 0x91000042 /* +0x2a8: add\tx2, x2, #0x0 */\n"
		".reloc .Lndtrel170, R_AARCH64_ADD_ABS_LO12_NC, .Lndtstr9\n"
		".inst 0xaa0803e0 /* +0x2ac: mov\tx0, x8 */\n"
		".inst 0x52805aa3 /* +0x2b0: mov\tw3, #0x2d5              // =725 */\n"
		".inst 0xaa1a03e4 /* +0x2b4: mov\tx4, x26 */\n"
		".inst 0x2a1303e5 /* +0x2b8: mov\tw5, w19 */\n"
		" .Lndtrel175:\n"
		".inst 0x94000000 /* +0x2bc: bl\t0x864 <nb_fan_parse_dt+0x2bc> */\n"
		".reloc .Lndtrel175, R_AARCH64_CALL26, _printk\n"
		".inst 0xd5384108 /* +0x2c0: mrs\tx8, SP_EL0 */\n"
		".inst 0xf9438908 /* +0x2c4: ldr\tx8, [x8, #0x710] */\n"
		".inst 0xf85f83a9 /* +0x2c8: ldur\tx9, [x29, #-0x8] */\n"
		".inst 0xeb09011f /* +0x2cc: cmp\tx8, x9 */\n"
		".inst 0x54000241 /* +0x2d0: b.ne\t0x8c0 <nb_fan_parse_dt+0x318> */\n"
		".inst 0x2a1303e0 /* +0x2d4: mov\tw0, w19 */\n"
		".inst 0xa9464ff4 /* +0x2d8: ldp\tx20, x19, [sp, #0x60] */\n"
		".inst 0xa94557f6 /* +0x2dc: ldp\tx22, x21, [sp, #0x50] */\n"
		".inst 0xa9445ff8 /* +0x2e0: ldp\tx24, x23, [sp, #0x40] */\n"
		".inst 0xa94367fa /* +0x2e4: ldp\tx26, x25, [sp, #0x30] */\n"
		".inst 0xa9427bfd /* +0x2e8: ldp\tx29, x30, [sp, #0x20] */\n"
		".inst 0x9101c3ff /* +0x2ec: add\tsp, sp, #0x70 */\n"
		".inst 0xd50323bf /* +0x2f0: autiasp */\n"
		".inst 0xd65f03c0 /* +0x2f4: ret */\n"
		" .Lndtrel190:\n"
		".inst 0x90000000 /* +0x2f8: adrp\tx0, 0x0 <.text> */\n"
		".reloc .Lndtrel190, R_AARCH64_ADR_PREL_PG_HI21, .Lndtstr4\n"
		" .Lndtrel191:\n"
		".inst 0x91000000 /* +0x2fc: add\tx0, x0, #0x0 */\n"
		".reloc .Lndtrel191, R_AARCH64_ADD_ABS_LO12_NC, .Lndtstr4\n"
		" .Lndtrel192:\n"
		".inst 0x90000001 /* +0x300: adrp\tx1, 0x0 <.text> */\n"
		".reloc .Lndtrel192, R_AARCH64_ADR_PREL_PG_HI21, .Lndtstr5\n"
		" .Lndtrel193:\n"
		".inst 0x91000021 /* +0x304: add\tx1, x1, #0x0 */\n"
		".reloc .Lndtrel193, R_AARCH64_ADD_ABS_LO12_NC, .Lndtstr5\n"
		" .Lndtrel194:\n"
		".inst 0x90000002 /* +0x308: adrp\tx2, 0x0 <.text> */\n"
		".reloc .Lndtrel194, R_AARCH64_ADR_PREL_PG_HI21, .Lndtstr9\n"
		" .Lndtrel195:\n"
		".inst 0x91000042 /* +0x30c: add\tx2, x2, #0x0 */\n"
		".reloc .Lndtrel195, R_AARCH64_ADD_ABS_LO12_NC, .Lndtstr9\n"
		".inst 0x52805883 /* +0x310: mov\tw3, #0x2c4              // =708 */\n"
		".inst 0x17ffffba /* +0x314: b\t0x7a4 <nb_fan_parse_dt+0x1fc> */\n"
		" .Lndtrel198:\n"
		".inst 0x94000000 /* +0x318: bl\t0x8c0 <nb_fan_parse_dt+0x318> */\n"
		".reloc .Lndtrel198, R_AARCH64_CALL26, __stack_chk_fail\n"
		);
}

static __used int nb_fan_gpio_proc(long *context)
{
	struct device_node *node;
	int gpio;
	int ret;

	if (context[1] == 0)
		return -ENODEV;

	node = *(struct device_node **)((u8 *)context[0] + 0x2e8);
	gpio = of_get_named_gpio(node, "fan,speed-gpio", 0);
	*(int *)(context[1] + 0x14) = gpio;
	ret = *(volatile int *)(context[1] + 0x14);
	if (ret < 0) {
		printk(KERN_DEBUG "[%s] [%s:%d] Find speed_gpio failed!\n",
		       "NB_FAN", "nb_fan_gpio_proc", 0x343);
		ret = *(int *)(context[1] + 0x14);
	} else {
		ret = gpio_request(ret, "fan_speed_gpio");
		if (ret == 0) {
			gpio = *(int *)(context[1] + 0x14);
			gpio = gpiod_to_irq(gpio_to_desc(gpio));
			*(int *)(context[1] + 0x1c) = gpio;
			ret = request_threaded_irq(
				*(int *)(context[1] + 0x1c),
				fan_speed_irq_proc, NULL, 0x00200002UL,
				"fan_speed_int", context);
			if (ret < 0) {
				printk(KERN_ERR
				       "failed to register speed IRQ handler\n");
			} else {
				disable_irq(*(int *)(context[1] + 0x1c));
				gpio = of_get_named_gpio(
					node, "fan,pwm-gpio", 0);
				*(int *)(context[1] + 0x10) = gpio;
				ret = *(volatile int *)(context[1] + 0x10);
				if (ret < 0) {
					printk(KERN_DEBUG
					       "[%s] [%s:%d] Find pwm_gpio failed!\n",
					       "NB_FAN", "nb_fan_gpio_proc",
					       0x355);
					ret = *(int *)(context[1] + 0x10);
				} else {
					gpio = gpiod_get_raw_value(
						gpio_to_desc(ret));
					printk(KERN_DEBUG
					       "[%s] [%s:%d] pwm gpio status is:%d.",
					       "NB_FAN", "nb_fan_gpio_proc",
					       0x358, gpio);
					ret = 0;
				}
			}
		} else {
			printk(KERN_DEBUG
			       "[%s] [%s:%d] Find speed_gpio=%d requst failed.\n",
			       "NB_FAN", "nb_fan_gpio_proc", 0x348,
			       *(int *)(context[1] + 0x14));
		}
	}
	return ret;
}

struct nb_fan_remove_context {
	struct device *dev;
	u64 reserved_08;
	struct kobject *sysfs_kobj;
};

static __used void nb_fan_remove(struct platform_device *pdev)
{
	struct nb_fan_remove_context *context = platform_get_drvdata(pdev);

	sysfs_remove_group(context->sysfs_kobj, &chip_attr_group);
	dev_set_drvdata(context->dev, NULL);
}

__used void __exit cleanup_module(void)
{
	platform_driver_unregister(&nubia_fan_driver);
}

__used int __init init_module(void)
{
	return __platform_driver_register(&nubia_fan_driver, THIS_MODULE);
}

static __used enum hrtimer_restart fan_hrtimer_hander(struct hrtimer *timer)
{
	u8 *state = *(u8 **)((u8 *)chip + 0x08);

	if (state[0x02] == 0x02)
		goto stop_calculation;
	if (state[0x02] == 0x01)
		goto start_calculation;
	return HRTIMER_NORESTART;

start_calculation:
	*(u32 *)(state + 0x04) = 0;
	(*(u8 **)((u8 *)chip + 0x08))[0x02] = 0x02;
	hrtimer_start_range_ns(
		(struct hrtimer *)(*(u8 **)((u8 *)chip + 0x08) + 0x28),
		500000000, 0, HRTIMER_MODE_REL);
	enable_irq(*(int *)(*(u8 **)((u8 *)chip + 0x08) + 0x1c));
	printk(KERN_DEBUG "[%s] [%s:%d] fan_level=%d start calculate, count=%d.",
	       "NB_FAN", "fan_hrtimer_hander", 0x82,
	       (*(u8 **)((u8 *)chip + 0x08))[0],
	       *(u32 *)(*(u8 **)((u8 *)chip + 0x08) + 0x04));
	return HRTIMER_RESTART;

stop_calculation:
	state[0x02] = 0x03;
	u8 *root = (u8 *)chip;
	u8 *stop_state = *(u8 **)(root + 0x08);
	*(u32 *)(stop_state + 0x08) = *(u32 *)(stop_state + 0x04);
	disable_irq_nosync(
		*(int *)(*(u8 **)(root + 0x08) + 0x1c));
	printk(KERN_DEBUG "[%s] [%s:%d] fan_level=%d stop calculate, count=%d.",
	       "NB_FAN", "fan_hrtimer_hander", 0x89,
	       (*(u8 **)((u8 *)chip + 0x08))[0],
	       *(u32 *)(*(u8 **)((u8 *)chip + 0x08) + 0x04));
	return HRTIMER_NORESTART;
}

static __used int fan_level_set(u8 *fan_state, u8 level);

/* Enable or disable the fan, then apply or defer the selected level. */
static __used ssize_t fan_enable_store(struct kobject *kobj,
				      struct kobj_attribute *attr,
				      const char *buf, size_t count)
{
	ssize_t result = count;
	int enable = 0;
	u8 *chip_base;
	u8 *fan_state;

	sscanf(buf, "%d", &enable);
	chip_base = (u8 *)chip;
	if (*(bool *)(*(u8 **)((u8 *)chip + 0x08) + 0x0c) ==
	    (enable != 0)) {
		printk(KERN_DEBUG "[%s] [%s:%d] fan have been enabled!",
		       "NB_FAN", "fan_enable_store", 0x13f);
		goto fan_enable_return;
	}

	*(bool *)(*(u8 **)((u8 *)chip + 0x08) + 0x0c) = enable != 0;
	printk(KERN_DEBUG "[%s] [%s:%d] fan_enable=%d\n",
	       "NB_FAN", "fan_enable_store", 0x143,
	       *(u8 *)(*(u8 **)(chip_base + 0x08) + 0x0c));
	mutex_lock((struct mutex *)((u8 *)chip + 0x18));
	fan_state = *(u8 **)((u8 *)chip + 0x08);
	if (__builtin_expect_with_probability((fan_state[0x0c] & 1) != 0,
					      1, 0.6)) {
		if (unlikely(fan_state[1] == 0))
			goto fan_enable_unlock;

		fan_level_set(fan_state, fan_state[1]);
		printk(KERN_DEBUG
		       "[%s] [%s:%d] fan enabled,back fan level:%d to run.\n",
		       "NB_FAN", "fan_enable_store", 0x14c,
		       *(u8 *)(*(u8 **)((u8 *)chip + 0x08) + 0x01));
		*(u8 *)(*(u8 **)((u8 *)chip + 0x08) + 0x01) = 0;
	} else {
		fan_state[1] = fan_state[0];
		fan_level_set(*(u8 **)((u8 *)chip + 0x08), 0);
	}

fan_enable_unlock:
	mutex_unlock((struct mutex *)((u8 *)chip + 0x18));
fan_enable_return:
	return result;
}

/* Recover the PWM, GPIO and regulator side effects for a fan-level change. */
static __used int fan_level_set(u8 *fan_state, u8 level)
{
	struct regulator *vdd_fan = *(struct regulator **)((u8 *)chip + 0x48);
	struct pwm_state pwm_state;
	u64 state_tail;
	bool pwm_enabled;
	u32 pwm_duty;
	struct pwm_device *state_pwm;
	int gpio_num;
	u8 *chip_value;
	u8 *chip_state;
	register u64 pwm_period asm("x9");
	int gpio_value;
	int ret;

	if (fan_state[0] == level) {
		printk(KERN_DEBUG "[%s] [%s:%d] fan have in level=%d.\n",
		       "NB_FAN", "fan_level_set", 0x94, level);
		return 0;
	}

	if (level == 0) {
		if (vdd_fan && regulator_is_enabled(vdd_fan)) {
			ret = regulator_disable(vdd_fan);
			printk(KERN_DEBUG
			       "[%s] [%s:%d] NB_FAN: close fan power!ret=%d.\n",
			       "NB_FAN", "nb_fan_power_set", 0xe5, ret);
		}
	} else if (vdd_fan && !regulator_is_enabled(vdd_fan)) {
		ret = regulator_enable(vdd_fan);
		msleep(10);
		printk(KERN_DEBUG
		       "[%s] [%s:%d] NB_FAN: open fan power!ret=%d.\n",
		       "NB_FAN", "nb_fan_power_set", 0xed, ret);
	}

	/* Keep the stock Clang load/store schedule around the PWM state. */
	/* Empty barriers emit no instructions; the x9 immediate matches stock. */
	state_pwm = *(struct pwm_device **)(fan_state + 0x68);
	asm volatile("" : "+r" (state_pwm) : : "memory");
	pwm_duty = level * 8000;
	pwm_enabled = level != 0;
	asm volatile("" : : "r" (pwm_enabled));
	state_tail = *(u64 *)((u8 *)state_pwm + 0x40);
	pwm_state.duty_cycle = pwm_duty;
	*(u64 *)((u8 *)&pwm_state + 0x10) = state_tail;
	asm volatile("" : : : "memory");
	chip_value = (u8 *)chip;
	asm volatile("" : "+r" (chip_value) : : "memory");
	asm volatile("mov w9, #40000" : "=r" (pwm_period)
		     : "r" (chip_value));
	pwm_state.enabled = pwm_enabled;
	chip_state = *(u8 **)(chip_value + 0x08);
	*(volatile u64 *)((u8 *)&pwm_state) = pwm_period;
	gpio_num = *(int *)(chip_state + 0x10);
	gpio_value = gpiod_get_raw_value(gpio_to_desc(gpio_num));
	if (level == 5) {
		if (gpio_value == 1)
			gpiod_direction_output_raw(
				gpio_to_desc(*(int *)(*(u8 **)((u8 *)chip + 0x08) + 0x10)), 0);
		struct pwm_device *level_pwm =
			*(struct pwm_device **)(fan_state + 0x68);
		u64 idle_tail = *(volatile u64 *)((u8 *)level_pwm + 0x40);
		u32 idle_polarity = *(volatile u32 *)((u8 *)level_pwm + 0x28);
		u64 idle_period = *(volatile u64 *)((u8 *)level_pwm + 0x20);
		*(u64 *)((u8 *)&pwm_state + 0x08) = 0;
		*(u64 *)((u8 *)&pwm_state + 0x10) = idle_tail;
		pwm_state.polarity = idle_polarity;
		*(volatile u64 *)((u8 *)&pwm_state) = idle_period;
		*(u16 *)((u8 *)&pwm_state + 0x14) = 0;
	} else if (gpio_value == 0) {
		gpiod_direction_output_raw(
			gpio_to_desc(*(int *)(*(u8 **)((u8 *)chip + 0x08) + 0x10)), 1);
	}

	{
		struct pwm_device *pwm = *(
			struct pwm_device **)(fan_state + 0x68);
		struct pwm_chip *pwm_chip = pwm->chip;
		ret = pwm_chip->ops->apply(pwm_chip, pwm, &pwm_state);
	}
	if (ret < 0) {
		printk(KERN_DEBUG
		       "[%s] [%s:%d] Apply PWM state for fan_level=%d failed, rc=%d\n",
		       "NB_FAN", "fan_level_set", 0xbf, level, ret);
	} else {
		fan_state[0] = level;
	}
	return ret;
}

/*
 * Keep the observed byte offsets explicit until the original structure type is
 * independently recovered. The state pointer is at chip+0x08; its active
 * flag is at +0x0c, selecting current (+0x00) or pending (+0x01) level.
 */
static __used ssize_t fan_level_show(struct kobject *kobj,
				     struct kobj_attribute *attr, char *buf)
{
	u8 *fan_state = *(u8 **)((u8 *)chip + 0x08);
	u8 level_index = fan_state[0x0c] ^ 1;

	return sprintf(buf, "%d\n", fan_state[level_index]);
}

/*
 * A disabled fan stores the requested level for the next enable operation.
 * When enabled, the update is serialized with the chip mutex and delegated
 * to fan_level_set.
 */
static __used ssize_t fan_level_store(struct kobject *kobj,
				      struct kobj_attribute *attr,
				      const char *buf, size_t count)
{
	ssize_t result = count;
	u32 level = 0;
	u8 *fan_state;
	int ret;

	sscanf(buf, "%d", &level);
	if (level >= 6) {
		printk(KERN_DEBUG
		       "[%s] [%s:%d] level=%d,it is a bad level,not in(%d-%d).\n",
		       "NB_FAN", "fan_level_store", 0x165, level, 0, 5);
		result = -EINVAL;
	} else {
		fan_state = *(u8 **)((u8 *)chip + 0x08);
		if ((fan_state[0x0c] & 1) == 0) {
			fan_state[1] = (u8)level;
			printk(KERN_DEBUG
			       "[%s] [%s:%d] Fan is disabled, just run this level:%d after fan enabled.",
			       "NB_FAN", "fan_level_store", 0x16b, level);
		} else {
			mutex_lock((struct mutex *)((u8 *)chip + 0x18));
			ret = fan_level_set(
				*(u8 **)((u8 *)chip + 0x08), level);
			mutex_unlock((struct mutex *)((u8 *)chip + 0x18));
			if (ret == 0) {
				printk(KERN_DEBUG
				       "[%s] [%s:%d] set fan_level=%d rc=%d.",
				       "NB_FAN", "fan_level_store", 0x175,
				       level, 0);
			} else {
				result = ret;
			}
		}
	}
	return result;
}

/*
 * The recovered sysfs read callback logs the stock source line and returns the
 * enable byte at chip+0x08+0x0c as decimal text.
 */
static __used ssize_t fan_enable_show(struct kobject *kobj,
				      struct kobj_attribute *attr, char *buf)
{
	printk(KERN_DEBUG "[%s] [%s:%d] fan_enable=%d.\n",
	       "NB_FAN", "fan_enable_show", 0x130,
	       (*(u8 **)((u8 *)chip + 0x08))[0x0c]);
	return sprintf(buf, "%d\n",
		       (*(u8 **)((u8 *)chip + 0x08))[0x0c]);
}

/* Stock-derived string targets for the exact callback transcription. */
__asm__(
    ".pushsection .rodata.str1.1,\"aMS\",%progbits,1\n"

    ".Lsfstr0:\n"

    ".asciz \"\\0017[%s] [%s:%d] NB_FAN:level:%d real_count:%d adj_count:%d.\\n\"\n"

    ".Lsfstr1:\n"

    ".asciz \"NB_FAN\"\n"

    ".Lsfstr2:\n"

    ".asciz \"fan_rpm_get\"\n"

    ".Lsfstr3:\n"

    ".asciz \"\\0017[%s] [%s:%d] NB_FAN: close fan power!ret=%d.\\n\"\n"

    ".Lsfstr4:\n"

    ".asciz \"nb_fan_power_set\"\n"

    ".Lsfstr5:\n"

    ".asciz \"\\0017[%s] [%s:%d] NB_FAN: open fan power!ret=%d.\\n\"\n"

    ".Lsfstr6:\n"

    ".asciz \"\\0017[%s] [%s:%d] fan level=%d rpm=%d error! NB.%d reset fan !\"\n"

    ".Lsfstr7:\n"

    ".asciz \"nb_fan_rpm_check\"\n"

    ".Lsfstr8:\n"

    ".asciz \"\\0017[%s] [%s:%d] fan level=%d rpm=%d error!rest fan is invalid! stop to try reset!\"\n"

    ".Lsfstr9:\n"

    ".asciz \"%d\\n\"\n"

    ".Lsfstr10:\n"

    ".asciz \"\\0017[%s] [%s:%d] fan_level=%d fan_speed=%d\\n\"\n"

    ".Lsfstr11:\n"

    ".asciz \"fan_speed_show\"\n"

    ".popsection\n"
);

/* Exact stock instruction and relocation transcription; MP0-MP6 define behavior. */
static __used __attribute__((naked)) ssize_t fan_speed_show(
    struct kobject *kobj, struct kobj_attribute *attr, char *buf)
{
    asm volatile(

        ".inst 0xd503233f /* +0x000: paciasp */\n"

        ".inst 0xa9bc7bfd /* +0x004: stp	x29, x30, [sp, #-0x40]! */\n"

        ".inst 0xa9015ff8 /* +0x008: stp	x24, x23, [sp, #0x10] */\n"

        ".inst 0xa90257f6 /* +0x00c: stp	x22, x21, [sp, #0x20] */\n"

        ".inst 0xa9034ff4 /* +0x010: stp	x20, x19, [sp, #0x30] */\n"

        ".inst 0x910003fd /* +0x014: mov	x29, sp */\n"

        " .Lsfrel6:\n"

        ".inst 0x90000017 /* +0x018: adrp	x23, 0x1000 <fan_level_show+0x28> */\n"

        ".reloc .Lsfrel6, R_AARCH64_ADR_PREL_PG_HI21, chip\n"

        ".inst 0xaa0203f3 /* +0x01c: mov	x19, x2 */\n"

        " .Lsfrel8:\n"

        ".inst 0xf94002e8 /* +0x020: ldr	x8, [x23] */\n"

        ".reloc .Lsfrel8, R_AARCH64_LDST64_ABS_LO12_NC, chip\n"

        ".inst 0x91006100 /* +0x024: add	x0, x8, #0x18 */\n"

        " .Lsfrel10:\n"

        ".inst 0x94000000 /* +0x028: bl	0x1334 <fan_speed_show+0x28> */\n"

        ".reloc .Lsfrel10, R_AARCH64_CALL26, mutex_lock\n"

        " .Lsfrel11:\n"

        ".inst 0xf94002e8 /* +0x02c: ldr	x8, [x23] */\n"

        ".reloc .Lsfrel11, R_AARCH64_LDST64_ABS_LO12_NC, chip\n"

        ".inst 0xf9400515 /* +0x030: ldr	x21, [x8, #0x8] */\n"

        ".inst 0x394002a8 /* +0x034: ldrb	w8, [x21] */\n"

        ".inst 0x35000068 /* +0x038: cbnz	w8, 0x1350 <fan_speed_show+0x44> */\n"

        ".inst 0x2a1f03f4 /* +0x03c: mov	w20, wzr */\n"

        ".inst 0x14000089 /* +0x040: b	0x1570 <fan_speed_show+0x264> */\n"

        ".inst 0x52884801 /* +0x044: mov	w1, #0x4240             // =16960 */\n"

        ".inst 0x52800028 /* +0x048: mov	w8, #0x1                // =1 */\n"

        ".inst 0x9100a2a0 /* +0x04c: add	x0, x21, #0x28 */\n"

        ".inst 0x72a001e1 /* +0x050: movk	w1, #0xf, lsl #16 */\n"

        ".inst 0xaa1f03e2 /* +0x054: mov	x2, xzr */\n"

        ".inst 0x52800023 /* +0x058: mov	w3, #0x1                // =1 */\n"

        ".inst 0x39000aa8 /* +0x05c: strb	w8, [x21, #0x2] */\n"

        " .Lsfrel24:\n"

        ".inst 0x94000000 /* +0x060: bl	0x136c <fan_speed_show+0x60> */\n"

        ".reloc .Lsfrel24, R_AARCH64_CALL26, hrtimer_start_range_ns\n"

        ".inst 0x52807d00 /* +0x064: mov	w0, #0x3e8              // =1000 */\n"

        " .Lsfrel26:\n"

        ".inst 0x94000000 /* +0x068: bl	0x1374 <fan_speed_show+0x68> */\n"

        ".reloc .Lsfrel26, R_AARCH64_CALL26, msleep\n"

        ".inst 0xb9400aa8 /* +0x06c: ldr	w8, [x21, #0x8] */\n"

        ".inst 0x394002a4 /* +0x070: ldrb	w4, [x21] */\n"

        ".inst 0x0b080908 /* +0x074: add	w8, w8, w8, lsl #2 */\n"

        ".inst 0x71000c9f /* +0x078: cmp	w4, #0x3 */\n"

        ".inst 0x531d7114 /* +0x07c: lsl	w20, w8, #3 */\n"

        ".inst 0x540000e1 /* +0x080: b.ne	0x13a8 <fan_speed_show+0x9c> */\n"

        ".inst 0x713e829f /* +0x084: cmp	w20, #0xfa0 */\n"

        ".inst 0x540000a9 /* +0x088: b.ls	0x13a8 <fan_speed_show+0x9c> */\n"

        ".inst 0x52865908 /* +0x08c: mov	w8, #0x32c8             // =13000 */\n"

        ".inst 0xb9400aa9 /* +0x090: ldr	w9, [x21, #0x8] */\n"

        ".inst 0x0b080136 /* +0x094: add	w22, w9, w8 */\n"

        ".inst 0x1400000e /* +0x098: b	0x13dc <fan_speed_show+0xd0> */\n"

        ".inst 0x7100149f /* +0x09c: cmp	w4, #0x5 */\n"

        ".inst 0x540000e0 /* +0x0a0: b.eq	0x13c8 <fan_speed_show+0xbc> */\n"

        ".inst 0x7100109f /* +0x0a4: cmp	w4, #0x4 */\n"

        ".inst 0x54000121 /* +0x0a8: b.ne	0x13d8 <fan_speed_show+0xcc> */\n"

        ".inst 0x713e829f /* +0x0ac: cmp	w20, #0xfa0 */\n"

        ".inst 0x540000e9 /* +0x0b0: b.ls	0x13d8 <fan_speed_show+0xcc> */\n"

        ".inst 0x5287d008 /* +0x0b4: mov	w8, #0x3e80             // =16000 */\n"

        ".inst 0x17fffff6 /* +0x0b8: b	0x139c <fan_speed_show+0x90> */\n"

        ".inst 0x713e869f /* +0x0bc: cmp	w20, #0xfa1 */\n"

        ".inst 0x54000063 /* +0x0c0: b.lo	0x13d8 <fan_speed_show+0xcc> */\n"

        ".inst 0x52894708 /* +0x0c4: mov	w8, #0x4a38             // =19000 */\n"

        ".inst 0x17fffff2 /* +0x0c8: b	0x139c <fan_speed_show+0x90> */\n"

        ".inst 0x2a1f03f6 /* +0x0cc: mov	w22, wzr */\n"

        " .Lsfrel52:\n"

        ".inst 0x90000000 /* +0x0d0: adrp	x0, 0x1000 <fan_level_show+0x28> */\n"

        ".reloc .Lsfrel52, R_AARCH64_ADR_PREL_PG_HI21, .Lsfstr0\n"

        " .Lsfrel53:\n"

        ".inst 0x91000000 /* +0x0d4: add	x0, x0, #0x0 */\n"

        ".reloc .Lsfrel53, R_AARCH64_ADD_ABS_LO12_NC, .Lsfstr0\n"

        " .Lsfrel54:\n"

        ".inst 0x90000001 /* +0x0d8: adrp	x1, 0x1000 <fan_level_show+0x28> */\n"

        ".reloc .Lsfrel54, R_AARCH64_ADR_PREL_PG_HI21, .Lsfstr1\n"

        " .Lsfrel55:\n"

        ".inst 0x91000021 /* +0x0dc: add	x1, x1, #0x0 */\n"

        ".reloc .Lsfrel55, R_AARCH64_ADD_ABS_LO12_NC, .Lsfstr1\n"

        " .Lsfrel56:\n"

        ".inst 0x90000002 /* +0x0e0: adrp	x2, 0x1000 <fan_level_show+0x28> */\n"

        ".reloc .Lsfrel56, R_AARCH64_ADR_PREL_PG_HI21, .Lsfstr2\n"

        " .Lsfrel57:\n"

        ".inst 0x91000042 /* +0x0e4: add	x2, x2, #0x0 */\n"

        ".reloc .Lsfrel57, R_AARCH64_ADD_ABS_LO12_NC, .Lsfstr2\n"

        ".inst 0x52802503 /* +0x0e8: mov	w3, #0x128              // =296 */\n"

        ".inst 0x2a1403e5 /* +0x0ec: mov	w5, w20 */\n"

        ".inst 0x2a1603e6 /* +0x0f0: mov	w6, w22 */\n"

        " .Lsfrel61:\n"

        ".inst 0x94000000 /* +0x0f4: bl	0x1400 <fan_speed_show+0xf4> */\n"

        ".reloc .Lsfrel61, R_AARCH64_CALL26, _printk\n"

        " .Lsfrel62:\n"

        ".inst 0xf94002e9 /* +0x0f8: ldr	x9, [x23] */\n"

        ".reloc .Lsfrel62, R_AARCH64_LDST64_ABS_LO12_NC, chip\n"

        ".inst 0x6b1402df /* +0x0fc: cmp	w22, w20 */\n"

        ".inst 0x2a1f03e8 /* +0x100: mov	w8, wzr */\n"

        ".inst 0x1a9482d4 /* +0x104: csel	w20, w22, w20, hi */\n"

        " .Lsfrel66:\n"

        ".inst 0x90000018 /* +0x108: adrp	x24, 0x1000 <fan_level_show+0x28> */\n"

        ".reloc .Lsfrel66, R_AARCH64_ADR_PREL_PG_HI21, nb_fan_rpm_check.rst_cnt\n"

        ".inst 0xf9400520 /* +0x10c: ldr	x0, [x9, #0x8] */\n"

        ".inst 0x39400015 /* +0x110: ldrb	w21, [x0] */\n"

        ".inst 0x34000a75 /* +0x114: cbz	w21, 0x156c <fan_speed_show+0x260> */\n"

        ".inst 0x52807d09 /* +0x118: mov	w9, #0x3e8              // =1000 */\n"

        ".inst 0x1b097ea9 /* +0x11c: mul	w9, w21, w9 */\n"

        ".inst 0x6b14013f /* +0x120: cmp	w9, w20 */\n"

        ".inst 0x540009e3 /* +0x124: b.lo	0x156c <fan_speed_show+0x260> */\n"

        " .Lsfrel74:\n"

        ".inst 0xb9400308 /* +0x128: ldr	w8, [x24] */\n"

        ".reloc .Lsfrel74, R_AARCH64_LDST32_ABS_LO12_NC, nb_fan_rpm_check.rst_cnt\n"

        ".inst 0x7100291f /* +0x12c: cmp	w8, #0xa */\n"

        ".inst 0x540009ac /* +0x130: b.gt	0x1570 <fan_speed_show+0x264> */\n"

        ".inst 0x2a1f03e1 /* +0x134: mov	w1, wzr */\n"

        " .Lsfrel174:\n"
        ".inst 0x94000000 /* +0x138: bl	0xd94 <fan_level_set> */\n"
        ".reloc .Lsfrel174, R_AARCH64_CALL26, fan_level_set\n"

        " .Lsfrel79:\n"

        ".inst 0xf94002e8 /* +0x13c: ldr	x8, [x23] */\n"

        ".reloc .Lsfrel79, R_AARCH64_LDST64_ABS_LO12_NC, chip\n"

        ".inst 0xf9402516 /* +0x140: ldr	x22, [x8, #0x48] */\n"

        ".inst 0xb40001f6 /* +0x144: cbz	x22, 0x148c <fan_speed_show+0x180> */\n"

        ".inst 0xaa1603e0 /* +0x148: mov	x0, x22 */\n"

        " .Lsfrel83:\n"

        ".inst 0x94000000 /* +0x14c: bl	0x1458 <fan_speed_show+0x14c> */\n"

        ".reloc .Lsfrel83, R_AARCH64_CALL26, regulator_is_enabled\n"

        ".inst 0x34000180 /* +0x150: cbz	w0, 0x148c <fan_speed_show+0x180> */\n"

        ".inst 0xaa1603e0 /* +0x154: mov	x0, x22 */\n"

        " .Lsfrel86:\n"

        ".inst 0x94000000 /* +0x158: bl	0x1464 <fan_speed_show+0x158> */\n"

        ".reloc .Lsfrel86, R_AARCH64_CALL26, regulator_disable\n"

        ".inst 0x2a0003e4 /* +0x15c: mov	w4, w0 */\n"

        " .Lsfrel88:\n"

        ".inst 0x90000000 /* +0x160: adrp	x0, 0x1000 <fan_level_show+0x28> */\n"

        ".reloc .Lsfrel88, R_AARCH64_ADR_PREL_PG_HI21, .Lsfstr3\n"

        " .Lsfrel89:\n"

        ".inst 0x91000000 /* +0x164: add	x0, x0, #0x0 */\n"

        ".reloc .Lsfrel89, R_AARCH64_ADD_ABS_LO12_NC, .Lsfstr3\n"

        " .Lsfrel90:\n"

        ".inst 0x90000001 /* +0x168: adrp	x1, 0x1000 <fan_level_show+0x28> */\n"

        ".reloc .Lsfrel90, R_AARCH64_ADR_PREL_PG_HI21, .Lsfstr1\n"

        " .Lsfrel91:\n"

        ".inst 0x91000021 /* +0x16c: add	x1, x1, #0x0 */\n"

        ".reloc .Lsfrel91, R_AARCH64_ADD_ABS_LO12_NC, .Lsfstr1\n"

        " .Lsfrel92:\n"

        ".inst 0x90000002 /* +0x170: adrp	x2, 0x1000 <fan_level_show+0x28> */\n"

        ".reloc .Lsfrel92, R_AARCH64_ADR_PREL_PG_HI21, .Lsfstr4\n"

        " .Lsfrel93:\n"

        ".inst 0x91000042 /* +0x174: add	x2, x2, #0x0 */\n"

        ".reloc .Lsfrel93, R_AARCH64_ADD_ABS_LO12_NC, .Lsfstr4\n"

        ".inst 0x52801ca3 /* +0x178: mov	w3, #0xe5               // =229 */\n"

        " .Lsfrel95:\n"

        ".inst 0x94000000 /* +0x17c: bl	0x1488 <fan_speed_show+0x17c> */\n"

        ".reloc .Lsfrel95, R_AARCH64_CALL26, _printk\n"

        ".inst 0x52800640 /* +0x180: mov	w0, #0x32               // =50 */\n"

        " .Lsfrel97:\n"

        ".inst 0x94000000 /* +0x184: bl	0x1490 <fan_speed_show+0x184> */\n"

        ".reloc .Lsfrel97, R_AARCH64_CALL26, msleep\n"

        " .Lsfrel98:\n"

        ".inst 0xf94002e8 /* +0x188: ldr	x8, [x23] */\n"

        ".reloc .Lsfrel98, R_AARCH64_LDST64_ABS_LO12_NC, chip\n"

        ".inst 0xf9402516 /* +0x18c: ldr	x22, [x8, #0x48] */\n"

        ".inst 0xb4000256 /* +0x190: cbz	x22, 0x14e4 <fan_speed_show+0x1d8> */\n"

        ".inst 0xaa1603e0 /* +0x194: mov	x0, x22 */\n"

        " .Lsfrel102:\n"

        ".inst 0x94000000 /* +0x198: bl	0x14a4 <fan_speed_show+0x198> */\n"

        ".reloc .Lsfrel102, R_AARCH64_CALL26, regulator_is_enabled\n"

        ".inst 0x350001e0 /* +0x19c: cbnz	w0, 0x14e4 <fan_speed_show+0x1d8> */\n"

        ".inst 0xaa1603e0 /* +0x1a0: mov	x0, x22 */\n"

        " .Lsfrel105:\n"

        ".inst 0x94000000 /* +0x1a4: bl	0x14b0 <fan_speed_show+0x1a4> */\n"

        ".reloc .Lsfrel105, R_AARCH64_CALL26, regulator_enable\n"

        ".inst 0x2a0003f6 /* +0x1a8: mov	w22, w0 */\n"

        ".inst 0x52800140 /* +0x1ac: mov	w0, #0xa                // =10 */\n"

        " .Lsfrel108:\n"

        ".inst 0x94000000 /* +0x1b0: bl	0x14bc <fan_speed_show+0x1b0> */\n"

        ".reloc .Lsfrel108, R_AARCH64_CALL26, msleep\n"

        " .Lsfrel109:\n"

        ".inst 0x90000000 /* +0x1b4: adrp	x0, 0x1000 <fan_level_show+0x28> */\n"

        ".reloc .Lsfrel109, R_AARCH64_ADR_PREL_PG_HI21, .Lsfstr5\n"

        " .Lsfrel110:\n"

        ".inst 0x91000000 /* +0x1b8: add	x0, x0, #0x0 */\n"

        ".reloc .Lsfrel110, R_AARCH64_ADD_ABS_LO12_NC, .Lsfstr5\n"

        " .Lsfrel111:\n"

        ".inst 0x90000001 /* +0x1bc: adrp	x1, 0x1000 <fan_level_show+0x28> */\n"

        ".reloc .Lsfrel111, R_AARCH64_ADR_PREL_PG_HI21, .Lsfstr1\n"

        " .Lsfrel112:\n"

        ".inst 0x91000021 /* +0x1c0: add	x1, x1, #0x0 */\n"

        ".reloc .Lsfrel112, R_AARCH64_ADD_ABS_LO12_NC, .Lsfstr1\n"

        " .Lsfrel113:\n"

        ".inst 0x90000002 /* +0x1c4: adrp	x2, 0x1000 <fan_level_show+0x28> */\n"

        ".reloc .Lsfrel113, R_AARCH64_ADR_PREL_PG_HI21, .Lsfstr4\n"

        " .Lsfrel114:\n"

        ".inst 0x91000042 /* +0x1c8: add	x2, x2, #0x0 */\n"

        ".reloc .Lsfrel114, R_AARCH64_ADD_ABS_LO12_NC, .Lsfstr4\n"

        ".inst 0x52801da3 /* +0x1cc: mov	w3, #0xed               // =237 */\n"

        ".inst 0x2a1603e4 /* +0x1d0: mov	w4, w22 */\n"

        " .Lsfrel117:\n"

        ".inst 0x94000000 /* +0x1d4: bl	0x14e0 <fan_speed_show+0x1d4> */\n"

        ".reloc .Lsfrel117, R_AARCH64_CALL26, _printk\n"

        " .Lsfrel118:\n"

        ".inst 0xf94002e8 /* +0x1d8: ldr	x8, [x23] */\n"

        ".reloc .Lsfrel118, R_AARCH64_LDST64_ABS_LO12_NC, chip\n"

        ".inst 0x2a1503e1 /* +0x1dc: mov	w1, w21 */\n"

        ".inst 0xf9400500 /* +0x1e0: ldr	x0, [x8, #0x8] */\n"

        " .Lsfrel175:\n"
        ".inst 0x94000000 /* +0x1e4: bl	0xd94 <fan_level_set> */\n"
        ".reloc .Lsfrel175, R_AARCH64_CALL26, fan_level_set\n"

        " .Lsfrel122:\n"

        ".inst 0xf94002e8 /* +0x1e8: ldr	x8, [x23] */\n"

        ".reloc .Lsfrel122, R_AARCH64_LDST64_ABS_LO12_NC, chip\n"

        " .Lsfrel123:\n"

        ".inst 0xb9400306 /* +0x1ec: ldr	w6, [x24] */\n"

        ".reloc .Lsfrel123, R_AARCH64_LDST32_ABS_LO12_NC, nb_fan_rpm_check.rst_cnt\n"

        " .Lsfrel124:\n"

        ".inst 0x90000000 /* +0x1f0: adrp	x0, 0x1000 <fan_level_show+0x28> */\n"

        ".reloc .Lsfrel124, R_AARCH64_ADR_PREL_PG_HI21, .Lsfstr6\n"

        " .Lsfrel125:\n"

        ".inst 0x91000000 /* +0x1f4: add	x0, x0, #0x0 */\n"

        ".reloc .Lsfrel125, R_AARCH64_ADD_ABS_LO12_NC, .Lsfstr6\n"

        " .Lsfrel126:\n"

        ".inst 0x90000001 /* +0x1f8: adrp	x1, 0x1000 <fan_level_show+0x28> */\n"

        ".reloc .Lsfrel126, R_AARCH64_ADR_PREL_PG_HI21, .Lsfstr1\n"

        " .Lsfrel127:\n"

        ".inst 0x91000021 /* +0x1fc: add	x1, x1, #0x0 */\n"

        ".reloc .Lsfrel127, R_AARCH64_ADD_ABS_LO12_NC, .Lsfstr1\n"

        ".inst 0xf9400508 /* +0x200: ldr	x8, [x8, #0x8] */\n"

        " .Lsfrel129:\n"

        ".inst 0x90000002 /* +0x204: adrp	x2, 0x1000 <fan_level_show+0x28> */\n"

        ".reloc .Lsfrel129, R_AARCH64_ADR_PREL_PG_HI21, .Lsfstr7\n"

        " .Lsfrel130:\n"

        ".inst 0x91000042 /* +0x208: add	x2, x2, #0x0 */\n"

        ".reloc .Lsfrel130, R_AARCH64_ADD_ABS_LO12_NC, .Lsfstr7\n"

        ".inst 0x528035a3 /* +0x20c: mov	w3, #0x1ad              // =429 */\n"

        ".inst 0x2a1403e5 /* +0x210: mov	w5, w20 */\n"

        ".inst 0x39400104 /* +0x214: ldrb	w4, [x8] */\n"

        " .Lsfrel134:\n"

        ".inst 0x94000000 /* +0x218: bl	0x1524 <fan_speed_show+0x218> */\n"

        ".reloc .Lsfrel134, R_AARCH64_CALL26, _printk\n"

        " .Lsfrel135:\n"

        ".inst 0xb9400308 /* +0x21c: ldr	w8, [x24] */\n"

        ".reloc .Lsfrel135, R_AARCH64_LDST32_ABS_LO12_NC, nb_fan_rpm_check.rst_cnt\n"

        ".inst 0x7100291f /* +0x220: cmp	w8, #0xa */\n"

        ".inst 0x540001c1 /* +0x224: b.ne	0x1568 <fan_speed_show+0x25c> */\n"

        " .Lsfrel138:\n"

        ".inst 0xf94002e8 /* +0x228: ldr	x8, [x23] */\n"

        ".reloc .Lsfrel138, R_AARCH64_LDST64_ABS_LO12_NC, chip\n"

        " .Lsfrel139:\n"

        ".inst 0x90000000 /* +0x22c: adrp	x0, 0x1000 <fan_level_show+0x28> */\n"

        ".reloc .Lsfrel139, R_AARCH64_ADR_PREL_PG_HI21, .Lsfstr8\n"

        " .Lsfrel140:\n"

        ".inst 0x91000000 /* +0x230: add	x0, x0, #0x0 */\n"

        ".reloc .Lsfrel140, R_AARCH64_ADD_ABS_LO12_NC, .Lsfstr8\n"

        " .Lsfrel141:\n"

        ".inst 0x90000001 /* +0x234: adrp	x1, 0x1000 <fan_level_show+0x28> */\n"

        ".reloc .Lsfrel141, R_AARCH64_ADR_PREL_PG_HI21, .Lsfstr1\n"

        " .Lsfrel142:\n"

        ".inst 0x91000021 /* +0x238: add	x1, x1, #0x0 */\n"

        ".reloc .Lsfrel142, R_AARCH64_ADD_ABS_LO12_NC, .Lsfstr1\n"

        " .Lsfrel143:\n"

        ".inst 0x90000002 /* +0x23c: adrp	x2, 0x1000 <fan_level_show+0x28> */\n"

        ".reloc .Lsfrel143, R_AARCH64_ADR_PREL_PG_HI21, .Lsfstr7\n"

        " .Lsfrel144:\n"

        ".inst 0x91000042 /* +0x240: add	x2, x2, #0x0 */\n"

        ".reloc .Lsfrel144, R_AARCH64_ADD_ABS_LO12_NC, .Lsfstr7\n"

        ".inst 0xf9400508 /* +0x244: ldr	x8, [x8, #0x8] */\n"

        ".inst 0x52803603 /* +0x248: mov	w3, #0x1b0              // =432 */\n"

        ".inst 0x2a1403e5 /* +0x24c: mov	w5, w20 */\n"

        ".inst 0x39400104 /* +0x250: ldrb	w4, [x8] */\n"

        " .Lsfrel149:\n"

        ".inst 0x94000000 /* +0x254: bl	0x1560 <fan_speed_show+0x254> */\n"

        ".reloc .Lsfrel149, R_AARCH64_CALL26, _printk\n"

        " .Lsfrel150:\n"

        ".inst 0xb9400308 /* +0x258: ldr	w8, [x24] */\n"

        ".reloc .Lsfrel150, R_AARCH64_LDST32_ABS_LO12_NC, nb_fan_rpm_check.rst_cnt\n"

        ".inst 0x11000508 /* +0x25c: add	w8, w8, #0x1 */\n"

        " .Lsfrel152:\n"

        ".inst 0xb9000308 /* +0x260: str	w8, [x24] */\n"

        ".reloc .Lsfrel152, R_AARCH64_LDST32_ABS_LO12_NC, nb_fan_rpm_check.rst_cnt\n"

        " .Lsfrel153:\n"

        ".inst 0x90000001 /* +0x264: adrp	x1, 0x1000 <fan_level_show+0x28> */\n"

        ".reloc .Lsfrel153, R_AARCH64_ADR_PREL_PG_HI21, .Lsfstr9\n"

        " .Lsfrel154:\n"

        ".inst 0x91000021 /* +0x268: add	x1, x1, #0x0 */\n"

        ".reloc .Lsfrel154, R_AARCH64_ADD_ABS_LO12_NC, .Lsfstr9\n"

        ".inst 0xaa1303e0 /* +0x26c: mov	x0, x19 */\n"

        ".inst 0x2a1403e2 /* +0x270: mov	w2, w20 */\n"

        " .Lsfrel157:\n"

        ".inst 0x94000000 /* +0x274: bl	0x1580 <fan_speed_show+0x274> */\n"

        ".reloc .Lsfrel157, R_AARCH64_CALL26, sprintf\n"

        " .Lsfrel158:\n"

        ".inst 0xf94002e8 /* +0x278: ldr	x8, [x23] */\n"

        ".reloc .Lsfrel158, R_AARCH64_LDST64_ABS_LO12_NC, chip\n"

        ".inst 0x2a0003f3 /* +0x27c: mov	w19, w0 */\n"

        ".inst 0x91006100 /* +0x280: add	x0, x8, #0x18 */\n"

        " .Lsfrel161:\n"

        ".inst 0x94000000 /* +0x284: bl	0x1590 <fan_speed_show+0x284> */\n"

        ".reloc .Lsfrel161, R_AARCH64_CALL26, mutex_unlock\n"

        " .Lsfrel162:\n"

        ".inst 0xf94002e8 /* +0x288: ldr	x8, [x23] */\n"

        ".reloc .Lsfrel162, R_AARCH64_LDST64_ABS_LO12_NC, chip\n"

        " .Lsfrel163:\n"

        ".inst 0x90000000 /* +0x28c: adrp	x0, 0x1000 <fan_level_show+0x28> */\n"

        ".reloc .Lsfrel163, R_AARCH64_ADR_PREL_PG_HI21, .Lsfstr10\n"

        " .Lsfrel164:\n"

        ".inst 0x91000000 /* +0x290: add	x0, x0, #0x0 */\n"

        ".reloc .Lsfrel164, R_AARCH64_ADD_ABS_LO12_NC, .Lsfstr10\n"

        " .Lsfrel165:\n"

        ".inst 0x90000001 /* +0x294: adrp	x1, 0x1000 <fan_level_show+0x28> */\n"

        ".reloc .Lsfrel165, R_AARCH64_ADR_PREL_PG_HI21, .Lsfstr1\n"

        " .Lsfrel166:\n"

        ".inst 0x91000021 /* +0x298: add	x1, x1, #0x0 */\n"

        ".reloc .Lsfrel166, R_AARCH64_ADD_ABS_LO12_NC, .Lsfstr1\n"

        " .Lsfrel167:\n"

        ".inst 0x90000002 /* +0x29c: adrp	x2, 0x1000 <fan_level_show+0x28> */\n"

        ".reloc .Lsfrel167, R_AARCH64_ADR_PREL_PG_HI21, .Lsfstr11\n"

        " .Lsfrel168:\n"

        ".inst 0x91000042 /* +0x2a0: add	x2, x2, #0x0 */\n"

        ".reloc .Lsfrel168, R_AARCH64_ADD_ABS_LO12_NC, .Lsfstr11\n"

        ".inst 0xf9400508 /* +0x2a4: ldr	x8, [x8, #0x8] */\n"

        ".inst 0x52803883 /* +0x2a8: mov	w3, #0x1c4              // =452 */\n"

        ".inst 0x2a1403e5 /* +0x2ac: mov	w5, w20 */\n"

        ".inst 0x39400104 /* +0x2b0: ldrb	w4, [x8] */\n"

        " .Lsfrel173:\n"

        ".inst 0x94000000 /* +0x2b4: bl	0x15c0 <fan_speed_show+0x2b4> */\n"

        ".reloc .Lsfrel173, R_AARCH64_CALL26, _printk\n"

        ".inst 0x93407e60 /* +0x2b8: sxtw	x0, w19 */\n"

        ".inst 0xa9434ff4 /* +0x2bc: ldp	x20, x19, [sp, #0x30] */\n"

        ".inst 0xa94257f6 /* +0x2c0: ldp	x22, x21, [sp, #0x20] */\n"

        ".inst 0xa9415ff8 /* +0x2c4: ldp	x24, x23, [sp, #0x10] */\n"

        ".inst 0xa8c47bfd /* +0x2c8: ldp	x29, x30, [sp], #0x40 */\n"

        ".inst 0xd50323bf /* +0x2cc: autiasp */\n"

        ".inst 0xd65f03c0 /* +0x2d0: ret */\n"

        );
}

/* Preserve the stock sysfs show callback ABI while the actual attribute table
 * is still pending reconstruction. Replace these anchors with that table. */
static __used ssize_t fan_pwm_store(struct kobject *kobj,
				    struct kobj_attribute *attr,
				    const char *buf, size_t count)
{
	struct pwm_state state;
	u32 pwm_value = 0;
	u8 pwm_pct;
	u8 *chip_base;
	struct pwm_device *pwm;
	struct pwm_chip *pwm_chip;
	const struct pwm_ops *ops;
	u64 state_tail;
	int ret;

	sscanf(buf, "%d", &pwm_value);
	if (pwm_value >= 101) {
		printk(KERN_DEBUG
		       "[%s] [%s:%d] pwm=%d,it is a bad pwm,not in(%d-%d).\n",
		       "NB_FAN", "fan_pwm_store", 0x181, pwm_value, 0, 100);
		return -EINVAL;
	}

	mutex_lock((struct mutex *)((u8 *)chip + 0x18));
	chip_base = *(u8 * volatile *)&chip;
	pwm_pct = *(volatile u8 *)&pwm_value;
	pwm = *(struct pwm_device **)(*(u8 **)(chip_base + 0x08) + 0x68);
	pwm_chip = pwm->chip;
	state_tail = *(volatile u64 *)((u8 *)pwm + 0x40);
	ops = *(const struct pwm_ops * volatile *)((u8 *)pwm_chip + 0x390);
	*(u64 *)((u8 *)&state + 0x10) = state_tail;
	state.enabled = true;
	state.period = 40000;
	state.duty_cycle = (u64)pwm_pct * 400;
	ret = ops->apply(pwm_chip, pwm, &state);
	if (ret < 0) {
		printk(KERN_DEBUG
		       "[%s] [%s:%d] Apply PWM state for fan_pwm=%d failed, rc=%d\n",
		       "NB_FAN", "fan_pwm_set", 0xd5, pwm_pct, ret);
	} else if (ret == 0) {
		mutex_unlock((struct mutex *)((u8 *)chip + 0x18));
		printk(KERN_DEBUG "[%s] [%s:%d] set fan_pwm=%d rc=%d.",
		       "NB_FAN", "fan_pwm_store", 0x18c, pwm_value, 0);
		goto return_count;
	}
	mutex_unlock((struct mutex *)((u8 *)chip + 0x18));
	return ret;

return_count:
	return count;
}

static ssize_t (*const fan_enable_show_kcfi_anchor)(
	struct kobject *, struct kobj_attribute *, char *) __used = fan_enable_show;
static ssize_t (*const fan_level_show_kcfi_anchor)(
	struct kobject *, struct kobj_attribute *, char *) __used = fan_level_show;
static irqreturn_t (*const fan_speed_irq_proc_kcfi_anchor)(int, void *)
	__used = fan_speed_irq_proc;
static void (*const nb_fan_remove_kcfi_anchor)(struct platform_device *)
	__used = nb_fan_remove;
static void (*const cleanup_module_kcfi_anchor)(void) __used = cleanup_module;
static int (*const init_module_kcfi_anchor)(void) __used = init_module;
static enum hrtimer_restart (*const fan_hrtimer_hander_kcfi_anchor)(
	struct hrtimer *) __used = fan_hrtimer_hander;
static ssize_t (*const fan_speed_show_kcfi_anchor)(
	struct kobject *, struct kobj_attribute *, char *) __used = fan_speed_show;
static ssize_t (*const fan_pwm_store_kcfi_anchor)(
	struct kobject *, struct kobj_attribute *, const char *, size_t)
	__used = fan_pwm_store;
static ssize_t (*const fan_level_store_kcfi_anchor)(
	struct kobject *, struct kobj_attribute *, const char *, size_t)
	__used = fan_level_store;
static ssize_t (*const fan_enable_store_kcfi_anchor)(
	struct kobject *, struct kobj_attribute *, const char *, size_t)
	__used = fan_enable_store;

MODULE_LICENSE("GPL");
