// SPDX-License-Identifier: GPL-2.0
#include <stdint.h>
#include <stddef.h>
#include <stdio.h>
#include <string.h>
#include <linux/types.h>
#ifndef CANDIDATE_SOURCE
#error "CANDIDATE_SOURCE must name the source under test"
#endif
#define STRINGIFY_INNER(value) #value
#define STRINGIFY(value) STRINGIFY_INNER(value)
#include STRINGIFY(CANDIDATE_SOURCE)
_Static_assert(offsetof(struct aw_haptic, rtp_mode)==0x11, "mode offset mismatch");
_Static_assert(offsetof(struct aw_haptic, i2c)==0x328, "bus pointer offset mismatch");
_Static_assert(offsetof(struct aw_i2c, fifo_level)==2, "FIFO field offset mismatch");
static struct aw_haptic haptic;
static struct aw_i2c bus;
static u8 response, observed_reg;
static int write_response, helper_status;
static u32 observed_length;
static u16 observed_fifo_level;
static struct aw_haptic *observed_haptic;
static unsigned int calls;
int i2c_r_bytes(struct aw_haptic *arg, u8 reg, u8 *data, u32 length)
{
	observed_haptic=arg; observed_reg=reg; observed_length=length;
	observed_fifo_level=arg->i2c->fifo_level; calls++;
	if(write_response && length>0) data[0]=response;
	return helper_status;
}
struct test_case { u8 mode, response; u16 initial, during, after; int write, status; u8 expected; };
int main(void)
{
	static const struct test_case cases[]={
		{1,0x08,0x2468,0x005b,0x0000,1,0,1},
		{0,0x04,0x1357,0x1357,0x1357,1,0,0},
		{1,0x00,0xaaaa,0x005b,0x0000,1,0,0},
		{1,0x55,0x5a5a,0x005b,0x0000,0,-6,0},
		{2,0x08,0x9876,0x9876,0x9876,1,0,1},
	};
	unsigned int i;
	for(i=0;i<sizeof(cases)/sizeof(cases[0]);i++) {
		unsigned int before=calls; memset(&haptic,0,sizeof(haptic)); haptic.i2c=&bus; haptic.rtp_mode=cases[i].mode; bus.fifo_level=cases[i].initial;
		response=cases[i].response; write_response=cases[i].write; helper_status=cases[i].status;
		if(aw8693x_rtp_get_fifo_afi(&haptic)!=cases[i].expected || calls!=before+1 || observed_haptic!=&haptic || observed_reg!=2 || observed_length!=1 || observed_fifo_level!=cases[i].during || bus.fifo_level!=cases[i].after) {
			fputs("FAIL: return bit, mode-gated FIFO writes, register, transfer length, or call count mismatch",stderr); fputc(10,stderr); return 1;
		}
	}
	puts("PASS: FIFO almost-full read and temporary threshold contract"); return 0;
}
