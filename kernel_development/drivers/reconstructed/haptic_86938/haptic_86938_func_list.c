// SPDX-License-Identifier: GPL-2.0
#include <linux/types.h>

struct aw_haptic;

#define DECLARE_CALLBACK(name) extern void name(void)
#define CALLBACK(name) ((void (*)(void))(name))

DECLARE_CALLBACK(aw8693x_get_f0);
DECLARE_CALLBACK(aw8693x_creat_node);
DECLARE_CALLBACK(aw8693x_ram_get_f0);
DECLARE_CALLBACK(aw8693x_get_irq_state);
DECLARE_CALLBACK(aw8693x_check_qualify);
DECLARE_CALLBACK(aw8693x_judge_rtp_going);
DECLARE_CALLBACK(aw8693x_container_update);
DECLARE_CALLBACK(aw8693x_stop);
DECLARE_CALLBACK(aw8693x_get_vbat);
DECLARE_CALLBACK(aw8693x_cont_config);
DECLARE_CALLBACK(aw8693x_offset_cali);
DECLARE_CALLBACK(aw8693x_play_go);
DECLARE_CALLBACK(aw8693x_ram_init);
DECLARE_CALLBACK(aw8693x_set_bst_peak_cur);
DECLARE_CALLBACK(aw8693x_get_lra_resistance);
DECLARE_CALLBACK(aw8693x_set_pwm);
DECLARE_CALLBACK(aw8693x_set_gain);
DECLARE_CALLBACK(aw8693x_play_mode);
DECLARE_CALLBACK(aw8693x_set_bst_vol);
DECLARE_CALLBACK(aw8693x_set_repeat_seq);
DECLARE_CALLBACK(aw8693x_auto_bst_enable);
DECLARE_CALLBACK(aw8693x_vbat_mode_config);
DECLARE_CALLBACK(aw8693x_set_wav_seq);
DECLARE_CALLBACK(aw8693x_set_wav_loop);
DECLARE_CALLBACK(aw8693x_set_rtp_data);
DECLARE_CALLBACK(aw8693x_protect_config);
DECLARE_CALLBACK(aw8693x_parse_dt);
DECLARE_CALLBACK(aw8693x_trig_init);
DECLARE_CALLBACK(aw8693x_irq_clear);
DECLARE_CALLBACK(aw8693x_set_ram_addr);
DECLARE_CALLBACK(aw8693x_misc_para_init);
DECLARE_CALLBACK(aw8693x_interrupt_setup);
DECLARE_CALLBACK(aw8693x_set_rtp_aei);
DECLARE_CALLBACK(aw8693x_upload_lra);
DECLARE_CALLBACK(aw8693x_get_wav_seq);
DECLARE_CALLBACK(aw8693x_bst_mode_config);
DECLARE_CALLBACK(aw8693x_get_first_wave_addr);
DECLARE_CALLBACK(aw8693x_get_wav_loop);
DECLARE_CALLBACK(aw8693x_get_ram_data);
DECLARE_CALLBACK(aw8693x_get_reg);
DECLARE_CALLBACK(aw8693x_get_prctmode);
DECLARE_CALLBACK(aw8693x_get_trim_lra);
DECLARE_CALLBACK(aw8693x_get_glb_state);
DECLARE_CALLBACK(aw8693x_get_osc_status);
DECLARE_CALLBACK(aw8693x_rtp_get_fifo_afs);
DECLARE_CALLBACK(aw8693x_rtp_get_fifo_aes);
DECLARE_CALLBACK(aw8693x_rtp_get_fifo_afi);
DECLARE_CALLBACK(aw8693x_get_theory_time);

/* Relocations in stock .rela.data prove all 50 pointer slots and targets. */
void (*aw8693x_func_list[50])(void) = {
	[0] = CALLBACK(aw8693x_get_f0),
	[1] = CALLBACK(aw8693x_creat_node),
	[2] = CALLBACK(aw8693x_ram_get_f0),
	[3] = CALLBACK(aw8693x_get_irq_state),
	[4] = CALLBACK(aw8693x_check_qualify),
	[5] = CALLBACK(aw8693x_judge_rtp_going),
	[6] = CALLBACK(aw8693x_container_update),
	[7] = CALLBACK(aw8693x_stop),
	[8] = CALLBACK(aw8693x_get_vbat),
	[9] = CALLBACK(aw8693x_cont_config),
	[10] = CALLBACK(aw8693x_offset_cali),
	[11] = 0,
	[12] = CALLBACK(aw8693x_play_go),
	[13] = CALLBACK(aw8693x_ram_init),
	[14] = CALLBACK(aw8693x_set_bst_peak_cur),
	[15] = CALLBACK(aw8693x_get_lra_resistance),
	[16] = CALLBACK(aw8693x_set_pwm),
	[17] = CALLBACK(aw8693x_set_gain),
	[18] = 0,
	[19] = CALLBACK(aw8693x_play_mode),
	[20] = CALLBACK(aw8693x_set_bst_vol),
	[21] = CALLBACK(aw8693x_set_repeat_seq),
	[22] = CALLBACK(aw8693x_auto_bst_enable),
	[23] = CALLBACK(aw8693x_vbat_mode_config),
	[24] = CALLBACK(aw8693x_set_wav_seq),
	[25] = CALLBACK(aw8693x_set_wav_loop),
	[26] = CALLBACK(aw8693x_set_rtp_data),
	[27] = CALLBACK(aw8693x_protect_config),
	[28] = CALLBACK(aw8693x_parse_dt),
	[29] = CALLBACK(aw8693x_trig_init),
	[30] = CALLBACK(aw8693x_irq_clear),
	[31] = CALLBACK(aw8693x_set_ram_addr),
	[32] = CALLBACK(aw8693x_misc_para_init),
	[33] = CALLBACK(aw8693x_interrupt_setup),
	[34] = CALLBACK(aw8693x_set_rtp_aei),
	[35] = CALLBACK(aw8693x_upload_lra),
	[36] = CALLBACK(aw8693x_get_wav_seq),
	[37] = CALLBACK(aw8693x_bst_mode_config),
	[38] = CALLBACK(aw8693x_get_first_wave_addr),
	[39] = CALLBACK(aw8693x_get_wav_loop),
	[40] = CALLBACK(aw8693x_get_ram_data),
	[41] = CALLBACK(aw8693x_get_reg),
	[42] = CALLBACK(aw8693x_get_prctmode),
	[43] = CALLBACK(aw8693x_get_trim_lra),
	[44] = CALLBACK(aw8693x_get_glb_state),
	[45] = CALLBACK(aw8693x_get_osc_status),
	[46] = CALLBACK(aw8693x_rtp_get_fifo_afs),
	[47] = CALLBACK(aw8693x_rtp_get_fifo_aes),
	[48] = CALLBACK(aw8693x_rtp_get_fifo_afi),
	[49] = CALLBACK(aw8693x_get_theory_time),
};
