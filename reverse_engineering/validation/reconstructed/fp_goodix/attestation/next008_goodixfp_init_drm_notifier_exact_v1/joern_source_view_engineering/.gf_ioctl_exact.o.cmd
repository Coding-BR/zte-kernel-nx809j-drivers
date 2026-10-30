savedcmd_/work/engineering/curated/fp_goodix/gf_ioctl_exact.o := clang -Wp,-MMD,/work/engineering/curated/fp_goodix/.gf_ioctl_exact.o.d -nostdinc -I./arch/arm64/include -I./arch/arm64/include/generated  -I./include -I./arch/arm64/include/uapi -I./arch/arm64/include/generated/uapi -I./include/uapi -I./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -D__KERNEL__ --target=aarch64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -mlittle-endian -DKASAN_SHADOW_SCALE_SHIFT= -fmacro-prefix-map=./= -Werror -D__ASSEMBLY__ -fno-PIE -fasynchronous-unwind-tables -DKASAN_SHADOW_SCALE_SHIFT= -g -gdwarf-5 -gz=zstd  -DMODULE  -DKBUILD_MODNAME='"fp_goodix"' -D__KBUILD_MODNAME=kmod_fp_goodix -c -o /work/engineering/curated/fp_goodix/gf_ioctl_exact.o /work/engineering/curated/fp_goodix/gf_ioctl_exact.S 

source_/work/engineering/curated/fp_goodix/gf_ioctl_exact.o := /work/engineering/curated/fp_goodix/gf_ioctl_exact.S

deps_/work/engineering/curated/fp_goodix/gf_ioctl_exact.o := \
  include/linux/compiler-version.h \
    $(wildcard include/config/CC_VERSION_TEXT) \
  include/linux/kconfig.h \
    $(wildcard include/config/CPU_BIG_ENDIAN) \
    $(wildcard include/config/BOOGER) \
    $(wildcard include/config/FOO) \

/work/engineering/curated/fp_goodix/gf_ioctl_exact.o: $(deps_/work/engineering/curated/fp_goodix/gf_ioctl_exact.o)

$(deps_/work/engineering/curated/fp_goodix/gf_ioctl_exact.o):
