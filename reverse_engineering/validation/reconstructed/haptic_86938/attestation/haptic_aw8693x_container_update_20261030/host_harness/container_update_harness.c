#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <linux/mutex.h>
#include <linux/types.h>
struct aw_haptic { u8 bytes[0x600]; };
#include "haptic_86938_fn_127_aw8693x_container_update.c"
#define RAM_CAP 65536
static u8 regs[256], ram[RAM_CAP];
static u32 wp,rp,write_len[8],read_len[8];
static int memstart,stops,sleeps,rd_calls,wr_calls;
static int fail_read,fail_write=-1,mismatch=-1,mismatch_done;
void mutex_lock(struct mutex *m){m->locks++;m->depth++;}
void mutex_unlock(struct mutex *m){m->unlocks++;m->depth--;}
int printk(const char *s,...){(void)s;return 0;}
void aw8693x_stop(struct aw_haptic *h){(void)h;stops++;}
void usleep_range_state(unsigned long a,unsigned long b,u32 c)
{if(a!=500||b!=600||c!=2)abort();sleeps++;}
int i2c_w_bits(struct aw_haptic*h,u8 r,u32 m,u8 v)
{(void)h;regs[r]=(u8)((regs[r]&m)|(v&~m));return -EIO;}
int i2c_w_bytes(struct aw_haptic*h,u8 r,u8*d,u32 n)
{
 (void)h;if((int)r==fail_write)return -EIO;
 if(r==0x2f){for(u32 i=0;i<n;i++)regs[(u8)(r+i)]=d[i];}
 else if(r==0x40){if(++memstart==1)wp=0;else rp=0;}
 else if(r==0x42){if(wr_calls<8)write_len[wr_calls]=n;wr_calls++;
  if(wp+n>RAM_CAP)return -EIO;memcpy(ram+wp,d,n);wp+=n;}
 else if(r==0x2e)regs[r]=d[0];
 return 0;
}
int i2c_r_bytes(struct aw_haptic*h,u8 r,u8*d,u32 n)
{
 (void)h;
 if(r==0x2f){if(fail_read)return -EIO;for(u32 i=0;i<n;i++)d[i]=regs[(u8)(r+i)];return 0;}
 if(r!=0x42)return -EIO;
 if(rd_calls<8)read_len[rd_calls]=n;rd_calls++;
 if(fail_read){rp+=n;return -EIO;}
 if(rp+n>RAM_CAP)return -EIO;memcpy(d,ram+rp,n);
 if(!mismatch_done&&mismatch>=0&&(u32)mismatch>=rp&&(u32)mismatch<rp+n)
 {d[(u32)mismatch-rp]^=0xff;mismatch_done=1;}
 rp+=n;return 0;
}
static void reset_model(void)
{
 memset(regs,0,sizeof(regs));memset(ram,0,sizeof(ram));
 memset(write_len,0,sizeof(write_len));memset(read_len,0,sizeof(read_len));
 wp=rp=0;memstart=stops=sleeps=rd_calls=wr_calls=0;
 fail_read=0;fail_write=-1;mismatch=-1;mismatch_done=0;
}
static int run_case(const char*name,int n,int zero,int bad,int ferr,int fw,int expected)
{
 struct aw_haptic*h=calloc(1,sizeof(*h));
 struct aw_haptic_container*c=calloc(1,sizeof(*c)+4+(size_t)n);
 if(!h||!c)return 2;
 c->len=4+n;c->data[2]=2;
 for(int i=0;i<n;i++)c->data[4+i]=zero?0:(u8)(i*37+5);
 u8 *copy=malloc((size_t)c->len);if(!copy)return 2;
 memcpy(copy,c->data,(size_t)c->len);reset_model();
 mismatch=bad;fail_read=ferr;fail_write=fw;
 int ret=aw8693x_container_update(h,c);
 struct mutex*m=(struct mutex*)(h->bytes+0x2f0);
 if(ret!=expected||m->locks!=1||m->unlocks!=1||m->depth||
    stops!=1||sleeps!=1||*(u16*)(h->bytes+0x45e)!=0x0204||
    *(u32*)(h->bytes+0x458)!=0x200||(regs[0x45]&4)||
    memcmp(copy,c->data,(size_t)c->len)) {
  fprintf(stderr,"FAIL %s ret=%d\n",name,ret);return 1;
 }
 if(n==2305&&(wr_calls!=2||write_len[0]!=2048||write_len[1]!=257||
    rd_calls!=3||read_len[0]!=1024||read_len[1]!=1024||read_len[2]!=257)){
  fprintf(stderr,"FAIL chunk lengths\n");return 1;
 }
 if(bad>=0&&(ret!=-ERANGE||rd_calls!=1||!mismatch_done))return 1;
 if(ferr&&ret!=0)return 1;
 printf("PASS %s ret=%d writes=%d reads=%d\n",name,ret,wr_calls,rd_calls);
 free(copy);free(c);free(h);return 0;
}
static int run_oob(void)
{
 struct aw_haptic*h=calloc(1,sizeof(*h));
 struct aw_haptic_container*c=calloc(1,sizeof(*c)+3);
 if(!h||!c)return 2;c->len=3;c->data[2]=2;
 return aw8693x_container_update(h,c);
}
int main(int argc,char**argv)
{
 if(argc>1&&!strcmp(argv[1],"oob"))return run_oob();
 if(run_case("boundary_len_4",0,1,-1,0,-1,0))return 1;
 if(run_case("multi_chunk",2305,0,-1,0,-1,0))return 1;
 if(run_case("first_mismatch",1024,0,5,0,-1,-ERANGE))return 1;
 if(run_case("read_error_ignored_zero_payload",64,1,-1,1,-1,0))return 1;
 if(run_case("write_error_ignored",32,1,-1,0,0x2f,0))return 1;
 puts("PASS all host behavior checks");return 0;
}
