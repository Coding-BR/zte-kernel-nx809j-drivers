// SPDX-License-Identifier: GPL-2.0
#include <stdarg.h>
#include <stdio.h>
#include <string.h>
#include <linux/types.h>
struct aw_haptic { u8 opaque[8]; };
static struct aw_haptic haptic;
static u8 response_byte;
static int write_response, helper_result;
static unsigned int read_calls, printk_calls;
static struct aw_haptic *seen_haptic;
static u8 seen_reg, seen_data;
static u32 seen_length;
static int print_args_ok;
int i2c_r_bytes(struct aw_haptic *haptic, u8 reg, u8 *data, u32 length);
#define STRINGIFY_INNER(value) #value
#define STRINGIFY(value) STRINGIFY_INNER(value)
#include STRINGIFY(CANDIDATE_SOURCE)
int i2c_r_bytes(struct aw_haptic *arg, u8 reg, u8 *data, u32 length)
{
	++read_calls; seen_haptic=arg; seen_reg=reg; seen_length=length;
	if (write_response && length) data[0]=response_byte;
	seen_data=length ? data[0] : 0xff;
	return helper_result;
}
int printk(const char *fmt, ...)
{
	va_list ap; const char *tag,*function; int line,value;
	++printk_calls; va_start(ap,fmt); tag=va_arg(ap,const char *); line=va_arg(ap,int);
	function=va_arg(ap,const char *); value=va_arg(ap,int); va_end(ap);
	print_args_ok = !strcmp(fmt,"\0016[%s][%04d]%s: reg SYSINT=0x%02X\n") &&
		!strcmp(tag,"haptic_hv") && line==1099 &&
		!strcmp(function,"aw8693x_irq_clear") && value==(int)seen_data;
	return 0;
}
static int fail(void)
{
	fputs("FAIL: IRQ register read, ignored status, or diagnostic printk mismatch\n",stderr); return 1;
}
int main(void)
{
	struct test_case {u8 byte; int write,status;};
	static const struct test_case cases[]={{0,1,0},{1,1,-5},{0x80,1,-6},{0xff,1,1},{0xaa,0,-5}};
	unsigned int i;
	for(i=0;i<sizeof(cases)/sizeof(cases[0]);++i) {
		read_calls=printk_calls=0; print_args_ok=0; response_byte=cases[i].byte;
		write_response=cases[i].write; helper_result=cases[i].status;
		aw8693x_irq_clear(&haptic);
		if(read_calls!=1 || printk_calls!=1 || seen_haptic!=&haptic ||
		   seen_reg!=2 || seen_length!=1 || seen_data!=(cases[i].write?cases[i].byte:0) || !print_args_ok) return fail();
	}
	puts("PASS: IRQ status read, diagnostic value, and ignored helper return"); return 0;
}
