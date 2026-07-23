/* Preserve the original Synaptics function-base translation unit. */
#define SYNA_TCM_BUF_COPY_STORAGE static
#define syna_tcm_buf_copy_2 syna_tcm_buf_copy

#include "syna_tcm_buf_copy_2.c"
#include "syna_tcm_run_production_test.c"
#include "syna_tcm_send_command.c"

#undef syna_tcm_buf_copy_2
#undef SYNA_TCM_BUF_COPY_STORAGE
