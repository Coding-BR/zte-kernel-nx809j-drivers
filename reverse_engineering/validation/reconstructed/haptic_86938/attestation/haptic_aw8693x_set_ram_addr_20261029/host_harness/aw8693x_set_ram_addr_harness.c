// SPDX-License-Identifier: GPL-2.0
#include <stdint.h>
#include <stdio.h>
#include <linux/types.h>

struct aw_haptic { u16 alignment; u8 opaque[0x45e]; };
static struct aw_haptic haptic;
static struct aw_haptic *observed_haptic;
static u8 observed_reg, observed_bytes[2];
static u32 observed_length;
static unsigned int calls;
static int helper_result;

int i2c_w_bytes(struct aw_haptic *arg, u8 reg, u8 *data, u32 length);
#define STRINGIFY_INNER(value) #value
#define STRINGIFY(value) STRINGIFY_INNER(value)
#include STRINGIFY(CANDIDATE_SOURCE)

int i2c_w_bytes(struct aw_haptic *arg, u8 reg, u8 *data, u32 length)
{
	observed_haptic=arg; observed_reg=reg; observed_length=length; calls++;
	if (length>0) observed_bytes[0]=data[0];
	if (length>1) observed_bytes[1]=data[1];
	return helper_result;
}
struct test_case { u16 address; int result; };
int main(void)
{
	static const struct test_case cases[]={{0x0000,0},{0x0001,-5},{0x1234,0},{0xabcd,-6},{0xff00,0},{0xffff,-5}};
	unsigned int i;
	for(i=0;i<sizeof(cases)/sizeof(cases[0]);i++) {
		unsigned int before=calls;
		*(u16 *)((u8 *)&haptic+0x458)=cases[i].address;
		helper_result=cases[i].result;
		observed_bytes[0]=observed_bytes[1]=0;
		aw8693x_set_ram_addr(&haptic);
		if(calls!=before+1 || observed_haptic!=&haptic || observed_reg!=0x40 || observed_length!=2 ||
		   observed_bytes[0]!=(u8)(cases[i].address>>8) || observed_bytes[1]!=(u8)cases[i].address) {
			fputs("FAIL: address payload, register, length, or call count mismatch\n",stderr); return 1;
		}
	}
	puts("PASS: RAM address big-endian I2C write contract"); return 0;
}
