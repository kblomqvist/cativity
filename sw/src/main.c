#include "nrf_delay.h"
#include "nrf_gpio.h"

int main(void){
	nrf_gpio_cfg_output(17);

	while(1){
		nrf_gpio_pin_toggle(17);
		nrf_delay_ms(500);
	}
}
