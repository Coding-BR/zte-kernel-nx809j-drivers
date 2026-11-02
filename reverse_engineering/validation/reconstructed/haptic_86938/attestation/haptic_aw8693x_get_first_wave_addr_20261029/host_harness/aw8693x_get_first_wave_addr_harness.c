// SPDX-License-Identifier: GPL-2.0
#include <stdio.h>
#include <linux/string.h>
#include <linux/types.h>
struct aw_haptic { u8 opaque[8]; };
static struct aw_haptic haptic;
static struct aw_haptic *observed_haptic;
static u8 observed_reg;
static u32 observed_length;
static unsigned int calls;
static int helper_result, write_data;
static u8 response[3];
int i2c_r_bytes(struct aw_haptic *arg, u8 reg, u8 *data, u32 length);
#define STRINGIFY_INNER(value) #value
#define STRINGIFY(value) STRINGIFY_INNER(value)
#include STRINGIFY(CANDIDATE_SOURCE)
int i2c_r_bytes(struct aw_haptic *arg, u8 reg, u8 *data, u32 length)
{
	observed_haptic=arg; observed_reg=reg; observed_length=length; calls++;
	if(write_data && length>=3) memcpy(data,response,3);
	return helper_result;
}
struct test_case { u8 bytes[3]; int write, status; u16 expected; };
int main(void)
{
	static const struct test_case cases[]={
		{{0xaa,0x34,0x12},1,0,0x1234},{{0x00,0xff,0x00},1,0,0x00ff},
		{{0x00,0x00,0xff},1,-5,0xff00},{{0x00,0x78,0x56},1,-6,0x5678},
		{{0xaa,0xbb,0xcc},0,-5,0x0000}
	};
	unsigned int i;
	for(i=0;i<sizeof(cases)/sizeof(cases[0]);i++) {
		unsigned int before=calls; char output[2]={(char)0xef,(char)0xbe}; u16 actual;
		memcpy(response,cases[i].bytes,3); write_data=cases[i].write; helper_result=cases[i].status;
		aw8693x_get_first_wave_addr(&haptic,output);
		memcpy(&actual,output,sizeof(actual));
		if(actual!=cases[i].expected || calls!=before+1 || observed_haptic!=&haptic ||
		   observed_reg!=0x42 || observed_length!=3) {
			fputs("FAIL: output bytes, register, transfer length, or call count mismatch\n",stderr); return 1;
		}
	}
	puts("PASS: first-wave address three-byte read and extraction contract"); return 0;
}
