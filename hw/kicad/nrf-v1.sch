EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:nrf
LIBS:nrf-v1-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L R R1
U 1 1 54E3809D
P 2600 2350
F 0 "R1" V 2680 2350 40  0000 C CNN
F 1 "R" V 2607 2351 40  0000 C CNN
F 2 "" V 2530 2350 30  0000 C CNN
F 3 "" H 2600 2350 30  0000 C CNN
	1    2600 2350
	1    0    0    -1  
$EndComp
$Comp
L nRF51822 U?
U 1 1 54E3ACD1
P 5350 3300
F 0 "U?" H 6050 4950 60  0000 C CNN
F 1 "nRF51822" H 5350 4950 60  0000 C CNN
F 2 "" H 5350 4050 60  0000 C CNN
F 3 "" H 5350 4050 60  0000 C CNN
	1    5350 3300
	-1   0    0    -1  
$EndComp
$Comp
L BMA280 U?
U 1 1 54E4F128
P 8800 3300
F 0 "U?" H 8800 3750 60  0000 C CNN
F 1 "BMA280" H 8800 2850 60  0000 C CNN
F 2 "" H 8700 3050 60  0000 C CNN
F 3 "" H 8700 3050 60  0000 C CNN
	1    8800 3300
	1    0    0    -1  
$EndComp
$Comp
L AT45DB641E U?
U 1 1 54E4F256
P 8800 2100
F 0 "U?" H 8800 2400 60  0000 C CNN
F 1 "AT45DB641E" H 8800 1800 60  0000 C CNN
F 2 "" H 8800 1700 60  0000 C CNN
F 3 "" H 8800 1700 60  0000 C CNN
	1    8800 2100
	1    0    0    -1  
$EndComp
$Comp
L SI7053 U?
U 1 1 54E4F2ED
P 8800 4450
F 0 "U?" H 8800 4650 60  0000 C CNN
F 1 "SI7053" H 8800 4250 60  0000 C CNN
F 2 "" H 8800 4450 60  0000 C CNN
F 3 "" H 8800 4450 60  0000 C CNN
	1    8800 4450
	1    0    0    -1  
$EndComp
$EndSCHEMATC
