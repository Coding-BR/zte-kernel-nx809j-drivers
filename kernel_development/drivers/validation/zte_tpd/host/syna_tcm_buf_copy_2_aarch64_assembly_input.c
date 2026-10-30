typedef _Bool bool;
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef unsigned long long u64;
typedef unsigned long size_t;
#define offsetof(type, member) __builtin_offsetof(type, member)
#define static_assert _Static_assert
#define __user
#define __init
#define __exit

#define __int64 long long
#define __int8 char
#define __int16 short
#define __int32 int
typedef unsigned long long _QWORD;
typedef unsigned char _BYTE;
typedef unsigned short _WORD;
typedef unsigned int _DWORD;
#define __fastcall

#include "../../../reconstructed/zte_tpd/zte_tpd_tcm_layout.h"

__int64 syna_request_managed_device(void);
void *devm_kmalloc(__int64 device, unsigned long size, unsigned int flags);
void devm_kfree(__int64 device, void *memory);
void mutex_lock(__int64 lock);
void mutex_unlock(__int64 lock);
int printk(const void *format, const char *function, ...);
void *memset(void *destination, int value, size_t length);
void *memcpy(void *destination, const void *source, size_t length);

void *unk_38244;
void *unk_3BA82;
void *unk_3BE43;
void *unk_38286;
void *unk_3703C;
void *unk_378CD;
void *unk_3944E;
void *unk_34F34;

#include "../../../reconstructed/zte_tpd/syna_tcm_buf_copy_2.c"
