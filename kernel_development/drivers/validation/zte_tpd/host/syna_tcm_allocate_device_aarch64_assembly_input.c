#define __int64 long long
#define __int8 char
#define __int16 short
#define __int32 int
#define __fastcall

typedef unsigned long size_t;
typedef unsigned long long _QWORD;
typedef unsigned char _BYTE;
typedef unsigned short _WORD;
typedef unsigned int _DWORD;

extern int printk(const void *format, const char *function, ...);
extern __int64 syna_request_managed_device(void);
extern void *devm_kmalloc(__int64 device, size_t size, unsigned int flags);
extern void devm_kfree(__int64 device, void *memory);
extern void _mutex_init(__int64 lock, const char *name, void *key);
extern void mutex_lock(__int64 lock);
extern void mutex_unlock(__int64 lock);
extern void _init_swait_queue_head(__int64 queue, const char *name, void *key);
extern void *memset(void *destination, int value, size_t size);

extern void *unk_3AC64;
extern void *unk_384CE;
extern void *unk_343EB;
extern void *unk_367BF;
extern void *unk_3BE43;
extern void *unk_35C97;
extern void *unk_38244;
extern void *unk_3703C;
extern void *unk_35CC7;
extern void *unk_3B375;
extern void *unk_34845;
extern void *unk_3B99D;
extern void *unk_398C0;
extern void *unk_36C2A;
extern void *unk_3CCBD;
extern void *syna_pal_mutex_alloc___key_7;
extern void *init_completion___key_2;

#include "../../../reconstructed/zte_tpd/syna_tcm_allocate_device.c"
