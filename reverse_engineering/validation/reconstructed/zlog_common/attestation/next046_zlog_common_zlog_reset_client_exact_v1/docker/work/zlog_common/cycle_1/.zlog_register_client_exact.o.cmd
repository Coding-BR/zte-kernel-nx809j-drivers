savedcmd_/work/validation/zlog_common/cycle_1/zlog_register_client_exact.o := clang -Wp,-MMD,/work/validation/zlog_common/cycle_1/.zlog_register_client_exact.o.d -nostdinc -I./arch/arm64/include -I./arch/arm64/include/generated  -I./include -I./arch/arm64/include/uapi -I./arch/arm64/include/generated/uapi -I./include/uapi -I./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -D__KERNEL__ --target=aarch64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -mlittle-endian -DKASAN_SHADOW_SCALE_SHIFT= -fmacro-prefix-map=./= -Werror -D__ASSEMBLY__ -fno-PIE -fasynchronous-unwind-tables -DKASAN_SHADOW_SCALE_SHIFT= -g -gdwarf-5 -gz=zstd -g0 -I/work/validation/zlog_common/cycle_1  -DMODULE  -DKBUILD_MODNAME='"zlog_common"' -D__KBUILD_MODNAME=kmod_zlog_common -c -o /work/validation/zlog_common/cycle_1/zlog_register_client_exact.o /work/validation/zlog_common/cycle_1/zlog_register_client_exact.S 

source_/work/validation/zlog_common/cycle_1/zlog_register_client_exact.o := /work/validation/zlog_common/cycle_1/zlog_register_client_exact.S

deps_/work/validation/zlog_common/cycle_1/zlog_register_client_exact.o := \
  include/linux/compiler-version.h \
    $(wildcard include/config/CC_VERSION_TEXT) \
  include/linux/kconfig.h \
    $(wildcard include/config/CPU_BIG_ENDIAN) \
    $(wildcard include/config/BOOGER) \
    $(wildcard include/config/FOO) \

/work/validation/zlog_common/cycle_1/zlog_register_client_exact.o: $(deps_/work/validation/zlog_common/cycle_1/zlog_register_client_exact.o)

$(deps_/work/validation/zlog_common/cycle_1/zlog_register_client_exact.o):
