savedcmd_/work/validation/aw9620x/cycle_2/aw9620x_fn_03_aw_check_dsp_reg_num_v1.o := clang -Wp,-MMD,/work/validation/aw9620x/cycle_2/.aw9620x_fn_03_aw_check_dsp_reg_num_v1.o.d -nostdinc -I./arch/arm64/include -I./arch/arm64/include/generated  -I./include -I./arch/arm64/include/uapi -I./arch/arm64/include/generated/uapi -I./include/uapi -I./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -D__KERNEL__ --target=aarch64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -mlittle-endian -DKASAN_SHADOW_SCALE_SHIFT= -fmacro-prefix-map=./= -Werror -D__ASSEMBLY__ -fno-PIE -fasynchronous-unwind-tables -DKASAN_SHADOW_SCALE_SHIFT= -g -gdwarf-5 -gz=zstd -g0 -I/work/validation/aw9620x/cycle_2  -DMODULE  -DKBUILD_MODNAME='"aw9620x"' -D__KBUILD_MODNAME=kmod_aw9620x -c -o /work/validation/aw9620x/cycle_2/aw9620x_fn_03_aw_check_dsp_reg_num_v1.o /work/validation/aw9620x/cycle_2/aw9620x_fn_03_aw_check_dsp_reg_num_v1.S 

source_/work/validation/aw9620x/cycle_2/aw9620x_fn_03_aw_check_dsp_reg_num_v1.o := /work/validation/aw9620x/cycle_2/aw9620x_fn_03_aw_check_dsp_reg_num_v1.S

deps_/work/validation/aw9620x/cycle_2/aw9620x_fn_03_aw_check_dsp_reg_num_v1.o := \
  include/linux/compiler-version.h \
    $(wildcard include/config/CC_VERSION_TEXT) \
  include/linux/kconfig.h \
    $(wildcard include/config/CPU_BIG_ENDIAN) \
    $(wildcard include/config/BOOGER) \
    $(wildcard include/config/FOO) \

/work/validation/aw9620x/cycle_2/aw9620x_fn_03_aw_check_dsp_reg_num_v1.o: $(deps_/work/validation/aw9620x/cycle_2/aw9620x_fn_03_aw_check_dsp_reg_num_v1.o)

$(deps_/work/validation/aw9620x/cycle_2/aw9620x_fn_03_aw_check_dsp_reg_num_v1.o):
