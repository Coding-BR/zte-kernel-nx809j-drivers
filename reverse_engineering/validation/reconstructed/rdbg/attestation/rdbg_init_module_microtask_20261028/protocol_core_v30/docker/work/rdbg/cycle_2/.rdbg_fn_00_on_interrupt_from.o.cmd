savedcmd_/work/validation/rdbg/cycle_2/rdbg_fn_00_on_interrupt_from.o := clang -Wp,-MMD,/work/validation/rdbg/cycle_2/.rdbg_fn_00_on_interrupt_from.o.d -nostdinc -I/work/src/kernel/kernel_platform/common/arch/arm64/include -I./arch/arm64/include/generated -I/work/src/kernel/kernel_platform/common/include -I./include -I/work/src/kernel/kernel_platform/common/arch/arm64/include/uapi -I./arch/arm64/include/generated/uapi -I/work/src/kernel/kernel_platform/common/include/uapi -I./include/generated/uapi -include /work/src/kernel/kernel_platform/common/include/linux/compiler-version.h -include /work/src/kernel/kernel_platform/common/include/linux/kconfig.h -include /work/src/kernel/kernel_platform/common/include/linux/compiler_types.h -D__KERNEL__ --target=aarch64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -mlittle-endian -DKASAN_SHADOW_SCALE_SHIFT= -fmacro-prefix-map=/work/src/kernel/kernel_platform/common/= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mgeneral-regs-only -DCONFIG_CC_HAS_K_CONSTRAINT=1 -Wno-psabi -fasynchronous-unwind-tables -mbranch-protection=pac-ret -Wa,-march=armv8.5-a -DARM64_ASM_ARCH='"armv8.5-a"' -ffixed-x18 -DKASAN_SHADOW_SCALE_SHIFT= -fno-delete-null-pointer-checks -O2 -fstack-protector-strong -fno-omit-frame-pointer -fno-optimize-sibling-calls -ftrivial-auto-var-init=zero -fno-stack-clash-protection -fsanitize=kcfi -fsanitize-cfi-icall-experimental-normalize-integers -falign-functions=4 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-format-overflow-non-kprintf -Wno-format-truncation-non-kprintf -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wextra -Wunused -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-override-init -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-sign-compare -Wno-unused-parameter -g -gdwarf-5 -gz=zstd -ffile-prefix-map=/work/validation/rdbg/cycle_2=/zte_tpd -fdebug-prefix-map=/work/validation/rdbg/cycle_2=/zte_tpd -mstack-protector-guard=sysreg -mstack-protector-guard-reg=sp_el0 -mstack-protector-guard-offset=1808  -fsanitize=array-bounds -fsanitize=local-bounds -fsanitize-trap=undefined    -fdebug-info-for-profiling -mllvm -enable-fs-discriminator=true -mllvm -improved-fs-discriminator=true  -DMODULE  -DKBUILD_BASENAME='"rdbg_fn_00_on_interrupt_from"' -DKBUILD_MODNAME='"rdbg"' -D__KBUILD_MODNAME=kmod_rdbg -c -o /work/validation/rdbg/cycle_2/rdbg_fn_00_on_interrupt_from.o /work/validation/rdbg/cycle_2/rdbg_fn_00_on_interrupt_from.c  

source_/work/validation/rdbg/cycle_2/rdbg_fn_00_on_interrupt_from.o := /work/validation/rdbg/cycle_2/rdbg_fn_00_on_interrupt_from.c

deps_/work/validation/rdbg/cycle_2/rdbg_fn_00_on_interrupt_from.o := \
  /work/src/kernel/kernel_platform/common/include/linux/compiler-version.h \
    $(wildcard include/config/CC_VERSION_TEXT) \
  /work/src/kernel/kernel_platform/common/include/linux/kconfig.h \
    $(wildcard include/config/CPU_BIG_ENDIAN) \
    $(wildcard include/config/BOOGER) \
    $(wildcard include/config/FOO) \
  /work/src/kernel/kernel_platform/common/include/linux/compiler_types.h \
    $(wildcard include/config/DEBUG_INFO_BTF) \
    $(wildcard include/config/PAHOLE_HAS_BTF_TAG) \
    $(wildcard include/config/FUNCTION_ALIGNMENT) \
    $(wildcard include/config/CC_HAS_SANE_FUNCTION_ALIGNMENT) \
    $(wildcard include/config/X86_64) \
    $(wildcard include/config/ARM64) \
    $(wildcard include/config/LD_DEAD_CODE_DATA_ELIMINATION) \
    $(wildcard include/config/LTO_CLANG) \
    $(wildcard include/config/HAVE_ARCH_COMPILER_H) \
    $(wildcard include/config/CC_HAS_COUNTED_BY) \
    $(wildcard include/config/UBSAN_SIGNED_WRAP) \
    $(wildcard include/config/CC_HAS_ASM_INLINE) \
  /work/src/kernel/kernel_platform/common/include/linux/compiler_attributes.h \
  /work/src/kernel/kernel_platform/common/include/linux/compiler-clang.h \
    $(wildcard include/config/ARCH_USE_BUILTIN_BSWAP) \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/compiler.h \
    $(wildcard include/config/ARM64_PTR_AUTH_KERNEL) \
    $(wildcard include/config/ARM64_PTR_AUTH) \
    $(wildcard include/config/BUILTIN_RETURN_ADDRESS_STRIPS_PAC) \
  /work/src/kernel/kernel_platform/common/include/linux/completion.h \
    $(wildcard include/config/LOCKDEP) \
  /work/src/kernel/kernel_platform/common/include/linux/swait.h \
  /work/src/kernel/kernel_platform/common/include/linux/list.h \
    $(wildcard include/config/LIST_HARDENED) \
    $(wildcard include/config/DEBUG_LIST) \
  /work/src/kernel/kernel_platform/common/include/linux/container_of.h \
  /work/src/kernel/kernel_platform/common/include/linux/build_bug.h \
  /work/src/kernel/kernel_platform/common/include/linux/compiler.h \
    $(wildcard include/config/TRACE_BRANCH_PROFILING) \
    $(wildcard include/config/PROFILE_ALL_BRANCHES) \
    $(wildcard include/config/OBJTOOL) \
    $(wildcard include/config/64BIT) \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/rwonce.h \
    $(wildcard include/config/LTO) \
    $(wildcard include/config/AS_HAS_LDAPR) \
  /work/src/kernel/kernel_platform/common/include/asm-generic/rwonce.h \
  /work/src/kernel/kernel_platform/common/include/linux/kasan-checks.h \
    $(wildcard include/config/KASAN_GENERIC) \
    $(wildcard include/config/KASAN_SW_TAGS) \
  /work/src/kernel/kernel_platform/common/include/linux/types.h \
    $(wildcard include/config/HAVE_UID16) \
    $(wildcard include/config/UID16) \
    $(wildcard include/config/ARCH_DMA_ADDR_T_64BIT) \
    $(wildcard include/config/PHYS_ADDR_T_64BIT) \
    $(wildcard include/config/ARCH_32BIT_USTAT_F_TINODE) \
  /work/src/kernel/kernel_platform/common/include/uapi/linux/types.h \
  arch/arm64/include/generated/uapi/asm/types.h \
  /work/src/kernel/kernel_platform/common/include/uapi/asm-generic/types.h \
  /work/src/kernel/kernel_platform/common/include/asm-generic/int-ll64.h \
  /work/src/kernel/kernel_platform/common/include/uapi/asm-generic/int-ll64.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/uapi/asm/bitsperlong.h \
  /work/src/kernel/kernel_platform/common/include/asm-generic/bitsperlong.h \
  /work/src/kernel/kernel_platform/common/include/uapi/asm-generic/bitsperlong.h \
  /work/src/kernel/kernel_platform/common/include/uapi/linux/posix_types.h \
  /work/src/kernel/kernel_platform/common/include/linux/stddef.h \
  /work/src/kernel/kernel_platform/common/include/uapi/linux/stddef.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/uapi/asm/posix_types.h \
  /work/src/kernel/kernel_platform/common/include/uapi/asm-generic/posix_types.h \
  /work/src/kernel/kernel_platform/common/include/linux/kcsan-checks.h \
    $(wildcard include/config/KCSAN) \
    $(wildcard include/config/KCSAN_WEAK_MEMORY) \
    $(wildcard include/config/KCSAN_IGNORE_ATOMICS) \
  /work/src/kernel/kernel_platform/common/include/linux/poison.h \
    $(wildcard include/config/ILLEGAL_POINTER_VALUE) \
  /work/src/kernel/kernel_platform/common/include/linux/const.h \
  /work/src/kernel/kernel_platform/common/include/vdso/const.h \
  /work/src/kernel/kernel_platform/common/include/uapi/linux/const.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/barrier.h \
    $(wildcard include/config/ARM64_PSEUDO_NMI) \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/alternative-macros.h \
  /work/src/kernel/kernel_platform/common/include/vdso/bits.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/cpucaps.h \
    $(wildcard include/config/ARM64_PAN) \
    $(wildcard include/config/ARM64_EPAN) \
    $(wildcard include/config/ARM64_SVE) \
    $(wildcard include/config/ARM64_SME) \
    $(wildcard include/config/ARM64_CNP) \
    $(wildcard include/config/ARM64_MTE) \
    $(wildcard include/config/ARM64_BTI) \
    $(wildcard include/config/ARM64_TLB_RANGE) \
    $(wildcard include/config/UNMAP_KERNEL_AT_EL0) \
    $(wildcard include/config/ARM64_ERRATUM_843419) \
    $(wildcard include/config/ARM64_ERRATUM_1742098) \
    $(wildcard include/config/ARM64_ERRATUM_2645198) \
    $(wildcard include/config/ARM64_ERRATUM_2658417) \
    $(wildcard include/config/CAVIUM_ERRATUM_23154) \
    $(wildcard include/config/NVIDIA_CARMEL_CNP_ERRATUM) \
    $(wildcard include/config/ARM64_WORKAROUND_REPEAT_TLBI) \
    $(wildcard include/config/ARM64_ERRATUM_3194386) \
  arch/arm64/include/generated/asm/cpucap-defs.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/insn-def.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/brk-imm.h \
  /work/src/kernel/kernel_platform/common/include/linux/stringify.h \
  /work/src/kernel/kernel_platform/common/include/asm-generic/barrier.h \
    $(wildcard include/config/SMP) \
  /work/src/kernel/kernel_platform/common/include/linux/spinlock.h \
    $(wildcard include/config/DEBUG_SPINLOCK) \
    $(wildcard include/config/PREEMPTION) \
    $(wildcard include/config/DEBUG_LOCK_ALLOC) \
    $(wildcard include/config/PREEMPT_RT) \
  /work/src/kernel/kernel_platform/common/include/linux/typecheck.h \
  /work/src/kernel/kernel_platform/common/include/linux/preempt.h \
    $(wildcard include/config/PREEMPT_COUNT) \
    $(wildcard include/config/DEBUG_PREEMPT) \
    $(wildcard include/config/TRACE_PREEMPT_TOGGLE) \
    $(wildcard include/config/PREEMPT_NOTIFIERS) \
    $(wildcard include/config/PREEMPT_DYNAMIC) \
    $(wildcard include/config/PREEMPT_NONE) \
    $(wildcard include/config/PREEMPT_VOLUNTARY) \
    $(wildcard include/config/PREEMPT) \
  /work/src/kernel/kernel_platform/common/include/linux/linkage.h \
    $(wildcard include/config/ARCH_USE_SYM_ANNOTATIONS) \
  /work/src/kernel/kernel_platform/common/include/linux/export.h \
    $(wildcard include/config/MODVERSIONS) \
    $(wildcard include/config/GENDWARFKSYMS) \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/linkage.h \
  /work/src/kernel/kernel_platform/common/include/linux/cleanup.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/preempt.h \
  /work/src/kernel/kernel_platform/common/include/linux/jump_label.h \
    $(wildcard include/config/JUMP_LABEL) \
    $(wildcard include/config/HAVE_ARCH_JUMP_LABEL_RELATIVE) \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/jump_label.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/insn.h \
    $(wildcard include/config/ARM64_LSE_ATOMICS) \
  /work/src/kernel/kernel_platform/common/include/linux/thread_info.h \
    $(wildcard include/config/THREAD_INFO_IN_TASK) \
    $(wildcard include/config/GENERIC_ENTRY) \
    $(wildcard include/config/HAVE_ARCH_WITHIN_STACK_FRAMES) \
    $(wildcard include/config/HARDENED_USERCOPY) \
    $(wildcard include/config/BUG) \
    $(wildcard include/config/SH) \
  /work/src/kernel/kernel_platform/common/include/linux/limits.h \
  /work/src/kernel/kernel_platform/common/include/uapi/linux/limits.h \
  /work/src/kernel/kernel_platform/common/include/vdso/limits.h \
  /work/src/kernel/kernel_platform/common/include/linux/bug.h \
    $(wildcard include/config/GENERIC_BUG) \
    $(wildcard include/config/BUG_ON_DATA_CORRUPTION) \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/bug.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/asm-bug.h \
    $(wildcard include/config/DEBUG_BUGVERBOSE) \
  /work/src/kernel/kernel_platform/common/include/asm-generic/bug.h \
    $(wildcard include/config/GENERIC_BUG_RELATIVE_POINTERS) \
  /work/src/kernel/kernel_platform/common/include/linux/instrumentation.h \
    $(wildcard include/config/NOINSTR_VALIDATION) \
  /work/src/kernel/kernel_platform/common/include/linux/once_lite.h \
  /work/src/kernel/kernel_platform/common/include/linux/panic.h \
    $(wildcard include/config/PANIC_TIMEOUT) \
  /work/src/kernel/kernel_platform/common/include/linux/printk.h \
    $(wildcard include/config/MESSAGE_LOGLEVEL_DEFAULT) \
    $(wildcard include/config/CONSOLE_LOGLEVEL_DEFAULT) \
    $(wildcard include/config/CONSOLE_LOGLEVEL_QUIET) \
    $(wildcard include/config/EARLY_PRINTK) \
    $(wildcard include/config/PRINTK) \
    $(wildcard include/config/PRINTK_INDEX) \
    $(wildcard include/config/DYNAMIC_DEBUG) \
    $(wildcard include/config/DYNAMIC_DEBUG_CORE) \
  /work/src/kernel/kernel_platform/common/include/linux/stdarg.h \
  /work/src/kernel/kernel_platform/common/include/linux/init.h \
    $(wildcard include/config/MEMORY_HOTPLUG) \
    $(wildcard include/config/HAVE_ARCH_PREL32_RELOCATIONS) \
  /work/src/kernel/kernel_platform/common/include/linux/kern_levels.h \
  /work/src/kernel/kernel_platform/common/include/linux/ratelimit_types.h \
  /work/src/kernel/kernel_platform/common/include/linux/bits.h \
  /work/src/kernel/kernel_platform/common/include/uapi/linux/bits.h \
  /work/src/kernel/kernel_platform/common/include/uapi/linux/param.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/uapi/asm/param.h \
  /work/src/kernel/kernel_platform/common/include/asm-generic/param.h \
    $(wildcard include/config/HZ) \
  /work/src/kernel/kernel_platform/common/include/uapi/asm-generic/param.h \
  /work/src/kernel/kernel_platform/common/include/linux/spinlock_types_raw.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/spinlock_types.h \
  /work/src/kernel/kernel_platform/common/include/asm-generic/qspinlock_types.h \
    $(wildcard include/config/NR_CPUS) \
  /work/src/kernel/kernel_platform/common/include/asm-generic/qrwlock_types.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/uapi/asm/byteorder.h \
  /work/src/kernel/kernel_platform/common/include/linux/byteorder/little_endian.h \
  /work/src/kernel/kernel_platform/common/include/uapi/linux/byteorder/little_endian.h \
  /work/src/kernel/kernel_platform/common/include/linux/swab.h \
  /work/src/kernel/kernel_platform/common/include/uapi/linux/swab.h \
  arch/arm64/include/generated/uapi/asm/swab.h \
  /work/src/kernel/kernel_platform/common/include/uapi/asm-generic/swab.h \
  /work/src/kernel/kernel_platform/common/include/linux/byteorder/generic.h \
  /work/src/kernel/kernel_platform/common/include/linux/lockdep_types.h \
    $(wildcard include/config/PROVE_RAW_LOCK_NESTING) \
    $(wildcard include/config/LOCK_STAT) \
  /work/src/kernel/kernel_platform/common/include/linux/restart_block.h \
  /work/src/kernel/kernel_platform/common/include/linux/errno.h \
  /work/src/kernel/kernel_platform/common/include/uapi/linux/errno.h \
  arch/arm64/include/generated/uapi/asm/errno.h \
  /work/src/kernel/kernel_platform/common/include/uapi/asm-generic/errno.h \
  /work/src/kernel/kernel_platform/common/include/uapi/asm-generic/errno-base.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/current.h \
  /work/src/kernel/kernel_platform/common/include/linux/bitops.h \
  /work/src/kernel/kernel_platform/common/include/uapi/linux/kernel.h \
  /work/src/kernel/kernel_platform/common/include/uapi/linux/sysinfo.h \
  /work/src/kernel/kernel_platform/common/include/asm-generic/bitops/generic-non-atomic.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/bitops.h \
  /work/src/kernel/kernel_platform/common/include/asm-generic/bitops/builtin-__ffs.h \
  /work/src/kernel/kernel_platform/common/include/asm-generic/bitops/builtin-ffs.h \
  /work/src/kernel/kernel_platform/common/include/asm-generic/bitops/builtin-__fls.h \
  /work/src/kernel/kernel_platform/common/include/asm-generic/bitops/builtin-fls.h \
  /work/src/kernel/kernel_platform/common/include/asm-generic/bitops/ffz.h \
  /work/src/kernel/kernel_platform/common/include/asm-generic/bitops/fls64.h \
  /work/src/kernel/kernel_platform/common/include/asm-generic/bitops/sched.h \
  /work/src/kernel/kernel_platform/common/include/asm-generic/bitops/hweight.h \
  /work/src/kernel/kernel_platform/common/include/asm-generic/bitops/arch_hweight.h \
  /work/src/kernel/kernel_platform/common/include/asm-generic/bitops/const_hweight.h \
  /work/src/kernel/kernel_platform/common/include/asm-generic/bitops/atomic.h \
  /work/src/kernel/kernel_platform/common/include/linux/atomic.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/atomic.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/cmpxchg.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/lse.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/atomic_ll_sc.h \
    $(wildcard include/config/CC_HAS_K_CONSTRAINT) \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/alternative.h \
    $(wildcard include/config/MODULES) \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/atomic_lse.h \
  /work/src/kernel/kernel_platform/common/include/linux/atomic/atomic-arch-fallback.h \
    $(wildcard include/config/GENERIC_ATOMIC64) \
  /work/src/kernel/kernel_platform/common/include/linux/atomic/atomic-long.h \
  /work/src/kernel/kernel_platform/common/include/linux/atomic/atomic-instrumented.h \
  /work/src/kernel/kernel_platform/common/include/linux/instrumented.h \
  /work/src/kernel/kernel_platform/common/include/linux/kmsan-checks.h \
    $(wildcard include/config/KMSAN) \
  /work/src/kernel/kernel_platform/common/include/asm-generic/bitops/instrumented-atomic.h \
  /work/src/kernel/kernel_platform/common/include/asm-generic/bitops/lock.h \
  /work/src/kernel/kernel_platform/common/include/asm-generic/bitops/instrumented-lock.h \
  /work/src/kernel/kernel_platform/common/include/asm-generic/bitops/non-atomic.h \
  /work/src/kernel/kernel_platform/common/include/asm-generic/bitops/non-instrumented-non-atomic.h \
  /work/src/kernel/kernel_platform/common/include/asm-generic/bitops/le.h \
  /work/src/kernel/kernel_platform/common/include/asm-generic/bitops/ext2-atomic-setbit.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/thread_info.h \
    $(wildcard include/config/ARM64_SW_TTBR0_PAN) \
    $(wildcard include/config/SHADOW_CALL_STACK) \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/memory.h \
    $(wildcard include/config/ARM64_VA_BITS) \
    $(wildcard include/config/ARM64_16K_PAGES) \
    $(wildcard include/config/KASAN_SHADOW_OFFSET) \
    $(wildcard include/config/KASAN) \
    $(wildcard include/config/VMAP_STACK) \
    $(wildcard include/config/ARM64_4K_PAGES) \
    $(wildcard include/config/RANDOMIZE_BASE) \
    $(wildcard include/config/KASAN_HW_TAGS) \
    $(wildcard include/config/DEBUG_VIRTUAL) \
    $(wildcard include/config/EFI) \
    $(wildcard include/config/ARM_GIC_V3_ITS) \
  /work/src/kernel/kernel_platform/common/include/linux/sizes.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/page-def.h \
    $(wildcard include/config/PAGE_SHIFT) \
  /work/src/kernel/kernel_platform/common/include/linux/mmdebug.h \
    $(wildcard include/config/DEBUG_VM) \
    $(wildcard include/config/DEBUG_VM_IRQSOFF) \
    $(wildcard include/config/DEBUG_VM_PGFLAGS) \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/boot.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/sections.h \
  /work/src/kernel/kernel_platform/common/include/asm-generic/sections.h \
    $(wildcard include/config/HAVE_FUNCTION_DESCRIPTORS) \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/sysreg.h \
    $(wildcard include/config/BROKEN_GAS_INST) \
    $(wildcard include/config/ARM64_PA_BITS_52) \
    $(wildcard include/config/ARM64_64K_PAGES) \
  /work/src/kernel/kernel_platform/common/include/linux/kasan-tags.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/gpr-num.h \
  arch/arm64/include/generated/asm/sysreg-defs.h \
  /work/src/kernel/kernel_platform/common/include/linux/bitfield.h \
  /work/src/kernel/kernel_platform/common/include/asm-generic/memory_model.h \
    $(wildcard include/config/FLATMEM) \
    $(wildcard include/config/SPARSEMEM_VMEMMAP) \
    $(wildcard include/config/SPARSEMEM) \
  /work/src/kernel/kernel_platform/common/include/linux/pfn.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/stack_pointer.h \
  /work/src/kernel/kernel_platform/common/include/linux/irqflags.h \
    $(wildcard include/config/PROVE_LOCKING) \
    $(wildcard include/config/TRACE_IRQFLAGS) \
    $(wildcard include/config/IRQSOFF_TRACER) \
    $(wildcard include/config/PREEMPT_TRACER) \
    $(wildcard include/config/DEBUG_IRQFLAGS) \
    $(wildcard include/config/TRACE_IRQFLAGS_SUPPORT) \
  /work/src/kernel/kernel_platform/common/include/linux/irqflags_types.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/irqflags.h \
    $(wildcard include/config/ARM64_DEBUG_PRIORITY_MASKING) \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/ptrace.h \
    $(wildcard include/config/COMPAT) \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/cpufeature.h \
    $(wildcard include/config/ARM64_BTI_KERNEL) \
    $(wildcard include/config/ARM64_POE) \
    $(wildcard include/config/ARM64_PA_BITS) \
    $(wildcard include/config/ARM64_HW_AFDBM) \
    $(wildcard include/config/ARM64_AMU_EXTN) \
    $(wildcard include/config/ARM64_LPA2) \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/cputype.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/hwcap.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/uapi/asm/hwcap.h \
  /work/src/kernel/kernel_platform/common/include/linux/log2.h \
    $(wildcard include/config/ARCH_HAS_ILOG2_U32) \
    $(wildcard include/config/ARCH_HAS_ILOG2_U64) \
  /work/src/kernel/kernel_platform/common/include/linux/kernel.h \
    $(wildcard include/config/PREEMPT_VOLUNTARY_BUILD) \
    $(wildcard include/config/HAVE_PREEMPT_DYNAMIC_CALL) \
    $(wildcard include/config/HAVE_PREEMPT_DYNAMIC_KEY) \
    $(wildcard include/config/PREEMPT_) \
    $(wildcard include/config/DEBUG_ATOMIC_SLEEP) \
    $(wildcard include/config/MMU) \
    $(wildcard include/config/TRACING) \
    $(wildcard include/config/FTRACE_MCOUNT_RECORD) \
  /work/src/kernel/kernel_platform/common/include/linux/align.h \
  /work/src/kernel/kernel_platform/common/include/linux/array_size.h \
  /work/src/kernel/kernel_platform/common/include/linux/hex.h \
  /work/src/kernel/kernel_platform/common/include/linux/kstrtox.h \
  /work/src/kernel/kernel_platform/common/include/linux/math.h \
  arch/arm64/include/generated/asm/div64.h \
  /work/src/kernel/kernel_platform/common/include/asm-generic/div64.h \
  /work/src/kernel/kernel_platform/common/include/linux/minmax.h \
  /work/src/kernel/kernel_platform/common/include/linux/sprintf.h \
  /work/src/kernel/kernel_platform/common/include/linux/static_call_types.h \
    $(wildcard include/config/HAVE_STATIC_CALL) \
    $(wildcard include/config/HAVE_STATIC_CALL_INLINE) \
  /work/src/kernel/kernel_platform/common/include/linux/instruction_pointer.h \
  /work/src/kernel/kernel_platform/common/include/linux/wordpart.h \
  /work/src/kernel/kernel_platform/common/include/linux/cpumask.h \
    $(wildcard include/config/FORCE_NR_CPUS) \
    $(wildcard include/config/HOTPLUG_CPU) \
    $(wildcard include/config/DEBUG_PER_CPU_MAPS) \
    $(wildcard include/config/CPUMASK_OFFSTACK) \
  /work/src/kernel/kernel_platform/common/include/linux/bitmap.h \
  /work/src/kernel/kernel_platform/common/include/linux/find.h \
  /work/src/kernel/kernel_platform/common/include/linux/string.h \
    $(wildcard include/config/BINARY_PRINTF) \
    $(wildcard include/config/FORTIFY_SOURCE) \
  /work/src/kernel/kernel_platform/common/include/linux/args.h \
  /work/src/kernel/kernel_platform/common/include/linux/err.h \
  /work/src/kernel/kernel_platform/common/include/linux/overflow.h \
  /work/src/kernel/kernel_platform/common/include/uapi/linux/string.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/string.h \
    $(wildcard include/config/ARCH_HAS_UACCESS_FLUSHCACHE) \
  /work/src/kernel/kernel_platform/common/include/linux/fortify-string.h \
    $(wildcard include/config/CC_HAS_KASAN_MEMINTRINSIC_PREFIX) \
  /work/src/kernel/kernel_platform/common/include/linux/bitmap-str.h \
  /work/src/kernel/kernel_platform/common/include/linux/cpumask_types.h \
  /work/src/kernel/kernel_platform/common/include/linux/threads.h \
    $(wildcard include/config/BASE_SMALL) \
  /work/src/kernel/kernel_platform/common/include/linux/gfp_types.h \
    $(wildcard include/config/SLAB_OBJ_EXT) \
    $(wildcard include/config/CMA) \
  /work/src/kernel/kernel_platform/common/include/linux/numa.h \
    $(wildcard include/config/NODES_SHIFT) \
    $(wildcard include/config/NUMA_KEEP_MEMINFO) \
    $(wildcard include/config/NUMA) \
    $(wildcard include/config/HAVE_ARCH_NODE_DEV_GROUP) \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/uapi/asm/ptrace.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/uapi/asm/sve_context.h \
  /work/src/kernel/kernel_platform/common/include/linux/irqchip/arm-gic-v3-prio.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/percpu.h \
  /work/src/kernel/kernel_platform/common/include/asm-generic/percpu.h \
    $(wildcard include/config/HAVE_SETUP_PER_CPU_AREA) \
  /work/src/kernel/kernel_platform/common/include/linux/percpu-defs.h \
    $(wildcard include/config/DEBUG_FORCE_WEAK_PER_CPU) \
    $(wildcard include/config/AMD_MEM_ENCRYPT) \
  /work/src/kernel/kernel_platform/common/include/linux/bottom_half.h \
  /work/src/kernel/kernel_platform/common/include/linux/lockdep.h \
    $(wildcard include/config/DEBUG_LOCKING_API_SELFTESTS) \
  /work/src/kernel/kernel_platform/common/include/linux/smp.h \
    $(wildcard include/config/UP_LATE_INIT) \
    $(wildcard include/config/CSD_LOCK_WAIT_DEBUG) \
  /work/src/kernel/kernel_platform/common/include/linux/smp_types.h \
  /work/src/kernel/kernel_platform/common/include/linux/llist.h \
    $(wildcard include/config/ARCH_HAVE_NMI_SAFE_CMPXCHG) \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/smp.h \
    $(wildcard include/config/ARM64_ACPI_PARKING_PROTOCOL) \
  arch/arm64/include/generated/asm/mmiowb.h \
  /work/src/kernel/kernel_platform/common/include/asm-generic/mmiowb.h \
    $(wildcard include/config/MMIOWB) \
  /work/src/kernel/kernel_platform/common/include/linux/spinlock_types.h \
  /work/src/kernel/kernel_platform/common/include/linux/rwlock_types.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/spinlock.h \
  arch/arm64/include/generated/asm/qspinlock.h \
  /work/src/kernel/kernel_platform/common/include/asm-generic/qspinlock.h \
  arch/arm64/include/generated/asm/qrwlock.h \
  /work/src/kernel/kernel_platform/common/include/asm-generic/qrwlock.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/processor.h \
    $(wildcard include/config/KUSER_HELPERS) \
    $(wildcard include/config/ARM64_FORCE_52BIT) \
    $(wildcard include/config/HAVE_HW_BREAKPOINT) \
    $(wildcard include/config/ARM64_TAGGED_ADDR_ABI) \
  /work/src/kernel/kernel_platform/common/include/linux/cache.h \
    $(wildcard include/config/ARCH_HAS_CACHE_LINE_SIZE) \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/cache.h \
  /work/src/kernel/kernel_platform/common/include/linux/kasan-enabled.h \
  /work/src/kernel/kernel_platform/common/include/linux/static_key.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/mte-def.h \
  /work/src/kernel/kernel_platform/common/include/linux/android_vendor.h \
    $(wildcard include/config/ANDROID_VENDOR_OEM_DATA) \
  /work/src/kernel/kernel_platform/common/include/vdso/processor.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/vdso/processor.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/hw_breakpoint.h \
    $(wildcard include/config/CPU_PM) \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/virt.h \
    $(wildcard include/config/KVM) \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/kasan.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/mte-kasan.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/pgtable-types.h \
    $(wildcard include/config/PGTABLE_LEVELS) \
  /work/src/kernel/kernel_platform/common/include/asm-generic/pgtable-nopud.h \
  /work/src/kernel/kernel_platform/common/include/asm-generic/pgtable-nop4d.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/pgtable-hwdef.h \
    $(wildcard include/config/ARM64_CONT_PTE_SHIFT) \
    $(wildcard include/config/ARM64_CONT_PMD_SHIFT) \
    $(wildcard include/config/ARM64_VA_BITS_52) \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/pointer_auth.h \
  /work/src/kernel/kernel_platform/common/include/uapi/linux/prctl.h \
  /work/src/kernel/kernel_platform/common/include/linux/random.h \
    $(wildcard include/config/VMGENID) \
  /work/src/kernel/kernel_platform/common/include/uapi/linux/random.h \
  /work/src/kernel/kernel_platform/common/include/uapi/linux/ioctl.h \
  arch/arm64/include/generated/uapi/asm/ioctl.h \
  /work/src/kernel/kernel_platform/common/include/asm-generic/ioctl.h \
  /work/src/kernel/kernel_platform/common/include/uapi/asm-generic/ioctl.h \
  /work/src/kernel/kernel_platform/common/include/linux/irqnr.h \
  /work/src/kernel/kernel_platform/common/include/uapi/linux/irqnr.h \
  /work/src/kernel/kernel_platform/common/include/linux/prandom.h \
  /work/src/kernel/kernel_platform/common/include/linux/once.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/spectre.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/fpsimd.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/uapi/asm/sigcontext.h \
  /work/src/kernel/kernel_platform/common/include/linux/rwlock.h \
  /work/src/kernel/kernel_platform/common/include/linux/spinlock_api_smp.h \
    $(wildcard include/config/INLINE_SPIN_LOCK) \
    $(wildcard include/config/INLINE_SPIN_LOCK_BH) \
    $(wildcard include/config/INLINE_SPIN_LOCK_IRQ) \
    $(wildcard include/config/INLINE_SPIN_LOCK_IRQSAVE) \
    $(wildcard include/config/INLINE_SPIN_TRYLOCK) \
    $(wildcard include/config/INLINE_SPIN_TRYLOCK_BH) \
    $(wildcard include/config/UNINLINE_SPIN_UNLOCK) \
    $(wildcard include/config/INLINE_SPIN_UNLOCK_BH) \
    $(wildcard include/config/INLINE_SPIN_UNLOCK_IRQ) \
    $(wildcard include/config/INLINE_SPIN_UNLOCK_IRQRESTORE) \
    $(wildcard include/config/GENERIC_LOCKBREAK) \
  /work/src/kernel/kernel_platform/common/include/linux/rwlock_api_smp.h \
    $(wildcard include/config/INLINE_READ_LOCK) \
    $(wildcard include/config/INLINE_WRITE_LOCK) \
    $(wildcard include/config/INLINE_READ_LOCK_BH) \
    $(wildcard include/config/INLINE_WRITE_LOCK_BH) \
    $(wildcard include/config/INLINE_READ_LOCK_IRQ) \
    $(wildcard include/config/INLINE_WRITE_LOCK_IRQ) \
    $(wildcard include/config/INLINE_READ_LOCK_IRQSAVE) \
    $(wildcard include/config/INLINE_WRITE_LOCK_IRQSAVE) \
    $(wildcard include/config/INLINE_READ_TRYLOCK) \
    $(wildcard include/config/INLINE_WRITE_TRYLOCK) \
    $(wildcard include/config/INLINE_READ_UNLOCK) \
    $(wildcard include/config/INLINE_WRITE_UNLOCK) \
    $(wildcard include/config/INLINE_READ_UNLOCK_BH) \
    $(wildcard include/config/INLINE_WRITE_UNLOCK_BH) \
    $(wildcard include/config/INLINE_READ_UNLOCK_IRQ) \
    $(wildcard include/config/INLINE_WRITE_UNLOCK_IRQ) \
    $(wildcard include/config/INLINE_READ_UNLOCK_IRQRESTORE) \
    $(wildcard include/config/INLINE_WRITE_UNLOCK_IRQRESTORE) \
  /work/src/kernel/kernel_platform/common/include/linux/wait.h \
  /work/src/kernel/kernel_platform/common/include/linux/interrupt.h \
    $(wildcard include/config/IRQ_FORCED_THREADING) \
    $(wildcard include/config/RT_SOFTIRQ_AWARE_SCHED) \
    $(wildcard include/config/GENERIC_IRQ_PROBE) \
    $(wildcard include/config/PROC_FS) \
    $(wildcard include/config/IRQ_TIMINGS) \
  /work/src/kernel/kernel_platform/common/include/linux/irqreturn.h \
  /work/src/kernel/kernel_platform/common/include/linux/hardirq.h \
    $(wildcard include/config/NO_HZ_FULL) \
  /work/src/kernel/kernel_platform/common/include/linux/context_tracking_state.h \
    $(wildcard include/config/CONTEXT_TRACKING_USER) \
    $(wildcard include/config/CONTEXT_TRACKING) \
    $(wildcard include/config/CONTEXT_TRACKING_IDLE) \
  /work/src/kernel/kernel_platform/common/include/linux/percpu.h \
    $(wildcard include/config/MEM_ALLOC_PROFILING) \
    $(wildcard include/config/RANDOM_KMALLOC_CACHES) \
    $(wildcard include/config/PAGE_SIZE_4KB) \
    $(wildcard include/config/NEED_PER_CPU_PAGE_FIRST_CHUNK) \
  /work/src/kernel/kernel_platform/common/include/linux/alloc_tag.h \
    $(wildcard include/config/MEM_ALLOC_PROFILING_DEBUG) \
    $(wildcard include/config/MEM_ALLOC_PROFILING_ENABLED_BY_DEFAULT) \
  /work/src/kernel/kernel_platform/common/include/linux/codetag.h \
    $(wildcard include/config/CODE_TAGGING) \
  /work/src/kernel/kernel_platform/common/include/linux/sched.h \
    $(wildcard include/config/VIRT_CPU_ACCOUNTING_NATIVE) \
    $(wildcard include/config/SCHED_INFO) \
    $(wildcard include/config/SCHEDSTATS) \
    $(wildcard include/config/SCHED_CORE) \
    $(wildcard include/config/FAIR_GROUP_SCHED) \
    $(wildcard include/config/RT_GROUP_SCHED) \
    $(wildcard include/config/RT_MUTEXES) \
    $(wildcard include/config/UCLAMP_TASK) \
    $(wildcard include/config/UCLAMP_BUCKETS_COUNT) \
    $(wildcard include/config/KMAP_LOCAL) \
    $(wildcard include/config/SCHED_CLASS_EXT) \
    $(wildcard include/config/CGROUP_SCHED) \
    $(wildcard include/config/BLK_DEV_IO_TRACE) \
    $(wildcard include/config/PREEMPT_RCU) \
    $(wildcard include/config/TASKS_RCU) \
    $(wildcard include/config/TASKS_TRACE_RCU) \
    $(wildcard include/config/MEMCG_V1) \
    $(wildcard include/config/LRU_GEN) \
    $(wildcard include/config/COMPAT_BRK) \
    $(wildcard include/config/CGROUPS) \
    $(wildcard include/config/BLK_CGROUP) \
    $(wildcard include/config/PSI) \
    $(wildcard include/config/PAGE_OWNER) \
    $(wildcard include/config/EVENTFD) \
    $(wildcard include/config/ARCH_HAS_CPU_PASID) \
    $(wildcard include/config/CPU_SUP_INTEL) \
    $(wildcard include/config/TASK_DELAY_ACCT) \
    $(wildcard include/config/STACKPROTECTOR) \
    $(wildcard include/config/ARCH_HAS_SCALED_CPUTIME) \
    $(wildcard include/config/CPU_FREQ_TIMES) \
    $(wildcard include/config/VIRT_CPU_ACCOUNTING_GEN) \
    $(wildcard include/config/POSIX_CPUTIMERS) \
    $(wildcard include/config/POSIX_CPU_TIMERS_TASK_WORK) \
    $(wildcard include/config/KEYS) \
    $(wildcard include/config/SYSVIPC) \
    $(wildcard include/config/DETECT_HUNG_TASK) \
    $(wildcard include/config/IO_URING) \
    $(wildcard include/config/AUDIT) \
    $(wildcard include/config/AUDITSYSCALL) \
    $(wildcard include/config/SCHED_PROXY_EXEC) \
    $(wildcard include/config/UBSAN) \
    $(wildcard include/config/UBSAN_TRAP) \
    $(wildcard include/config/COMPACTION) \
    $(wildcard include/config/TASK_XACCT) \
    $(wildcard include/config/CPUSETS) \
    $(wildcard include/config/X86_CPU_RESCTRL) \
    $(wildcard include/config/FUTEX) \
    $(wildcard include/config/PERF_EVENTS) \
    $(wildcard include/config/NUMA_BALANCING) \
    $(wildcard include/config/RSEQ) \
    $(wildcard include/config/SCHED_MM_CID) \
    $(wildcard include/config/FAULT_INJECTION) \
    $(wildcard include/config/LATENCYTOP) \
    $(wildcard include/config/KUNIT) \
    $(wildcard include/config/FUNCTION_GRAPH_TRACER) \
    $(wildcard include/config/KCOV) \
    $(wildcard include/config/MEMCG) \
    $(wildcard include/config/UPROBES) \
    $(wildcard include/config/BCACHE) \
    $(wildcard include/config/LIVEPATCH) \
    $(wildcard include/config/SECURITY) \
    $(wildcard include/config/BPF_SYSCALL) \
    $(wildcard include/config/GCC_PLUGIN_STACKLEAK) \
    $(wildcard include/config/X86_MCE) \
    $(wildcard include/config/KRETPROBES) \
    $(wildcard include/config/RETHOOK) \
    $(wildcard include/config/ARCH_HAS_PARANOID_L1D_FLUSH) \
    $(wildcard include/config/RV) \
    $(wildcard include/config/USER_EVENTS) \
  /work/src/kernel/kernel_platform/common/include/uapi/linux/sched.h \
  /work/src/kernel/kernel_platform/common/include/linux/pid_types.h \
  /work/src/kernel/kernel_platform/common/include/linux/sem_types.h \
  /work/src/kernel/kernel_platform/common/include/linux/shm.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/page.h \
  /work/src/kernel/kernel_platform/common/include/linux/personality.h \
  /work/src/kernel/kernel_platform/common/include/uapi/linux/personality.h \
  /work/src/kernel/kernel_platform/common/include/asm-generic/getorder.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/shmparam.h \
  /work/src/kernel/kernel_platform/common/include/asm-generic/shmparam.h \
  /work/src/kernel/kernel_platform/common/include/linux/kmsan_types.h \
  /work/src/kernel/kernel_platform/common/include/linux/mutex_types.h \
    $(wildcard include/config/MUTEX_SPIN_ON_OWNER) \
    $(wildcard include/config/DEBUG_MUTEXES) \
  /work/src/kernel/kernel_platform/common/include/linux/osq_lock.h \
  /work/src/kernel/kernel_platform/common/include/linux/plist_types.h \
  /work/src/kernel/kernel_platform/common/include/linux/hrtimer_types.h \
  /work/src/kernel/kernel_platform/common/include/linux/timerqueue_types.h \
  /work/src/kernel/kernel_platform/common/include/linux/rbtree_types.h \
  /work/src/kernel/kernel_platform/common/include/linux/timer_types.h \
  /work/src/kernel/kernel_platform/common/include/linux/seccomp_types.h \
    $(wildcard include/config/SECCOMP) \
  /work/src/kernel/kernel_platform/common/include/linux/nodemask_types.h \
  /work/src/kernel/kernel_platform/common/include/linux/refcount_types.h \
  /work/src/kernel/kernel_platform/common/include/linux/resource.h \
  /work/src/kernel/kernel_platform/common/include/uapi/linux/resource.h \
  /work/src/kernel/kernel_platform/common/include/uapi/linux/time_types.h \
  arch/arm64/include/generated/uapi/asm/resource.h \
  /work/src/kernel/kernel_platform/common/include/asm-generic/resource.h \
  /work/src/kernel/kernel_platform/common/include/uapi/asm-generic/resource.h \
  /work/src/kernel/kernel_platform/common/include/linux/latencytop.h \
  /work/src/kernel/kernel_platform/common/include/linux/sched/prio.h \
  /work/src/kernel/kernel_platform/common/include/linux/sched/types.h \
  /work/src/kernel/kernel_platform/common/include/linux/signal_types.h \
    $(wildcard include/config/OLD_SIGACTION) \
  /work/src/kernel/kernel_platform/common/include/uapi/linux/signal.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/signal.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/uapi/asm/signal.h \
  /work/src/kernel/kernel_platform/common/include/asm-generic/signal.h \
  /work/src/kernel/kernel_platform/common/include/uapi/asm-generic/signal.h \
  /work/src/kernel/kernel_platform/common/include/uapi/asm-generic/signal-defs.h \
  arch/arm64/include/generated/uapi/asm/siginfo.h \
  /work/src/kernel/kernel_platform/common/include/uapi/asm-generic/siginfo.h \
  /work/src/kernel/kernel_platform/common/include/linux/syscall_user_dispatch_types.h \
  /work/src/kernel/kernel_platform/common/include/linux/mm_types_task.h \
    $(wildcard include/config/ARCH_WANT_BATCHED_UNMAP_TLB_FLUSH) \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/tlbbatch.h \
  /work/src/kernel/kernel_platform/common/include/linux/netdevice_xmit.h \
    $(wildcard include/config/NET_EGRESS) \
  /work/src/kernel/kernel_platform/common/include/linux/task_io_accounting.h \
    $(wildcard include/config/TASK_IO_ACCOUNTING) \
  /work/src/kernel/kernel_platform/common/include/linux/posix-timers_types.h \
    $(wildcard include/config/POSIX_TIMERS) \
  /work/src/kernel/kernel_platform/common/include/uapi/linux/rseq.h \
  /work/src/kernel/kernel_platform/common/include/linux/seqlock_types.h \
  /work/src/kernel/kernel_platform/common/include/linux/kcsan.h \
  /work/src/kernel/kernel_platform/common/include/linux/rv.h \
    $(wildcard include/config/RV_REACTORS) \
  /work/src/kernel/kernel_platform/common/include/linux/livepatch_sched.h \
  /work/src/kernel/kernel_platform/common/include/linux/uidgid_types.h \
  /work/src/kernel/kernel_platform/common/include/linux/android_kabi.h \
  arch/arm64/include/generated/asm/kmap_size.h \
  /work/src/kernel/kernel_platform/common/include/asm-generic/kmap_size.h \
    $(wildcard include/config/DEBUG_KMAP_LOCAL) \
  /work/src/kernel/kernel_platform/common/include/linux/sched/ext.h \
    $(wildcard include/config/EXT_GROUP_SCHED) \
  /work/src/kernel/kernel_platform/common/include/linux/rhashtable-types.h \
  /work/src/kernel/kernel_platform/common/include/linux/mutex.h \
  /work/src/kernel/kernel_platform/common/include/linux/debug_locks.h \
  /work/src/kernel/kernel_platform/common/include/linux/workqueue_types.h \
  /work/src/kernel/kernel_platform/common/include/linux/context_tracking_irq.h \
  /work/src/kernel/kernel_platform/common/include/linux/ftrace_irq.h \
    $(wildcard include/config/HWLAT_TRACER) \
    $(wildcard include/config/OSNOISE_TRACER) \
  /work/src/kernel/kernel_platform/common/include/linux/vtime.h \
    $(wildcard include/config/VIRT_CPU_ACCOUNTING) \
    $(wildcard include/config/IRQ_TIME_ACCOUNTING) \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/hardirq.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/irq.h \
  /work/src/kernel/kernel_platform/common/include/asm-generic/irq.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/kvm_arm.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/esr.h \
  /work/src/kernel/kernel_platform/common/include/asm-generic/hardirq.h \
  /work/src/kernel/kernel_platform/common/include/linux/irq.h \
    $(wildcard include/config/GENERIC_IRQ_EFFECTIVE_AFF_MASK) \
    $(wildcard include/config/GENERIC_IRQ_IPI) \
    $(wildcard include/config/IRQ_DOMAIN_HIERARCHY) \
    $(wildcard include/config/DEPRECATED_IRQ_CPU_ONOFFLINE) \
    $(wildcard include/config/GENERIC_IRQ_MIGRATION) \
    $(wildcard include/config/GENERIC_PENDING_IRQ) \
    $(wildcard include/config/HARDIRQS_SW_RESEND) \
    $(wildcard include/config/GENERIC_IRQ_LEGACY) \
    $(wildcard include/config/GENERIC_IRQ_CHIP) \
    $(wildcard include/config/GENERIC_IRQ_MULTI_HANDLER) \
  /work/src/kernel/kernel_platform/common/include/linux/irqhandler.h \
  /work/src/kernel/kernel_platform/common/include/linux/topology.h \
    $(wildcard include/config/USE_PERCPU_NUMA_NODE_ID) \
    $(wildcard include/config/HAVE_MEMORYLESS_NODES) \
    $(wildcard include/config/SCHED_SMT) \
  /work/src/kernel/kernel_platform/common/include/linux/arch_topology.h \
    $(wildcard include/config/GENERIC_ARCH_TOPOLOGY) \
  /work/src/kernel/kernel_platform/common/include/linux/mmzone.h \
    $(wildcard include/config/ARCH_FORCE_MAX_ORDER) \
    $(wildcard include/config/PAGE_BLOCK_ORDER) \
    $(wildcard include/config/MEMORY_ISOLATION) \
    $(wildcard include/config/UNACCEPTED_MEMORY) \
    $(wildcard include/config/IOMMU_SUPPORT) \
    $(wildcard include/config/SWAP) \
    $(wildcard include/config/TRANSPARENT_HUGEPAGE) \
    $(wildcard include/config/LRU_GEN_STATS) \
    $(wildcard include/config/LRU_GEN_WALKS_MMU) \
    $(wildcard include/config/ZONE_DMA) \
    $(wildcard include/config/ZONE_DMA32) \
    $(wildcard include/config/HIGHMEM) \
    $(wildcard include/config/ZONE_DEVICE) \
    $(wildcard include/config/MEMORY_FAILURE) \
    $(wildcard include/config/PAGE_EXTENSION) \
    $(wildcard include/config/DEFERRED_STRUCT_PAGE_INIT) \
    $(wildcard include/config/SPARSEMEM_EXTREME) \
    $(wildcard include/config/HAVE_ARCH_PFN_VALID) \
  /work/src/kernel/kernel_platform/common/include/linux/list_nulls.h \
  /work/src/kernel/kernel_platform/common/include/linux/seqlock.h \
  /work/src/kernel/kernel_platform/common/include/linux/nodemask.h \
  /work/src/kernel/kernel_platform/common/include/linux/pageblock-flags.h \
    $(wildcard include/config/HUGETLB_PAGE) \
    $(wildcard include/config/HUGETLB_PAGE_SIZE_VARIABLE) \
  /work/src/kernel/kernel_platform/common/include/linux/page-flags-layout.h \
  include/generated/bounds.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/sparsemem.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/pgtable-prot.h \
    $(wildcard include/config/HAVE_ARCH_USERFAULTFD_WP) \
  /work/src/kernel/kernel_platform/common/include/linux/mm_types.h \
    $(wildcard include/config/HAVE_ALIGNED_STRUCT_PAGE) \
    $(wildcard include/config/HUGETLB_PMD_PAGE_TABLE_SHARING) \
    $(wildcard include/config/SLAB_FREELIST_HARDENED) \
    $(wildcard include/config/USERFAULTFD) \
    $(wildcard include/config/ANON_VMA_NAME) \
    $(wildcard include/config/PER_VMA_LOCK) \
    $(wildcard include/config/HAVE_ARCH_COMPAT_MMAP_BASES) \
    $(wildcard include/config/MEMBARRIER) \
    $(wildcard include/config/AIO) \
    $(wildcard include/config/MMU_NOTIFIER) \
    $(wildcard include/config/SPLIT_PMD_PTLOCKS) \
    $(wildcard include/config/IOMMU_MM_DATA) \
    $(wildcard include/config/KSM) \
  /work/src/kernel/kernel_platform/common/include/linux/auxvec.h \
  /work/src/kernel/kernel_platform/common/include/uapi/linux/auxvec.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/uapi/asm/auxvec.h \
  /work/src/kernel/kernel_platform/common/include/linux/kref.h \
  /work/src/kernel/kernel_platform/common/include/linux/refcount.h \
  /work/src/kernel/kernel_platform/common/include/linux/rbtree.h \
  /work/src/kernel/kernel_platform/common/include/linux/rcupdate.h \
    $(wildcard include/config/TINY_RCU) \
    $(wildcard include/config/RCU_STRICT_GRACE_PERIOD) \
    $(wildcard include/config/RCU_LAZY) \
    $(wildcard include/config/TASKS_RCU_GENERIC) \
    $(wildcard include/config/RCU_STALL_COMMON) \
    $(wildcard include/config/KVM_XFER_TO_GUEST_WORK) \
    $(wildcard include/config/RCU_NOCB_CPU) \
    $(wildcard include/config/TASKS_RUDE_RCU) \
    $(wildcard include/config/TREE_RCU) \
    $(wildcard include/config/DEBUG_OBJECTS_RCU_HEAD) \
    $(wildcard include/config/PROVE_RCU) \
    $(wildcard include/config/ARCH_WEAK_RELEASE_ACQUIRE) \
  /work/src/kernel/kernel_platform/common/include/linux/rcutree.h \
  /work/src/kernel/kernel_platform/common/include/linux/maple_tree.h \
    $(wildcard include/config/MAPLE_RCU_DISABLED) \
    $(wildcard include/config/DEBUG_MAPLE_TREE) \
  /work/src/kernel/kernel_platform/common/include/linux/rwsem.h \
    $(wildcard include/config/RWSEM_SPIN_ON_OWNER) \
    $(wildcard include/config/DEBUG_RWSEMS) \
  /work/src/kernel/kernel_platform/common/include/linux/uprobes.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/uprobes.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/debug-monitors.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/probes.h \
    $(wildcard include/config/KPROBES) \
  /work/src/kernel/kernel_platform/common/include/linux/workqueue.h \
    $(wildcard include/config/DEBUG_OBJECTS_WORK) \
    $(wildcard include/config/FREEZER) \
    $(wildcard include/config/SYSFS) \
    $(wildcard include/config/WQ_WATCHDOG) \
  /work/src/kernel/kernel_platform/common/include/linux/timer.h \
    $(wildcard include/config/DEBUG_OBJECTS_TIMERS) \
  /work/src/kernel/kernel_platform/common/include/linux/ktime.h \
  /work/src/kernel/kernel_platform/common/include/linux/jiffies.h \
  /work/src/kernel/kernel_platform/common/include/linux/math64.h \
    $(wildcard include/config/ARCH_SUPPORTS_INT128) \
  /work/src/kernel/kernel_platform/common/include/vdso/math64.h \
  /work/src/kernel/kernel_platform/common/include/linux/time.h \
  /work/src/kernel/kernel_platform/common/include/linux/time64.h \
  /work/src/kernel/kernel_platform/common/include/vdso/time64.h \
  /work/src/kernel/kernel_platform/common/include/uapi/linux/time.h \
  /work/src/kernel/kernel_platform/common/include/linux/time32.h \
  /work/src/kernel/kernel_platform/common/include/linux/timex.h \
  /work/src/kernel/kernel_platform/common/include/uapi/linux/timex.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/timex.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/arch_timer.h \
    $(wildcard include/config/ARM_ARCH_TIMER_OOL_WORKAROUND) \
  /work/src/kernel/kernel_platform/common/include/clocksource/arm_arch_timer.h \
    $(wildcard include/config/ARM_ARCH_TIMER) \
  /work/src/kernel/kernel_platform/common/include/linux/timecounter.h \
  /work/src/kernel/kernel_platform/common/include/asm-generic/timex.h \
  /work/src/kernel/kernel_platform/common/include/vdso/time32.h \
  /work/src/kernel/kernel_platform/common/include/vdso/time.h \
  /work/src/kernel/kernel_platform/common/include/vdso/jiffies.h \
  include/generated/timeconst.h \
  /work/src/kernel/kernel_platform/common/include/vdso/ktime.h \
  /work/src/kernel/kernel_platform/common/include/linux/timekeeping.h \
    $(wildcard include/config/GENERIC_CMOS_UPDATE) \
  /work/src/kernel/kernel_platform/common/include/linux/clocksource_ids.h \
  /work/src/kernel/kernel_platform/common/include/linux/debugobjects.h \
    $(wildcard include/config/DEBUG_OBJECTS) \
    $(wildcard include/config/DEBUG_OBJECTS_FREE) \
  /work/src/kernel/kernel_platform/common/include/linux/percpu_counter.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/mmu.h \
    $(wildcard include/config/ARM64_E0PD) \
    $(wildcard include/config/CAVIUM_ERRATUM_27456) \
  /work/src/kernel/kernel_platform/common/include/linux/page-flags.h \
    $(wildcard include/config/PAGE_IDLE_FLAG) \
    $(wildcard include/config/ARCH_USES_PG_ARCH_2) \
    $(wildcard include/config/ARCH_USES_PG_ARCH_3) \
    $(wildcard include/config/HUGETLB_PAGE_OPTIMIZE_VMEMMAP) \
  /work/src/kernel/kernel_platform/common/include/linux/local_lock.h \
  /work/src/kernel/kernel_platform/common/include/linux/local_lock_internal.h \
  /work/src/kernel/kernel_platform/common/include/linux/zswap.h \
    $(wildcard include/config/ZSWAP) \
  /work/src/kernel/kernel_platform/common/include/linux/memory_hotplug.h \
    $(wildcard include/config/ARCH_HAS_ADD_PAGES) \
    $(wildcard include/config/MEMORY_HOTREMOVE) \
  /work/src/kernel/kernel_platform/common/include/linux/notifier.h \
    $(wildcard include/config/TREE_SRCU) \
  /work/src/kernel/kernel_platform/common/include/linux/srcu.h \
    $(wildcard include/config/TINY_SRCU) \
    $(wildcard include/config/NEED_SRCU_NMI_SAFE) \
  /work/src/kernel/kernel_platform/common/include/linux/rcu_segcblist.h \
  /work/src/kernel/kernel_platform/common/include/linux/srcutree.h \
  /work/src/kernel/kernel_platform/common/include/linux/rcu_node_tree.h \
    $(wildcard include/config/RCU_FANOUT) \
    $(wildcard include/config/RCU_FANOUT_LEAF) \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/topology.h \
  /work/src/kernel/kernel_platform/common/include/asm-generic/topology.h \
  /work/src/kernel/kernel_platform/common/include/linux/io.h \
    $(wildcard include/config/HAS_IOPORT_MAP) \
    $(wildcard include/config/PCI) \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/io.h \
  /work/src/kernel/kernel_platform/common/include/linux/pgtable.h \
    $(wildcard include/config/HIGHPTE) \
    $(wildcard include/config/ARCH_HAS_NONLEAF_PMD_YOUNG) \
    $(wildcard include/config/ARCH_HAS_HW_PTE_YOUNG) \
    $(wildcard include/config/GUP_GET_PXX_LOW_HIGH) \
    $(wildcard include/config/ARCH_WANT_PMD_MKWRITE) \
    $(wildcard include/config/HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD) \
    $(wildcard include/config/HAVE_ARCH_SOFT_DIRTY) \
    $(wildcard include/config/ARCH_ENABLE_THP_MIGRATION) \
    $(wildcard include/config/ARCH_HAS_PTE_DEVMAP) \
    $(wildcard include/config/HAVE_ARCH_HUGE_VMAP) \
    $(wildcard include/config/X86_ESPFIX64) \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/pgtable.h \
    $(wildcard include/config/ARCH_SUPPORTS_PMD_PFNMAP) \
    $(wildcard include/config/ARCH_SUPPORTS_PUD_PFNMAP) \
    $(wildcard include/config/PAGE_TABLE_CHECK) \
    $(wildcard include/config/ARM64_CONTPTE) \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/proc-fns.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/mte.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/tlbflush.h \
  /work/src/kernel/kernel_platform/common/include/linux/mmu_notifier.h \
  /work/src/kernel/kernel_platform/common/include/linux/mmap_lock.h \
  /work/src/kernel/kernel_platform/common/include/linux/tracepoint-defs.h \
    $(wildcard include/config/TRACEPOINTS) \
  /work/src/kernel/kernel_platform/common/include/linux/interval_tree.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/fixmap.h \
    $(wildcard include/config/ACPI_APEI_GHES) \
    $(wildcard include/config/ARM_SDE_INTERFACE) \
    $(wildcard include/config/RELOCATABLE) \
  /work/src/kernel/kernel_platform/common/include/asm-generic/fixmap.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/por.h \
  /work/src/kernel/kernel_platform/common/include/linux/page_table_check.h \
  /work/src/kernel/kernel_platform/common/include/asm-generic/pgtable_uffd.h \
  arch/arm64/include/generated/asm/early_ioremap.h \
  /work/src/kernel/kernel_platform/common/include/asm-generic/early_ioremap.h \
    $(wildcard include/config/GENERIC_EARLY_IOREMAP) \
  /work/src/kernel/kernel_platform/common/include/asm-generic/io.h \
    $(wildcard include/config/GENERIC_IOMAP) \
    $(wildcard include/config/TRACE_MMIO_ACCESS) \
    $(wildcard include/config/GENERIC_IOREMAP) \
  /work/src/kernel/kernel_platform/common/include/asm-generic/pci_iomap.h \
    $(wildcard include/config/NO_GENERIC_PCI_IOPORT_MAP) \
    $(wildcard include/config/GENERIC_PCI_IOMAP) \
  /work/src/kernel/kernel_platform/common/include/linux/logic_pio.h \
    $(wildcard include/config/INDIRECT_PIO) \
  /work/src/kernel/kernel_platform/common/include/linux/fwnode.h \
  /work/src/kernel/kernel_platform/common/include/linux/slab.h \
    $(wildcard include/config/FAILSLAB) \
    $(wildcard include/config/KFENCE) \
    $(wildcard include/config/SLUB_TINY) \
    $(wildcard include/config/SLUB_DEBUG) \
    $(wildcard include/config/SLAB_BUCKETS) \
  /work/src/kernel/kernel_platform/common/include/linux/gfp.h \
    $(wildcard include/config/CONTIG_ALLOC) \
  /work/src/kernel/kernel_platform/common/include/linux/percpu-refcount.h \
  /work/src/kernel/kernel_platform/common/include/linux/hash.h \
    $(wildcard include/config/HAVE_ARCH_HASH) \
  /work/src/kernel/kernel_platform/common/include/linux/kasan.h \
    $(wildcard include/config/KASAN_STACK) \
    $(wildcard include/config/KASAN_VMALLOC) \
  arch/arm64/include/generated/asm/irq_regs.h \
  /work/src/kernel/kernel_platform/common/include/asm-generic/irq_regs.h \
  /work/src/kernel/kernel_platform/common/include/linux/irqdesc.h \
    $(wildcard include/config/GENERIC_IRQ_STAT_SNAPSHOT) \
    $(wildcard include/config/PM_SLEEP) \
    $(wildcard include/config/GENERIC_IRQ_DEBUGFS) \
    $(wildcard include/config/SPARSE_IRQ) \
    $(wildcard include/config/IRQ_DOMAIN) \
  /work/src/kernel/kernel_platform/common/include/linux/kobject.h \
    $(wildcard include/config/UEVENT_HELPER) \
    $(wildcard include/config/DEBUG_KOBJECT_RELEASE) \
  /work/src/kernel/kernel_platform/common/include/linux/sysfs.h \
  /work/src/kernel/kernel_platform/common/include/linux/kernfs.h \
    $(wildcard include/config/KERNFS) \
  /work/src/kernel/kernel_platform/common/include/linux/idr.h \
  /work/src/kernel/kernel_platform/common/include/linux/radix-tree.h \
  /work/src/kernel/kernel_platform/common/include/linux/xarray.h \
    $(wildcard include/config/XARRAY_MULTI) \
  /work/src/kernel/kernel_platform/common/include/linux/sched/mm.h \
    $(wildcard include/config/MMU_LAZY_TLB_REFCOUNT) \
    $(wildcard include/config/ARCH_HAS_MEMBARRIER_CALLBACKS) \
  /work/src/kernel/kernel_platform/common/include/linux/sync_core.h \
    $(wildcard include/config/ARCH_HAS_SYNC_CORE_BEFORE_USERMODE) \
    $(wildcard include/config/ARCH_HAS_PREPARE_SYNC_CORE_CMD) \
  /work/src/kernel/kernel_platform/common/include/linux/sched/coredump.h \
    $(wildcard include/config/CORE_DUMP_DEFAULT_ELF_HEADERS) \
  /work/src/kernel/kernel_platform/common/include/linux/uidgid.h \
    $(wildcard include/config/MULTIUSER) \
    $(wildcard include/config/USER_NS) \
  /work/src/kernel/kernel_platform/common/include/linux/highuid.h \
  /work/src/kernel/kernel_platform/common/include/linux/kobject_ns.h \
  /work/src/kernel/kernel_platform/common/include/linux/stat.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/stat.h \
  arch/arm64/include/generated/uapi/asm/stat.h \
  /work/src/kernel/kernel_platform/common/include/uapi/asm-generic/stat.h \
  /work/src/kernel/kernel_platform/common/arch/arm64/include/asm/compat.h \
  /work/src/kernel/kernel_platform/common/include/asm-generic/compat.h \
    $(wildcard include/config/COMPAT_FOR_U64_ALIGNMENT) \
  /work/src/kernel/kernel_platform/common/include/linux/sched/task_stack.h \
    $(wildcard include/config/STACK_GROWSUP) \
    $(wildcard include/config/DEBUG_STACK_USAGE) \
  /work/src/kernel/kernel_platform/common/include/uapi/linux/magic.h \
  /work/src/kernel/kernel_platform/common/include/uapi/linux/stat.h \
  arch/arm64/include/generated/asm/hw_irq.h \
  /work/src/kernel/kernel_platform/common/include/asm-generic/hw_irq.h \
  /work/src/kernel/kernel_platform/common/include/linux/hrtimer.h \
    $(wildcard include/config/HIGH_RES_TIMERS) \
    $(wildcard include/config/TIME_LOW_RES) \
    $(wildcard include/config/TIMERFD) \
  /work/src/kernel/kernel_platform/common/include/linux/hrtimer_defs.h \
  /work/src/kernel/kernel_platform/common/include/linux/timerqueue.h \

/work/validation/rdbg/cycle_2/rdbg_fn_00_on_interrupt_from.o: $(deps_/work/validation/rdbg/cycle_2/rdbg_fn_00_on_interrupt_from.o)

$(deps_/work/validation/rdbg/cycle_2/rdbg_fn_00_on_interrupt_from.o):
