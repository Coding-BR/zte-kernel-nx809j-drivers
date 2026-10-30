savedcmd_/work/validation/zte_fingerprint/cycle_1/gf_parse_dts_exact.o := clang -Wp,-MMD,/work/validation/zte_fingerprint/cycle_1/.gf_parse_dts_exact.o.d -nostdinc -I./arch/arm64/include -I./arch/arm64/include/generated  -I./include -I./arch/arm64/include/uapi -I./arch/arm64/include/generated/uapi -I./include/uapi -I./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -D__KERNEL__ --target=aarch64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -mlittle-endian -DKASAN_SHADOW_SCALE_SHIFT= -fmacro-prefix-map=./= -Werror -D__ASSEMBLY__ -fno-PIE -fasynchronous-unwind-tables -DKASAN_SHADOW_SCALE_SHIFT= -g -gdwarf-5 -gz=zstd -fdebug-prefix-map=/work/validation/zte_fingerprint/cycle_1=/zte_fingerprint  -DMODULE  -DKBUILD_MODNAME='"zte_fingerprint"' -D__KBUILD_MODNAME=kmod_zte_fingerprint -c -o /work/validation/zte_fingerprint/cycle_1/gf_parse_dts_exact.o /work/validation/zte_fingerprint/cycle_1/gf_parse_dts_exact.S 

source_/work/validation/zte_fingerprint/cycle_1/gf_parse_dts_exact.o := /work/validation/zte_fingerprint/cycle_1/gf_parse_dts_exact.S

deps_/work/validation/zte_fingerprint/cycle_1/gf_parse_dts_exact.o := \
  include/linux/compiler-version.h \
    $(wildcard include/config/CC_VERSION_TEXT) \
  include/linux/kconfig.h \
    $(wildcard include/config/CPU_BIG_ENDIAN) \
    $(wildcard include/config/BOOGER) \
    $(wildcard include/config/FOO) \

/work/validation/zte_fingerprint/cycle_1/gf_parse_dts_exact.o: $(deps_/work/validation/zte_fingerprint/cycle_1/gf_parse_dts_exact.o)

$(deps_/work/validation/zte_fingerprint/cycle_1/gf_parse_dts_exact.o):
