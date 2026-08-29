/* Build wrapper: keep nubia_hw_version.c as the reviewed source unit while
 * replacing only the one function whose stock instruction sequence is
 * materialized in nubia_hw_rf_band_show_exact.S. */
#define NUBIA_HW_RF_BAND_SHOW_EXACT
#include "nubia_hw_version.c"
