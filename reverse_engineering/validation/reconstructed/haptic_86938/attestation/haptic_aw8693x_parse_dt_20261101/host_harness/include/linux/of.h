#ifndef PARSE_DT_HOST_OF_H
#define PARSE_DT_HOST_OF_H
#include <stddef.h>
#include <linux/types.h>
struct property { const char *name; const void *value; size_t length; struct property *next; };
struct device_node { struct property *properties; };
struct property *of_find_property(const struct device_node *, const char *, int *);
int of_property_read_variable_u8_array(const struct device_node *, const char *, u8 *, size_t, size_t);
int of_property_read_variable_u32_array(const struct device_node *, const char *, u32 *, size_t, size_t);
#endif
