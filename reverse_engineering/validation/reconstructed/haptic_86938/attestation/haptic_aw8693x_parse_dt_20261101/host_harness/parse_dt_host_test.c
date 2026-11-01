#include <errno.h>
#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <linux/of.h>
#include <linux/printk.h>
#define OBJ 0x700
#define NREAD 16
#define NPROP 19
#define CHECK(x,m) do { if (!(x)) { fprintf(stderr,"FAIL: %s (line %d)\n",m,__LINE__); return 1; } } while (0)
struct device; struct aw_haptic;
void aw8693x_parse_dt(struct device *, struct aw_haptic *, struct device_node *);
static const char *const names[NREAD]={"aw8693x_gain_bypass","aw8693x_uvlo_vol_default","f0_pre","aw8693x_f0_cali_percent","aw8693x_cont_smart_loop","aw8693x_cont_drv1_lvl","aw8693x_cont_lra_vrms","aw8693x_cont_drv1_time","aw8693x_cont_drv2_time","aw8693x_cont_brk_time","aw8693x_cont_track_margin","aw8693x_cont_brk_gain","aw8693x_d2s_gain","aw8693x_duration_time","aw8693x_trig_config","aw8693x_bst_vol_default"};
static const size_t offsets[NREAD]={0x4c1,0x4c2,0x468,0x462,0x4c3,0x49a,0x4c4,0x4a0,0x4a1,0x49d,0x4a3,0x49f,0x495,0x464,0x4a5,0x463};
static const size_t widths[NREAD]={1,1,4,1,1,1,4,1,1,1,1,1,1,3,24,1};
static const char *const flag_names[3]={"aw8693x_is_enabled_track_en","aw8693x_is_enabled_auto_bst","aw8693x_is_enabled_one_wire"};
static struct property props[NPROP]; static u8 data[NREAD][32]; static struct device_node node;
static char logs[64][256], calls[NREAD][64], find_names[NPROP][64]; static int read_results[NREAD]; static size_t nlogs,ncalls,nfinds;
static void setup(unsigned int mask);
static void reset(void);
struct property *of_find_property(const struct device_node *np,const char *name,int *lenp){
	struct property *p;
	if(nfinds<NPROP)snprintf(find_names[nfinds],sizeof(find_names[0]),"%s",name);
	nfinds++;
	if(!np)return NULL;
	for(p=np->properties;p;p=p->next)if(!strcmp(p->name,name)){if(lenp)*lenp=(int)p->length;return p;}
	return NULL;
}
static int lookup(const struct device_node *np,const char *name,size_t minb,size_t maxb,struct property **out){struct property *p=of_find_property(np,name,NULL);if(!p)return -EINVAL;if(!p->value)return -ENODATA;if(p->length<minb||(maxb&&p->length>maxb))return -EOVERFLOW;*out=p;return 0;}
static void note(const char *name){if(ncalls<NREAD){snprintf(calls[ncalls],sizeof(calls[ncalls]),"%s",name);ncalls++;}}
static int record_result(int result){if(ncalls&&ncalls<=NREAD)read_results[ncalls-1]=result;return result;}
int of_property_read_variable_u8_array(const struct device_node *np,const char *name,u8 *out,size_t mn,size_t mx){struct property *p=NULL;size_t n,i;int r;note(name);r=lookup(np,name,mn,mx,&p);if(r<0)return record_result(r);n=mx?p->length:mn;for(i=0;i<n;i++)out[i]=((const u8*)p->value)[i];return record_result((int)n);}
int of_property_read_variable_u32_array(const struct device_node *np,const char *name,u32 *out,size_t mn,size_t mx){struct property *p=NULL;const u8 *b;size_t n,i;int r;note(name);r=lookup(np,name,mn*4,mx*4,&p);if(r<0)return record_result(r);n=mx?p->length/4:mn;b=p->value;for(i=0;i<n;i++)out[i]=((u32)b[4*i]<<24)|((u32)b[4*i+1]<<16)|((u32)b[4*i+2]<<8)|b[4*i+3];return record_result((int)n);}
int printk(const char *fmt,...){va_list ap;int n;if(nlogs>=64)return -1;va_start(ap,fmt);n=vsnprintf(logs[nlogs],sizeof(logs[0]),fmt,ap);va_end(ap);nlogs++;return n;}
struct direct_read { const char *name; size_t offset; unsigned int line; bool u32; };
static const struct direct_read direct_reads[13]={
 {"aw8693x_gain_bypass",0x4c1,0x6ae,false},
 {"aw8693x_uvlo_vol_default",0x4c2,0x6b2,false},
 {"f0_pre",0x468,0x6b6,true},
 {"aw8693x_f0_cali_percent",0x462,0x6ba,false},
 {"aw8693x_cont_smart_loop",0x4c3,0x6be,false},
 {"aw8693x_cont_drv1_lvl",0x49a,0x6c2,false},
 {"aw8693x_cont_lra_vrms",0x4c4,0x6c6,true},
 {"aw8693x_cont_drv1_time",0x4a0,0x6ca,false},
 {"aw8693x_cont_drv2_time",0x4a1,0x6ce,false},
 {"aw8693x_cont_brk_time",0x49d,0x6d2,false},
 {"aw8693x_cont_track_margin",0x4a3,0x6d7,false},
 {"aw8693x_cont_brk_gain",0x49f,0x6db,false},
 {"aw8693x_d2s_gain",0x495,0x6df,false}
};
static void model_error(const char *name,unsigned int line){
	printk(KERN_INFO "[%s][%04d]%s: %s not found\n","haptic_hv",line,"aw8693x_parse_dt",name);
}
static void stock_model(struct aw_haptic *aw,struct device_node *np){
	u8 *obj=(u8*)aw;u8 duration[3]={0},trig[24]={0};int ret;size_t i;bool flag;
	for(i=0;i<13;i++){
		if(direct_reads[i].u32)ret=of_property_read_variable_u32_array(np,direct_reads[i].name,(u32*)(obj+direct_reads[i].offset),1,0);
		else ret=of_property_read_variable_u8_array(np,direct_reads[i].name,obj+direct_reads[i].offset,1,0);
		if(ret<0)model_error(direct_reads[i].name,direct_reads[i].line);
	}
	ret=of_property_read_variable_u8_array(np,"aw8693x_duration_time",duration,3,0);
	if(ret>=0)memcpy(obj+0x464,duration,sizeof(duration));else model_error("aw8693x_duration_time",0x6e4);
	ret=of_property_read_variable_u8_array(np,"aw8693x_trig_config",trig,24,0);
	if(ret>=0)memcpy(obj+0x4a5,trig,sizeof(trig));else model_error("aw8693x_trig_config",0x6eb);
	ret=of_property_read_variable_u8_array(np,"aw8693x_bst_vol_default",obj+0x463,1,0);
	if(ret<0)model_error("aw8693x_bst_vol_default",0x6f2);
	flag=of_find_property(np,"aw8693x_is_enabled_track_en",NULL)!=NULL;*(bool*)(obj+0x4c0)=flag;
	printk(KERN_INFO "[%s][%04d]%s: track en = %d\n","haptic_hv",0x6f6,"aw8693x_parse_dt",flag);
	flag=of_find_property(np,"aw8693x_is_enabled_auto_bst",NULL)!=NULL;*(bool*)(obj+0x4bd)=flag;
	printk(KERN_INFO "[%s][%04d]%s: auto bst = %d\n","haptic_hv",0x6fa,"aw8693x_parse_dt",flag);
	flag=of_find_property(np,"aw8693x_is_enabled_one_wire",NULL)!=NULL;*(bool*)(obj+0x4bf)=flag;
	printk(KERN_INFO "[%s][%04d]%s: onewire = %d\n","haptic_hv",0x6fe,"aw8693x_parse_dt",flag);
}
struct observation { u8 object[OBJ];char saved_logs[64][256];char saved_calls[NREAD][64];char saved_finds[NPROP][64];int saved_read_results[NREAD];size_t logs,calls,finds; };
static void snapshot(struct observation *o,const u8 *obj){memcpy(o->object,obj,OBJ);memcpy(o->saved_logs,logs,sizeof(logs));memcpy(o->saved_calls,calls,sizeof(calls));memcpy(o->saved_finds,find_names,sizeof(find_names));memcpy(o->saved_read_results,read_results,sizeof(read_results));o->logs=nlogs;o->calls=ncalls;o->finds=nfinds;}
static int compare_pair(const u8 *initial,struct device_node *np){
	u8 obj[OBJ];struct observation model,candidate;size_t i;
	memcpy(obj,initial,OBJ);reset();stock_model((struct aw_haptic*)obj,np);snapshot(&model,obj);
	memcpy(obj,initial,OBJ);reset();aw8693x_parse_dt(NULL,(struct aw_haptic*)obj,np);snapshot(&candidate,obj);
	CHECK(!memcmp(model.object,candidate.object,OBJ),"stock model/candidate state bytes");
	CHECK(model.logs==candidate.logs&&model.calls==candidate.calls&&model.finds==candidate.finds,"stock model/candidate event counts");
	CHECK(!memcmp(model.saved_read_results,candidate.saved_read_results,sizeof(model.saved_read_results)),"stock model/candidate OF return classes");
	for(i=0;i<model.logs;i++)CHECK(!strcmp(model.saved_logs[i],candidate.saved_logs[i]),"stock model/candidate log trace");
	for(i=0;i<model.calls;i++)CHECK(!strcmp(model.saved_calls[i],candidate.saved_calls[i]),"stock model/candidate OF read order");
	for(i=0;i<model.finds;i++)CHECK(!strcmp(model.saved_finds[i],candidate.saved_finds[i]),"stock model/candidate property lookup order");
	return 0;
}
static int relational_matrix(void){
	u8 initial[OBJ];struct device_node empty={0};size_t i;unsigned int m;
	memset(initial,0,sizeof(initial));setup(5);CHECK(compare_pair(initial,&node)==0,"relational all-success case");
	for(m=0;m<8;m++){setup(m);CHECK(compare_pair(initial,&node)==0,"relational flag combinations");}
	memset(initial,0xa5,sizeof(initial));CHECK(compare_pair(initial,&empty)==0,"relational all-read-error case");
	for(i=0;i<NREAD;i++){setup(0);props[i].length=0;memset(initial,0x5a,sizeof(initial));CHECK(compare_pair(initial,&node)==0,"relational isolated short read");}
	setup(0);props[0].value=NULL;memset(initial,0x5a,sizeof(initial));CHECK(compare_pair(initial,&node)==0,"relational property without value");
	setup(0);props[13].length=2;props[14].length=23;memset(initial,0x7c,sizeof(initial));CHECK(compare_pair(initial,&node)==0,"relational short arrays");
	setup(0);props[2].length=5;props[13].length=4;props[14].length=25;CHECK(compare_pair(initial,&node)==0,"relational surplus arrays");
	CHECK(compare_pair(initial,NULL)==0,"relational null node");
	return 0;
}
static void setup(unsigned int mask){static const size_t lens[NREAD]={1,1,4,1,1,1,4,1,1,1,1,1,1,3,24,1};size_t i,j;memset(props,0,sizeof(props));memset(data,0,sizeof(data));for(i=0;i<NREAD;i++){props[i].name=names[i];props[i].value=data[i];props[i].length=lens[i];props[i].next=&props[i+1];for(j=0;j<lens[i];j++)data[i][j]=(u8)(0x30+i+j);}data[2][0]=0x11;data[2][1]=0x22;data[2][2]=0x33;data[2][3]=0x44;data[6][0]=0xaa;data[6][1]=0xbb;data[6][2]=0xcc;data[6][3]=0xdd;data[13][0]=0xa1;data[13][1]=0xb2;data[13][2]=0xc3;for(i=0;i<24;i++)data[14][i]=(u8)(i+1);for(i=0;i<3;i++){props[NREAD+i].name=(mask&(1U<<i))?flag_names[i]:"absent-property";props[NREAD+i].value=NULL;props[NREAD+i].next=i==2?NULL:&props[NREAD+i+1];}node.properties=&props[0];}
static void reset(void){memset(logs,0,sizeof(logs));memset(calls,0,sizeof(calls));memset(find_names,0,sizeof(find_names));memset(read_results,0,sizeof(read_results));nlogs=ncalls=nfinds=0;}
static int order(void){size_t i;CHECK(ncalls==NREAD,"16 property calls");for(i=0;i<NREAD;i++)CHECK(!strcmp(calls[i],names[i]),"stock read order");return 0;}
static int find_order(void){size_t i;const char *expected;CHECK(nfinds==NPROP,"19 property lookups");for(i=0;i<NPROP;i++){expected=i<NREAD?names[i]:flag_names[i-NREAD];CHECK(!strcmp(find_names[i],expected),"stock property lookup order");}return 0;}
static int success(void){u8 obj[OBJ]={0};u32 v;size_t i;setup(5);reset();aw8693x_parse_dt(NULL,(struct aw_haptic*)obj,&node);CHECK(order()==0,"read order");CHECK(find_order()==0,"lookup order");CHECK(nfinds==19&&nlogs==3,"lookup and log counts");for(i=0;i<NREAD;i++)CHECK(read_results[i]>=0,"successful OF read return");for(i=0;i<NREAD;i++)if(i!=2&&i!=6&&i!=13&&i!=14)CHECK(obj[offsets[i]]==data[i][0],"scalar offset/value");memcpy(&v,obj+0x468,4);CHECK(v==0x11223344,"f0_pre endian/offset");memcpy(&v,obj+0x4c4,4);CHECK(v==0xaabbccdd,"vrms endian/offset");CHECK(!memcmp(obj+0x464,"\xa1\xb2\xc3",3),"duration commit");for(i=0;i<24;i++)CHECK(obj[0x4a5+i]==i+1,"trigger commit");CHECK(obj[0x4c0]==1&&obj[0x4bd]==0&&obj[0x4bf]==1,"presence even without value");return 0;}
static int flags(void){unsigned int m;for(m=0;m<8;m++){u8 obj[OBJ]={0};setup(m);reset();aw8693x_parse_dt(NULL,(struct aw_haptic*)obj,&node);CHECK(find_order()==0,"flag lookup order");CHECK(obj[0x4c0]==!!(m&1),"track flag");CHECK(obj[0x4bd]==!!(m&2),"boost flag");CHECK(obj[0x4bf]==!!(m&4),"onewire flag");CHECK(nlogs==3,"flag logs");}return 0;}
static int all_fail(void){u8 obj[OBJ];struct device_node empty={0};size_t i;unsigned int errors=0;memset(obj,0xa5,sizeof(obj));reset();aw8693x_parse_dt(NULL,(struct aw_haptic*)obj,&empty);CHECK(find_order()==0,"all-fail lookup order");CHECK(ncalls==16&&nfinds==19&&nlogs==19,"all 16 errors + 3 flags");for(i=0;i<NREAD;i++)CHECK(read_results[i]==-EINVAL,"absent property returns -EINVAL");for(i=0;i<nlogs;i++)if(strstr(logs[i],"not found"))errors++;CHECK(errors==16,"16 error logs");for(i=0;i<OBJ;i++)if(i!=0x4bd&&i!=0x4bf&&i!=0x4c0)CHECK(obj[i]==0xa5,"error preserves destinations");CHECK(obj[0x4bd]==0&&obj[0x4bf]==0&&obj[0x4c0]==0,"false absent flags");return 0;}
static int each_error(void){
	size_t f;
	for(f=0;f<NREAD;f++){
		u8 obj[OBJ];setup(0);props[f].length=0;memset(obj,0x5a,sizeof(obj));reset();
		aw8693x_parse_dt(NULL,(struct aw_haptic*)obj,&node);
		CHECK(order()==0,"later calls execute");CHECK(find_order()==0,"isolated-error lookup order");
		CHECK(read_results[f]==-EOVERFLOW,"short property returns -EOVERFLOW");
		CHECK(nlogs==4,"one read error plus three state logs");
		{u8 sentinel[24];memset(sentinel,0x5a,sizeof(sentinel));CHECK(!memcmp(obj+offsets[f],sentinel,widths[f]),"failed output unchanged");}
	}
	return 0;
}
static int missing_value(void){
	u8 obj[OBJ];size_t i;setup(7);props[0].value=NULL;memset(obj,0xa5,sizeof(obj));reset();
	aw8693x_parse_dt(NULL,(struct aw_haptic*)obj,&node);
	CHECK(order()==0,"missing-value read order");CHECK(find_order()==0,"missing-value lookup order");
	CHECK(read_results[0]==-ENODATA,"present property without value returns -ENODATA");
	CHECK(ncalls==NREAD&&nfinds==NPROP&&nlogs==4,"missing value logs and later operations");
	for(i=0;i<widths[0];i++)CHECK(obj[offsets[0]+i]==0xa5,"-ENODATA preserves destination");
	CHECK(obj[0x4c0]==1&&obj[0x4bd]==1&&obj[0x4bf]==1,"flags still run after -ENODATA");
	return 0;
}
static int bounds(void){u8 obj[OBJ];u32 v;size_t i;setup(0);props[13].length=2;props[14].length=23;memset(obj,0x7c,sizeof(obj));reset();aw8693x_parse_dt(NULL,(struct aw_haptic*)obj,&node);CHECK(read_results[13]==-EOVERFLOW&&read_results[14]==-EOVERFLOW,"short arrays return -EOVERFLOW");CHECK(nlogs==5,"two short reads");for(i=0;i<3;i++)CHECK(obj[0x464+i]==0x7c,"short duration preserved");for(i=0;i<24;i++)CHECK(obj[0x4a5+i]==0x7c,"short trig preserved");setup(0);props[2].length=5;data[2][4]=0xff;props[13].length=4;props[14].length=25;memset(obj,0,sizeof(obj));reset();aw8693x_parse_dt(NULL,(struct aw_haptic*)obj,&node);CHECK(nlogs==3,"surplus accepted");memcpy(&v,obj+0x468,4);CHECK(v==0x11223344,"u32 ignores trailing byte");CHECK(!memcmp(obj+0x464,"\xa1\xb2\xc3",3),"duration prefix");for(i=0;i<24;i++)CHECK(obj[0x4a5+i]==i+1,"trigger prefix");return 0;}
static int null_node(void){u8 obj[OBJ];size_t i;memset(obj,0xa5,sizeof(obj));reset();aw8693x_parse_dt(NULL,(struct aw_haptic*)obj,NULL);CHECK(find_order()==0,"null-node lookup order");CHECK(ncalls==16&&nfinds==19&&nlogs==19,"null node follows error paths");for(i=0;i<NREAD;i++)CHECK(read_results[i]==-EINVAL,"null node returns -EINVAL");for(i=0;i<OBJ;i++)if(i!=0x4bd&&i!=0x4bf&&i!=0x4c0)CHECK(obj[i]==0xa5,"null node preserves destinations");CHECK(obj[0x4bd]==0&&obj[0x4bf]==0&&obj[0x4c0]==0,"null node false flags");return 0;}
int main(void){if(relational_matrix()||success()||flags()||all_fail()||each_error()||missing_value()||bounds()||null_node())return 1;puts("PASS: stock model comparison, errno classes, read/lookup order, offsets, flags, bounds, null-node");return 0;}
