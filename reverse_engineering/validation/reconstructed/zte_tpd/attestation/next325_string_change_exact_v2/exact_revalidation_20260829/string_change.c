#if defined(ZTE_TPD_HOST_TEST)
#include <ctype.h>
#include <stdarg.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef unsigned char u8;
#define GFP_KERNEL 0
#define KERN_INFO ""
#define printk zte_tpd_host_printk

static int zte_tpd_host_alloc_fail_after = -1;

static int zte_tpd_host_printk(const char *format, ...)
{
    va_list args;

    va_start(args, format);
    va_end(args);
    return 0;
}

static void *zte_tpd_host_kmalloc(size_t size)
{
    if (zte_tpd_host_alloc_fail_after == 0)
        return NULL;
    if (zte_tpd_host_alloc_fail_after > 0)
        zte_tpd_host_alloc_fail_after--;
    return malloc(size);
}

static void *zte_tpd_host_kzalloc(size_t size)
{
    void *memory = zte_tpd_host_kmalloc(size);

    if (memory)
        memset(memory, 0, size);
    return memory;
}

#define kmalloc(size, flags) zte_tpd_host_kmalloc(size)
#define kzalloc(size, flags) zte_tpd_host_kzalloc(size)
#define kfree free
#define simple_strtoul stringtoul
#define __break(value) ((void)(value))
#define unk_33FD8 "%s: %s rotation=%d\n"

static unsigned long stringtoul(const char *string, char **end, unsigned int base)
{
    return strtoul(string, end, base);
}

static char *trim(char *input)
{
    char *end;

    if (!input)
        return NULL;
    while (*input && isspace((unsigned char)*input))
        input++;
    if (!*input)
        return input;
    end = input + strlen(input) - 1;
    while (end > input && isspace((unsigned char)*end))
        end--;
    end[1] = '\0';
    return input;
}

#elif defined(ZTE_TPD_AARCH64_INPUT)
typedef __SIZE_TYPE__ size_t;
typedef unsigned char u8;

extern size_t strlen(const char *string);
extern void *memcpy(void *destination, const void *source, size_t length);
extern char *strchr(const char *string, int character);
extern char *strsep(char **stringp, const char *delimiter);
extern int zte_tpd_aarch64_printk(const char *format, ...);
extern char unk_33FD8[];
extern void *kmalloc(size_t size, unsigned int flags);
extern void *kzalloc(size_t size, unsigned int flags);
extern void kfree(void *memory);
extern unsigned long simple_strtoul(const char *string, char **end,
                                    unsigned int base);
extern char *trim(char *input);

#define GFP_KERNEL 0
#define NULL 0
#define KERN_INFO ""
#define printk zte_tpd_aarch64_printk
#define __break(value) ((void)(value))
#else
#include "defs.h"
#include "trim.c"
#endif

#define nullptr NULL

// Reconstructed string_change function
unsigned char *string_change(long a1, char *s, int *a3)
{
  size_t len;
  char *s_copy;
  char *part1, *part2;
  unsigned char *out_buf = NULL;
  size_t out_max;
  char *part1_ptr, *token;
  int v15 = 0;
  unsigned char v14 = 0;
  int v13 = 0;
  int v16 = 1;
  char *colon;

  if (!s || !*s)
  {
    out_buf = kzalloc(1, GFP_KERNEL);
    if (!out_buf)
      goto LABEL_77;
    *out_buf = 0;
    goto LABEL_77;
  }

  len = strlen(s);
  s_copy = kmalloc(len + 1, GFP_KERNEL);
  if (!s_copy)
  {
    out_buf = NULL;
    goto LABEL_77;
  }
  memcpy(s_copy, s, len + 1);

  out_max = 3 * strlen(s);
  out_buf = kmalloc(out_max, GFP_KERNEL);
  if (!out_buf)
  {
    kfree(s_copy);
    goto LABEL_77;
  }

  // Split at the first colon (if any) to separate part1 and part2
  colon = strchr(s_copy, ':');
  if (colon)
  {
    *colon = 0;
    part1 = s_copy;
    part2 = colon + 1;
  }
  else
  {
    part1 = s_copy;
    part2 = NULL;
  }

  // Loop 1: Parse part1 (comma separated hex values)
  part1_ptr = part1;
  if (*part1_ptr)
  {
    while ((token = strsep(&part1_ptr, ",")) != NULL)
    {
      char *trimmed = trim(token);
      if (*trimmed)
      {
        unsigned char val = (unsigned char)simple_strtoul(trimmed, NULL, 16);
        if (v15 < 0 || (size_t)v15 >= out_max)
        {
          // overflow check from decomp
          __break(1u);
          goto LABEL_77;
        }
        if (v16)
        {
          v14 = val;
          v13 = 1;
          v16 = 0;
        }
        out_buf[v15++] = val;
      }
    }
  }

  // Loop 2: Parse part2 (dot separated coordinates)
  if (part2 && *part2)
  {
    char *part2_ptr = part2;
    char *segment;
    int v20 = 1;
    int v21 = v15;

    while ((segment = strsep(&part2_ptr, ".")) != NULL)
    {
      char *trimmed_seg = trim(segment);
      if (!*trimmed_seg)
        continue;

      int v23 = (v13 != 0);
      if (v20)
        v23 = 0;

      if (v23)
      {
        if (v21 < 0 || (size_t)v21 >= out_max)
        {
          __break(1u);
          goto LABEL_77;
        }
        out_buf[v21++] = v14;
      }

      char *seg_colon = strchr(trimmed_seg, ':');
      char *coords_str = trimmed_seg;
      if (seg_colon)
      {
        *seg_colon = 0;
        char *seg_prefix = trim(trimmed_seg);
        coords_str = seg_colon + 1;
        if (seg_prefix)
        {
          unsigned char val = (unsigned char)simple_strtoul(seg_prefix, NULL, 16);
          if (v21 < 0 || (size_t)v21 >= out_max)
          {
            __break(1u);
            goto LABEL_77;
          }
          out_buf[v21++] = val;
        }
      }

      char *coords_trimmed = trim(coords_str);
      char *c1 = strsep(&coords_trimmed, ",");
      char *c2 = strsep(&coords_trimmed, ",");
      char *c3 = strsep(&coords_trimmed, ",");
      char *c4 = strsep(&coords_trimmed, ",");

      if (c1 && c2 && c3 && c4)
      {
        char *t1 = trim(c1);
        char *t2 = trim(c2);
        char *t3 = trim(c3);
        char *t4 = trim(c4);

        unsigned int x1 = simple_strtoul(t1, NULL, 10);
        unsigned int y1 = simple_strtoul(t2, NULL, 10);
        unsigned int x2 = simple_strtoul(t3, NULL, 10);
        unsigned int y2 = simple_strtoul(t4, NULL, 10);

        int rotation = *(int *)(a1 + 1544);
        unsigned int first = 0;
        unsigned int second = 0;
        unsigned int third = 0;
        unsigned int fourth = 0;
        unsigned int fifth = 0;
        unsigned int sixth = 0;
        unsigned int seventh = 0;
        unsigned int eighth = 0;

        printk(unk_33FD8, "change_coordinate", rotation);

        if (rotation == 3)
        {
          unsigned int x2_scaled = 10 * (2688 - x2) - 1;
          unsigned int y2_scaled = 10 * y2 - 1;
          unsigned int x1_scaled = 10 * (2688 - x1) | 1;

          first = 10 * y1 | 1;
          second = (10 * y1) >> 8;
          third = x2_scaled;
          fourth = x2_scaled >> 8;
          fifth = y2_scaled;
          sixth = y2_scaled >> 8;
          seventh = x1_scaled;
          eighth = ((2688 - x1) * 5 & 0x7fffffffU) >> 7;
        }
        else if (rotation == 1)
        {
          unsigned int x2_scaled = 10 * x2 - 1;
          unsigned int y1_scaled = (1216 - y1) * 10 - 1;
          unsigned int x1_scaled = 10 * x1 | 1;
          unsigned int y2_scaled = (1216 - y2) * 10 | 1;

          first = y2_scaled;
          second = y2_scaled >> 8;
          third = x1_scaled;
          fourth = (x1 * 5 & 0x7fffffffU) >> 7;
          fifth = y1_scaled;
          sixth = y1_scaled >> 8;
          seventh = x2_scaled;
          eighth = x2_scaled >> 8;
        }

        if (v21 < 0 || (size_t)v21 + 8 > out_max)
        {
          __break(1u);
          goto LABEL_77;
        }

        out_buf[v21] = first;
        out_buf[v21 + 1] = second;
        out_buf[v21 + 2] = third;
        out_buf[v21 + 3] = fourth;
        out_buf[v21 + 4] = fifth;
        out_buf[v21 + 5] = sixth;
        out_buf[v21 + 6] = seventh;
        out_buf[v21 + 7] = eighth;
        v21 += 8;
      }

      v20 = 0;
    }
    v15 = v21;
  }

  kfree(s_copy);
  *a3 = v15;
  return out_buf;

LABEL_77:
  *a3 = 0;
  return out_buf;
}
