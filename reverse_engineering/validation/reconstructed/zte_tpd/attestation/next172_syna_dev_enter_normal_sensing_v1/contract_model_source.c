#include <stdint.h>
#include <stdio.h>

enum failure_log {
	NO_FAILURE_LOG,
	SLEEP_FAILURE_LOG,
	GESTURE_FAILURE_LOG,
};

struct sensing_state {
	uint32_t power_active;
	uint8_t gesture_power_enabled;
	uint32_t default_sleep_mode;
	uint8_t low_power_gesture_enabled;
	int sleep_result;
	int gesture_result;
	uint32_t observed_sleep_mode;
	uint32_t gesture_sleep_mode;
	unsigned int sleep_calls;
	unsigned int gesture_calls;
	unsigned int delay_ms;
	enum failure_log failure;
};

static int syna_tcm_sleep_model(struct sensing_state *state, uint32_t mode)
{
	state->sleep_calls++;
	state->observed_sleep_mode = mode;
	return state->sleep_result;
}

static int syna_dev_enable_lowpwr_gesture_model(struct sensing_state *state,
						 uint32_t mode)
{
	state->gesture_calls++;
	state->gesture_sleep_mode = mode;
	return state->gesture_result;
}

static int syna_dev_enter_normal_sensing_contract(struct sensing_state *state)
{
	uint32_t sleep_mode;
	int result;

	if (state->power_active && state->gesture_power_enabled)
		sleep_mode = 0;
	else
		sleep_mode = state->default_sleep_mode;

	result = syna_tcm_sleep_model(state, sleep_mode);
	if (result < 0) {
		state->failure = SLEEP_FAILURE_LOG;
		return result;
	}

	if (state->low_power_gesture_enabled == 1) {
		result = syna_dev_enable_lowpwr_gesture_model(state, sleep_mode);
		if (result < 0) {
			state->failure = GESTURE_FAILURE_LOG;
			return result;
		}
		state->delay_ms = 100;
	}

	return 0;
}

static int expect(int condition, const char *name)
{
	if (condition)
		return 0;
	fprintf(stderr, "contract check failed: %s\n", name);
	return 1;
}

int main(void)
{
	struct sensing_state state = {
		.default_sleep_mode = 7,
	};
	int failed = 0;

	failed |= expect(syna_dev_enter_normal_sensing_contract(&state) == 0 &&
			 state.observed_sleep_mode == 7 && state.sleep_calls == 1 &&
			 state.gesture_calls == 0 && state.delay_ms == 0,
			 "default sleep without gesture");

	state = (struct sensing_state){
		.power_active = 1,
		.gesture_power_enabled = 1,
		.default_sleep_mode = 7,
	};
	failed |= expect(syna_dev_enter_normal_sensing_contract(&state) == 0 &&
			 state.observed_sleep_mode == 0,
			 "active gesture power forces sleep mode zero");

	state = (struct sensing_state){
		.default_sleep_mode = 7,
		.sleep_result = -5,
	};
	failed |= expect(syna_dev_enter_normal_sensing_contract(&state) == -5 &&
			 state.failure == SLEEP_FAILURE_LOG && state.gesture_calls == 0,
			 "sleep failure returns before gesture");

	state = (struct sensing_state){
		.default_sleep_mode = 7,
		.low_power_gesture_enabled = 1,
	};
	failed |= expect(syna_dev_enter_normal_sensing_contract(&state) == 0 &&
			 state.gesture_calls == 1 && state.gesture_sleep_mode == 7 &&
			 state.delay_ms == 100,
			 "gesture success disables mode and delays");

	state = (struct sensing_state){
		.default_sleep_mode = 7,
		.low_power_gesture_enabled = 1,
		.gesture_result = -9,
	};
	failed |= expect(syna_dev_enter_normal_sensing_contract(&state) == -9 &&
			 state.failure == GESTURE_FAILURE_LOG && state.delay_ms == 0,
			 "gesture failure returns without delay");

	if (failed)
		return 1;
	printf("PASS syna_dev_enter_normal_sensing contract test (5 checks)\n");
	return 0;
}
