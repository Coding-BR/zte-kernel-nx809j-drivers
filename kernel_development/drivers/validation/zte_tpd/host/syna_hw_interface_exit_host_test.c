#include <assert.h>
#include <stddef.h>
#include <stdio.h>

struct platform_device {
  unsigned long marker;
};

struct spi_driver {
  unsigned long marker;
};

static struct platform_device syna_spi_device = { .marker = 0x53504944UL };
static struct spi_driver syna_spi_driver = { .marker = 0x44524956UL };

static unsigned int event_count;
static unsigned int event_kind[2];
static const void *event_object[2];

static void spi_unregister_driver(struct spi_driver *driver)
{
  assert(event_count < 2);
  event_kind[event_count] = 1;
  event_object[event_count++] = driver;
}

static void platform_device_unregister(struct platform_device *device)
{
  assert(event_count < 2);
  event_kind[event_count] = 2;
  event_object[event_count++] = device;
}

#include "../../../reconstructed/zte_tpd/syna_hw_interface_exit.c"

int main(void)
{
  event_count = 0;
  syna_hw_interface_exit();
  assert(event_count == 2);
  assert(event_kind[0] == 1);
  assert(event_kind[1] == 2);
  assert(event_object[0] == &syna_spi_driver);
  assert(event_object[1] == &syna_spi_device);
  puts("syna_hw_interface_exit host oracle: PASS (1 case)");
  return 0;
}
