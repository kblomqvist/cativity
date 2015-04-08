#include <stdbool.h>
#include <stdint.h>
#include "nrf_delay.h"
#include "nrf_gpio.h"

#include "twi_master.h"

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

int main(void){
	nrf_gpio_cfg_output(17);
	
	twi_master_init();

	bool temp_present = stsc1_detect();

	while(1){
		nrf_gpio_pin_toggle(17);

		if (temp_present)
			nrf_delay_ms(500);
		else
			nrf_delay_ms(200);
	}
}
