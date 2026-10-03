#include <linux/fs.h>
#include <linux/mm.h>
#include <linux/slab.h>
#include <asm/memory.h>
#include "defs.h"

int syna_mmap(struct file *file, struct vm_area_struct *vma)
{
  unsigned long size = vma->vm_end - vma->vm_start;
  void *private_data = file->private_data;
  long buffer;
  long offset;
  long pfn;

  if ( size > 0x32000 )
  {
    printk(unk_3990A, "syna_mmap", (unsigned int)size, 0x32000);
    return -22; // -EINVAL
  }

  buffer = *(long *)((char *)private_data + 1120);

  offset = (((long)vma->vm_pgoff * 0x100000L) +
            (buffer * 0x100L)) >> 8;
  pfn = (((long)(memstart_addr >> PAGE_SHIFT) * 0x40L) +
         ((offset + 0x8000000000L) >> 6)) >> 6;

  if ( remap_pfn_range(vma, vma->vm_start,
                       pfn,
                       size, vma->vm_page_prot) )
  {
    return -11;
  }

  return 0;
}
