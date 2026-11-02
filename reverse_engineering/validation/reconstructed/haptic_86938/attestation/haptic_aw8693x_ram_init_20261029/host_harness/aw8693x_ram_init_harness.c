// SPDX-License-Identifier: GPL-2.0
#include <stdio.h>
#include <linux/delay.h>
#include <linux/types.h>
struct aw_haptic { u8 opaque[8]; };
static struct aw_haptic haptic;
static struct aw_haptic *observed_haptic;
static u8 observed_reg, observed_value;
static u32 observed_mask;
static unsigned int write_calls, sleep_calls, sleep_state;
static unsigned long sleep_min, sleep_max;
static int helper_result;
int i2c_w_bits(struct aw_haptic *aw, u8 reg, u32 mask, u8 value);
#define STRINGIFY_INNER(value) #value
#define STRINGIFY(value) STRINGIFY_INNER(value)
#include STRINGIFY(CANDIDATE_SOURCE)
int i2c_w_bits(struct aw_haptic *aw, u8 reg, u32 mask, u8 value)
{
	observed_haptic=aw; observed_reg=reg; observed_mask=mask; observed_value=value; write_calls++; return helper_result;
}
void usleep_range_state(unsigned long min, unsigned long max, unsigned int state)
{
	sleep_min=min; sleep_max=max; sleep_state=state; sleep_calls++;
}
struct test_case { u8 mode; int result; };
int main(void)
{
	static const struct test_case cases[]={{0,-5},{1,0},{2,-6},{3,-5},{0xff,0}};
	unsigned int i, expected_sleeps=0;
	for(i=0;i<sizeof(cases)/sizeof(cases[0]);i++) {
		unsigned int before_w=write_calls, before_s=sleep_calls;
		u8 value=(cases[i].mode&1U)?4U:0U;
		helper_result=cases[i].result;
		aw8693x_ram_init(&haptic,cases[i].mode);
		if(write_calls!=before_w+1 || observed_haptic!=&haptic || observed_reg!=0x45 ||
		   observed_mask!=0xfffffffbU || observed_value!=value) {
			fputs("FAIL: mode, register, mask, value, or write count mismatch\n",stderr); return 1;
		}
		if(cases[i].mode&1U) {
			expected_sleeps++;
			if(sleep_calls!=before_s+1 || sleep_min!=500 || sleep_max!=600 || sleep_state!=2) {
				fputs("FAIL: conditional delay contract mismatch\n",stderr); return 1;
			}
		} else if(sleep_calls!=before_s) {
			fputs("FAIL: unexpected delay on clear branch\n",stderr); return 1;
		}
	}
	if(sleep_calls!=expected_sleeps) return 1;
	puts("PASS: RAM-init bit, masked write, and conditional delay contract"); return 0;
}
