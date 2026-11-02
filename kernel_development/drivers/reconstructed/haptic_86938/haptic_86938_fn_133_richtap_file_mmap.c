// SPDX-License-Identifier: GPL-2.0
#include <linux/bug.h>
#include <linux/device.h>
#include <linux/errno.h>
#include <linux/fs.h>
#include <linux/mm.h>
#include <linux/sched.h>

#include <asm/alternative.h>
#include <asm/cpufeature.h>

int richtap_file_mmap(struct file *file, struct vm_area_struct *vma)
{
	register struct vm_area_struct *saved_vma asm("x19");
	u8 *haptic = READ_ONCE(file->private_data);
	unsigned long page_address;
	int ret;

	BUG_ON(!system_capabilities_finalized());
	asm goto(ALTERNATIVE("nop", "b %l[l_bti_done]", ARM64_BTI)
		 : : : : l_bti_done);
l_bti_done:
	asm goto(ALTERNATIVE("nop", "b %l[l_mte_done]", ARM64_MTE)
		 : : : : l_mte_done);
l_mte_done:
	asm goto(ALTERNATIVE("nop", "b %l[l_s1poe_done]", ARM64_HAS_S1POE)
		 : : : : l_s1poe_done);
l_s1poe_done:
	asm volatile("mov %0, %1"
		     : "=r"(saved_vma)
		     : "r"(vma));
	if (!vma)
		__builtin_trap();
	if (pgprot_val(saved_vma->vm_page_prot) !=
	    pgprot_val(vm_get_page_prot(current->mm->def_flags | 0xfbUL)))
		return -EPERM;
	if (saved_vma->vm_end - saved_vma->vm_start != 0x4000UL)
		return -ENOMEM;

	page_address = *(unsigned long *)(haptic + 0x610);
	ret = remap_pfn_range(saved_vma, saved_vma->vm_start,
			     virt_to_pfn((void *)page_address), 0x4000UL,
			     saved_vma->vm_page_prot);
	if (ret)
		dev_err(*(struct device **)(haptic + 0x320),
			"Error mmap failed\n");
	return ret;
}
