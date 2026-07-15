#include <linux/ctype.h>

static char *trim(char *input)
{
  char *v1; // x19
  unsigned int v2; // w8
  unsigned int v3; // t1
  size_t v4; // x9
  unsigned __int8 *v5; // x8

  if ( !input )
    return NULL;
  v1 = input - 1;
  do
  {
    v3 = *(unsigned __int8 *)++v1;
    v2 = v3;
  }
  while ( isspace(v3) );
  if ( v2 )
  {
    v4 = (size_t)&v1[strlen(v1) - 1];
    do
    {
      v5 = (unsigned __int8 *)v4;
      if ( v4 <= (unsigned __int64)v1 )
        break;
      --v4;
    }
    while ( isspace(*v5) );
    v5[1] = 0;
  }
  return v1;
}
