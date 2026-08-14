#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define _DEFS_H
#define __user

static const char *unk_3990A = "syna_mmap size %u exceeds %u";
static unsigned long memstart_addr;
static unsigned int printk_calls;
static unsigned int last_printk_size;
static unsigned int last_printk_limit;
static unsigned int remap_calls;
static unsigned long last_pfn;
static int remap_result;

static int test_printk(const char *format, const char *name,
                       unsigned int size, unsigned int limit)
{
    if (format != unk_3990A || strcmp(name, "syna_mmap") != 0)
        return -1;
    ++printk_calls;
    last_printk_size = size;
    last_printk_limit = limit;
    return 0;
}

#define printk(...) test_printk(__VA_ARGS__)

#include "../../../reconstructed/zte_tpd/syna_mmap.c"

int remap_pfn_range(struct vm_area_struct *vma, unsigned long start,
                    unsigned long pfn, unsigned long size,
                    unsigned long page_prot)
{
    if (start != vma->vm_start || size != vma->vm_end - vma->vm_start ||
        page_prot != vma->vm_page_prot)
        return -99;
    ++remap_calls;
    last_pfn = pfn;
    return remap_result;
}

static void fail(const char *case_name, const char *message)
{
    fprintf(stderr, "FAIL %s: %s\n", case_name, message);
    exit(1);
}

static void expect(int condition, const char *case_name, const char *message)
{
    if (!condition)
        fail(case_name, message);
}

static void fixture_reset(struct file *file, struct vm_area_struct *vma,
                          unsigned char *private_data, unsigned char *buffer,
                          unsigned long size)
{
    memset(private_data, 0, 1200);
    memcpy(private_data + 1120, &buffer, sizeof(buffer));
    file->private_data = private_data;
    vma->vm_start = 0x100000UL;
    vma->vm_end = vma->vm_start + size;
    vma->vm_pgoff = 7;
    vma->vm_page_prot = 0x5;
    memstart_addr = 0x400000UL;
    printk_calls = 0;
    last_printk_size = 0;
    last_printk_limit = 0;
    remap_calls = 0;
    last_pfn = 0;
    remap_result = 0;
}

int main(void)
{
    struct file file;
    struct vm_area_struct vma;
    unsigned char private_data[1200];
    unsigned char buffer[4096];
    unsigned long expected_pfn;
    int result;

    fixture_reset(&file, &vma, private_data, buffer, 0x32000UL);
    expected_pfn = (((unsigned long)buffer - PAGE_OFFSET + memstart_addr) >>
                    PAGE_SHIFT) + vma.vm_pgoff;
    result = syna_mmap(&file, &vma);
    expect(result == 0, "limit", "exact limit should map");
    expect(remap_calls == 1 && last_pfn == expected_pfn,
           "limit", "PFN calculation mismatch");

    fixture_reset(&file, &vma, private_data, buffer, 0x32001UL);
    result = syna_mmap(&file, &vma);
    expect(result == -22, "oversize", "oversize mapping should return -EINVAL");
    expect(remap_calls == 0 && printk_calls == 1,
           "oversize", "oversize path should only log");
    expect(last_printk_size == 0x32001U && last_printk_limit == 0x32000U,
           "oversize", "printk arguments mismatch");

    fixture_reset(&file, &vma, private_data, buffer, 0x1000UL);
    remap_result = -1;
    result = syna_mmap(&file, &vma);
    expect(result == -11, "remap-failure", "remap failure should return -EAGAIN");
    expect(remap_calls == 1 && printk_calls == 0,
           "remap-failure", "remap failure path mismatch");

    fixture_reset(&file, &vma, private_data, buffer, 0x2000UL);
    vma.vm_pgoff = 0x1234;
    result = syna_mmap(&file, &vma);
    expect(result == 0, "pgoff", "nonzero page offset should map");
    expected_pfn = (((unsigned long)buffer - PAGE_OFFSET + memstart_addr) >>
                    PAGE_SHIFT) + vma.vm_pgoff;
    expect(last_pfn == expected_pfn, "pgoff", "page offset not applied");

    puts("PASS syna_mmap host tests (4 cases)");
    return 0;
}
