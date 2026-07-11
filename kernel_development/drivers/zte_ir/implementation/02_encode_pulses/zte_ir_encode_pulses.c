static int zte_ir_encode_pulses(struct zte_ir_runtime *runtime,
				const u32 *pulses,
				size_t pulse_count,
				u32 speed_hz,
				size_t *word_count)
{
	size_t total_words = 0;
	size_t pulse_index;
	u32 carrier_hz;

	if (!word_count)
		return -EINVAL;

	*word_count = 0;
	if (!runtime || !pulses || !pulse_count)
		return -EINVAL;
	if (pulse_count > ZTE_IR_TX_WORD_CAPACITY)
		return -E2BIG;
	if (speed_hz < ZTE_IR_SPI_WORDS_PER_CARRIER ||
	    speed_hz > ZTE_IR_DT_MAX_SPI_HZ)
		return -EINVAL;

	lockdep_assert_held(&runtime->stock.buf_lock);
	carrier_hz = speed_hz >> 4;

	for (pulse_index = 0; pulse_index < pulse_count; pulse_index++) {
		u64 scaled;
		u64 pulse_words;
		size_t word_index;
		u16 pattern;

		if (check_mul_overflow((u64)pulses[pulse_index],
				       (u64)carrier_hz, &scaled) ||
		    check_add_overflow(scaled, 500000ULL, &scaled))
			return -EOVERFLOW;

		pulse_words = scaled / 1000000ULL;
		if (pulse_words >= ZTE_IR_TX_WORD_CAPACITY - total_words) {
			pr_debug("zte_ir: pulse buffer limit at index %zu\n",
				 pulse_index);
			return -E2BIG;
		}

		pattern = (pulse_index & 1) ? runtime->stock.pattern_low :
					      runtime->stock.pattern_high;
		for (word_index = 0; word_index < (size_t)pulse_words;
		     word_index++)
			runtime->stock.tx_buf[total_words + word_index] = pattern;

		total_words += (size_t)pulse_words;
	}

	*word_count = total_words;
	return 0;
}
