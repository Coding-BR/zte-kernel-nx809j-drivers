#define __int64 long long
#define __int8 char
#define __int16 short
#define __int32 int
typedef unsigned long long _QWORD;
typedef unsigned char _BYTE;
typedef unsigned short _WORD;
typedef unsigned int _DWORD;

#define __fastcall

struct tcm_dev;
long long syna_request_managed_device(void);
void devm_kfree(long long device, void *ptr);
void printk(void *format, ...);

void *unk_34845;
void *unk_3BE43;
void *unk_3AC8E;
void *unk_3365A;

#include "../../../reconstructed/zte_tpd/syna_tcm_remove_device.c"
