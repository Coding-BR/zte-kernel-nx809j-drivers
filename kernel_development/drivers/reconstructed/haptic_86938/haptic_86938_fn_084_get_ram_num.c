// SPDX-License-Identifier: GPL-2.0
#include <linux/compiler.h>
#include <linux/mutex.h>
#include <linux/printk.h>
#include <linux/types.h>

struct aw_haptic;

typedef void (*aw_haptic_callback)(struct aw_haptic *haptic);
typedef void (*aw_haptic_flag_callback)(struct aw_haptic *haptic, u8 enable);
typedef void (*aw_haptic_first_wave_callback)(struct aw_haptic *haptic,
					      char *first_wave_addr);

static const char ram_num_failure_format[] __attribute__((used, section(".rodata.str1.1"))) =
	"\0013[%s][%04d]%s: ram init faild, ram_num = 0!\n";
static const char ram_num_first_wave_format[] __attribute__((used, section(".rodata.str1.1"))) =
	"\0016[%s][%04d]%s: first wave addr = 0x%04x\n";
static const char ram_num_device[] __attribute__((used, section(".rodata.str1.1"))) =
	"haptic_hv";
static const char ram_num_function[] __attribute__((used, section(".rodata.str1.1"))) =
	"get_ram_num";

void get_ram_num(struct aw_haptic *haptic)
{
	u16 first_wave_addr;
	register u8 init_flag asm("w8") = *(u8 *)((u8 *)haptic + 6);

	/*
	 * Keep the stock load/zero/test order and expose the error edge to the
	 * compiler so the normal path's callee-save setup stays after the test.
	 */
	asm volatile("" : "+r"(init_flag) : : "memory");
	first_wave_addr = 0;
	asm goto volatile("tbz %w[flag], #0, %l[ram_init_failed]"
			  : : [flag] "r"(init_flag) : "cc", "memory"
			  : ram_init_failed);

	mutex_lock((struct mutex *)((u8 *)haptic + 0x2f0));
	((aw_haptic_callback)(*(void ***)((u8 *)haptic + 0x5c8))[7])(haptic);
	((aw_haptic_flag_callback)(*(void ***)((u8 *)haptic + 0x5c8))[13])(
		haptic, 1);
	((aw_haptic_callback)(*(void ***)((u8 *)haptic + 0x5c8))[31])(haptic);
	((aw_haptic_first_wave_callback)(
		*(void ***)((u8 *)haptic + 0x5c8))[38])(haptic,
						      (char *)&first_wave_addr);

	register u32 ram_count asm("w8") = (u32)first_wave_addr;
	register u32 ram_size asm("w9");
	register u32 address asm("w4");
	register const char *module_name asm("x20");
	register const char *function_name asm("x21");
	register const char *format asm("x0");
	asm volatile("ldr %w[size], [%x[haptic], #0x458]\n\t"
		     "adrp %x[module], %c[device]\n\t"
		     "add %x[module], %x[module], :lo12:%c[device]\n\t"
		     "adrp %x[function], %c[function_symbol]\n\t"
		     "add %x[function], %x[function], :lo12:%c[function_symbol]\n\t"
		     "rev16 %w[address], %w[count]\n\t"
		     "mvn %w[count], %w[size]\n\t"
		     "adrp %x[format], %c[first_format]\n\t"
		     "add %x[format], %x[format], :lo12:%c[first_format]\n\t"
		     "add %w[count], %w[address], %w[count]"
		     : [size] "=&r"(ram_size),
		       [module] "=&r"(module_name),
		       [function] "=&r"(function_name),
		       [format] "=&r"(format),
		       [address] "=&r"(address),
		       [count] "+r"(ram_count)
		     : [haptic] "r"(haptic),
		       [device] "i"(ram_num_device),
		       [function_symbol] "i"(ram_num_function),
		       [first_format] "i"(ram_num_first_wave_format)
		     : "memory", "cc");

	ram_count >>= 2;
	asm volatile("" : : "r"(ram_count) : "x2", "x3");
	*(u8 *)((u8 *)haptic + 0x45c) = (u8)ram_count;
	printk(format, module_name, 0x277, function_name, address);
	printk(KERN_INFO "[%s][%04d]%s: ram_num = %d\n",
	       module_name, 0x278, function_name,
	       *(u8 *)((u8 *)haptic + 0x45c));
	((aw_haptic_flag_callback)(*(void ***)((u8 *)haptic + 0x5c8))[13])(
		haptic, 0);
	mutex_unlock((struct mutex *)((u8 *)haptic + 0x2f0));

	asm goto volatile("b %l[ram_num_done]" : : : : ram_num_done);

ram_init_failed:
	asm volatile("adrp x0, %c[failure_format]\n\t"
		     "add x0, x0, :lo12:%c[failure_format]\n\t"
		     "adrp x1, %c[device]\n\t"
		     "add x1, x1, :lo12:%c[device]\n\t"
		     "adrp x3, %c[function_symbol]\n\t"
		     "add x3, x3, :lo12:%c[function_symbol]\n\t"
		     "mov w2, #0x268\n\t"
		     "bl _printk"
		     : : [failure_format] "i"(ram_num_failure_format),
		       [device] "i"(ram_num_device),
		       [function_symbol] "i"(ram_num_function)
		     : "x0", "x1", "x2", "x3", "x30", "cc", "memory");
ram_num_done:
	;
}
