#ifndef ZTE_TPD_HOST_LINUX_MM_H
#define ZTE_TPD_HOST_LINUX_MM_H

struct vm_area_struct {
    unsigned long vm_start;
    unsigned long vm_end;
    unsigned long vm_pgoff;
    unsigned long vm_page_prot;
};

int remap_pfn_range(struct vm_area_struct *vma, unsigned long start,
                    unsigned long pfn, unsigned long size,
                    unsigned long page_prot);

#endif
