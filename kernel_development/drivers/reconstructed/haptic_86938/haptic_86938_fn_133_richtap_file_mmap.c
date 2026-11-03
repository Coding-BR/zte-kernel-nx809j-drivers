// SPDX-License-Identifier: GPL-2.0
#include <linux/bug.h>
#include <linux/device.h>
#include <linux/errno.h>
#include <linux/fs.h>
#include <linux/mm.h>
#include <linux/sched.h>

#include "haptic_86938_internal.h"

#include <asm/alternative.h>
#include <asm/cpufeature.h>

int richtap_file_mmap(struct file *file, struct vm_area_struct *vma)
{
	register struct vm_area_struct *saved_vma asm("x19");
	struct haptic_lifetime *lifetime;
	u8 *haptic;
	unsigned long page_address;
	int ret;
	void *state;

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
	ret = haptic_lifetime_enter_file(file, &lifetime, &state);
	if (ret)
		return ret;
	haptic = state;
	if (!vma)
		__builtin_trap();
	if (pgprot_val(saved_vma->vm_page_prot) !=
	    pgprot_val(vm_get_page_prot(current->mm->def_flags | 0xfbUL))) {
		ret = -EPERM;
		goto out;
	}
	if (saved_vma->vm_end - saved_vma->vm_start != 0x4000UL) {
		ret = -ENOMEM;
		goto out;
	}

	page_address = *(unsigned long *)(haptic + 0x610);
	ret = remap_pfn_range(saved_vma, saved_vma->vm_start,
			     virt_to_pfn((void *)page_address), 0x4000UL,
			     saved_vma->vm_page_prot);
	if (ret)
		dev_err(*(struct device **)(haptic + 0x320),
			"Error mmap failed\n");
	else
		haptic_lifetime_attach_vma(lifetime, saved_vma);

out:
	haptic_lifetime_exit_file(lifetime);
	return ret;
}
