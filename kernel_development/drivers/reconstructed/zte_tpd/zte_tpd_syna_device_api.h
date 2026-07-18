/* SPDX-License-Identifier: GPL-2.0-only */
#ifndef _ZTE_TPD_SYNA_DEVICE_API_H
#define _ZTE_TPD_SYNA_DEVICE_API_H

struct syna_tcm;

int syna_dev_get_frame_data(struct syna_tcm *tcm, int value,
			    unsigned int delay_ms);
int syna_dev_set_charger_mode(struct syna_tcm *tcm, int value,
			      unsigned int delay_ms);
int syna_dev_set_display_rotation(struct syna_tcm *tcm, int value,
				  unsigned int delay_ms);
int syna_dev_set_follow_hand_level(struct syna_tcm *tcm, int value,
				   unsigned int delay_ms);
int syna_dev_set_play_game(struct syna_tcm *tcm, int value,
			   unsigned int delay_ms);
int syna_dev_set_sensibility_level(struct syna_tcm *tcm, int value,
				    unsigned int delay_ms);
int syna_dev_set_stability_level(struct syna_tcm *tcm, int value,
				  unsigned int delay_ms);
int syna_dev_set_tp_report_rate(struct syna_tcm *tcm, int value,
				unsigned int delay_ms);

#endif
