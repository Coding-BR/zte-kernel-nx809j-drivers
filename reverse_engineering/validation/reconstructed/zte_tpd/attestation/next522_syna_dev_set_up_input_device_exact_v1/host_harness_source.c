#include <stdint.h>
#include <stdio.h>
#include <string.h>

enum {
    EV_SYN = 0,
    EV_KEY = 1,
    EV_ABS = 3,
    BTN_TOUCH = 330,
    BTN_TOOL_FINGER = 325,
    INPUT_PROP_DIRECT = 1,
    KEY_WAKEUP = 143,
    BUS_SPI = 1,
};

struct input_model {
    uint64_t evbit[8];
    uint64_t keybit[8];
    uint64_t propbit[2];
    unsigned int x_max;
    unsigned int y_max;
    unsigned int slots;
    unsigned int bustype;
    unsigned int vendor;
    uintptr_t parent;
    uintptr_t drvdata;
    const char *name;
    const char *phys;
};

struct setup_state {
    unsigned int mode;
    unsigned int width;
    unsigned int height;
    unsigned int slots;
    unsigned int cached_width;
    unsigned int cached_height;
    unsigned int cached_slots;
    int managed_device;
    int allocation_ok;
    int register_result;
    int dispatcher_result;
    int registered;
    uintptr_t parent;
    unsigned int free_events_calls;
    unsigned int lock_calls;
    unsigned int unlock_calls;
    unsigned int unregister_calls;
    unsigned int allocate_calls;
    unsigned int register_calls;
    unsigned int free_device_calls;
    unsigned int dispatcher_calls;
    unsigned int log_calls;
    struct input_model input;
};

static void set_bit(unsigned int bit, uint64_t *words, size_t word_count)
{
    size_t word = bit / 64U;
    if (word < word_count)
        words[word] |= UINT64_C(1) << (bit % 64U);
}

static int test_bit(unsigned int bit, const uint64_t *words, size_t word_count)
{
    size_t word = bit / 64U;
    return word < word_count && (words[word] & (UINT64_C(1) << (bit % 64U))) != 0;
}

static void reset_state(struct setup_state *state)
{
    memset(state, 0, sizeof(*state));
    state->mode = 1;
    state->width = 1080;
    state->height = 2400;
    state->slots = 10;
    state->managed_device = 1;
    state->allocation_ok = 1;
    state->register_result = 0;
    state->parent = (uintptr_t)0x1234;
}

static int model_syna_dev_set_up_input_device(struct setup_state *state)
{
    int result = 0;

    if (state->mode != 1U) {
        state->log_calls++;
        return 0;
    }

    state->free_events_calls++;
    if (state->width == 0U && state->height == 0U)
        return 0;
    if (state->cached_width == state->width &&
        state->cached_height == state->height &&
        state->cached_slots == state->slots) {
        state->log_calls++;
        return 0;
    }

    state->lock_calls++;
    if (state->registered) {
        state->unregister_calls++;
        state->registered = 0;
    }

    if (!state->managed_device) {
        state->log_calls++;
        result = -22;
        goto out;
    }

    state->allocate_calls++;
    if (!state->allocation_ok) {
        state->log_calls++;
        result = -19;
        goto out;
    }

    state->input.name = "synaptics_tcm_touch";
    state->input.phys = "synaptics_tcm/touch_input";
    state->input.bustype = BUS_SPI;
    state->input.vendor = 1;
    state->input.parent = state->parent;
    state->input.drvdata = (uintptr_t)state;
    set_bit(EV_SYN, state->input.evbit, 8);
    set_bit(EV_KEY, state->input.evbit, 8);
    set_bit(EV_ABS, state->input.evbit, 8);
    set_bit(BTN_TOUCH, state->input.keybit, 8);
    set_bit(BTN_TOOL_FINGER, state->input.keybit, 8);
    set_bit(INPUT_PROP_DIRECT, state->input.propbit, 2);
    set_bit(KEY_WAKEUP, state->input.keybit, 8);
    set_bit(KEY_WAKEUP, state->input.keybit, 8);
    state->input.x_max = state->width;
    state->input.y_max = state->height;
    state->input.slots = state->slots;

    state->cached_width = state->width;
    state->cached_height = state->height;
    state->cached_slots = state->slots;
    state->register_calls++;
    if (state->register_result < 0) {
        state->free_device_calls++;
        result = state->register_result;
        goto out;
    }

    state->registered = 1;
    state->dispatcher_calls++;
    if (state->dispatcher_result < 0)
        state->log_calls++;
    result = 0;

out:
    state->log_calls++;
    state->unlock_calls++;
    return result;
}

static void check(int condition, const char *name, unsigned int *tests,
                  unsigned int *failures)
{
    (*tests)++;
    printf("%s %s\n", condition ? "PASS" : "FAIL", name);
    if (!condition)
        (*failures)++;
}

int main(void)
{
    struct setup_state state;
    unsigned int tests = 0;
    unsigned int failures = 0;

    reset_state(&state);
    state.mode = 0;
    check(model_syna_dev_set_up_input_device(&state) == 0,
          "mode_disabled_returns_zero", &tests, &failures);
    check(state.free_events_calls == 0 && state.lock_calls == 0,
          "mode_disabled_skips_side_effects", &tests, &failures);

    reset_state(&state);
    state.width = 0;
    state.height = 0;
    check(model_syna_dev_set_up_input_device(&state) == 0,
          "zero_dimensions_returns_zero", &tests, &failures);
    check(state.free_events_calls == 1 && state.lock_calls == 0,
          "zero_dimensions_stops_before_lock", &tests, &failures);

    reset_state(&state);
    state.cached_width = state.width;
    state.cached_height = state.height;
    state.cached_slots = state.slots;
    check(model_syna_dev_set_up_input_device(&state) == 0,
          "cached_dimensions_returns_zero", &tests, &failures);
    check(state.free_events_calls == 1 && state.lock_calls == 0,
          "cached_dimensions_skips_reallocation", &tests, &failures);

    reset_state(&state);
    state.managed_device = 0;
    check(model_syna_dev_set_up_input_device(&state) == -22,
          "managed_device_failure_returns_einval", &tests, &failures);
    check(state.lock_calls == 1 && state.unlock_calls == 1 &&
          state.allocate_calls == 0,
          "managed_device_failure_unlocks", &tests, &failures);

    reset_state(&state);
    state.allocation_ok = 0;
    check(model_syna_dev_set_up_input_device(&state) == -19,
          "allocation_failure_returns_enodev", &tests, &failures);
    check(state.allocate_calls == 1 && state.free_device_calls == 0 &&
          state.unlock_calls == 1,
          "allocation_failure_has_clean_exit", &tests, &failures);

    reset_state(&state);
    state.register_result = -5;
    check(model_syna_dev_set_up_input_device(&state) == -5,
          "registration_error_is_preserved", &tests, &failures);
    check(state.register_calls == 1 && state.free_device_calls == 1 &&
          state.dispatcher_calls == 0,
          "registration_error_frees_unregistered_input", &tests, &failures);

    reset_state(&state);
    state.dispatcher_result = -7;
    check(model_syna_dev_set_up_input_device(&state) == 0,
          "dispatcher_error_does_not_change_return", &tests, &failures);
    check(state.registered && state.dispatcher_calls == 1 &&
          state.unlock_calls == 1,
          "dispatcher_error_keeps_registered_input", &tests, &failures);

    reset_state(&state);
    check(model_syna_dev_set_up_input_device(&state) == 0,
          "success_returns_zero", &tests, &failures);
    check(state.registered && state.cached_width == 1080U &&
          state.cached_height == 2400U && state.cached_slots == 10U,
          "success_caches_dimensions", &tests, &failures);
    check(state.input.name != NULL && state.input.phys != NULL &&
          state.input.bustype == BUS_SPI && state.input.vendor == 1U &&
          state.input.parent == (uintptr_t)0x1234 &&
          state.input.drvdata == (uintptr_t)&state,
          "success_sets_identity_and_parent", &tests, &failures);
    check(test_bit(EV_SYN, state.input.evbit, 8) &&
          test_bit(EV_KEY, state.input.evbit, 8) &&
          test_bit(EV_ABS, state.input.evbit, 8) &&
          test_bit(BTN_TOUCH, state.input.keybit, 8) &&
          test_bit(BTN_TOOL_FINGER, state.input.keybit, 8) &&
          test_bit(INPUT_PROP_DIRECT, state.input.propbit, 2) &&
          test_bit(KEY_WAKEUP, state.input.keybit, 8),
          "success_sets_input_capabilities", &tests, &failures);
    check(state.input.x_max == 1080U && state.input.y_max == 2400U &&
          state.input.slots == 10U,
          "success_sets_abs_limits_and_slots", &tests, &failures);

    reset_state(&state);
    state.registered = 1;
    check(model_syna_dev_set_up_input_device(&state) == 0,
          "replacement_returns_zero", &tests, &failures);
    check(state.unregister_calls == 1 && state.registered &&
          state.lock_calls == 1 && state.unlock_calls == 1,
          "replacement_unregisters_previous_input", &tests, &failures);

    printf("SUMMARY tests=%u failures=%u\n", tests, failures);
    return failures == 0 ? 0 : 1;
}
