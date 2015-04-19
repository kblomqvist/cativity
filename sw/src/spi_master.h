#ifndef SPI_MASTER_H_
#define SPI_MASTER_H_

#include "nrf.h"
#include "rustify.h"
#include <string.h> // memset

enum SPIClock {
	SPI_CLOCK_125K = 0x02000000,
	SPI_CLOCK_250K = 0x04000000,
	SPI_CLOCK_500K = 0x08000000,
	SPI_CLOCK_1M = 0x10000000,
	SPI_CLOCK_2M = 0x20000000,
	SPI_CLOCK_4M = 0x40000000,
	SPI_CLOCK_8M = 0x80000000,
};

enum SPIMode {
	SPI_MODE_0 = 0,
	SPI_MODE_1 = 2,
	SPI_MODE_2 = 4,
	SPI_MODE_3 = 6,
};

static inline void set_spi_io(NRF_SPI_Type *base, int sck, int miso, int mosi)
{
	base->PSELSCK = sck;
	base->PSELMISO = miso;
	base->PSELMOSI = mosi;
}

static inline void set_spi_mode(NRF_SPI_Type *base, enum SPIMode mode)
{
	base->CONFIG = mode;
}

static inline void set_spi_clock(NRF_SPI_Type *base, enum SPIClock clk)
{
	base->FREQUENCY = clk;
}

static inline void spi_select(NRF_SPI_Type *base, int cs)
{
	base->ENABLE = 1;
	nrf_gpio_pin_clear(cs);
}

static inline void spi_unselect(NRF_SPI_Type *base, int cs)
{
	nrf_gpio_pin_set(cs);
	base->ENABLE = 0;
}

static inline void spi_transmit(NRF_SPI_Type *base, void *rx, void *tx, int n)
{
	for (int i=0; i<n; i++) {
		base->TXD = tx ? ((u8*) tx)[i] : 0xff;
		while (base->EVENTS_READY == 0) {}

		u8 received = base->RXD;
		if (rx) ((u8*) rx)[i] = received;
		base->EVENTS_READY = 0;
	}
}

/**
 * SPI read from peripheral "from" straight in to peripheral "to".
 */
static inline void spi_pipe(NRF_SPI_Type *from, NRF_SPI_Type *to, int n)
{
	if (n == 0)
		return;

	from->TXD = 0xff;
	while (from->EVENTS_READY == 0) {}
	from->EVENTS_READY = 0;
	to->TXD = from->RXD;

	for (int i=1; i<n; i++) {
		from->TXD = 0xff;
		while (from->EVENTS_READY == 0) {}
		to->EVENTS_READY = from->EVENTS_READY = 0;
		to->TXD = from->RXD;
	}

	while (to->EVENTS_READY == 0) {}
	to->EVENTS_READY = from->EVENTS_READY = 0;
}

#endif
