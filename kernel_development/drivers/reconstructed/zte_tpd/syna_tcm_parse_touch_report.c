/* SPDX-License-Identifier: GPL-2.0-only */

struct tcm_dev;

typedef int (*syna_tcm_parse_callback_fn)(
	u8 entity_code,
	const u8 *config_data,
	u32 *config_offset,
	const u8 *report_data,
	u32 *report_offset,
	u32 report_size,
	void *callback_data);

/* These offsets are the fields proven by the NX809J stock P-Code/Assembly. */
enum syna_tcm_parse_offset {
	SYNAPARSE_MAX_OBJECTS = 0x018,
	SYNAPARSE_CUSTOM_FORMAT = 0x190,
	SYNAPARSE_CUSTOM_FORMAT_SIZE = 0x19c,
	SYNAPARSE_FORMAT_LOOP = 0x1d8,
	SYNAPARSE_REPORT_OFFSET = 0x1e0,
	SYNAPARSE_REPORT_HEADER_BITS = 0x1e4,
	SYNAPARSE_PARSER_MODE = 0x38c,
	SYNAPARSE_TOUCH_CALLBACK_DATA = 0x3b8,
	SYNAPARSE_TOUCH_CALLBACK = 0x3c0,
	SYNAPARSE_GESTURE_CALLBACK_DATA = 0x3c8,
	SYNAPARSE_GESTURE_CALLBACK = 0x3d0,
};

enum syna_tcm_report_offset {
	SYNAREPORT_FIRST_VALUE = 0x000,
	SYNAREPORT_GESTURE_VALUE = 0x004,
	SYNAREPORT_OBJECTS = 0x008,
	SYNAREPORT_GESTURE_WORD0 = 0x210,
	SYNAREPORT_GESTURE_WORD1 = 0x214,
	SYNAREPORT_GESTURE_WORD2 = 0x216,
	SYNAREPORT_GESTURE_WORD3 = 0x218,
	SYNAREPORT_FIELD_5 = 0x21c,
	SYNAREPORT_FIELD_F = 0x220,
	SYNAREPORT_FIELD_11 = 0x224,
	SYNAREPORT_FIELD_12 = 0x228,
	SYNAREPORT_FIELD_13 = 0x22c,
	SYNAREPORT_FIELD_14 = 0x230,
	SYNAREPORT_FIELD_15 = 0x234,
	SYNAREPORT_FIELD_16 = 0x238,
	SYNAREPORT_FIELD_17 = 0x23c,
	SYNAREPORT_FIELD_19 = 0x240,
	SYNAREPORT_FIELD_1A = 0x244,
	SYNAREPORT_FIELD_1C = 0x248,
	SYNAREPORT_FIELD_1D = 0x24c,
	SYNAREPORT_FIELD_1E = 0x250,
};

#define SYNAREPORT_OBJECT_STRIDE 52U
#define SYNAREPORT_OBJECT_CAPACITY 10U
#define SYNAPARSE_DEFAULT_FORMAT_SIZE 21U

static const u8 syna_tcm_default_touch_format[SYNAPARSE_DEFAULT_FORMAT_SIZE] = {
	0xca, 0x70, 0x10, 0x08, 0x18, 0x08, 0x01, 0x06,
	0x04, 0x07, 0x04, 0x08, 0x10, 0x09, 0x10, 0x0b,
	0x0c, 0x0c, 0x0c, 0x03, 0x00,
};

extern int printk(const char *format, ...);
extern void *memcpy(void *destination, const void *source,
			   unsigned long length);
extern void *memset(void *destination, int value, unsigned long length);

static u32 syna_tcm_parse_load_u32(const void *base, u32 offset)
{
	u32 value;

	memcpy(&value, (const u8 *)base + offset, sizeof(value));
	return value;
}

static void *syna_tcm_parse_load_ptr(const void *base, u32 offset)
{
	void *value;

	memcpy(&value, (const u8 *)base + offset, sizeof(value));
	return value;
}

static void syna_tcm_parse_store_u16(void *base, u32 offset, u16 value)
{
	memcpy((u8 *)base + offset, &value, sizeof(value));
}

static void syna_tcm_parse_store_u32(void *base, u32 offset, u32 value)
{
	memcpy((u8 *)base + offset, &value, sizeof(value));
}

static int syna_tcm_parse_read_bits(const u8 *report, u32 report_bits,
					    u32 bit_offset, u32 bit_count,
					    u32 *value)
{
	u32 remaining;
	u32 source_byte;
	u32 shift;
	u32 chunk;
	u32 result = 0;

	if (!value || !bit_count || bit_count > 32)
		return -241;
	if (bit_offset + bit_count > report_bits) {
		*value = 0;
		return 0;
	}

	remaining = bit_count;
	source_byte = bit_offset >> 3;
	shift = bit_offset & 7U;
	while (remaining) {
		chunk = 8U - shift;
		if (chunk > remaining)
			chunk = remaining;
		result |= (((u32)report[source_byte] >> shift) &
				   (0xffU >> (8U - chunk))) <<
				  (bit_count - remaining);
		remaining -= chunk;
		source_byte++;
		shift = 0;
	}
	*value = result;
	return 0;
}

static int syna_tcm_parse_read_width(const u8 *format, u32 *format_index,
					     u32 format_size, const u8 *report,
					     u32 report_bits, u32 *bit_offset,
					     u32 *value)
{
	u32 width;
	int retval;

	if (*format_index >= format_size)
		return -241;
	width = format[(*format_index)++];
	if (!width || width > 32)
		return -241;
	retval = syna_tcm_parse_read_bits(report, report_bits, *bit_offset,
						  width, value);
	*bit_offset += width;
	return retval;
}

static void syna_tcm_parse_store_object(void *output, u32 object_index,
						u32 field_offset, u32 value)
{
	if (object_index >= SYNAREPORT_OBJECT_CAPACITY)
		return;
	syna_tcm_parse_store_u32(output,
		SYNAREPORT_OBJECTS + object_index * SYNAREPORT_OBJECT_STRIDE +
			field_offset, value);
}

static void syna_tcm_parse_store_object_status(void *output,
						 u32 object_index, u8 value)
{
	if (object_index >= SYNAREPORT_OBJECT_CAPACITY)
		return;
	*((u8 *)output + SYNAREPORT_OBJECTS +
		 object_index * SYNAREPORT_OBJECT_STRIDE) = value;
}

static int syna_tcm_parse_run_callback(syna_tcm_parse_callback_fn callback,
					       u8 entity_code, const u8 *format,
					       u32 *format_index, const u8 *report,
					       u32 *bit_offset, u32 report_size,
					       void *callback_data)
{
	if (!callback)
		return -241;
	return callback(entity_code, format, format_index, report, bit_offset,
				report_size, callback_data);
}

int syna_tcm_parse_touch_report(struct tcm_dev *tcm,
					const u8 *report, u32 report_size,
					void *output)
{
	const u8 *format;
	syna_tcm_parse_callback_fn touch_callback;
	syna_tcm_parse_callback_fn gesture_callback;
	void *touch_callback_data;
	void *gesture_callback_data;
	u32 format_size;
	u32 format_index = 0;
	u32 bit_offset = 0;
	u32 report_bits = report_size << 3;
	u32 max_objects;
	u32 object_index = 0;
	u32 report_header_bits;
	u32 format_loop;
	u32 value;
	u32 width;
	u32 callback_offset;
	bool gesture_mode = false;
	int retval;

	if (!tcm || !report || !output) {
		printk("\\0013[error] %s: Invalid parameter\\n",
		       "syna_tcm_parse_touch_report");
		return -241;
	}

	max_objects = syna_tcm_parse_load_u32(tcm, SYNAPARSE_MAX_OBJECTS);
	if (!max_objects) {
		printk("\\0013[error] %s: No touch objects\\n",
		       "syna_tcm_parse_touch_report");
		return -241;
	}
	if (syna_tcm_parse_load_u32(tcm, SYNAPARSE_PARSER_MODE) == 1)
		return 0;

	format = syna_tcm_parse_load_ptr(tcm, SYNAPARSE_CUSTOM_FORMAT);
	format_size = syna_tcm_parse_load_u32(tcm,
						 SYNAPARSE_CUSTOM_FORMAT_SIZE);
	if (!format || !format_size) {
		printk("\\0013[error] %s: Using default touch format\\n",
		       "syna_tcm_parse_touch_report");
		format = syna_tcm_default_touch_format;
		format_size = SYNAPARSE_DEFAULT_FORMAT_SIZE;
	}

	memset((u8 *)output + SYNAREPORT_OBJECTS, 0, 0x208);
	touch_callback_data = syna_tcm_parse_load_ptr(
		tcm, SYNAPARSE_TOUCH_CALLBACK_DATA);
	touch_callback = syna_tcm_parse_load_ptr(tcm, SYNAPARSE_TOUCH_CALLBACK);
	gesture_callback_data = syna_tcm_parse_load_ptr(
		tcm, SYNAPARSE_GESTURE_CALLBACK_DATA);
	gesture_callback = syna_tcm_parse_load_ptr(
		tcm, SYNAPARSE_GESTURE_CALLBACK);
	format_loop = syna_tcm_parse_load_u32(tcm, SYNAPARSE_FORMAT_LOOP);
	report_header_bits = syna_tcm_parse_load_u32(
		tcm, SYNAPARSE_REPORT_HEADER_BITS);

	while (format_index < format_size) {
		u8 opcode = format[format_index++];

		switch (opcode) {
		case 0:
			return (int)bit_offset;
		case 1:
			gesture_mode = true;
			continue;
		case 2:
			gesture_mode = false;
			continue;
		case 3:
			if (bit_offset + report_header_bits > report_bits)
				return (int)bit_offset;
			if (bit_offset + report_header_bits == report_bits) {
				format_index = format_loop < format_size ? format_loop : 0;
				continue;
			}
			if (!gesture_mode && object_index + 1 < max_objects)
				object_index++;
			continue;
		case 4:
			bit_offset = (bit_offset + 7U) & ~7U;
			continue;
		case 5:
			retval = syna_tcm_parse_read_width(format, &format_index,
							    format_size, report, report_bits,
							    &bit_offset, &value);
			if (retval < 0)
				return retval;
			syna_tcm_parse_store_u32(output, SYNAREPORT_FIELD_5, value);
			continue;
		case 6:
			retval = syna_tcm_parse_read_width(format, &format_index,
							    format_size, report, report_bits,
							    &bit_offset, &value);
			if (retval < 0)
				return retval;
			syna_tcm_parse_store_u32(output, SYNAREPORT_FIRST_VALUE, value);
			continue;
		case 7:
			retval = syna_tcm_parse_read_width(format, &format_index,
							    format_size, report, report_bits,
							    &bit_offset, &value);
			if (retval < 0)
				return retval;
			syna_tcm_parse_store_object_status(output, object_index,
								 (u8)value);
			continue;
		case 8:
			retval = syna_tcm_parse_read_width(format, &format_index,
							    format_size, report, report_bits,
							    &bit_offset, &value);
			if (retval < 0)
				return retval;
			syna_tcm_parse_store_object(output, object_index, 4, value);
			continue;
		case 9:
		case 0x0a:
		case 0x0b:
		case 0x0c:
		case 0x0d:
		case 0x0e:
		{
			u32 field_offset;

			switch (opcode) {
			case 9: field_offset = 8; break;
			case 0x0a: field_offset = 20; break;
			case 0x0b: field_offset = 12; break;
		case 0x0c: field_offset = 16; break;
			case 0x0d: field_offset = 24; break;
			default: field_offset = 28; break;
			}

			retval = syna_tcm_parse_read_width(
				format, &format_index, format_size, report,
				report_bits, &bit_offset, &value);
			if (retval < 0)
				return retval;
			syna_tcm_parse_store_object(output, object_index,
							    field_offset, value);
			continue;
		}
		case 0x0f:
		case 0x11:
		case 0x12:
		case 0x13:
		case 0x14:
		case 0x15:
		case 0x16:
		case 0x17:
		case 0x19:
		case 0x1a:
		case 0x1c:
		case 0x1d:
		case 0x1e:
		{
			u32 field_offset;

			switch (opcode) {
			case 0x0f: field_offset = SYNAREPORT_FIELD_F; break;
			case 0x11: field_offset = SYNAREPORT_FIELD_11; break;
			case 0x12: field_offset = SYNAREPORT_FIELD_12; break;
			case 0x13: field_offset = SYNAREPORT_FIELD_13; break;
			case 0x14: field_offset = SYNAREPORT_FIELD_14; break;
			case 0x15: field_offset = SYNAREPORT_FIELD_15; break;
			case 0x16: field_offset = SYNAREPORT_FIELD_16; break;
			case 0x17: field_offset = SYNAREPORT_FIELD_17; break;
			case 0x19: field_offset = SYNAREPORT_FIELD_19; break;
			case 0x1a: field_offset = SYNAREPORT_FIELD_1A; break;
			case 0x1c: field_offset = SYNAREPORT_FIELD_1C; break;
			default: field_offset = SYNAREPORT_FIELD_1E; break;
			}
			retval = syna_tcm_parse_read_width(
				format, &format_index, format_size, report,
				report_bits, &bit_offset, &value);
			if (retval < 0)
				return retval;
			syna_tcm_parse_store_u32(output, field_offset, value);
			continue;
		}
		case 0x10:
			callback_offset = format_index;
			retval = syna_tcm_parse_run_callback(
				gesture_callback, 0x10, format, &callback_offset,
				report, &bit_offset, report_size,
				gesture_callback_data);
			if (gesture_callback && retval >= 0) {
				format_index = callback_offset;
				continue;
			}
			retval = syna_tcm_parse_read_width(
				format, &format_index, format_size, report,
				report_bits, &bit_offset, &value);
			if (retval < 0)
				return retval;
			continue;
		case 0x18:
			retval = syna_tcm_parse_read_width(format, &format_index,
							    format_size, report, report_bits,
							    &bit_offset, &value);
			if (retval < 0)
				return retval;
			syna_tcm_parse_store_u32(output, SYNAREPORT_GESTURE_VALUE,
							 value);
			continue;
		case 0x1b:
			callback_offset = format_index;
			retval = syna_tcm_parse_run_callback(
				gesture_callback, 0x1b, format, &callback_offset,
				report, &bit_offset, report_size,
				gesture_callback_data);
			if (gesture_callback && retval >= 0) {
				format_index = callback_offset;
				continue;
			}
			if (format_index >= format_size)
				return -241;
			width = format[format_index++];
			if (width > 64U)
				return -241;
			for (u32 chunk = 0; chunk < 4U && chunk * 16U < width;
			     ++chunk) {
				u32 gesture_value = 0;

				(void)syna_tcm_parse_read_bits(
					report, report_bits, bit_offset + chunk * 16U,
					16U, &gesture_value);
				syna_tcm_parse_store_u16(
					output, SYNAREPORT_GESTURE_WORD1 + chunk * 2U,
					(u16)gesture_value);
			}
			bit_offset += width;
			continue;
		default:
			callback_offset = format_index;
			retval = syna_tcm_parse_run_callback(
				touch_callback, opcode, format, &callback_offset,
				report, &bit_offset, report_size,
				touch_callback_data);
			if (touch_callback && retval >= 0) {
				format_index = callback_offset;
				continue;
			}
			if (format_index >= format_size)
			return (int)bit_offset;
			width = format[format_index++];
			if (width > 32U)
				return -241;
			bit_offset += width;
			continue;
		}
	}

	return (int)bit_offset;
}
