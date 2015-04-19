#include <stdbool.h>
#include <stdint.h>
#include "nrf_delay.h"
#include "nrf_gpio.h"
#include "spi_master.h"

#include "twi_master.h"

#define SPI0_SCK  10
#define SPI0_MISO 9
#define SPI0_MOSI 11
#define SPI0_CSN  8

#define SPI1_SCK  6
#define SPI1_MISO 5
#define SPI1_MOSI 4
#define SPI1_CSN  30

bool stsc1_detect(void)
{
	const uint8_t address = 0x4A << 1;
	
	// check id
	uint8_t read_id_reg_cmd[2] = {0xef, 0xc8};
	uint8_t resp[3];
	
	if (!twi_master_transfer(address, read_id_reg_cmd, 2, TWI_ISSUE_STOP))
		return false; // failed
	
	if (!twi_master_transfer(address | TWI_READ_BIT, resp, sizeof(resp), TWI_ISSUE_STOP))
		return false; // failed
	
	if ((resp[1] & 0x3f) != 0b000111)
		return false; // wrong product code
	
	return true;
}

void spi_master_init(NRF_SPI_Type *base, int sck, int miso, int mosi)
{
	nrf_gpio_cfg_input(miso, NRF_GPIO_PIN_NOPULL);
	nrf_gpio_cfg_output(mosi);
	nrf_gpio_cfg_output(sck);

	set_spi_io(base, sck, miso, mosi);
	set_spi_mode(base, SPI_MODE_0);
	set_spi_clock(base, SPI_CLOCK_1M);
}

int main(void){
	nrf_gpio_cfg_output(17);
	
	twi_master_init();

	spi_master_init(NRF_SPI0, SPI0_SCK, SPI0_MISO, SPI0_MOSI);
	nrf_gpio_cfg_output(SPI0_CSN);

	spi_master_init(NRF_SPI1, SPI1_SCK, SPI1_MISO, SPI1_MOSI);
	nrf_gpio_cfg_output(SPI1_CSN);

	bool temp_present = stsc1_detect();

	while(1){
		nrf_gpio_pin_toggle(17);

		if (temp_present)
			nrf_delay_ms(500);
		else
			nrf_delay_ms(200);
	}
}
