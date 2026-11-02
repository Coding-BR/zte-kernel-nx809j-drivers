#if defined(ZTE_TPD_AARCH64_INPUT)
typedef __SIZE_TYPE__ size_t;
#define ZTE_TPD_AARCH64_USED __attribute__((used))

#ifndef NULL
#define NULL ((void *)0)
#endif

extern const unsigned char _ctype[256];
extern size_t strlen(const char *input);
#define isspace(value) (((_ctype[(unsigned char)(value)] >> 5) & 1) != 0)
#else
#include <linux/ctype.h>
#define ZTE_TPD_AARCH64_USED
#endif

static ZTE_TPD_AARCH64_USED char *trim(char *input)
{
  char *v1; // x19
  unsigned int v2; // w8
  unsigned int v3; // t1
  size_t v4; // x9
  unsigned char *v5; // x8

  if ( !input )
    return NULL;
  v1 = input - 1;
  do
  {
    v3 = *(unsigned char *)++v1;
    v2 = v3;
  }
  while ( isspace(v3) );
  if ( v2 )
  {
    v4 = (size_t)&v1[strlen(v1) - 1];
    do
    {
      v5 = (unsigned char *)v4;
      if ( v4 <= (unsigned long long)v1 )
        break;
      --v4;
    }
    while ( isspace(*v5) );
    v5[1] = 0;
  }
  return v1;
}
