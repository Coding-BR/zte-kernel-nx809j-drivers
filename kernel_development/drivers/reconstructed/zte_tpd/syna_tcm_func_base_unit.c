/* Preserve the original Synaptics function-base translation unit. */
#define SYNA_TCM_BUF_COPY_STORAGE static __attribute__((unused))
#define syna_tcm_buf_copy_2 syna_tcm_buf_copy

#include "syna_tcm_buf_copy_2.c"

#undef syna_tcm_buf_copy_2
#undef SYNA_TCM_BUF_COPY_STORAGE
